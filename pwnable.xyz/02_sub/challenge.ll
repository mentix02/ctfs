source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%_IO_FILE = type { i32 }

@global_var_b14.1 = constant [13 x i8] c"1337 input: \00"
@global_var_b21.2 = constant [6 x i8] c"%u %u\00"
@global_var_b27.3 = constant [6 x i8] c"Sowwy\00"
@global_var_b2d.4 = constant [10 x i8] c"cat /flag\00"
@global_var_201017.6 = global i64 0
@global_var_200da8.8 = global i64 0
@global_var_200d98.10 = global i64 2560
@global_var_200da0.11 = global i64 2496
@0 = external global i32
@global_var_201010.5 = global %_IO_FILE* null
@global_var_201028.7 = local_unnamed_addr global i8 0
@global_var_201020.9 = local_unnamed_addr global %_IO_FILE* null

define i64 @function_7d8() local_unnamed_addr {
dec_label_pc_7d8:
  %v0_7dc = load i64, i64* inttoptr (i64 2101184 to i64*), align 64
  %v1_7e3 = icmp eq i64 %v0_7dc, 0
  br i1 %v1_7e3, label %dec_label_pc_7ea, label %dec_label_pc_7e8

dec_label_pc_7e8:                                 ; preds = %dec_label_pc_7d8
  call void @__gmon_start__()
  br label %dec_label_pc_7ea

dec_label_pc_7ea:                                 ; preds = %dec_label_pc_7e8, %dec_label_pc_7d8
  %v0_7ee = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_7e8 ], [ 0, %dec_label_pc_7d8 ]
  ret i64 %v0_7ee
}

define i32 @function_800(i8* %s) local_unnamed_addr {
dec_label_pc_800:
  %v2_800 = call i32 @puts(i8* %s)
  ret i32 %v2_800
}

define void @function_808() local_unnamed_addr {
dec_label_pc_808:
  call void @__stack_chk_fail()
  ret void
}

define i32 @function_810(i8* %command) local_unnamed_addr {
dec_label_pc_810:
  %v2_810 = call i32 @system(i8* %command)
  ret i32 %v2_810
}

define i32 @function_818(i32 %seconds) local_unnamed_addr {
dec_label_pc_818:
  %v2_818 = call i32 @alarm(i32 %seconds)
  ret i32 %v2_818
}

define void (i32)* @function_820(i32 %sig, void (i32)* %handler) local_unnamed_addr {
dec_label_pc_820:
  %v4_820 = call void (i32)* @signal(i32 %sig, void (i32)* %handler)
  ret void (i32)* %v4_820
}

define i32 @function_828(i32 %flag, i8* %format, ...) local_unnamed_addr {
dec_label_pc_828:
  %v4_828 = call i32 (i32, i8*, ...) @__printf_chk(i32 %flag, i8* %format)
  ret i32 %v4_828
}

define i32 @function_830(%_IO_FILE* %stream, i8* %buf, i32 %modes, i32 %n) local_unnamed_addr {
dec_label_pc_830:
  %v8_830 = call i32 @setvbuf(%_IO_FILE* %stream, i8* %buf, i32 %modes, i32 %n)
  ret i32 %v8_830
}

define i32 @function_838(i8* %format, ...) local_unnamed_addr {
dec_label_pc_838:
  %v2_838 = call i32 (i8*, ...) @scanf(i8* %format)
  ret i32 %v2_838
}

define void @function_840(i32 %status) local_unnamed_addr {
dec_label_pc_840:
  call void @exit(i32 %status)
  ret void
}

define void @function_848(i64* %d) local_unnamed_addr {
dec_label_pc_848:
  call void @__cxa_finalize(i64* %d)
  ret void
}

define i64 @function_850() local_unnamed_addr {
dec_label_pc_850:
  %rax.global-to-local = alloca i64, align 8
  %rcx.global-to-local = alloca i64, align 8
  %rdi.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  %stack_var_-20 = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %v16_850 = ptrtoint i32* %stack_var_-24 to i64
  %v0_854 = call i64 @__readfsqword(i64 40)
  store i64 0, i64* %rax.global-to-local, align 8
  %v0_864 = load i64, i64* %rdi.global-to-local, align 8
  %v1_864 = load i64, i64* %rsi.global-to-local, align 8
  %v2_864 = load i64, i64* %rdx.global-to-local, align 8
  %v3_864 = load i64, i64* %rcx.global-to-local, align 8
  %v4_864 = call i64 @function_a3e(i64 %v0_864, i64 %v1_864, i64 %v2_864, i64 %v3_864)
  store i64 ptrtoint ([13 x i8]* @global_var_b14.1 to i64), i64* %rsi.global-to-local, align 8
  store i64 1, i64* %rdi.global-to-local, align 8
  store i64 0, i64* %rax.global-to-local, align 8
  store i32 0, i32* %stack_var_-24, align 4
  store i32 0, i32* %stack_var_-20, align 4
  %v6_886 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @global_var_b14.1, i64 0, i64 0))
  %v2_88b = ptrtoint i32* %stack_var_-20 to i64
  store i64 %v2_88b, i64* %rdx.global-to-local, align 8
  store i64 ptrtoint ([6 x i8]* @global_var_b21.2 to i64), i64* %rdi.global-to-local, align 8
  store i64 0, i64* %rax.global-to-local, align 8
  store i64 %v16_850, i64* %rsi.global-to-local, align 8
  %v9_89c = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_var_b21.2, i64 0, i64 0), i32* nonnull %stack_var_-24, i32* nonnull %stack_var_-20)
  %v2_8a1 = load i32, i32* %stack_var_-24, align 4
  %v3_8a1 = sext i32 %v2_8a1 to i64
  store i64 %v3_8a1, i64* %rax.global-to-local, align 8
  %v10_8a9 = icmp sgt i32 %v2_8a1, 4918
  br i1 %v10_8a9, label %dec_label_pc_8b7, label %dec_label_pc_8ab

dec_label_pc_8ab:                                 ; preds = %dec_label_pc_850
  %v3_8ab = load i32, i32* %stack_var_-20, align 4
  %v4_8ab = zext i32 %v3_8ab to i64
  store i64 %v4_8ab, i64* %rdx.global-to-local, align 8
  %v9_8b5 = icmp sgt i32 %v3_8ab, 4918
  br i1 %v9_8b5, label %dec_label_pc_8b7, label %dec_label_pc_8c5

dec_label_pc_8b7:                                 ; preds = %dec_label_pc_8ab, %dec_label_pc_850
  store i64 ptrtoint ([6 x i8]* @global_var_b27.3 to i64), i64* %rdi.global-to-local, align 8
  %v3_8be = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @global_var_b27.3, i64 0, i64 0))
  %v5_8be = sext i32 %v3_8be to i64
  store i64 %v5_8be, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_8da

dec_label_pc_8c5:                                 ; preds = %dec_label_pc_8ab
  %v4_8c5 = sub i32 %v2_8a1, %v3_8ab
  %v20_8c5 = zext i32 %v4_8c5 to i64
  store i64 %v20_8c5, i64* %rax.global-to-local, align 8
  %v11_8c7 = icmp eq i32 %v4_8c5, 4919
  %v1_8cc = icmp eq i1 %v11_8c7, false
  br i1 %v1_8cc, label %dec_label_pc_8da, label %dec_label_pc_8ce

dec_label_pc_8ce:                                 ; preds = %dec_label_pc_8c5
  store i64 ptrtoint ([10 x i8]* @global_var_b2d.4 to i64), i64* %rdi.global-to-local, align 8
  %v3_8d5 = call i32 @system(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_b2d.4, i64 0, i64 0))
  %v5_8d5 = sext i32 %v3_8d5 to i64
  store i64 %v5_8d5, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_8da

dec_label_pc_8da:                                 ; preds = %dec_label_pc_8ce, %dec_label_pc_8c5, %dec_label_pc_8b7
  store i64 0, i64* %rax.global-to-local, align 8
  store i64 %v0_854, i64* %rcx.global-to-local, align 8
  %v1_8e1 = call i64 @__readfsqword(i64 40)
  %v2_8e1 = xor i64 %v1_8e1, %v0_854
  %v3_8e1 = icmp eq i64 %v2_8e1, 0
  store i64 %v2_8e1, i64* %rcx.global-to-local, align 8
  br i1 %v3_8e1, label %dec_label_pc_8da.dec_label_pc_8f1_crit_edge, label %dec_label_pc_8ec

dec_label_pc_8da.dec_label_pc_8f1_crit_edge:      ; preds = %dec_label_pc_8da
  %v0_8f5.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_8f1

dec_label_pc_8ec:                                 ; preds = %dec_label_pc_8da
  call void @__stack_chk_fail()
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_8f1

dec_label_pc_8f1:                                 ; preds = %dec_label_pc_8da.dec_label_pc_8f1_crit_edge, %dec_label_pc_8ec
  %v0_8f5 = phi i64 [ %v0_8f5.pre, %dec_label_pc_8da.dec_label_pc_8f1_crit_edge ], [ ptrtoint (i32* @0 to i64), %dec_label_pc_8ec ]
  ret i64 %v0_8f5
}

define i64 @entry_point(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_900:
  %rdx.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_902 = load i64, i64* %rdx.global-to-local, align 8
  %v4_905 = ptrtoint i64* %stack_var_8 to i64
  %tmp248 = bitcast i64* %stack_var_8 to i8**
  store i64 %v4_905, i64* %rdx.global-to-local, align 8
  %v2_924 = trunc i64 %arg4 to i32
  %v13_924 = inttoptr i64 %v0_902 to void ()*
  %v14_924 = call i32 @__libc_start_main(i64 2128, i32 %v2_924, i8** %tmp248, void ()* inttoptr (i64 2704 to void ()*), void ()* inttoptr (i64 2816 to void ()*), void ()* %v13_924)
  %v0_92a = call i64 @__asm_hlt()
  unreachable
}

define i64 @function_930() local_unnamed_addr {
dec_label_pc_930:
  br i1 or (i1 icmp ult (i64 sub (i64 ptrtoint (i64* @global_var_201017.6 to i64), i64 ptrtoint (%_IO_FILE** @global_var_201010.5 to i64)), i64 14), i1 icmp eq (i64 add (i64 sub (i64 ptrtoint (i64* @global_var_201017.6 to i64), i64 ptrtoint (%_IO_FILE** @global_var_201010.5 to i64)), i64 -14), i64 0)), label %dec_label_pc_960, label %dec_label_pc_94b

dec_label_pc_94b:                                 ; preds = %dec_label_pc_930
  %v0_94b = load i64, i64* inttoptr (i64 2101128 to i64*), align 8
  %v1_952 = icmp eq i64 %v0_94b, 0
  br i1 %v1_952, label %dec_label_pc_960, label %dec_label_pc_957

dec_label_pc_957:                                 ; preds = %dec_label_pc_94b
  %v3_958 = call i64 @_ITM_deregisterTMCloneTable(i64* bitcast (%_IO_FILE** @global_var_201010.5 to i64*))
  ret i64 %v3_958

dec_label_pc_960:                                 ; preds = %dec_label_pc_94b, %dec_label_pc_930
  %v0_961 = phi i64 [ 0, %dec_label_pc_94b ], [ sub (i64 ptrtoint (i64* @global_var_201017.6 to i64), i64 ptrtoint (%_IO_FILE** @global_var_201010.5 to i64)), %dec_label_pc_930 ]
  ret i64 %v0_961
}

define i64 @function_970(i64* %arg1) local_unnamed_addr {
dec_label_pc_9b0:
  ret i64 0
}

define i64 @function_9c0() local_unnamed_addr {
dec_label_pc_9c0:
  %rax.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_9c0 = load i8, i8* @global_var_201028.7, align 1
  %v7_9c0 = icmp eq i8 %v0_9c0, 0
  %v1_9c7 = icmp eq i1 %v7_9c0, false
  br i1 %v1_9c7, label %dec_label_pc_9c0.dec_label_pc_9f0_crit_edge, label %dec_label_pc_9c9

dec_label_pc_9c0.dec_label_pc_9f0_crit_edge:      ; preds = %dec_label_pc_9c0
  %v0_9f0.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_9f0

dec_label_pc_9c9:                                 ; preds = %dec_label_pc_9c0
  %v0_9c9 = load i64, i64* inttoptr (i64 2101240 to i64*), align 8
  %v7_9c9 = icmp eq i64 %v0_9c9, 0
  %v0_9d1 = load i64, i64* %rbp.global-to-local, align 8
  store i64 %v0_9d1, i64* %stack_var_-8, align 8
  %v4_9d1 = ptrtoint i64* %stack_var_-8 to i64
  store i64 %v4_9d1, i64* %rbp.global-to-local, align 8
  br i1 %v7_9c9, label %dec_label_pc_9e3, label %dec_label_pc_9d7

dec_label_pc_9d7:                                 ; preds = %dec_label_pc_9c9
  %v0_9d7 = load i64, i64* inttoptr (i64 2101256 to i64*), align 8
  %v1_9de = inttoptr i64 %v0_9d7 to i64*
  call void @__cxa_finalize(i64* %v1_9de)
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_9e3

dec_label_pc_9e3:                                 ; preds = %dec_label_pc_9d7, %dec_label_pc_9c9
  %v0_9e3 = call i64 @function_930()
  store i64 %v0_9e3, i64* %rax.global-to-local, align 8
  %v2_9e8 = load i64, i64* %stack_var_-8, align 8
  store i64 %v2_9e8, i64* %rbp.global-to-local, align 8
  store i8 1, i8* @global_var_201028.7, align 1
  br label %dec_label_pc_9f0

dec_label_pc_9f0:                                 ; preds = %dec_label_pc_9c0.dec_label_pc_9f0_crit_edge, %dec_label_pc_9e3
  %v0_9f0 = phi i64 [ %v0_9f0.pre, %dec_label_pc_9c0.dec_label_pc_9f0_crit_edge ], [ %v0_9e3, %dec_label_pc_9e3 ]
  ret i64 %v0_9f0
}

define i64 @function_a00() local_unnamed_addr {
dec_label_pc_a00:
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v2_a07 = load i64, i64* @global_var_200da8.8, align 8
  %v9_a07 = icmp eq i64 %v2_a07, 0
  %v1_a0b = icmp eq i1 %v9_a07, false
  br i1 %v1_a0b, label %dec_label_pc_a18, label %dec_label_pc_a0d

dec_label_pc_a0d:                                 ; preds = %dec_label_pc_a18, %dec_label_pc_a00
  %v2_a0d = call i64 @function_970(i64* nonnull @global_var_200da8.8)
  ret i64 %v2_a0d

dec_label_pc_a18:                                 ; preds = %dec_label_pc_a00
  %v0_a18 = load i64, i64* inttoptr (i64 2101208 to i64*), align 8
  %v1_a1f = icmp eq i64 %v0_a18, 0
  br i1 %v1_a1f, label %dec_label_pc_a0d, label %dec_label_pc_a24

dec_label_pc_a24:                                 ; preds = %dec_label_pc_a18
  %v0_a24 = load i64, i64* %rbp.global-to-local, align 8
  store i64 %v0_a24, i64* %stack_var_-8, align 8
  %v4_a24 = ptrtoint i64* %stack_var_-8 to i64
  store i64 %v4_a24, i64* %rbp.global-to-local, align 8
  %v2_a28 = call i64 @_Jv_RegisterClasses(i64* nonnull @global_var_200da8.8)
  %v2_a2a = load i64, i64* %stack_var_-8, align 8
  store i64 %v2_a2a, i64* %rbp.global-to-local, align 8
  %v2_a2b = call i64 @function_970(i64* nonnull @global_var_200da8.8)
  ret i64 %v2_a2b
}

define i64 @function_a3e(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_a3e:
  %v0_a42 = load %_IO_FILE*, %_IO_FILE** @global_var_201010.5, align 8
  %v12_a52 = call i32 @setvbuf(%_IO_FILE* %v0_a42, i8* null, i32 2, i32 0)
  %v0_a57 = load %_IO_FILE*, %_IO_FILE** @global_var_201020.9, align 8
  %v12_a67 = call i32 @setvbuf(%_IO_FILE* %v0_a57, i8* null, i32 2, i32 0)
  %v6_a78 = call void (i32)* @signal(i32 14, void (i32)* inttoptr (i64 2608 to void (i32)*))
  %v3_a83 = call i32 @alarm(i32 60)
  %v5_a83 = sext i32 %v3_a83 to i64
  ret i64 %v5_a83
}

define i64 @function_a90(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_a90:
  %r12.global-to-local = alloca i64, align 8
  %r13.global-to-local = alloca i64, align 8
  %r14.global-to-local = alloca i64, align 8
  %r15.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %rbx.global-to-local = alloca i64, align 8
  %rdi.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  store i64 %arg2, i64* %rsi.global-to-local, align 8
  store i64 %arg1, i64* %rdi.global-to-local, align 8
  %v0_a90 = load i64, i64* %r15.global-to-local, align 8
  %v0_a92 = load i64, i64* %r14.global-to-local, align 8
  %v0_a94 = load i64, i64* %rdi.global-to-local, align 8
  store i64 %v0_a94, i64* %r15.global-to-local, align 8
  %v0_a97 = load i64, i64* %r13.global-to-local, align 8
  %v0_a99 = load i64, i64* %r12.global-to-local, align 8
  store i64 ptrtoint (i64* @global_var_200d98.10 to i64), i64* %r12.global-to-local, align 8
  %v0_aa2 = load i64, i64* %rbp.global-to-local, align 8
  %v0_aaa = load i64, i64* %rbx.global-to-local, align 8
  %v0_aab = load i64, i64* %rsi.global-to-local, align 8
  store i64 %v0_aab, i64* %r14.global-to-local, align 8
  %v0_aae = load i64, i64* %rdx.global-to-local, align 8
  store i64 %v0_aae, i64* %r13.global-to-local, align 8
  store i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_200da0.11 to i64), i64 ptrtoint (i64* @global_var_200d98.10 to i64)), i64 3), i64* %rbp.global-to-local, align 8
  %v0_abc = call i64 @function_7d8()
  br i1 icmp eq (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_200da0.11 to i64), i64 ptrtoint (i64* @global_var_200d98.10 to i64)), i64 3), i64 0), label %dec_label_pc_ae6, label %dec_label_pc_ac6

dec_label_pc_ac6:                                 ; preds = %dec_label_pc_a90
  store i64 0, i64* %rbx.global-to-local, align 8
  %v0_ad0 = load i64, i64* %r13.global-to-local, align 8
  %v0_ad3 = load i64, i64* %r14.global-to-local, align 8
  %v0_ad6 = load i64, i64* %r15.global-to-local, align 8
  br label %dec_label_pc_ad0

dec_label_pc_ad0:                                 ; preds = %dec_label_pc_ad0, %dec_label_pc_ac6
  %v1_add2 = phi i64 [ %v1_add, %dec_label_pc_ad0 ], [ 0, %dec_label_pc_ac6 ]
  %v1_add = add i64 %v1_add2, 1
  %v12_ae1 = icmp eq i64 %v1_add2, sub (i64 ashr (i64 sub (i64 ptrtoint (i64* @global_var_200da0.11 to i64), i64 ptrtoint (i64* @global_var_200d98.10 to i64)), i64 3), i64 1)
  %v1_ae4 = icmp eq i1 %v12_ae1, false
  br i1 %v1_ae4, label %dec_label_pc_ad0, label %dec_label_pc_ae6.loopexit

dec_label_pc_ae6.loopexit:                        ; preds = %dec_label_pc_ad0
  store i64 %v0_ad0, i64* %rdx.global-to-local, align 8
  store i64 %v0_ad3, i64* %rsi.global-to-local, align 8
  store i64 %v0_ad6, i64* %rdi.global-to-local, align 8
  store i64 %v1_add, i64* %rbx.global-to-local, align 8
  br label %dec_label_pc_ae6

dec_label_pc_ae6:                                 ; preds = %dec_label_pc_ae6.loopexit, %dec_label_pc_a90
  store i64 %v0_aaa, i64* %rbx.global-to-local, align 8
  store i64 %v0_aa2, i64* %rbp.global-to-local, align 8
  store i64 %v0_a99, i64* %r12.global-to-local, align 8
  store i64 %v0_a97, i64* %r13.global-to-local, align 8
  store i64 %v0_a92, i64* %r14.global-to-local, align 8
  store i64 %v0_a90, i64* %r15.global-to-local, align 8
  ret i64 %v0_abc
}

define i64 @function_b00() local_unnamed_addr {
dec_label_pc_b00:
  %rax.global-to-local = alloca i64, align 8
  %v0_b00 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_b00
}

define i64 @function_b04() local_unnamed_addr {
dec_label_pc_b04:
  %rax.global-to-local = alloca i64, align 8
  %v0_b0c = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_b0c
}

declare i64 @_ITM_deregisterTMCloneTable(i64*) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @system(i8*) local_unnamed_addr

declare i32 @alarm(i32) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32) local_unnamed_addr

declare i64 @_Jv_RegisterClasses(i64*) local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr
