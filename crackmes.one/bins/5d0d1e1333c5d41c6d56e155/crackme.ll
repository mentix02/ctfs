source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@rax = internal unnamed_addr global i64 0
@rbp = internal unnamed_addr global i64 0
@global_var_4081 = external local_unnamed_addr global i64
@global_var_2004.2 = constant [12 x i8] c"Enter key: \00"
@global_var_2010.3 = constant [3 x i8] c"%s\00"
@global_var_2013.4 = constant [10 x i8] c"good job!\00"
@global_var_201d.5 = constant [11 x i8] c"try again!\00"
@global_var_3db8.6 = global i64 4464
@global_var_3dc0.7 = global i64 4384
@0 = external global i32

define i64 @function_1000() local_unnamed_addr {
dec_label_pc_1000:
  %tmp = load i64, i64* @rax, align 8
  ret i64 %tmp
}

define i64 @function_1003() local_unnamed_addr {
dec_label_pc_1003:
  %v0_1008 = load i64, i64* inttoptr (i64 16368 to i64*), align 16
  %v1_100f = icmp eq i64 %v0_1008, 0
  br i1 %v1_100f, label %dec_label_pc_1016, label %dec_label_pc_1014

dec_label_pc_1014:                                ; preds = %dec_label_pc_1003
  call void @__gmon_start__()
  br label %dec_label_pc_1016

dec_label_pc_1016:                                ; preds = %dec_label_pc_1014, %dec_label_pc_1003
  %v0_101a = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_1014 ], [ 0, %dec_label_pc_1003 ]
  ret i64 %v0_101a
}

define i32 @function_1030(i8* %format, ...) local_unnamed_addr {
dec_label_pc_1030:
  %v2_1030 = call i32 (i8*, ...) @printf(i8* %format)
  ret i32 %v2_1030
}

define void @function_1040() local_unnamed_addr {
dec_label_pc_1040:
  call void @__stack_chk_fail()
  ret void
}

define i32 @function_1050(i8* %format, ...) local_unnamed_addr {
dec_label_pc_1050:
  %v2_1050 = call i32 (i8*, ...) @scanf(i8* %format)
  ret i32 %v2_1050
}

define i32 @function_1060(i8* %s1, i8* %s2) local_unnamed_addr {
dec_label_pc_1060:
  %v4_1060 = call i32 @strcmp(i8* %s1, i8* %s2)
  ret i32 %v4_1060
}

define i32 @function_1070(i8* %s) local_unnamed_addr {
dec_label_pc_1070:
  %v2_1070 = call i32 @puts(i8* %s)
  ret i32 %v2_1070
}

define i64 @entry_point() local_unnamed_addr {
dec_label_pc_1080:
  %rax.global-to-local = alloca i64, align 8
  %tmp234 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %tmp234
}

define i64 @function_1083(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_1083:
  %rdx.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_1086 = load i64, i64* %rdx.global-to-local, align 8
  %v4_1089 = ptrtoint i64* %stack_var_8 to i64
  %tmp249 = bitcast i64* %stack_var_8 to i8**
  store i64 %v4_1089, i64* %rdx.global-to-local, align 8
  %v2_10a8 = trunc i64 %arg4 to i32
  %v13_10a8 = inttoptr i64 %v0_1086 to void ()*
  %v14_10a8 = call i32 @__libc_start_main(i64 4550, i32 %v2_10a8, i8** %tmp249, void ()* inttoptr (i64 5104 to void ()*), void ()* inttoptr (i64 5216 to void ()*), void ()* %v13_10a8)
  %v0_10ae = call i64 @__asm_hlt()
  ret i64 16520
}

define i64 @function_10e0() local_unnamed_addr {
dec_label_pc_10e0:
  ret i64 0
}

define i64 @function_1123() local_unnamed_addr {
dec_label_pc_1123:
  %rax.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_1124 = load i8, i8* inttoptr (i64 16513 to i8*), align 1
  %v7_1124 = icmp eq i8 %v0_1124, 0
  %v1_112b = icmp eq i1 %v7_1124, false
  br i1 %v1_112b, label %dec_label_pc_1160, label %dec_label_pc_112d

dec_label_pc_112d:                                ; preds = %dec_label_pc_1123
  %v0_112d = load i64, i64* %rbp.global-to-local, align 8
  store i64 %v0_112d, i64* %stack_var_-8, align 8
  %v4_112d = ptrtoint i64* %stack_var_-8 to i64
  %v0_112e = load i64, i64* inttoptr (i64 16344 to i64*), align 8
  %v7_112e = icmp eq i64 %v0_112e, 0
  store i64 %v4_112d, i64* %rbp.global-to-local, align 8
  br i1 %v7_112e, label %dec_label_pc_112d.dec_label_pc_1148_crit_edge, label %dec_label_pc_113b

dec_label_pc_112d.dec_label_pc_1148_crit_edge:    ; preds = %dec_label_pc_112d
  %v0_1155.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_1148

dec_label_pc_113b:                                ; preds = %dec_label_pc_112d
  %v0_113b = load i64, i64* inttoptr (i64 16456 to i64*), align 8
  %v1_1142 = inttoptr i64 %v0_113b to i64*
  call void @__cxa_finalize(i64* %v1_1142)
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  %v2_1154.pre = load i64, i64* %stack_var_-8, align 8
  br label %dec_label_pc_1148

dec_label_pc_1148:                                ; preds = %dec_label_pc_112d.dec_label_pc_1148_crit_edge, %dec_label_pc_113b
  %v0_1155 = phi i64 [ ptrtoint (i32* @0 to i64), %dec_label_pc_113b ], [ %v0_1155.pre, %dec_label_pc_112d.dec_label_pc_1148_crit_edge ]
  %v2_1154 = phi i64 [ %v2_1154.pre, %dec_label_pc_113b ], [ %v0_112d, %dec_label_pc_112d.dec_label_pc_1148_crit_edge ]
  store i8 1, i8* bitcast (i64* @global_var_4081 to i8*), align 8
  store i64 %v2_1154, i64* %rbp.global-to-local, align 8
  ret i64 %v0_1155

dec_label_pc_1160:                                ; preds = %dec_label_pc_1123
  %v0_1160 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_1160
}

define i64 @function_1170() local_unnamed_addr {
dec_label_pc_1170:
  %rax.global-to-local = alloca i64, align 8
  %tmp234 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %tmp234
}

define i64 @function_1173() local_unnamed_addr {
dec_label_pc_1173:
  %v0_1174 = call i64 @function_10e0()
  ret i64 %v0_1174
}

define i64 @function_1179(i64* %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_1179:
  %rdi.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  store i64 %arg3, i64* %rdx.global-to-local, align 8
  store i64 %arg2, i64* %rsi.global-to-local, align 8
  %tmp = ptrtoint i64* %arg1 to i64
  store i64 %tmp, i64* %rdi.global-to-local, align 8
  %v0_117d = load i64, i64* %rdi.global-to-local, align 8
  %v0_1181 = load i64, i64* %rsi.global-to-local, align 8
  %v0_1184 = load i64, i64* %rdx.global-to-local, align 8
  %v6_1193 = trunc i64 %v0_1181 to i32
  %v8_11968 = icmp sgt i32 %v6_1193, 0
  br i1 %v8_11968, label %dec_label_pc_1198, label %dec_label_pc_11c0

dec_label_pc_1198:                                ; preds = %dec_label_pc_1179, %dec_label_pc_1198
  %indvars.iv = phi i64 [ %indvars.iv.next, %dec_label_pc_1198 ], [ 0, %dec_label_pc_1179 ]
  store i64 %indvars.iv, i64* %rdx.global-to-local, align 8
  %v2_11a2 = add i64 %indvars.iv, %v0_117d
  %v1_11a5 = inttoptr i64 %v2_11a2 to i8*
  %v2_11a5 = load i8, i8* %v1_11a5, align 1
  %v3_11a5 = zext i8 %v2_11a5 to i64
  store i64 %v2_11a2, i64* %rdx.global-to-local, align 8
  %v7_11b53 = xor i64 %v3_11a5, %v0_1184
  %v7_11b5 = trunc i64 %v7_11b53 to i8
  store i8 %v7_11b5, i8* %v1_11a5, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv, %v6_1193
  br i1 %exitcond27, label %dec_label_pc_1190.dec_label_pc_11c0_crit_edge, label %dec_label_pc_1198

dec_label_pc_1190.dec_label_pc_11c0_crit_edge:    ; preds = %dec_label_pc_1198
  br label %dec_label_pc_11c0

dec_label_pc_11c0:                                ; preds = %dec_label_pc_1190.dec_label_pc_11c0_crit_edge, %dec_label_pc_1179
  ret i64 %v0_117d
}

