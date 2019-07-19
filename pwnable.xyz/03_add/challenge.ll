source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@rbp = internal unnamed_addr global i64 0
@global_var_40099e.7 = constant [8 x i8] c"Input: \00"
@global_var_4009a6.8 = constant [12 x i8] c"%ld %ld %ld\00"
@global_var_4009b2.9 = constant [12 x i8] c"Result: %ld\00"
@0 = external global i32
@global_var_601070.4 = local_unnamed_addr global %_IO_FILE* null
@global_var_601080.5 = local_unnamed_addr global %_IO_FILE* null

define i64 @setup() local_unnamed_addr {
dec_label_pc_4007c4:
  %v0_4007c8 = load %_IO_FILE*, %_IO_FILE** @global_var_601070.4, align 8
  %v12_4007e1 = call i32 @setvbuf(%_IO_FILE* %v0_4007c8, i8* null, i32 2, i32 0)
  %v0_4007e6 = load %_IO_FILE*, %_IO_FILE** @global_var_601080.5, align 8
  %v12_4007ff = call i32 @setvbuf(%_IO_FILE* %v0_4007e6, i8* null, i32 2, i32 0)
  %v6_400810 = call void (i32)* @signal(i32 14, void (i32)* inttoptr (i64 4196278 to void (i32)*))
  %v3_40081a = call i32 @alarm(i32 60)
  %v5_40081a = sext i32 %v3_40081a to i64
  ret i64 %v5_40081a
}

define i64 @main(i64 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_400835:
  %rax.global-to-local = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %stack_var_-112 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca i64, align 8
  %v0_40083d = call i64 @__readfsqword(i64 40)
  store i64 0, i64* %rax.global-to-local, align 8
  %v0_40084c = call i64 @setup()
  %tmp263 = bitcast i64* %stack_var_-104 to i8*
  br label %dec_label_pc_400851

dec_label_pc_400851:                              ; preds = %dec_label_pc_4008b7, %dec_label_pc_400835
  store i64 0, i64* %stack_var_-128, align 8
  store i64 0, i64* %stack_var_-120, align 8
  store i64 0, i64* %stack_var_-112, align 8
  store i64 0, i64* %rax.global-to-local, align 8
  call void @__asm_rep_stosq_memset(i8* %tmp263, i64 0, i64 10)
  store i64 0, i64* %rax.global-to-local, align 8
  %v3_400889 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @global_var_40099e.7, i64 0, i64 0))
  store i64 0, i64* %rax.global-to-local, align 8
  %v12_4008a9 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_var_4009a6.8, i64 0, i64 0), i64* nonnull %stack_var_-128, i64* nonnull %stack_var_-120, i64* nonnull %stack_var_-112)
  %v14_4008a9 = sext i32 %v12_4008a9 to i64
  store i64 %v14_4008a9, i64* %rax.global-to-local, align 8
  %v13_4008b1 = icmp eq i32 %v12_4008a9, 3
  %v1_4008b5 = icmp eq i1 %v13_4008b1, false
  br i1 %v1_4008b5, label %dec_label_pc_4008cd, label %dec_label_pc_4008b7

dec_label_pc_4008b7:                              ; preds = %dec_label_pc_400851
  %v3_4008b7 = load i64, i64* %stack_var_-112, align 8
  %v3_4008bb = load i64, i64* %stack_var_-128, align 8
  %v3_4008bf = load i64, i64* %stack_var_-120, align 8
  %v2_4008c3 = add i64 %v3_4008bf, %v3_4008bb
  %v1_4008c6 = load i64, i64* @rbp, align 8
  %v3_4008c6 = mul i64 %v3_4008b7, 8
  %v4_4008c6 = add i64 %v3_4008c6, -96
  %v5_4008c6 = add i64 %v4_4008c6, %v1_4008c6
  %v6_4008c6 = inttoptr i64 %v5_4008c6 to i64*
  store i64 %v2_4008c3, i64* %v6_4008c6, align 8
  %v3_4008e3 = load i64, i64* %stack_var_-112, align 8
  store i64 %v3_4008e3, i64* %rax.global-to-local, align 8
  %v0_4008e7 = load i64, i64* @rbp, align 8
  %v2_4008e7 = mul i64 %v3_4008e3, 8
  %v3_4008e7 = add i64 %v2_4008e7, -96
  %v4_4008e7 = add i64 %v3_4008e7, %v0_4008e7
  %v5_4008e7 = inttoptr i64 %v4_4008e7 to i64*
  %v6_4008e7 = load i64, i64* %v5_4008e7, align 8
  %v1_4008ec = trunc i64 %v6_4008e7 to i32
  store i64 0, i64* %rax.global-to-local, align 8
  %v6_4008fb = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_var_4009b2.9, i64 0, i64 0), i32 %v1_4008ec)
  br label %dec_label_pc_400851

dec_label_pc_4008cd:                              ; preds = %dec_label_pc_400851
  store i64 0, i64* %rax.global-to-local, align 8
  %v1_4008d6 = call i64 @__readfsqword(i64 40)
  %v3_4008d6 = icmp eq i64 %v0_40083d, %v1_4008d6
  br i1 %v3_4008d6, label %dec_label_pc_4008cd.dec_label_pc_40090a_crit_edge, label %dec_label_pc_400905

dec_label_pc_4008cd.dec_label_pc_40090a_crit_edge: ; preds = %dec_label_pc_4008cd
  %v0_40090b.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_40090a

dec_label_pc_400905:                              ; preds = %dec_label_pc_4008cd
  call void @__stack_chk_fail()
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_40090a

dec_label_pc_40090a:                              ; preds = %dec_label_pc_4008cd.dec_label_pc_40090a_crit_edge, %dec_label_pc_400905
  %v0_40090b = phi i64 [ %v0_40090b.pre, %dec_label_pc_4008cd.dec_label_pc_40090a_crit_edge ], [ ptrtoint (i32* @0 to i64), %dec_label_pc_400905 ]
  ret i64 %v0_40090b
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare i32 @alarm(i32) local_unnamed_addr

declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32) local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare void @__asm_rep_stosq_memset(i8*, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr
