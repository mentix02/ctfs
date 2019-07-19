source_filename = "test"
target datalayout = "e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"

%_IO_FILE = type { i32 }

@df = internal unnamed_addr global i1 false
@ebp = internal unnamed_addr global i32 0
@global_var_8048720.5 = constant [25 x i8] c"echo input your message:\00"
@0 = constant i32 1409286154
@global_var_804873c.7 = constant [32 x i8] c"Thanks for sending the message!\00"
@1 = external global i32
@global_var_804a038.2 = local_unnamed_addr global %_IO_FILE* null
@global_var_8048739.6 = constant [2 x i8] c"\0A\00"

define i32 @vuln() local_unnamed_addr {
dec_label_pc_80485ab:
  %stack_var_-144 = alloca i32, align 4
  %v0_80485b5 = call i32 @__readgsdword(i32 20)
  %tmp17 = bitcast i32* %stack_var_-144 to i8*
  call void @__asm_rep_stosd_memset(i8* %tmp17, i32 0, i32 32)
  %v3_80485dc = call i32 @system(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @global_var_8048720.5, i32 0, i32 0))
  %v5_80485f2 = call i32 @read(i32 0, i32* nonnull %stack_var_-144, i32 127)
  %v3_8048604 = call i32 (i8*, ...) @printf(i8* %tmp17)
  %v3_8048614 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @global_var_8048739.6, i32 0, i32 0))
  %v3_8048624 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @global_var_804873c.7, i32 0, i32 0))
  %v1_8048630 = call i32 @__readgsdword(i32 20)
  %v3_8048630 = icmp eq i32 %v1_8048630, %v0_80485b5
  br i1 %v3_8048630, label %dec_label_pc_804863e, label %dec_label_pc_8048639

dec_label_pc_8048639:                             ; preds = %dec_label_pc_80485ab
  call void @__stack_chk_fail()
  br label %dec_label_pc_804863e

dec_label_pc_804863e:                             ; preds = %dec_label_pc_8048639, %dec_label_pc_80485ab
  %v0_8048642 = phi i32 [ ptrtoint (i32* @1 to i32), %dec_label_pc_8048639 ], [ 0, %dec_label_pc_80485ab ]
  ret i32 %v0_8048642
}

define i32 @main(i32 %argc, i8** %argv) local_unnamed_addr {
dec_label_pc_8048643:
  %v0_8048654 = load %_IO_FILE*, %_IO_FILE** @global_var_804a038.2, align 4
  %v9_8048660 = call i32 @setvbuf(%_IO_FILE* %v0_8048654, i8* null, i32 2, i32 0)
  %v0_8048668 = call i32 @getegid()
  %v6_804867c = call i32 @setresgid(i32 %v0_8048668, i32 %v0_8048668, i32 %v0_8048668)
  %v0_8048684 = call i32 @vuln()
  ret i32 0
}

declare i32 @read(i32, i32*, i32) local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @getegid() local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i32 @system(i8*) local_unnamed_addr

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32) local_unnamed_addr

declare i32 @setresgid(i32, i32, i32) local_unnamed_addr

declare void @__asm_rep_stosd_memset(i8*, i32, i32) local_unnamed_addr

declare i32 @__readgsdword(i32) local_unnamed_addr