define i64 @function_11c6() local_unnamed_addr {
dec_label_pc_11c6:
  %rax.global-to-local = alloca i64, align 8
  %stack_var_-280 = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %v0_11d1 = call i64 @__readfsqword(i64 40)
  store i64 3833744370448164705, i64* %stack_var_-424, align 8
  store i64 0, i64* %rax.global-to-local, align 8
  %v3_1363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @global_var_2004.2, i64 0, i64 0))
  %v2_1368 = ptrtoint i64* %stack_var_-280 to i64
  store i64 0, i64* %rax.global-to-local, align 8
  %v6_137e = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_2010.3, i64 0, i64 0), i64* nonnull %stack_var_-280)
  %v2_1383 = ptrtoint i64* %stack_var_-424 to i64
  store i64 %v2_1383, i64* %rax.global-to-local, align 8
  %v4_1397 = call i64 @function_1179(i64* nonnull %stack_var_-424, i64 32, i64 3)
  store i64 %v2_1368, i64* %rax.global-to-local, align 8
  %v1_13a6 = inttoptr i64 %v4_1397 to i8*
  %tmp284 = bitcast i64* %stack_var_-280 to i8*
  %v6_13ac = call i32 @strcmp(i8* %tmp284, i8* %v1_13a6)
  %v8_13ac = sext i32 %v6_13ac to i64
  %v5_13b1 = icmp eq i32 %v6_13ac, 0
  %v1_13b3 = zext i1 %v5_13b1 to i64
  %v3_13b3 = and i64 %v8_13ac, -256
  %v4_13b3 = or i64 %v3_13b3, %v1_13b3
  store i64 %v4_13b3, i64* %rax.global-to-local, align 8
  %v5_13b6 = icmp eq i1 %v5_13b1, false
  br i1 %v5_13b6, label %dec_label_pc_13c8, label %dec_label_pc_13ba

dec_label_pc_13ba:                                ; preds = %dec_label_pc_11c6
  %v3_13c1 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @global_var_2013.4, i64 0, i64 0))
  br label %dec_label_pc_13d4

dec_label_pc_13c8:                                ; preds = %dec_label_pc_11c6
  %v3_13cf = call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @global_var_201d.5, i64 0, i64 0))
  br label %dec_label_pc_13d4

dec_label_pc_13d4:                                ; preds = %dec_label_pc_13c8, %dec_label_pc_13ba
  store i64 0, i64* %rax.global-to-local, align 8
  %v1_13dd = call i64 @__readfsqword(i64 40)
  %v3_13dd = icmp eq i64 %v0_11d1, %v1_13dd
  br i1 %v3_13dd, label %dec_label_pc_13d4.dec_label_pc_13ed_crit_edge, label %dec_label_pc_13e8

dec_label_pc_13d4.dec_label_pc_13ed_crit_edge:    ; preds = %dec_label_pc_13d4
  %v0_13ee.pre = load i64, i64* %rax.global-to-local, align 8
  br label %dec_label_pc_13ed

dec_label_pc_13e8:                                ; preds = %dec_label_pc_13d4
  call void @__stack_chk_fail()
  store i64 ptrtoint (i32* @0 to i64), i64* %rax.global-to-local, align 8
  br label %dec_label_pc_13ed

dec_label_pc_13ed:                                ; preds = %dec_label_pc_13d4.dec_label_pc_13ed_crit_edge, %dec_label_pc_13e8
  %v0_13ee = phi i64 [ %v0_13ee.pre, %dec_label_pc_13d4.dec_label_pc_13ed_crit_edge ], [ ptrtoint (i32* @0 to i64), %dec_label_pc_13e8 ]
  ret i64 %v0_13ee
}

define i64 @function_13f3(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_13f3:
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
  %v0_13f4 = load i64, i64* %r15.global-to-local, align 8
  %v0_13f6 = load i64, i64* %rdx.global-to-local, align 8
  store i64 %v0_13f6, i64* %r15.global-to-local, align 8
  %v0_13f9 = load i64, i64* %r14.global-to-local, align 8
  %v0_13fb = load i64, i64* %rsi.global-to-local, align 8
  store i64 %v0_13fb, i64* %r14.global-to-local, align 8
  %v0_13fe = load i64, i64* %r13.global-to-local, align 8
  %v0_1400 = load i64, i64* %rdi.global-to-local, align 8
  store i64 %v0_1400, i64* %r13.global-to-local, align 8
  %v0_1403 = load i64, i64* %r12.global-to-local, align 8
  store i64 ptrtoint (i64* @global_var_3db8.6 to i64), i64* %r12.global-to-local, align 8
  %v0_140c = load i64, i64* %rbp.global-to-local, align 8
  %v0_1414 = load i64, i64* %rbx.global-to-local, align 8
  store i64 sub (i64 ptrtoint (i64* @global_var_3dc0.7 to i64), i64 ptrtoint (i64* @global_var_3db8.6 to i64)), i64* %rbp.global-to-local, align 8
  %v0_141c = call i64 @function_1000()
  store i64 sdiv (i64 sub (i64 ptrtoint (i64* @global_var_3dc0.7 to i64), i64 ptrtoint (i64* @global_var_3db8.6 to i64)), i64 8), i64* %rbp.global-to-local, align 8
  br i1 icmp eq (i64 sdiv (i64 sub (i64 ptrtoint (i64* @global_var_3dc0.7 to i64), i64 ptrtoint (i64* @global_var_3db8.6 to i64)), i64 8), i64 0), label %dec_label_pc_1446, label %dec_label_pc_1428

dec_label_pc_1428:                                ; preds = %dec_label_pc_13f3
  store i64 0, i64* %rbx.global-to-local, align 8
  %v0_1430 = load i64, i64* %r15.global-to-local, align 8
  %v0_1433 = load i64, i64* %r14.global-to-local, align 8
  %v0_1436 = load i64, i64* %r13.global-to-local, align 8
  br label %dec_label_pc_1430

dec_label_pc_1430:                                ; preds = %dec_label_pc_1430, %dec_label_pc_1428
  %v1_143d2 = phi i64 [ %v1_143d, %dec_label_pc_1430 ], [ 0, %dec_label_pc_1428 ]
  %v1_143d = add i64 %v1_143d2, 1
  %v12_1441 = icmp eq i64 %v1_143d, sdiv (i64 sub (i64 ptrtoint (i64* @global_var_3dc0.7 to i64), i64 ptrtoint (i64* @global_var_3db8.6 to i64)), i64 8)
  %v1_1444 = icmp eq i1 %v12_1441, false
  br i1 %v1_1444, label %dec_label_pc_1430, label %dec_label_pc_1446.loopexit

dec_label_pc_1446.loopexit:                       ; preds = %dec_label_pc_1430
  store i64 %v0_1430, i64* %rdx.global-to-local, align 8
  store i64 %v0_1433, i64* %rsi.global-to-local, align 8
  store i64 %v0_1436, i64* %rdi.global-to-local, align 8
  store i64 %v1_143d, i64* %rbx.global-to-local, align 8
  br label %dec_label_pc_1446

dec_label_pc_1446:                                ; preds = %dec_label_pc_1446.loopexit, %dec_label_pc_13f3
  store i64 %v0_1414, i64* %rbx.global-to-local, align 8
  store i64 %v0_140c, i64* %rbp.global-to-local, align 8
  store i64 %v0_1403, i64* %r12.global-to-local, align 8
  store i64 %v0_13fe, i64* %r13.global-to-local, align 8
  store i64 %v0_13f9, i64* %r14.global-to-local, align 8
  store i64 %v0_13f4, i64* %r15.global-to-local, align 8
  ret i64 %v0_141c
}

define i64 @function_1463() local_unnamed_addr {
dec_label_pc_1463:
  %rax.global-to-local = alloca i64, align 8
  %v0_1464 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_1464
}

define i64 @function_146b() local_unnamed_addr {
dec_label_pc_146b:
  %rax.global-to-local = alloca i64, align 8
  %v0_1474 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_1474
}

declare void @__cxa_finalize(i64*) local_unnamed_addr

declare i32 @__libc_start_main(i64, i32, i8**, void ()*, void ()*, void ()*) local_unnamed_addr

declare void @__gmon_start__() local_unnamed_addr

declare i32 @printf(i8*, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @scanf(i8*, ...) local_unnamed_addr

declare i32 @strcmp(i8*, i8*) local_unnamed_addr

declare i32 @puts(i8*) local_unnamed_addr

declare i64 @__asm_hlt() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr
