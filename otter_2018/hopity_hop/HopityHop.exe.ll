source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

%0 = type { i32, i32, i32, i32 }
%1 = type { i32, i32, i32, i32 }
%2 = type { i32, i32, i32, i32 }
%_onexit_table_t = type { void ()**, void ()**, void ()** }
%_IO_FILE = type { i32 }
%_EXCEPTION_POINTERS = type { %_EXCEPTION_RECORD*, %_CONTEXT* }
%_EXCEPTION_RECORD = type { i32, i32, %_EXCEPTION_RECORD*, i64*, i32, [1 x i32] }
%_CONTEXT = type { i64, i64, i64, i64, i64, i64, i32, i32, i16, i16, i16, i16, i16, i16, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [26 x %_M128A], i64, i64, i64, i64, i64, i64 }
%_M128A = type { i64, i64 }
%_IMAGE_RUNTIME_FUNCTION_ENTRY = type { i32, i32, i64 }
%_UNWIND_HISTORY_TABLE = type { i32, i8, i8, i8, i8, i64, i64, [1 x %_UNWIND_HISTORY_TABLE_ENTRY] }
%_UNWIND_HISTORY_TABLE_ENTRY = type { i64, %_IMAGE_RUNTIME_FUNCTION_ENTRY* }
%_KNONVOLATILE_CONTEXT_POINTERS = type { i64, i64 }

@rax = internal unnamed_addr global i64 0
@rdx = internal unnamed_addr global i64 0
@rbx = internal unnamed_addr global i64 0
@rbp = internal unnamed_addr global i64 0
@rsi = internal unnamed_addr global i64 0
@rdi = internal unnamed_addr global i64 0
@r9 = internal unnamed_addr global i64 0
@global_var_140004630.5 = global i64 0
@global_var_140002220.6 = constant [1733 x i8] c"fuOoLtJVxzVohfuwStKPGeYjeaeENjBUtrNFCQSUgfyNoGrkdgYFZNRywRxTWYzisAjBsbkbEqszyMbwkAadGdmZldjBfOiEuHzzxYEkVQvbgQTleRaxUpzNJORxNyAsoWYsyOoLwCflAMFVNIQFolWoOXqgKazCBwgrJRtYCVtJiUSKUkAOLnQCkGpvmGLPlstMQktpFvufSLggiIWqwIUXDBUpnINCuJWOOXZqyikyGjYpkBcvrypECQPKmTNGldBaVvawjQFuLckhDXSSRhQVhuXbufswQeXcriPkdzHsyVPZkBsrhAieOXLQgZVrolvhAzGZBWtmUDbRthQNwTvpXfBUtarFIN{GQzMcUqkyLnQHAfZpHUVCFyKDRRDqKHuEPVfcqsqlZIuoLQmcpHluJTSYBtydPTmvLAVCGoDnGAAeNllVupsANgRVMpKrlyHezDMVKAMLHBpJcDrwMcvswSxKzJBcgNjSLzTFOthHWduYXvmIHcHfpWomvcLkVnKuhgZCrpGfheEcUlcImXsVhAXdDnMjZtvDRZrDsnNDxIAxMuQuxKrdnzJMwmALPCsVliwoHHEuqGwgSqqMGEOLQqsvAcbZqNbSMqSthI0wCsursoXxuxNfTcJNUsLGrBdSQmnRcCtXQPSOKVAVnwHoGlAgbecalSBckiOGmEnphbhmumFvHpoekMTvhQeeqAJdBWjUtVHmlsGfLCuqpbiQVcmmPfPIJFqsxbnCiDtkWFPwLIGKEBliEDCtPrpgnAMXsKCSMDidQFzCu_mPMtRAVjqCoibPJboLEIYOTiDchrDDmYeFYYoeKVDckfJhfsjYvUqRaVrPygANsCtVTOpxFyPCmljFIbkJotORLEeOvTVofAsSWbYGHtYxFNHSvTuSOmqnUkZHeqpWUReHwwsgPetpMFYiDfhUxnBeIkzGMPyBqVPseJWnTPILENAsOkkycUHsvJ0fodiCfMRPSUKaTFBZPHfkXgwJvEJTESfdLSoHzEqrJWulXkhNYrCFWBLHxIOmDghAamJoGdMushfqvOEJzYaIpcJcGUbDwwvWXCMNAaMIGSqTrTQTLtKQhJTWROvkGnIDcGvTkCDwSFRVEVVVnOlLFIoZDjcGAMIjEBrYZWlWJaHHPTEapZbJQBBUIKPsHafYnGK_QCblKSryqzVTikKFUatKRiKTDwbFAUNNfbZggpgzlYnLAIhsqGapwprPrwVGauySbRjofNnrbiqccvOkaGVoQZDRPqeSFDffSJvmFMaKJwmwMcxgUcUBPcQySMmKhldhQSUZg0RrCZtJmicWDpDpFOyPepJzLBGrrhSyumaujkVxVbyEkdfueBUvfQqcAQIQPiBiwNOkCyxpVKEMiEbGeScaBIVSpPabyLmHNOMsdbHQmPuJYuaIwmdEyEdfVZffKbYJoRYFcLGxsQXjvImQrIqYTwrzrAKIzzlzBHagRUXqGjwHnrPqSocOYDzvohnXrtKiTsmbIrovrowuUeAGSAGwiRXZCamkwLVGwBMGYRYgkqZnZpvHN3fhMAjZLOlRdCmYILiFCXLZVFkGlhreNfPrwQzfHdsIegqOkfnWmzQRyQcPStDtBBxinzqlNKeRTsySXlhQLkremIhGJnwiGLAYpbzQFKmJtCFbufTUFROMsXjgGlaxorwBefXNssXejQWMYwnfvInpQ}qMCOoKCqKyJbUFOQoSPjQgNgEogfQQAPrtixyi\00"
@global_var_140002210.8 = constant [3 x i8] c"%c\00"
@global_var_1400045d0.19 = local_unnamed_addr global i64 0
@global_var_1400045e8.20 = local_unnamed_addr global i64 0
@global_var_140004008.21 = local_unnamed_addr global i64 -47936899621427
@global_var_140004600.22 = global i64 0
@global_var_140004610.23 = global i64 0
@global_var_140004628.25 = global i64 0
@global_var_140004620.26 = global i64 0
@global_var_140004018.31 = local_unnamed_addr global i64 8589934593
@global_var_140004020.32 = local_unnamed_addr global [3 x i8] c"/ \00"
@0 = external global i32
@global_var_1400028f0.7 = external local_unnamed_addr constant i128
@global_var_1400045b0.9 = local_unnamed_addr global i32 0
@global_var_1400021d0.10 = constant i32 ()** null
@global_var_1400021b8.11 = constant i32 ()** null
@global_var_1400021b0.12 = constant void ()** null
@global_var_1400021a0.13 = constant void ()** null
@global_var_1400045f0.14 = local_unnamed_addr global i32 0
@global_var_1400045b4.15 = local_unnamed_addr global i8 0
@global_var_1400045c0.16 = global %_onexit_table_t* null
@global_var_1400045d8.17 = global %_onexit_table_t* null
@global_var_140004000.18 = local_unnamed_addr global i32 769630770
@global_var_140004014.24 = local_unnamed_addr global i32 1
@global_var_140004618.27 = local_unnamed_addr global i32 0
@global_var_14000401c.30 = local_unnamed_addr global i32 2
@global_var_14000461c.33 = local_unnamed_addr global i32 0
@global_var_140004030.34 = local_unnamed_addr global i32 1

define i64 @function_140001000() local_unnamed_addr {
dec_label_pc_140001000:
  ret i64 ptrtoint (i64* @global_var_140004630.5 to i64)
}

define i64 @function_140001010(i8* %arg1, i8 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_140001010:
  %rcx.global-to-local = alloca i64, align 8
  %rdi.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %tmp11 = sext i8 %arg2 to i64
  store i64 %tmp11, i64* %rdx.global-to-local, align 8
  %tmp12 = ptrtoint i8* %arg1 to i64
  store i64 %tmp12, i64* %rcx.global-to-local, align 8
  %stack_var_16 = alloca i8, align 1
  %v0_140001015 = load i64, i64* %rdx.global-to-local, align 8
  %v4_140001015 = trunc i64 %v0_140001015 to i8
  store i8 %v4_140001015, i8* %stack_var_16, align 1
  %v0_14000102b = load i64, i64* %rcx.global-to-local, align 8
  store i64 %v0_14000102b, i64* %rdi.global-to-local, align 8
  %v2_14000102e = ptrtoint i8* %stack_var_16 to i64
  store i64 1, i64* %rcx.global-to-local, align 8
  %v3_140001038 = call i64* @__acrt_iob_func(i32 1)
  %v5_140001038 = ptrtoint i64* %v3_140001038 to i64
  %v0_140001041 = call i64 @function_140001000()
  store i64 0, i64* @r9, align 8
  %v0_14000104e = load i64, i64* %rdi.global-to-local, align 8
  %v1_14000104e = inttoptr i64 %v0_14000104e to i8*
  %v1_140001051 = bitcast i64* %v3_140001038 to %_IO_FILE*
  store i64 %v5_140001038, i64* %rdx.global-to-local, align 8
  %v1_140001054 = inttoptr i64 %v0_140001041 to i64*
  %v2_140001054 = load i64, i64* %v1_140001054, align 8
  store i64 %v2_140001054, i64* %rcx.global-to-local, align 8
  %v9_140001057 = call i32 @__stdio_common_vfprintf(i64 %v2_140001054, %_IO_FILE* %v1_140001051, i8* %v1_14000104e, i64 0, i64 %v2_14000102e)
  %v11_140001057 = sext i32 %v9_140001057 to i64
  ret i64 %v11_140001057
}

define i64 @function_140001070(i32 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_140001070:
  %rsp.global-to-local = alloca i64, align 8
  store i64 0, i64* %rsp.global-to-local, align 8
  %stack_var_-1784 = alloca i128, align 8
  %tmp19 = call i128 @__decompiler_undefined_function_5()
  %stack_var_-1752 = alloca i64, align 8
  %v0_140001075 = load i64, i64* @rsi, align 8
  store i64 0, i64* @rbx, align 8
  %v7_140001096 = call i64* @memcpy(i64* nonnull %stack_var_-1752, i64* bitcast ([1733 x i8]* @global_var_140002220.6 to i64*), i32 1732)
  %v0_14000109b = load i128, i128* @global_var_1400028f0.7, align 8
  %v1_14000109b = call i128 @__asm_movdqa(i128 %v0_14000109b)
  %v2_1400010a3 = ptrtoint i128* %stack_var_-1784 to i64
  store i64 %v2_1400010a3, i64* @rdi, align 8
  call void @__asm_movdqu(i128 %tmp19, i128 %v1_14000109b)
  %v0_1400010b5 = load i64, i64* @rsi, align 8
  %v1_1400010b5 = and i64 %v0_1400010b5, -256
  %v2_1400010b5 = or i64 %v1_1400010b5, 148
  store i64 %v2_1400010b5, i64* @rsi, align 8
  %v0_1400010c0.pre = load i64, i64* @rbx, align 8
  br label %dec_label_pc_1400010c0

dec_label_pc_1400010c0:                           ; preds = %dec_label_pc_1400010c0, %dec_label_pc_140001070
  %v0_1400010c0 = phi i64 [ %v20_1400010e1, %dec_label_pc_1400010c0 ], [ %v0_1400010c0.pre, %dec_label_pc_140001070 ]
  %v0_1400010ca = load i64, i64* %rsp.global-to-local, align 8
  %v3_1400010ca = add i64 %v0_1400010c0, 64
  %v4_1400010ca = add i64 %v3_1400010ca, %v0_1400010ca
  %v5_1400010ca = inttoptr i64 %v4_1400010ca to i8*
  %v6_1400010ca = load i8, i8* %v5_1400010ca, align 1
  %v8_1400010cf = load i64, i64* @r9, align 8
  %v9_1400010cf = call i64 @function_140001010(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @global_var_140002210.8, i64 0, i64 0), i8 %v6_1400010ca, i64 1732, i64 %v8_1400010cf)
  %v0_1400010d4 = load i64, i64* @rsi, align 8
  %v0_1400010d8 = load i64, i64* @rdi, align 8
  %v1_1400010d8 = add i64 %v0_1400010d8, 1
  store i64 %v1_1400010d8, i64* @rdi, align 8
  %v1_1400010dc = inttoptr i64 %v1_1400010d8 to i8*
  %v2_1400010dc = load i8, i8* %v1_1400010dc, align 1
  %v3_1400010dc = zext i8 %v2_1400010dc to i64
  store i64 %v3_1400010dc, i64* @rsi, align 8
  %v0_1400010df = load i64, i64* @rbx, align 8
  %v2_1400010df = add i64 %v0_1400010d4, 1
  %v4_1400010e1 = add i64 %v2_1400010df, %v0_1400010df
  %v20_1400010e1 = and i64 %v4_1400010e1, 4294967295
  store i64 %v20_1400010e1, i64* @rbx, align 8
  %v5_1400010e3 = icmp eq i8 %v2_1400010dc, 0
  %v1_1400010e6 = icmp eq i1 %v5_1400010e3, false
  br i1 %v1_1400010e6, label %dec_label_pc_1400010c0, label %dec_label_pc_1400010e8

dec_label_pc_1400010e8:                           ; preds = %dec_label_pc_1400010c0
  store i64 %v0_140001075, i64* @rsi, align 8
  ret i64 0
}

define i64 @function_140001134() local_unnamed_addr {
dec_label_pc_140001134:
  %rbx.global-to-local = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %v0_140001134 = load i64, i64* %rbx.global-to-local, align 8
  store i64 %v0_140001134, i64* %stack_var_-8, align 8
  call void @_set_app_type(i64 1)
  %v0_140001144 = call i64 @function_140001890()
  %v1_140001149 = trunc i64 %v0_140001144 to i32
  %v3_14000114b = call i32 @_set_fmode(i32 %v1_140001149)
  %v0_140001150 = call i32* @__p__commode()
  %v2_140001150 = ptrtoint i32* %v0_140001150 to i64
  store i64 %v2_140001150, i64* @rbx, align 8
  %v0_140001158 = call i64 @function_140001884()
  store i64 %v0_140001158, i64* @rax, align 8
  %v1_140001162 = trunc i64 %v0_140001158 to i32
  %v2_140001162 = load i64, i64* @rbx, align 8
  %v3_140001162 = inttoptr i64 %v2_140001162 to i32*
  store i32 %v1_140001162, i32* %v3_140001162, align 4
  %v1_140001164 = call i64 @function_1400015a4(i64 1)
  store i64 %v1_140001164, i64* @rax, align 8
  %v4_140001169 = trunc i64 %v1_140001164 to i8
  %v5_140001169 = icmp eq i8 %v4_140001169, 0
  br i1 %v5_140001169, label %dec_label_pc_1400011d9, label %dec_label_pc_14000116d

dec_label_pc_14000116d:                           ; preds = %dec_label_pc_140001134
  %v0_14000116d = call i64 @function_140001ae0()
  %v1_140001179 = call i64 @function_1400017bc(i64 5368716060)
  %v0_14000117e = call i64 @function_140001888()
  %v1_140001185 = call i32 @_configure_narrow_argv(i64 %v0_14000117e)
  %v5_14000118a = icmp eq i32 %v1_140001185, 0
  %v1_14000118c = icmp eq i1 %v5_14000118a, false
  br i1 %v1_14000118c, label %dec_label_pc_1400011d9, label %dec_label_pc_14000118e

dec_label_pc_14000118e:                           ; preds = %dec_label_pc_14000116d
  %v1_14000118e = inttoptr i64 %v0_14000117e to i64*
  call void @InitializeSListHead(i64* %v1_14000118e)
  %v0_140001193 = call i64 @function_1400018d4()
  store i64 %v0_140001193, i64* @rax, align 8
  %v4_140001198 = trunc i64 %v0_140001193 to i32
  %v5_140001198 = icmp eq i32 %v4_140001198, 0
  br i1 %v5_140001198, label %dec_label_pc_1400011a8, label %dec_label_pc_14000119c

dec_label_pc_14000119c:                           ; preds = %dec_label_pc_14000118e
  call void @__setusermatherr(i64 5368715396)
  store i64 ptrtoint (i32* @0 to i64), i64* @rax, align 8
  br label %dec_label_pc_1400011a8

dec_label_pc_1400011a8:                           ; preds = %dec_label_pc_14000119c, %dec_label_pc_14000118e
  %v0_1400011a8 = call i64 @function_1400018ac()
  store i64 %v0_1400011a8, i64* @rax, align 8
  %v0_1400011ad = call i64 @function_1400018ac()
  %v0_1400011b2 = call i64 @function_140001884()
  %v1_1400011b7 = trunc i64 %v0_1400011b2 to i32
  %v3_1400011b9 = call i32 @_configthreadlocale(i32 %v1_1400011b7)
  %v5_1400011b9 = sext i32 %v3_1400011b9 to i64
  store i64 %v5_1400011b9, i64* @rax, align 8
  %sext = mul i64 %v0_1400011b2, 4294967296
  %v1_1400011be = sdiv i64 %sext, 4294967296
  %v2_1400011be = call i64 @function_1400018a8(i64 %v1_1400011be)
  %v4_1400011c3 = trunc i64 %v2_1400011be to i8
  %v5_1400011c3 = icmp eq i8 %v4_1400011c3, 0
  br i1 %v5_1400011c3, label %dec_label_pc_1400011cc, label %dec_label_pc_1400011c7

dec_label_pc_1400011c7:                           ; preds = %dec_label_pc_1400011a8
  %v0_1400011c7 = call i32 @_initialize_narrow_environment()
  br label %dec_label_pc_1400011cc

dec_label_pc_1400011cc:                           ; preds = %dec_label_pc_1400011c7, %dec_label_pc_1400011a8
  %v0_1400011cc = call i64 @function_140001884()
  %v2_1400011d7 = load i64, i64* %stack_var_-8, align 8
  store i64 %v2_1400011d7, i64* %rbx.global-to-local, align 8
  ret i64 0

dec_label_pc_1400011d9:                           ; preds = %dec_label_pc_14000116d, %dec_label_pc_140001134
  %v1_1400011de = load i64, i64* @rdx, align 8
  %v2_1400011de = call i64 @function_1400018f8(i64 7, i64 %v1_1400011de)
  %v0_1400011e3 = call i64 @__asm_int3()
  %v0_1400011e8 = call i64 @function_1400018b8()
  ret i64 0
}

define i64 @function_1400011f4() local_unnamed_addr {
dec_label_pc_1400011f4:
  %rcx.global-to-local = alloca i64, align 8
  %v0_1400011f8 = load i64, i64* %rcx.global-to-local, align 8
  %v1_1400011f8 = inttoptr i64 %v0_1400011f8 to i32 (%_EXCEPTION_POINTERS*)*
  %v2_1400011f8 = call i32 (%_EXCEPTION_POINTERS*)* @SetUnhandledExceptionFilter(i32 (%_EXCEPTION_POINTERS*)* %v1_1400011f8)
  %v0_1400011fd = call i64 @function_140001884()
  %v1_140001202 = trunc i64 %v0_1400011fd to i32
  store i64 %v0_1400011fd, i64* %rcx.global-to-local, align 8
  %v3_140001208 = call i32 @_set_new_mode(i32 %v1_140001202)
  %v5_140001208 = sext i32 %v3_140001208 to i64
  ret i64 %v5_140001208
}

define i64 @function_140001210() local_unnamed_addr {
dec_label_pc_140001210:
  %rbx.global-to-local = alloca i64, align 8
  %v0_140001210 = load i64, i64* @rbx, align 8
  %v1_140001224 = call i64 @function_140001558(i64 1)
  %v4_140001229 = trunc i64 %v1_140001224 to i8
  %v5_140001229 = icmp eq i8 %v4_140001229, 0
  br i1 %v5_140001229, label %dec_label_pc_140001367, label %dec_label_pc_140001231

dec_label_pc_140001231:                           ; preds = %dec_label_pc_140001210
  %v11_140001231 = load i64, i64* @rsi, align 8
  %v12_140001231 = and i64 %v11_140001231, -256
  store i64 %v12_140001231, i64* @rsi, align 8
  %v0_140001239 = call i64 @__scrt_acquire_startup_lock()
  %v1_14000123e = load i64, i64* @rbx, align 8
  %v2_14000123e = and i64 %v1_14000123e, -256
  %v3_14000123e = or i64 %v2_14000123e, %v0_140001239
  store i64 %v3_14000123e, i64* @rbx, align 8
  %v0_140001240 = load i32, i32* @global_var_1400045b0.9, align 4
  %v1_140001240 = zext i32 %v0_140001240 to i64
  %v11_140001246 = icmp eq i32 %v0_140001240, 1
  br i1 %v11_140001246, label %dec_label_pc_140001372, label %dec_label_pc_14000124f

dec_label_pc_14000124f:                           ; preds = %dec_label_pc_140001231
  %v6_140001246 = icmp eq i32 %v0_140001240, 0
  %v1_140001251 = icmp eq i1 %v6_140001246, false
  br i1 %v1_140001251, label %dec_label_pc_14000129d, label %dec_label_pc_140001253

dec_label_pc_140001253:                           ; preds = %dec_label_pc_14000124f
  store i32 1, i32* @global_var_1400045b0.9, align 4
  %v6_14000126b = call i32 @_initterm_e(i32 ()** bitcast (i32 ()*** @global_var_1400021b8.11 to i32 ()**), i32 ()** bitcast (i32 ()*** @global_var_1400021d0.10 to i32 ()**))
  %v5_140001270 = icmp eq i32 %v6_14000126b, 0
  br i1 %v5_140001270, label %dec_label_pc_14000127e, label %dec_label_pc_140001357

dec_label_pc_14000127e:                           ; preds = %dec_label_pc_140001253
  call void @_initterm(void ()** bitcast (void ()*** @global_var_1400021a0.13 to void ()**), void ()** bitcast (void ()*** @global_var_1400021b0.12 to void ()**))
  store i32 2, i32* @global_var_1400045b0.9, align 4
  %v0_1400012a5.pre = load i64, i64* @rbx, align 8
  br label %dec_label_pc_1400012a5

dec_label_pc_14000129d:                           ; preds = %dec_label_pc_14000124f
  %v0_14000129d = load i64, i64* @rsi, align 8
  %v1_14000129d = and i64 %v0_14000129d, -256
  %v2_14000129d = or i64 %v1_14000129d, 1
  store i64 %v2_14000129d, i64* @rsi, align 8
  br label %dec_label_pc_1400012a5

dec_label_pc_1400012a5:                           ; preds = %dec_label_pc_14000129d, %dec_label_pc_14000127e
  %v1_1400012a5 = phi i64 [ %v1_140001240, %dec_label_pc_14000129d ], [ ptrtoint (void ()*** @global_var_1400021a0.13 to i64), %dec_label_pc_14000127e ]
  %v0_1400012a5 = phi i64 [ %v3_14000123e, %dec_label_pc_14000129d ], [ %v0_1400012a5.pre, %dec_label_pc_14000127e ]
  %v2_1400012a5 = and i64 %v1_1400012a5, -256
  %v3_1400012a5 = or i64 %v2_1400012a5, %v0_1400012a5
  %v1_1400012a7 = call i64 @__scrt_release_startup_lock(i64 %v3_1400012a5)
  %v0_1400012ac = call i64 @function_1400018e0()
  store i64 %v0_1400012ac, i64* %rbx.global-to-local, align 8
  %v1_1400012b4 = inttoptr i64 %v0_1400012ac to i64*
  %v2_1400012b4 = load i64, i64* %v1_1400012b4, align 8
  %v9_1400012b4 = icmp eq i64 %v2_1400012b4, 0
  br i1 %v9_1400012b4, label %dec_label_pc_1400012d8, label %dec_label_pc_1400012ba

dec_label_pc_1400012ba:                           ; preds = %dec_label_pc_1400012a5
  %sext = mul i64 %v0_1400012ac, 4294967296
  %v1_1400012bd = sdiv i64 %sext, 4294967296
  %v2_1400012bd = call i64 @function_140001680(i64 %v1_1400012bd)
  %v4_1400012c2 = trunc i64 %v2_1400012bd to i8
  %v5_1400012c2 = icmp eq i8 %v4_1400012c2, 0
  br i1 %v5_1400012c2, label %dec_label_pc_1400012d8, label %dec_label_pc_1400012c6

dec_label_pc_1400012c6:                           ; preds = %dec_label_pc_1400012ba
  %v0_1400012cf = load i64, i64* %rbx.global-to-local, align 8
  %v1_1400012cf = inttoptr i64 %v0_1400012cf to i64*
  %v2_1400012cf = load i64, i64* %v1_1400012cf, align 8
  store i64 %v2_1400012cf, i64* @rax, align 8
  %v7_1400012d2 = call i64 @function_140001de0(i32 0, i64 2, i32 0)
  br label %dec_label_pc_1400012d8

dec_label_pc_1400012d8:                           ; preds = %dec_label_pc_1400012c6, %dec_label_pc_1400012ba, %dec_label_pc_1400012a5
  %v0_1400012d8 = call i64 @function_1400018e8()
  store i64 %v0_1400012d8, i64* %rbx.global-to-local, align 8
  %v1_1400012e0 = inttoptr i64 %v0_1400012d8 to i64*
  %v2_1400012e0 = load i64, i64* %v1_1400012e0, align 8
  %v9_1400012e0 = icmp eq i64 %v2_1400012e0, 0
  br i1 %v9_1400012e0, label %dec_label_pc_1400012fa, label %dec_label_pc_1400012e6

dec_label_pc_1400012e6:                           ; preds = %dec_label_pc_1400012d8
  %v1_1400012e9 = call i64 @function_140001680(i64 %v0_1400012d8)
  %v4_1400012ee = trunc i64 %v1_1400012e9 to i8
  %v5_1400012ee = icmp eq i8 %v4_1400012ee, 0
  br i1 %v5_1400012ee, label %dec_label_pc_1400012fa, label %dec_label_pc_1400012f2

dec_label_pc_1400012f2:                           ; preds = %dec_label_pc_1400012e6
  %v0_1400012f2 = load i64, i64* %rbx.global-to-local, align 8
  %v1_1400012f2 = inttoptr i64 %v0_1400012f2 to i64*
  %v2_1400012f2 = load i64, i64* %v1_1400012f2, align 8
  %v3_1400012f2 = inttoptr i64 %v2_1400012f2 to void (i64*, i32, i64*)*
  call void @_register_thread_local_exe_atexit_callback(void (i64*, i32, i64*)* %v3_1400012f2)
  br label %dec_label_pc_1400012fa

dec_label_pc_1400012fa:                           ; preds = %dec_label_pc_1400012f2, %dec_label_pc_1400012e6, %dec_label_pc_1400012d8
  %v0_1400012fa = call i8*** @__p___argv()
  %v1_1400012ff = bitcast i8*** %v0_1400012fa to i64*
  %v2_1400012ff = load i64, i64* %v1_1400012ff, align 8
  store i64 %v2_1400012ff, i64* @rdi, align 8
  %v0_140001302 = call i32* @__p___argc()
  %v2_140001302 = ptrtoint i32* %v0_140001302 to i64
  store i64 %v2_140001302, i64* @rbx, align 8
  %v0_14000130a = call i8** @_get_initial_narrow_environment()
  %v2_14000130a = ptrtoint i8** %v0_14000130a to i64
  %v0_140001312 = load i64, i64* @rdi, align 8
  %v0_140001315 = load i64, i64* @rbx, align 8
  %v1_140001315 = inttoptr i64 %v0_140001315 to i32*
  %v2_140001315 = load i32, i32* %v1_140001315, align 4
  %sext9 = mul i64 %v0_140001312, 4294967296
  %v4_140001317 = sdiv i64 %sext9, 4294967296
  %v6_140001317 = call i64 @function_140001070(i32 %v2_140001315, i64 %v4_140001317, i64 %v2_14000130a)
  store i64 %v6_140001317, i64* @rbx, align 8
  %v1_14000131e = sext i32 %v2_140001315 to i64
  %v2_14000131e = call i64 @function_140001a44(i64 %v1_14000131e)
  store i64 %v2_14000131e, i64* @rax, align 8
  %v4_140001323 = trunc i64 %v2_14000131e to i8
  %v5_140001323 = icmp eq i8 %v4_140001323, 0
  br i1 %v5_140001323, label %dec_label_pc_14000137c, label %dec_label_pc_140001327

dec_label_pc_140001327:                           ; preds = %dec_label_pc_1400012fa
  %v0_140001327 = load i64, i64* @rsi, align 8
  %v4_140001327 = trunc i64 %v0_140001327 to i8
  %v5_140001327 = icmp eq i8 %v4_140001327, 0
  %v1_14000132a = icmp eq i1 %v5_140001327, false
  br i1 %v1_14000132a, label %dec_label_pc_140001331, label %dec_label_pc_14000132c

dec_label_pc_14000132c:                           ; preds = %dec_label_pc_140001327
  call void @_cexit()
  store i64 ptrtoint (i32* @0 to i64), i64* @rax, align 8
  br label %dec_label_pc_140001331

dec_label_pc_140001331:                           ; preds = %dec_label_pc_14000132c, %dec_label_pc_140001327
  %v2_140001333 = and i64 %v1_14000131e, -256
  %v3_140001333 = or i64 %v2_140001333, 1
  %v4_140001335 = call i64 @function_140001740(i64 %v3_140001333, i32 0)
  %v0_14000133a = load i64, i64* @rbx, align 8
  br label %dec_label_pc_140001357

dec_label_pc_140001357:                           ; preds = %dec_label_pc_140001253, %dec_label_pc_140001331
  %storemerge = phi i64 [ %v0_14000133a, %dec_label_pc_140001331 ], [ 255, %dec_label_pc_140001253 ]
  store i64 %v0_140001210, i64* %rbx.global-to-local, align 8
  ret i64 %storemerge

dec_label_pc_140001367:                           ; preds = %dec_label_pc_140001210
  %v1_14000136c = load i64, i64* @rdx, align 8
  %v2_14000136c = call i64 @function_1400018f8(i64 7, i64 %v1_14000136c)
  br label %dec_label_pc_140001372

dec_label_pc_140001372:                           ; preds = %dec_label_pc_140001367, %dec_label_pc_140001231
  %v1_140001377 = load i64, i64* @rdx, align 8
  %v2_140001377 = call i64 @function_1400018f8(i64 7, i64 %v1_140001377)
  br label %dec_label_pc_14000137c

dec_label_pc_14000137c:                           ; preds = %dec_label_pc_140001372, %dec_label_pc_1400012fa
  %v0_14000137c = load i64, i64* @rbx, align 8
  %v1_14000137c = trunc i64 %v0_14000137c to i32
  call void @exit(i32 %v1_14000137c)
  unreachable
}

define i64 @entry_point() local_unnamed_addr {
dec_label_pc_14000138c:
  %v0_140001390 = call i64 @function_1400017d4()
  %v0_140001399 = call i64 @function_140001210()
  ret i64 %v0_140001399
}

declare i64 @__scrt_acquire_startup_lock() local_unnamed_addr

define i64 @function_140001558(i64 %arg1) local_unnamed_addr {
dec_label_pc_140001558:
  %v0_140001558 = load i64, i64* @rbx, align 8
  %v0_14000155e = load i8, i8* bitcast (i32* @global_var_1400045f0.14 to i8*), align 4
  %v4_140001565 = trunc i64 %arg1 to i32
  %v5_140001565 = icmp eq i32 %v4_140001565, 0
  store i64 1, i64* @rbx, align 8
  %v1_14000156f = select i1 %v5_140001565, i8 1, i8 %v0_14000155e
  store i8 %v1_14000156f, i8* bitcast (i32* @global_var_1400045f0.14 to i8*), align 4
  %v1_140001575 = call i64 @function_140001b58(i64 %arg1)
  store i64 %v1_140001575, i64* @rax, align 8
  %v1_14000157a = call i64 @function_1400018a8(i64 %arg1)
  store i64 %v1_14000157a, i64* @rax, align 8
  %v4_14000157f = trunc i64 %v1_14000157a to i8
  %v5_14000157f = icmp eq i8 %v4_14000157f, 0
  %v1_140001581 = icmp eq i1 %v5_14000157f, false
  br i1 %v1_140001581, label %dec_label_pc_140001587, label %dec_label_pc_140001583

dec_label_pc_140001583:                           ; preds = %dec_label_pc_140001590, %dec_label_pc_140001558
  %v11_140001583 = phi i64 [ %v1_140001592, %dec_label_pc_140001590 ], [ %v1_14000157a, %dec_label_pc_140001558 ]
  %v12_140001583 = and i64 %v11_140001583, -256
  br label %dec_label_pc_14000159b

dec_label_pc_140001587:                           ; preds = %dec_label_pc_140001558
  %v1_140001587 = call i64 @function_1400018a8(i64 %arg1)
  store i64 %v1_140001587, i64* @rax, align 8
  %v4_14000158c = trunc i64 %v1_140001587 to i8
  %v5_14000158c = icmp eq i8 %v4_14000158c, 0
  %v1_14000158e = icmp eq i1 %v5_14000158c, false
  br i1 %v1_14000158e, label %dec_label_pc_140001599, label %dec_label_pc_140001590

dec_label_pc_140001590:                           ; preds = %dec_label_pc_140001587
  %v1_140001592 = call i64 @function_1400018a8(i64 0)
  br label %dec_label_pc_140001583

dec_label_pc_140001599:                           ; preds = %dec_label_pc_140001587
  %v0_140001599 = load i64, i64* @rbx, align 8
  %v2_140001599 = and i64 %v1_140001587, -256
  %v3_140001599 = or i64 %v0_140001599, %v2_140001599
  br label %dec_label_pc_14000159b

dec_label_pc_14000159b:                           ; preds = %dec_label_pc_140001599, %dec_label_pc_140001583
  %storemerge = phi i64 [ %v3_140001599, %dec_label_pc_140001599 ], [ %v12_140001583, %dec_label_pc_140001583 ]
  store i64 %v0_140001558, i64* @rbx, align 8
  ret i64 %storemerge
}

define i64 @function_1400015a4(i64 %arg1) local_unnamed_addr {
dec_label_pc_1400015a4:
  %rcx.global-to-local = alloca i64, align 8
  store i64 %arg1, i64* %rcx.global-to-local, align 8
  %v0_1400015a4 = load i64, i64* @rbx, align 8
  %v0_1400015b1 = load i8, i8* @global_var_1400045b4.15, align 1
  %v7_1400015b1 = icmp eq i8 %v0_1400015b1, 0
  %v0_1400015b8 = load i64, i64* %rcx.global-to-local, align 8
  store i64 %v0_1400015b8, i64* @rbx, align 8
  %v1_1400015ba = icmp eq i1 %v7_1400015b1, false
  br i1 %v1_1400015ba, label %dec_label_pc_140001666, label %dec_label_pc_1400015c0

dec_label_pc_1400015c0:                           ; preds = %dec_label_pc_1400015a4
  %v1_1400015c0 = trunc i64 %v0_1400015b8 to i32
  %tmp24 = or i32 %v1_1400015c0, 1
  %tmp25 = icmp eq i32 %tmp24, 1
  br i1 %tmp25, label %dec_label_pc_1400015c9, label %dec_label_pc_140001673

dec_label_pc_1400015c9:                           ; preds = %dec_label_pc_1400015c0
  %v0_1400015c9 = call i64 @function_140001d14()
  %v4_1400015ce = trunc i64 %v0_1400015c9 to i32
  %v5_1400015ce = icmp eq i32 %v4_1400015ce, 0
  br i1 %v5_1400015ce, label %dec_label_pc_1400015fa, label %dec_label_pc_1400015d2

dec_label_pc_1400015d2:                           ; preds = %dec_label_pc_1400015c9
  %v0_1400015d2 = load i64, i64* @rbx, align 8
  %v4_1400015d2 = trunc i64 %v0_1400015d2 to i32
  %v5_1400015d2 = icmp eq i32 %v4_1400015d2, 0
  %v1_1400015d4 = icmp eq i1 %v5_1400015d2, false
  br i1 %v1_1400015d4, label %dec_label_pc_1400015fa, label %dec_label_pc_1400015d6

dec_label_pc_1400015d6:                           ; preds = %dec_label_pc_1400015d2
  store i64 ptrtoint (%_onexit_table_t** @global_var_1400045c0.16 to i64), i64* %rcx.global-to-local, align 8
  %v3_1400015dd = call i32 @_initialize_onexit_table(%_onexit_table_t* bitcast (%_onexit_table_t** @global_var_1400045c0.16 to %_onexit_table_t*))
  %v5_1400015dd = sext i32 %v3_1400015dd to i64
  %v5_1400015e2 = icmp eq i32 %v3_1400015dd, 0
  %v1_1400015e4 = icmp eq i1 %v5_1400015e2, false
  br i1 %v1_1400015e4, label %dec_label_pc_1400015f6, label %dec_label_pc_1400015e6

dec_label_pc_1400015e6:                           ; preds = %dec_label_pc_1400015d6
  store i64 ptrtoint (%_onexit_table_t** @global_var_1400045d8.17 to i64), i64* %rcx.global-to-local, align 8
  %v3_1400015ed = call i32 @_initialize_onexit_table(%_onexit_table_t* bitcast (%_onexit_table_t** @global_var_1400045d8.17 to %_onexit_table_t*))
  %v5_1400015ed = sext i32 %v3_1400015ed to i64
  store i64 %v5_1400015ed, i64* @rax, align 8
  %v5_1400015f2 = icmp eq i32 %v3_1400015ed, 0
  br i1 %v5_1400015f2, label %dec_label_pc_14000165f, label %dec_label_pc_1400015f6

dec_label_pc_1400015f6:                           ; preds = %dec_label_pc_1400015e6, %dec_label_pc_1400015d6
  %v11_1400015f6 = phi i64 [ %v5_1400015ed, %dec_label_pc_1400015e6 ], [ %v5_1400015dd, %dec_label_pc_1400015d6 ]
  %v12_1400015f6 = and i64 %v11_1400015f6, -256
  br label %dec_label_pc_140001668

dec_label_pc_1400015fa:                           ; preds = %dec_label_pc_1400015d2, %dec_label_pc_1400015c9
  %v0_1400015fa = load i32, i32* @global_var_140004000.18, align 4
  %v1_1400015fa = sext i32 %v0_1400015fa to i64
  store i64 %v1_1400015fa, i64* @rdx, align 8
  %v2_140001608 = and i32 %v0_1400015fa, 63
  %v4_14000160b = sub nsw i32 64, %v2_140001608
  %v20_14000160b = zext i32 %v4_14000160b to i64
  store i64 %v20_14000160b, i64* %rcx.global-to-local, align 8
  %v2_140001611 = and i64 %v20_14000160b, 63
  %v3_140001611 = icmp eq i64 %v2_140001611, 0
  br i1 %v3_140001611, label %bb26, label %bb

bb:                                               ; preds = %dec_label_pc_1400015fa
  %v4_140001611 = lshr i64 -1, %v2_140001611
  %v5_140001611 = sub nsw i64 64, %v2_140001611
  %v6_140001611 = shl i64 -1, %v5_140001611
  %v7_140001611 = or i64 %v6_140001611, %v4_140001611
  br label %bb26

bb26:                                             ; preds = %dec_label_pc_1400015fa, %bb
  %v0_140001614 = phi i64 [ %v7_140001611, %bb ], [ -1, %dec_label_pc_1400015fa ]
  %v2_140001614 = xor i64 %v0_140001614, %v1_1400015fa
  store i64 %v2_140001614, i64* @rax, align 8
  %v4_140001617 = sext i64 %v2_140001614 to i128
  %v6_14000161f = call i128 @__asm_movups(i128 %v4_140001617)
  %v0_140001623 = load i64, i64* @rax, align 8
  %v4_140001627 = call i128 @__asm_movsd(i64 %v0_140001623)
  %v0_14000162c = load i128, i128* bitcast (%_onexit_table_t** @global_var_1400045c0.16 to i128*), align 8
  call void @__asm_movups.3(i128 %v0_14000162c, i128 %v6_14000161f)
  %v0_140001633 = load i64, i64* @rax, align 8
  %v4_140001633 = sext i64 %v0_140001633 to i128
  %v6_14000163b = call i128 @__asm_movups(i128 %v4_140001633)
  %v0_14000163f = load i64, i64* @rax, align 8
  %v1_140001643 = call i64 @__asm_movsd.4(i128 %v4_140001627)
  store i64 %v1_140001643, i64* @global_var_1400045d0.19, align 8
  %v4_14000164b = call i128 @__asm_movsd(i64 %v0_14000163f)
  %v0_140001650 = load i128, i128* bitcast (%_onexit_table_t** @global_var_1400045d8.17 to i128*), align 8
  call void @__asm_movups.3(i128 %v0_140001650, i128 %v6_14000163b)
  %v1_140001657 = call i64 @__asm_movsd.4(i128 %v4_14000164b)
  store i64 %v1_140001657, i64* @global_var_1400045e8.20, align 8
  br label %dec_label_pc_14000165f

dec_label_pc_14000165f:                           ; preds = %bb26, %dec_label_pc_1400015e6
  store i8 1, i8* @global_var_1400045b4.15, align 1
  br label %dec_label_pc_140001666

dec_label_pc_140001666:                           ; preds = %dec_label_pc_14000165f, %dec_label_pc_1400015a4
  %v0_140001666 = load i64, i64* @rax, align 8
  %v1_140001666 = and i64 %v0_140001666, -256
  %v2_140001666 = or i64 %v1_140001666, 1
  br label %dec_label_pc_140001668

dec_label_pc_140001668:                           ; preds = %dec_label_pc_140001666, %dec_label_pc_1400015f6
  %storemerge = phi i64 [ %v2_140001666, %dec_label_pc_140001666 ], [ %v12_1400015f6, %dec_label_pc_1400015f6 ]
  store i64 %v0_1400015a4, i64* @rbx, align 8
  ret i64 %storemerge

dec_label_pc_140001673:                           ; preds = %dec_label_pc_1400015c0
  store i64 5, i64* %rcx.global-to-local, align 8
  %v1_140001678 = load i64, i64* @rdx, align 8
  %v2_140001678 = call i64 @function_1400018f8(i64 5, i64 %v1_140001678)
  %v0_14000167d = call i64 @__asm_int3()
  %v0_14000167e = call i64 @__asm_int3()
  %v0_14000167f = call i64 @__asm_int3()
  ret i64 %v0_14000167f
}

define i64 @function_140001680(i64 %arg1) local_unnamed_addr {
dec_label_pc_140001680:
  %v0_14000168c = load i16, i16* inttoptr (i64 5368709120 to i16*), align 536870912
  %v13_14000168c = icmp eq i16 %v0_14000168c, 23117
  %v1_140001693 = icmp eq i1 %v13_14000168c, false
  br i1 %v1_140001693, label %dec_label_pc_14000170e, label %dec_label_pc_140001695

dec_label_pc_140001695:                           ; preds = %dec_label_pc_140001680
  %v0_140001695 = load i32, i32* inttoptr (i64 5368709180 to i32*), align 4
  %v1_140001695 = sext i32 %v0_140001695 to i64
  %v3_1400016a3 = add nsw i64 %v1_140001695, 5368709120
  %v1_1400016a7 = inttoptr i64 %v3_1400016a3 to i32*
  %v2_1400016a7 = load i32, i32* %v1_1400016a7, align 4
  %v11_1400016a7 = icmp eq i32 %v2_1400016a7, 17744
  %v1_1400016ad = icmp eq i1 %v11_1400016a7, false
  br i1 %v1_1400016ad, label %dec_label_pc_14000170e, label %dec_label_pc_1400016af

dec_label_pc_1400016af:                           ; preds = %dec_label_pc_140001695
  %v1_1400016b4 = add nsw i64 %v1_140001695, 5368709144
  %v2_1400016b4 = inttoptr i64 %v1_1400016b4 to i16*
  %v3_1400016b4 = load i16, i16* %v2_1400016b4, align 2
  %v16_1400016b4 = icmp eq i16 %v3_1400016b4, 523
  %v1_1400016b8 = icmp eq i1 %v16_1400016b4, false
  br i1 %v1_1400016b8, label %dec_label_pc_14000170e, label %dec_label_pc_1400016ba

dec_label_pc_1400016ba:                           ; preds = %dec_label_pc_1400016af
  %v2_1400016ba = add i64 %arg1, -5368709120
  %v1_1400016bd = add nsw i64 %v1_140001695, 5368709140
  %v2_1400016bd = inttoptr i64 %v1_1400016bd to i16*
  %v3_1400016bd = load i16, i16* %v2_1400016bd, align 2
  %v4_1400016bd = zext i16 %v3_1400016bd to i64
  %v2_1400016c5 = add nsw i64 %v4_1400016bd, %v1_1400016b4
  %v1_1400016c8 = add nsw i64 %v1_140001695, 5368709126
  %v2_1400016c8 = inttoptr i64 %v1_1400016c8 to i16*
  %v3_1400016c8 = load i16, i16* %v2_1400016c8, align 2
  %v4_1400016c8 = zext i16 %v3_1400016c8 to i64
  %v3_1400016cc = mul nuw nsw i64 %v4_1400016c8, 5
  %v2_1400016d0 = mul nuw nsw i64 %v4_1400016c8, 40
  %v3_1400016d0 = add nsw i64 %v2_1400016d0, %v2_1400016c5
  store i64 %v3_1400016d0, i64* @r9, align 8
  %v12_1400016d813 = icmp eq i16 %v3_1400016c8, 0
  br i1 %v12_1400016d813, label %dec_label_pc_1400016f7.thread, label %dec_label_pc_1400016dd

dec_label_pc_1400016dd:                           ; preds = %dec_label_pc_1400016ba, %dec_label_pc_1400016ef
  %v11_1400016fc20 = phi i64 [ %v11_1400016fc19, %dec_label_pc_1400016ef ], [ %v4_1400016c8, %dec_label_pc_1400016ba ]
  %v0_1400016ef = phi i64 [ %v1_1400016ef, %dec_label_pc_1400016ef ], [ %v2_1400016c5, %dec_label_pc_1400016ba ]
  %v1_1400016dd = add i64 %v0_1400016ef, 12
  %v2_1400016dd = inttoptr i64 %v1_1400016dd to i32*
  %v3_1400016dd = load i32, i32* %v2_1400016dd, align 4
  %v4_1400016dd = zext i32 %v3_1400016dd to i64
  %v7_1400016e0 = icmp ult i64 %v2_1400016ba, %v4_1400016dd
  br i1 %v7_1400016e0, label %dec_label_pc_1400016ef, label %dec_label_pc_1400016e5

dec_label_pc_1400016e5:                           ; preds = %dec_label_pc_1400016dd
  %v1_1400016e5 = add i64 %v0_1400016ef, 8
  %v2_1400016e5 = inttoptr i64 %v1_1400016e5 to i32*
  %v3_1400016e5 = load i32, i32* %v2_1400016e5, align 4
  %v4_1400016e8 = add i32 %v3_1400016e5, %v3_1400016dd
  %v20_1400016e8 = zext i32 %v4_1400016e8 to i64
  %v7_1400016ea = icmp ult i64 %v2_1400016ba, %v20_1400016e8
  br i1 %v7_1400016ea, label %dec_label_pc_1400016f7, label %dec_label_pc_1400016ef

dec_label_pc_1400016ef:                           ; preds = %dec_label_pc_1400016e5, %dec_label_pc_1400016dd
  %v11_1400016fc19 = phi i64 [ %v20_1400016e8, %dec_label_pc_1400016e5 ], [ %v11_1400016fc20, %dec_label_pc_1400016dd ]
  %v1_1400016ef = add i64 %v0_1400016ef, 40
  %v12_1400016d8 = icmp eq i64 %v1_1400016ef, %v3_1400016d0
  br i1 %v12_1400016d8, label %dec_label_pc_1400016f7.thread, label %dec_label_pc_1400016dd

dec_label_pc_1400016f7.thread:                    ; preds = %dec_label_pc_1400016ef, %dec_label_pc_1400016ba
  %v0_1400016fe24 = phi i64 [ %v3_1400016cc, %dec_label_pc_1400016ba ], [ %v4_1400016dd, %dec_label_pc_1400016ef ]
  %v11_1400016fc22 = phi i64 [ %v4_1400016c8, %dec_label_pc_1400016ba ], [ %v11_1400016fc19, %dec_label_pc_1400016ef ]
  br label %dec_label_pc_1400016fc

dec_label_pc_1400016f7:                           ; preds = %dec_label_pc_1400016e5
  %v1_1400016f7 = icmp eq i64 %v0_1400016ef, 0
  %v1_1400016fa = icmp eq i1 %v1_1400016f7, false
  br i1 %v1_1400016fa, label %dec_label_pc_140001700, label %dec_label_pc_1400016fc

dec_label_pc_1400016fc:                           ; preds = %dec_label_pc_1400016f7.thread, %dec_label_pc_1400016f7
  %v0_14000170a30 = phi i64 [ %v11_1400016fc22, %dec_label_pc_1400016f7.thread ], [ %v20_1400016e8, %dec_label_pc_1400016f7 ]
  %v0_14000170c29 = phi i64 [ %v0_1400016fe24, %dec_label_pc_1400016f7.thread ], [ %v4_1400016dd, %dec_label_pc_1400016f7 ]
  %v12_1400016fc = and i64 %v0_14000170a30, -256
  store i64 %v12_1400016fc, i64* @rax, align 8
  %v1_1400016fe = trunc i64 %v0_14000170c29 to i32
  %v2_1400016fe = call i64 @function_140001714(i32 %v1_1400016fe)
  ret i64 %v2_1400016fe

dec_label_pc_140001700:                           ; preds = %dec_label_pc_1400016f7
  %v1_140001700 = add i64 %v0_1400016ef, 36
  %v2_140001700 = inttoptr i64 %v1_140001700 to i32*
  %v3_140001700 = load i32, i32* %v2_140001700, align 4
  %v11_140001700 = icmp slt i32 %v3_140001700, 0
  %v2_140001704 = icmp eq i1 %v11_140001700, false
  %v1_14000170a = and i64 %v20_1400016e8, 4294967040
  br i1 %v2_140001704, label %dec_label_pc_14000170a, label %dec_label_pc_140001706

dec_label_pc_140001706:                           ; preds = %dec_label_pc_140001700
  store i64 %v1_14000170a, i64* @rax, align 8
  %v2_140001708 = call i64 @function_140001714(i32 %v3_1400016dd)
  ret i64 %v2_140001708

dec_label_pc_14000170a:                           ; preds = %dec_label_pc_140001700
  %v2_14000170a = or i64 %v1_14000170a, 1
  store i64 %v2_14000170a, i64* @rax, align 8
  %v2_14000170c = call i64 @function_140001714(i32 %v3_1400016dd)
  ret i64 %v2_14000170c

dec_label_pc_14000170e:                           ; preds = %dec_label_pc_1400016af, %dec_label_pc_140001695, %dec_label_pc_140001680
  %v0_140001710 = phi i64 [ %v3_1400016a3, %dec_label_pc_1400016af ], [ %v3_1400016a3, %dec_label_pc_140001695 ], [ %arg1, %dec_label_pc_140001680 ]
  %v11_14000170e = phi i64 [ 523, %dec_label_pc_1400016af ], [ %v1_140001695, %dec_label_pc_140001695 ], [ 23117, %dec_label_pc_140001680 ]
  %v12_14000170e = and i64 %v11_14000170e, -256
  store i64 %v12_14000170e, i64* @rax, align 8
  %v1_140001710 = trunc i64 %v0_140001710 to i32
  %v2_140001710 = call i64 @function_140001714(i32 %v1_140001710)
  ret i64 %v2_140001710
}

define i64 @function_140001712() local_unnamed_addr {
dec_label_pc_140001712:
  %rax.global-to-local = alloca i64, align 8
  %v11_140001712 = load i64, i64* %rax.global-to-local, align 8
  %v12_140001712 = and i64 %v11_140001712, -256
  store i64 %v12_140001712, i64* %rax.global-to-local, align 8
  ret i64 %v12_140001712
}

define i64 @function_140001714(i32 %arg1) local_unnamed_addr {
dec_label_pc_140001714:
  %v0_140001718 = load i64, i64* @rax, align 8
  ret i64 %v0_140001718
}

declare i64 @__scrt_release_startup_lock(i64) local_unnamed_addr

define i64 @function_140001740(i64 %arg1, i32 %arg2) local_unnamed_addr {
dec_label_pc_140001740:
  %rbx.global-to-local = alloca i64, align 8
  %rcx.global-to-local = alloca i64, align 8
  %rdx.global-to-local = alloca i64, align 8
  %tmp6 = sext i32 %arg2 to i64
  store i64 %tmp6, i64* %rdx.global-to-local, align 8
  store i64 %arg1, i64* %rcx.global-to-local, align 8
  %v0_140001740 = load i64, i64* @rbx, align 8
  %v0_140001746 = load i8, i8* bitcast (i32* @global_var_1400045f0.14 to i8*), align 4
  %v7_140001746 = icmp eq i8 %v0_140001746, 0
  %v0_14000174d = load i64, i64* %rcx.global-to-local, align 8
  %v2_14000174d = and i64 %v0_140001740, -256
  %v3_14000174d = or i64 %v0_14000174d, %v2_14000174d
  store i64 %v3_14000174d, i64* %rbx.global-to-local, align 8
  br i1 %v7_140001746, label %dec_label_pc_140001755, label %dec_label_pc_140001751

dec_label_pc_140001751:                           ; preds = %dec_label_pc_140001740
  %v0_140001751 = load i64, i64* %rdx.global-to-local, align 8
  %v4_140001751 = trunc i64 %v0_140001751 to i8
  %v5_140001751 = icmp eq i8 %v4_140001751, 0
  %v1_140001753 = icmp eq i1 %v5_140001751, false
  br i1 %v1_140001753, label %dec_label_pc_140001751.dec_label_pc_140001763_crit_edge, label %dec_label_pc_140001755

dec_label_pc_140001751.dec_label_pc_140001763_crit_edge: ; preds = %dec_label_pc_140001751
  %v0_140001763.pre = load i64, i64* @rax, align 8
  br label %dec_label_pc_140001763

dec_label_pc_140001755:                           ; preds = %dec_label_pc_140001751, %dec_label_pc_140001740
  store i64 %v3_14000174d, i64* %rcx.global-to-local, align 8
  %v1_140001757 = call i64 @function_1400018a8(i64 %v3_14000174d)
  store i64 %v1_140001757, i64* @rax, align 8
  %v0_14000175c = load i64, i64* %rbx.global-to-local, align 8
  %v2_14000175c = and i64 %v3_14000174d, -256
  %v3_14000175c = or i64 %v0_14000175c, %v2_14000175c
  store i64 %v3_14000175c, i64* %rcx.global-to-local, align 8
  %v1_14000175e = call i64 @function_1400018a8(i64 %v3_14000175c)
  br label %dec_label_pc_140001763

dec_label_pc_140001763:                           ; preds = %dec_label_pc_140001751.dec_label_pc_140001763_crit_edge, %dec_label_pc_140001755
  %v0_140001763 = phi i64 [ %v0_140001763.pre, %dec_label_pc_140001751.dec_label_pc_140001763_crit_edge ], [ %v1_14000175e, %dec_label_pc_140001755 ]
  %v1_140001763 = and i64 %v0_140001763, -256
  %v2_140001763 = or i64 %v1_140001763, 1
  store i64 %v0_140001740, i64* @rbx, align 8
  ret i64 %v2_140001763
}

declare i32 ()* @_onexit(i32 ()*) local_unnamed_addr

define i64 @function_1400017bc(i64 %arg1) local_unnamed_addr {
dec_label_pc_1400017bc:
  %v1_1400017c0 = inttoptr i64 %arg1 to i32 ()*
  %v2_1400017c0 = call i32 ()* @_onexit(i32 ()* %v1_1400017c0)
  %v5_1400017c5 = icmp ne i32 ()* %v2_1400017c0, null
  %v7_1400017c8 = sext i1 %v5_1400017c5 to i64
  %v2_1400017cc = sub nsw i64 4294967295, %v7_1400017c8
  %v16_1400017cc = and i64 %v2_1400017cc, 4294967295
  ret i64 %v16_1400017cc
}

define i64 @function_1400017d4() local_unnamed_addr {
dec_label_pc_1400017d4:
  %v0_1400017e1 = load i32, i32* @global_var_140004000.18, align 4
  %v1_1400017e1 = sext i32 %v0_1400017e1 to i64
  %v1_140001871 = sub nsw i64 -1, %v1_1400017e1
  store i64 %v1_140001871, i64* @global_var_140004008.21, align 8
  ret i64 %v1_140001871
}

define i64 @function_140001884() local_unnamed_addr {
dec_label_pc_140001884:
  ret i64 0
}

define i64 @function_140001888() local_unnamed_addr {
dec_label_pc_140001888:
  ret i64 1
}

define i64 @function_140001890() local_unnamed_addr {
dec_label_pc_140001890:
  ret i64 16384
}

define void @function_140001898(i64* %ListHead) local_unnamed_addr {
dec_label_pc_140001898:
  call void @InitializeSListHead(i64* %ListHead)
  ret void
}

define i64 @function_1400018a8(i64 %arg1) local_unnamed_addr {
dec_label_pc_1400018a8:
  %v0_1400018a8 = load i64, i64* @rax, align 8
  %v1_1400018a8 = and i64 %v0_1400018a8, -256
  %v2_1400018a8 = or i64 %v1_1400018a8, 1
  ret i64 %v2_1400018a8
}

define i64 @function_1400018ac() local_unnamed_addr {
dec_label_pc_1400018ac:
  %v0_1400018ac = load i64, i64* @rax, align 8
  ret i64 %v0_1400018ac
}

define i64 @function_1400018b0() local_unnamed_addr {
dec_label_pc_1400018b0:
  ret i64 ptrtoint (i64* @global_var_140004610.23 to i64)
}

define i64 @function_1400018b8() local_unnamed_addr {
dec_label_pc_1400018b8:
  %rax.global-to-local = alloca i64, align 8
  %v0_1400018bc = call i64 @function_140001000()
  store i64 %v0_1400018bc, i64* %rax.global-to-local, align 8
  %v1_1400018c1 = inttoptr i64 %v0_1400018bc to i64*
  %v2_1400018c1 = load i64, i64* %v1_1400018c1, align 8
  %v3_1400018c1 = or i64 %v2_1400018c1, 4
  store i64 %v3_1400018c1, i64* %v1_1400018c1, align 8
  %v0_1400018c5 = call i64 @function_1400018b0()
  store i64 %v0_1400018c5, i64* %rax.global-to-local, align 8
  %v1_1400018ca = inttoptr i64 %v0_1400018c5 to i64*
  %v2_1400018ca = load i64, i64* %v1_1400018ca, align 8
  %v3_1400018ca = or i64 %v2_1400018ca, 2
  store i64 %v3_1400018ca, i64* %v1_1400018ca, align 8
  %v0_1400018d2 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_1400018d2
}

define i64 @function_1400018d4() local_unnamed_addr {
dec_label_pc_1400018d4:
  %v0_1400018d6 = load i32, i32* @global_var_140004014.24, align 4
  %v13_1400018d6 = icmp eq i32 %v0_1400018d6, 0
  %v1_1400018dc = zext i1 %v13_1400018d6 to i64
  ret i64 %v1_1400018dc
}

define i64 @function_1400018e0() local_unnamed_addr {
dec_label_pc_1400018e0:
  ret i64 ptrtoint (i64* @global_var_140004628.25 to i64)
}

define i64 @function_1400018e8() local_unnamed_addr {
dec_label_pc_1400018e8:
  ret i64 ptrtoint (i64* @global_var_140004620.26 to i64)
}

define i64 @function_1400018f0(i64 %arg1) local_unnamed_addr {
dec_label_pc_1400018f0:
  store i32 0, i32* @global_var_140004618.27, align 4
  %v0_1400018f7 = load i64, i64* @rax, align 8
  ret i64 %v0_1400018f7
}

define i64 @function_1400018f8(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_1400018f8:
  %rbx.global-to-local = alloca i64, align 8
  %rcx.global-to-local = alloca i64, align 8
  store i64 %arg1, i64* %rcx.global-to-local, align 8
  %stack_var_-1416 = alloca i64, align 8
  %stack_var_-1400 = alloca i64, align 8
  %stack_var_32 = alloca i64, align 8
  %stack_var_24 = alloca i64, align 8
  %stack_var_16 = alloca i32, align 4
  %tmp58 = call i64 @__decompiler_undefined_function_0()
  %stack_var_-1240 = alloca i64, align 8
  %stack_var_8 = alloca i64, align 8
  %v0_1400018f8 = load i64, i64* @rbx, align 8
  store i64 %v0_1400018f8, i64* %stack_var_8, align 8
  %v0_14000190d = load i64, i64* %rcx.global-to-local, align 8
  store i64 %v0_14000190d, i64* %rbx.global-to-local, align 8
  store i64 23, i64* %rcx.global-to-local, align 8
  %v3_140001914 = call i1 @IsProcessorFeaturePresent(i32 23)
  %v5_140001914 = sext i1 %v3_140001914 to i64
  store i64 %v5_140001914, i64* @rax, align 8
  %v5_140001919 = icmp eq i1 %v3_140001914, false
  br i1 %v5_140001919, label %dec_label_pc_140001921, label %dec_label_pc_14000191d

dec_label_pc_14000191d:                           ; preds = %dec_label_pc_1400018f8
  %v0_14000191d = load i64, i64* %rbx.global-to-local, align 8
  store i64 %v0_14000191d, i64* %rcx.global-to-local, align 8
  call void @__asm_int(i64 41)
  br label %dec_label_pc_140001921

dec_label_pc_140001921:                           ; preds = %dec_label_pc_14000191d, %dec_label_pc_1400018f8
  store i64 3, i64* %rcx.global-to-local, align 8
  %v1_140001926 = call i64 @function_1400018f0(i64 3)
  %v2_14000192d = ptrtoint i64* %stack_var_-1240 to i64
  store i64 %v2_14000192d, i64* %rcx.global-to-local, align 8
  %v8_140001937 = call i64* @memset(i64* nonnull %stack_var_-1240, i32 0, i32 1232)
  %tmp65 = bitcast i64* %stack_var_-1240 to %_CONTEXT*
  store i64 %v2_14000192d, i64* %rcx.global-to-local, align 8
  call void @RtlCaptureContext(%_CONTEXT* %tmp65)
  %v2_14000195a = bitcast i32* %stack_var_16 to i64*
  %v6_14000195a = call %_IMAGE_RUNTIME_FUNCTION_ENTRY* @RtlLookupFunctionEntry(i64 %tmp58, i64* %v2_14000195a, %_UNWIND_HISTORY_TABLE* null)
  %v1_140001960 = icmp eq %_IMAGE_RUNTIME_FUNCTION_ENTRY* %v6_14000195a, null
  br i1 %v1_140001960, label %dec_label_pc_1400019a1, label %dec_label_pc_140001965

dec_label_pc_140001965:                           ; preds = %dec_label_pc_140001921
  %v3_140001972 = load i32, i32* %stack_var_16, align 4
  %v4_140001972 = sext i32 %v3_140001972 to i64
  %v0_140001981 = load i64, i64* %rbx.global-to-local, align 8
  %tmp66 = bitcast i64* %stack_var_32 to i64**
  store i64 0, i64* %rcx.global-to-local, align 8
  %v19_14000199b = call i64 (%_EXCEPTION_RECORD*, i64*, %_CONTEXT*, i64*)* @RtlVirtualUnwind(i32 0, i64 %v4_140001972, i64 %v0_140001981, %_IMAGE_RUNTIME_FUNCTION_ENTRY* nonnull %v6_14000195a, %_CONTEXT* %tmp65, i64** %tmp66, i64* nonnull %stack_var_24, %_KNONVOLATILE_CONTEXT_POINTERS* null)
  br label %dec_label_pc_1400019a1

dec_label_pc_1400019a1:                           ; preds = %dec_label_pc_140001965, %dec_label_pc_140001921
  %v2_1400019a8 = ptrtoint i64* %stack_var_-1400 to i64
  store i64 %v2_1400019a8, i64* %rcx.global-to-local, align 8
  store i64 0, i64* @rdx, align 8
  %v8_1400019ce = call i64* @memset(i64* nonnull %stack_var_-1400, i32 0, i32 152)
  store i64 1073741845, i64* %stack_var_-1400, align 8
  %v0_1400019ef = call i1 @IsDebuggerPresent()
  store i64 %v2_1400019a8, i64* %stack_var_-1416, align 8
  %v2_140001a06 = load i64, i64* %rbx.global-to-local, align 8
  %v3_140001a06 = and i64 %v2_140001a06, -256
  store i64 %v3_140001a06, i64* %rbx.global-to-local, align 8
  store i64 0, i64* %rcx.global-to-local, align 8
  %v3_140001a10 = call i32 (%_EXCEPTION_POINTERS*)* @SetUnhandledExceptionFilter(i32 (%_EXCEPTION_POINTERS*)* null)
  %v2_140001a16 = ptrtoint i64* %stack_var_-1416 to i64
  %tmp68 = bitcast i64* %stack_var_-1416 to %_EXCEPTION_POINTERS*
  store i64 %v2_140001a16, i64* %rcx.global-to-local, align 8
  %v3_140001a1b = call i32 @UnhandledExceptionFilter(%_EXCEPTION_POINTERS* %tmp68)
  %v5_140001a1b = sext i32 %v3_140001a1b to i64
  store i64 %v5_140001a1b, i64* @rax, align 8
  %v5_140001a21 = icmp eq i32 %v3_140001a1b, 0
  %v1_140001a23 = icmp eq i1 %v5_140001a21, false
  br i1 %v1_140001a23, label %dec_label_pc_140001a31, label %dec_label_pc_140001a25

dec_label_pc_140001a25:                           ; preds = %dec_label_pc_1400019a1
  %v0_140001a25 = load i64, i64* %rbx.global-to-local, align 8
  %v4_140001a25 = trunc i64 %v0_140001a25 to i8
  %v5_140001a25 = icmp eq i8 %v4_140001a25, 0
  %v1_140001a27 = icmp eq i1 %v5_140001a25, false
  br i1 %v1_140001a27, label %dec_label_pc_140001a31, label %dec_label_pc_140001a29

dec_label_pc_140001a29:                           ; preds = %dec_label_pc_140001a25
  %v1_140001a29 = add nsw i64 %v5_140001a1b, 3
  store i64 %v1_140001a29, i64* %rcx.global-to-local, align 8
  %v1_140001a2c = call i64 @function_1400018f0(i64 %v1_140001a29)
  br label %dec_label_pc_140001a31

dec_label_pc_140001a31:                           ; preds = %dec_label_pc_140001a29, %dec_label_pc_140001a25, %dec_label_pc_1400019a1
  %v0_140001a41 = phi i64 [ %v1_140001a2c, %dec_label_pc_140001a29 ], [ %v5_140001a1b, %dec_label_pc_140001a25 ], [ %v5_140001a1b, %dec_label_pc_1400019a1 ]
  %v3_140001a31 = load i64, i64* %stack_var_8, align 8
  store i64 %v3_140001a31, i64* @rbx, align 8
  ret i64 %v0_140001a41
}

define i64 @function_140001a44(i64 %arg1) local_unnamed_addr {
dec_label_pc_140001a44:
  %v3_140001a4a = call i64* @GetModuleHandleW(i16* null)
  %v5_140001a4a = ptrtoint i64* %v3_140001a4a to i64
  %v1_140001a50 = icmp eq i64* %v3_140001a4a, null
  br i1 %v1_140001a50, label %dec_label_pc_140001a8f, label %dec_label_pc_140001a55

dec_label_pc_140001a55:                           ; preds = %dec_label_pc_140001a44
  %v1_140001a5a = bitcast i64* %v3_140001a4a to i16*
  %v2_140001a5a = load i16, i16* %v1_140001a5a, align 2
  %v15_140001a5a = icmp eq i16 %v2_140001a5a, 23117
  %v1_140001a5d = icmp eq i1 %v15_140001a5a, false
  br i1 %v1_140001a5d, label %dec_label_pc_140001a8f, label %dec_label_pc_140001a5f

dec_label_pc_140001a5f:                           ; preds = %dec_label_pc_140001a55
  %v1_140001a5f = add i64 %v5_140001a4a, 60
  %v2_140001a5f = inttoptr i64 %v1_140001a5f to i32*
  %v3_140001a5f = load i32, i32* %v2_140001a5f, align 4
  %v4_140001a5f = sext i32 %v3_140001a5f to i64
  %v2_140001a63 = add i64 %v4_140001a5f, %v5_140001a4a
  %v1_140001a66 = inttoptr i64 %v2_140001a63 to i32*
  %v2_140001a66 = load i32, i32* %v1_140001a66, align 4
  %v11_140001a66 = icmp eq i32 %v2_140001a66, 17744
  %v1_140001a6c = icmp eq i1 %v11_140001a66, false
  br i1 %v1_140001a6c, label %dec_label_pc_140001a8f, label %dec_label_pc_140001a6e

dec_label_pc_140001a6e:                           ; preds = %dec_label_pc_140001a5f
  %v1_140001a73 = add i64 %v2_140001a63, 24
  %v2_140001a73 = inttoptr i64 %v1_140001a73 to i16*
  %v3_140001a73 = load i16, i16* %v2_140001a73, align 2
  %v16_140001a73 = icmp eq i16 %v3_140001a73, 523
  %v1_140001a77 = icmp eq i1 %v16_140001a73, false
  br i1 %v1_140001a77, label %dec_label_pc_140001a8f, label %dec_label_pc_140001a79

dec_label_pc_140001a79:                           ; preds = %dec_label_pc_140001a6e
  %v1_140001a79 = add i64 %v2_140001a63, 132
  %v2_140001a79 = inttoptr i64 %v1_140001a79 to i32*
  %v3_140001a79 = load i32, i32* %v2_140001a79, align 4
  %tmp11 = icmp ult i32 %v3_140001a79, 15
  br i1 %tmp11, label %dec_label_pc_140001a8f, label %dec_label_pc_140001a82

dec_label_pc_140001a82:                           ; preds = %dec_label_pc_140001a79
  %v1_140001a82 = add i64 %v2_140001a63, 248
  %v2_140001a82 = inttoptr i64 %v1_140001a82 to i32*
  %v3_140001a82 = load i32, i32* %v2_140001a82, align 4
  %v10_140001a82 = icmp eq i32 %v3_140001a82, 0
  br i1 %v10_140001a82, label %dec_label_pc_140001a8f, label %dec_label_pc_140001a91

dec_label_pc_140001a8f:                           ; preds = %dec_label_pc_140001a82, %dec_label_pc_140001a79, %dec_label_pc_140001a6e, %dec_label_pc_140001a5f, %dec_label_pc_140001a55, %dec_label_pc_140001a44
  %v11_140001a8f = phi i64 [ 523, %dec_label_pc_140001a82 ], [ 523, %dec_label_pc_140001a79 ], [ 523, %dec_label_pc_140001a6e ], [ %v5_140001a4a, %dec_label_pc_140001a5f ], [ %v5_140001a4a, %dec_label_pc_140001a55 ], [ %v5_140001a4a, %dec_label_pc_140001a44 ]
  %v12_140001a8f = and i64 %v11_140001a8f, -256
  br label %dec_label_pc_140001a91

dec_label_pc_140001a91:                           ; preds = %dec_label_pc_140001a82, %dec_label_pc_140001a8f
  %storemerge = phi i64 [ %v12_140001a8f, %dec_label_pc_140001a8f ], [ 513, %dec_label_pc_140001a82 ]
  ret i64 %storemerge
}

define i32 (%_EXCEPTION_POINTERS*)* @function_140001a98(i32 (%_EXCEPTION_POINTERS*)* %lpTopLevelExceptionFilter) local_unnamed_addr {
dec_label_pc_140001a98:
  %v2_140001a9f = call i32 (%_EXCEPTION_POINTERS*)* @SetUnhandledExceptionFilter(i32 (%_EXCEPTION_POINTERS*)* %lpTopLevelExceptionFilter)
  ret i32 (%_EXCEPTION_POINTERS*)* %v2_140001a9f
}

define i64 @function_140001aa8(i64 %arg1) local_unnamed_addr {
dec_label_pc_140001aa8:
  %tmp239 = trunc i64 %arg1 to i32
  %v12_140001aaf = icmp eq i32 %tmp239, -529697949
  %v1_140001ab5 = icmp eq i1 %v12_140001aaf, false
  br i1 %v1_140001ab5, label %dec_label_pc_140001ad3, label %dec_label_pc_140001ab7

dec_label_pc_140001ab7:                           ; preds = %dec_label_pc_140001aa8
  %v1_140001ab7 = add i64 %arg1, 24
  %v2_140001ab7 = inttoptr i64 %v1_140001ab7 to i32*
  %v3_140001ab7 = load i32, i32* %v2_140001ab7, align 4
  %v13_140001ab7 = icmp eq i32 %v3_140001ab7, 4
  %v1_140001abb = icmp eq i1 %v13_140001ab7, false
  br i1 %v1_140001abb, label %dec_label_pc_140001ad3, label %dec_label_pc_140001abd

dec_label_pc_140001abd:                           ; preds = %dec_label_pc_140001ab7
  %v1_140001abd = add i64 %arg1, 32
  %v2_140001abd = inttoptr i64 %v1_140001abd to i32*
  %v3_140001abd = load i32, i32* %v2_140001abd, align 4
  %v2_140001ac0 = add i32 %v3_140001abd, -429065504
  %tmp242 = icmp ult i32 %v2_140001ac0, 3
  %v11_140001acb = icmp eq i32 %v3_140001abd, 26820608
  %or.cond = or i1 %v11_140001acb, %tmp242
  br i1 %or.cond, label %dec_label_pc_140001ada, label %dec_label_pc_140001ad3

dec_label_pc_140001ad3:                           ; preds = %dec_label_pc_140001abd, %dec_label_pc_140001ab7, %dec_label_pc_140001aa8
  ret i64 0

dec_label_pc_140001ada:                           ; preds = %dec_label_pc_140001abd
  %v3_140001ada = call i64 @function_140001db0(i32 %v3_140001abd)
  %v0_140001adf = call i64 @__asm_int3()
  ret i64 %v0_140001adf
}

define i64 @function_140001ae0() local_unnamed_addr {
dec_label_pc_140001b11:
  %v0_140001b1b = load i64, i64* @rax, align 8
  ret i64 %v0_140001b1b
}

define i64 @function_140001b1c() local_unnamed_addr {
dec_label_pc_140001b4d:
  %rax.global-to-local = alloca i64, align 8
  %v0_140001b57 = load i64, i64* %rax.global-to-local, align 8
  ret i64 %v0_140001b57
}

define i64 @function_140001b58(i64 %arg1) local_unnamed_addr {
dec_label_pc_140001b58:
  %r10.global-to-local = alloca i64, align 8
  %r11.global-to-local = alloca i64, align 8
  %r14.global-to-local = alloca i64, align 8
  %r8.global-to-local = alloca i64, align 8
  %rbp.global-to-local = alloca i64, align 8
  %rsi.global-to-local = alloca i64, align 8
  store i32 2, i32* @global_var_14000401c.30, align 4
  store i32 1, i32* bitcast (i64* @global_var_140004018.31 to i32*), align 8
  %v3_140001b82 = call %0 @__asm_cpuid(i32 0)
  %v4_140001b82 = extractvalue %0 %v3_140001b82, 0
  %v5_140001b82 = zext i32 %v4_140001b82 to i64
  %v6_140001b82 = extractvalue %0 %v3_140001b82, 1
  %v8_140001b82 = extractvalue %0 %v3_140001b82, 2
  %v10_140001b82 = extractvalue %0 %v3_140001b82, 3
  %v2_140001b8a = xor i32 %v8_140001b82, 1145913699
  %v2_140001b90 = xor i32 %v10_140001b82, 1769238117
  store i64 0, i64* %r11.global-to-local, align 8
  %v2_140001b9b = xor i32 %v6_140001b82, 1752462657
  store i64 %v5_140001b82, i64* %r14.global-to-local, align 8
  %v4_140001ba4 = or i32 %v2_140001b90, %v2_140001b9b
  %v2_140001ba6 = xor i32 %v10_140001b82, 1231384169
  %v9_140001ba6 = zext i32 %v2_140001ba6 to i64
  store i64 %v9_140001ba6, i64* %r10.global-to-local, align 8
  %v4_140001bad515 = or i32 %v4_140001ba4, %v2_140001b8a
  %v4_140001bad5 = zext i32 %v4_140001bad515 to i64
  store i64 %v4_140001bad5, i64* %rbp.global-to-local, align 8
  %v2_140001baf = xor i32 %v8_140001b82, 1818588270
  %v9_140001baf = zext i32 %v2_140001baf to i64
  store i64 %v9_140001baf, i64* %r8.global-to-local, align 8
  %v2_140001bbf = xor i32 %v6_140001b82, 1970169159
  %v9_140001bbf = zext i32 %v2_140001bbf to i64
  store i64 %v9_140001bbf, i64* @r9, align 8
  %v3_140001bc6 = call %1 @__asm_cpuid.1(i32 1)
  %v4_140001bc6 = extractvalue %1 %v3_140001bc6, 0
  %v8_140001bc6 = extractvalue %1 %v3_140001bc6, 2
  %v9_140001bc6 = zext i32 %v8_140001bc6 to i64
  %v10_140001bc6 = extractvalue %1 %v3_140001bc6, 3
  %v11_140001bc6 = zext i32 %v10_140001bc6 to i64
  store i64 %v11_140001bc6, i64* @rdx, align 8
  %v0_140001bc8 = load i64, i64* %r10.global-to-local, align 8
  %v2_140001bc8 = load i64, i64* %r8.global-to-local, align 8
  %v4_140001bc87 = or i64 %v2_140001bc8, %v0_140001bc8
  %v2_140001bce = load i64, i64* @r9, align 8
  %v4_140001bce8 = or i64 %v4_140001bc87, %v2_140001bce
  %v4_140001bce = trunc i64 %v4_140001bce8 to i32
  %v5_140001bce = icmp eq i32 %v4_140001bce, 0
  %v11_140001bce = and i64 %v4_140001bce8, 4294967295
  store i64 %v11_140001bce, i64* %r10.global-to-local, align 8
  store i64 %v9_140001bc6, i64* %rsi.global-to-local, align 8
  %v1_140001be1 = icmp eq i1 %v5_140001bce, false
  br i1 %v1_140001be1, label %dec_label_pc_140001c33, label %dec_label_pc_140001be3

dec_label_pc_140001be3:                           ; preds = %dec_label_pc_140001b58
  store i64 -1, i64* bitcast ([3 x i8]* @global_var_140004020.32 to i64*), align 8
  %v2_140001beb = and i32 %v4_140001bc6, 268386288
  %trunc = trunc i32 %v2_140001beb to i28
  switch i28 %trunc, label %dec_label_pc_140001c05 [
    i28 67264, label %dec_label_pc_140001c1f
    i28 132704, label %dec_label_pc_140001c1f
    i28 132720, label %dec_label_pc_140001c1f
  ]

dec_label_pc_140001c05:                           ; preds = %dec_label_pc_140001be3
  %v2_140001c05 = add nsw i32 %v2_140001beb, -198224
  %tmp36 = icmp ult i32 %v2_140001c05, 33
  br i1 %tmp36, label %dec_label_pc_140001c0f, label %dec_label_pc_140001c33

dec_label_pc_140001c0f:                           ; preds = %dec_label_pc_140001c05
  %v16_140001c05 = zext i32 %v2_140001c05 to i64
  %v2_140001c19 = and i64 %v16_140001c05, 48
  %v3_140001c19 = shl i64 1, %v2_140001c19
  %v4_140001c19 = and i64 %v3_140001c19, 4295032833
  %v5_140001c19 = icmp ne i64 %v4_140001c19, 0
  %v1_140001c1d = icmp eq i1 %v5_140001c19, false
  br i1 %v1_140001c1d, label %dec_label_pc_140001c33, label %dec_label_pc_140001c1f

dec_label_pc_140001c1f:                           ; preds = %dec_label_pc_140001be3, %dec_label_pc_140001be3, %dec_label_pc_140001be3, %dec_label_pc_140001c0f
  %v0_140001c1f = load i32, i32* @global_var_14000461c.33, align 4
  %v2_140001c26 = or i32 %v0_140001c1f, 1
  %v9_140001c26 = zext i32 %v2_140001c26 to i64
  store i64 %v9_140001c26, i64* %r8.global-to-local, align 8
  store i32 %v2_140001c26, i32* @global_var_14000461c.33, align 4
  br label %dec_label_pc_140001c3a

dec_label_pc_140001c33:                           ; preds = %dec_label_pc_140001c05, %dec_label_pc_140001c0f, %dec_label_pc_140001b58
  %v0_140001c33 = load i32, i32* @global_var_14000461c.33, align 4
  %v1_140001c33 = zext i32 %v0_140001c33 to i64
  store i64 %v1_140001c33, i64* %r8.global-to-local, align 8
  br label %dec_label_pc_140001c3a

dec_label_pc_140001c3a:                           ; preds = %dec_label_pc_140001c33, %dec_label_pc_140001c1f
  %v0_140001c4c = phi i32 [ %v0_140001c33, %dec_label_pc_140001c33 ], [ %v2_140001c26, %dec_label_pc_140001c1f ]
  %v0_140001c3a = load i64, i64* %rbp.global-to-local, align 8
  %v4_140001c3a = trunc i64 %v0_140001c3a to i32
  %v5_140001c3a = icmp eq i32 %v4_140001c3a, 0
  %v1_140001c3c = icmp eq i1 %v5_140001c3a, false
  br i1 %v1_140001c3c, label %dec_label_pc_140001c57, label %dec_label_pc_140001c3e

dec_label_pc_140001c3e:                           ; preds = %dec_label_pc_140001c3a
  %v2_140001c3e = and i32 %v4_140001bc6, 267390720
  %v5_140001c44 = icmp ult i32 %v2_140001c3e, 6295808
  br i1 %v5_140001c44, label %dec_label_pc_140001c57, label %dec_label_pc_140001c4c

dec_label_pc_140001c4c:                           ; preds = %dec_label_pc_140001c3e
  %v2_140001c4c = or i32 %v0_140001c4c, 4
  %v9_140001c4c = zext i32 %v2_140001c4c to i64
  store i64 %v9_140001c4c, i64* %r8.global-to-local, align 8
  store i32 %v2_140001c4c, i32* @global_var_14000461c.33, align 4
  br label %dec_label_pc_140001c57

dec_label_pc_140001c57:                           ; preds = %dec_label_pc_140001c4c, %dec_label_pc_140001c3e, %dec_label_pc_140001c3a
  %v0_140001c5c = load i64, i64* %r14.global-to-local, align 8
  %v5_140001c5f = icmp slt i64 %v0_140001c5c, 7
  br i1 %v5_140001c5f, label %dec_label_pc_140001c88, label %dec_label_pc_140001c61

dec_label_pc_140001c61:                           ; preds = %dec_label_pc_140001c57
  %v2_140001c63 = call %2 @__asm_cpuid.2(i32 7)
  %v5_140001c63 = extractvalue %2 %v2_140001c63, 1
  %v6_140001c63 = zext i32 %v5_140001c63 to i64
  %v9_140001c63 = extractvalue %2 %v2_140001c63, 3
  %v10_140001c63 = zext i32 %v9_140001c63 to i64
  store i64 %v10_140001c63, i64* @rdx, align 8
  store i64 %v6_140001c63, i64* %r11.global-to-local, align 8
  %v2_140001c77 = and i64 %v6_140001c63, 512
  %v3_140001c77 = icmp ne i64 %v2_140001c77, 0
  %v1_140001c7b = icmp eq i1 %v3_140001c77, false
  br i1 %v1_140001c7b, label %dec_label_pc_140001c88, label %dec_label_pc_140001c7d

dec_label_pc_140001c7d:                           ; preds = %dec_label_pc_140001c61
  %v0_140001c7d = load i64, i64* %r8.global-to-local, align 8
  %v1_140001c7d = trunc i64 %v0_140001c7d to i32
  %v2_140001c7d = or i32 %v1_140001c7d, 2
  %v9_140001c7d = zext i32 %v2_140001c7d to i64
  store i64 %v9_140001c7d, i64* %r8.global-to-local, align 8
  store i32 %v2_140001c7d, i32* @global_var_14000461c.33, align 4
  br label %dec_label_pc_140001c88

dec_label_pc_140001c88:                           ; preds = %dec_label_pc_140001c7d, %dec_label_pc_140001c61, %dec_label_pc_140001c57
  %v3_140001cb0 = phi i32 [ %v9_140001c63, %dec_label_pc_140001c7d ], [ %v9_140001c63, %dec_label_pc_140001c61 ], [ %v10_140001bc6, %dec_label_pc_140001c57 ]
  %v0_140001c88 = load i64, i64* %rsi.global-to-local, align 8
  %v2_140001c88 = and i64 %v0_140001c88, 1048576
  %v3_140001c88 = icmp ne i64 %v2_140001c88, 0
  %v1_140001c8c = icmp eq i1 %v3_140001c88, false
  br i1 %v1_140001c8c, label %dec_label_pc_140001cfc, label %dec_label_pc_140001c8e

dec_label_pc_140001c8e:                           ; preds = %dec_label_pc_140001c88
  store i32 2, i32* bitcast (i64* @global_var_140004018.31 to i32*), align 8
  store i32 6, i32* @global_var_14000401c.30, align 4
  %v2_140001ca2 = and i64 %v0_140001c88, 134217728
  %v3_140001ca2 = icmp ne i64 %v2_140001ca2, 0
  %v1_140001ca6 = icmp eq i1 %v3_140001ca2, false
  br i1 %v1_140001ca6, label %dec_label_pc_140001cfc, label %dec_label_pc_140001ca8

dec_label_pc_140001ca8:                           ; preds = %dec_label_pc_140001c8e
  %v2_140001ca8 = and i64 %v0_140001c88, 268435456
  %v3_140001ca8 = icmp ne i64 %v2_140001ca8, 0
  %v1_140001cac = icmp eq i1 %v3_140001ca8, false
  br i1 %v1_140001cac, label %dec_label_pc_140001cfc, label %dec_label_pc_140001cae

dec_label_pc_140001cae:                           ; preds = %dec_label_pc_140001ca8
  %v5_140001cb0 = call i64 @__asm_xgetbv(i32 0, i32 %v3_140001cb0)
  %v0_140001cb3 = load i64, i64* @rdx, align 8
  %v2_140001cb3 = mul i64 %v0_140001cb3, 4294967296
  %v2_140001cb7 = or i64 %v2_140001cb3, %v5_140001cb0
  store i64 %v2_140001cb7, i64* @rdx, align 8
  %sext = mul i64 %v5_140001cb0, 72057594037927936
  %v4_140001cbf = sdiv i64 %sext, 72057594037927936
  %v2_140001cc4 = and i64 %v4_140001cbf, 6
  %v11_140001cc6 = icmp eq i64 %v2_140001cc4, 6
  %v1_140001cc8 = icmp eq i1 %v11_140001cc6, false
  br i1 %v1_140001cc8, label %dec_label_pc_140001cfc, label %dec_label_pc_140001cca

dec_label_pc_140001cca:                           ; preds = %dec_label_pc_140001cae
  %v0_140001cca = load i32, i32* @global_var_14000401c.30, align 4
  %v2_140001cd0 = or i32 %v0_140001cca, 8
  store i32 3, i32* bitcast (i64* @global_var_140004018.31 to i32*), align 8
  store i32 %v2_140001cd0, i32* @global_var_14000401c.30, align 4
  %v0_140001ce3 = load i64, i64* %r11.global-to-local, align 8
  %v2_140001ce3 = and i64 %v0_140001ce3, 32
  %v3_140001ce3 = icmp eq i64 %v2_140001ce3, 0
  br i1 %v3_140001ce3, label %dec_label_pc_140001cfc, label %dec_label_pc_140001ce9

dec_label_pc_140001ce9:                           ; preds = %dec_label_pc_140001cca
  %v2_140001ce9 = or i32 %v0_140001cca, 40
  store i32 5, i32* bitcast (i64* @global_var_140004018.31 to i32*), align 8
  store i32 %v2_140001ce9, i32* @global_var_14000401c.30, align 4
  br label %dec_label_pc_140001cfc

dec_label_pc_140001cfc:                           ; preds = %dec_label_pc_140001ce9, %dec_label_pc_140001cca, %dec_label_pc_140001cae, %dec_label_pc_140001ca8, %dec_label_pc_140001c8e, %dec_label_pc_140001c88
  ret i64 0
}

define i64 @function_140001d14() local_unnamed_addr {
dec_label_pc_140001d14:
  %v0_140001d16 = load i32, i32* @global_var_140004030.34, align 4
  %v13_140001d16 = icmp eq i32 %v0_140001d16, 0
  %v1_140001d1c = icmp eq i1 %v13_140001d16, false
  %v2_140001d1c = zext i1 %v1_140001d1c to i64
  ret i64 %v2_140001d1c
}

define i64 @function_140001d20() local_unnamed_addr {
dec_label_pc_140001d20:
  %v0_140001d20 = call i64 @__C_specific_handler()
  ret i64 %v0_140001d20
}

define i64* @function_140001d26(i64* %s, i32 %c, i32 %n) local_unnamed_addr {
dec_label_pc_140001d26:
  %v6_140001d26 = call i64* @memset(i64* %s, i32 %c, i32 %n)
  ret i64* %v6_140001d26
}

define i32 @function_140001d2c(i32 %ExceptionNum, %_EXCEPTION_POINTERS* %ExceptionPtr) local_unnamed_addr {
dec_label_pc_140001d2c:
  %v4_140001d2c = call i32 @_seh_filter_exe(i32 %ExceptionNum, %_EXCEPTION_POINTERS* %ExceptionPtr)
  ret i32 %v4_140001d2c
}

define void @function_140001d32(i64 %arg1) local_unnamed_addr {
dec_label_pc_140001d32:
  call void @_set_app_type(i64 %arg1)
  ret void
}

define void @function_140001d38(i64 %pf) local_unnamed_addr {
dec_label_pc_140001d38:
  call void @__setusermatherr(i64 %pf)
  ret void
}

define i32 @function_140001d3e(i64 %arg1) local_unnamed_addr {
dec_label_pc_140001d3e:
  %v1_140001d3e = call i32 @_configure_narrow_argv(i64 %arg1)
  ret i32 %v1_140001d3e
}

define i32 @function_140001d44() local_unnamed_addr {
dec_label_pc_140001d44:
  %v0_140001d44 = call i32 @_initialize_narrow_environment()
  ret i32 %v0_140001d44
}

define i8** @function_140001d4a() local_unnamed_addr {
dec_label_pc_140001d4a:
  %v0_140001d4a = call i8** @_get_initial_narrow_environment()
  ret i8** %v0_140001d4a
}

define void @function_140001d50(void ()** %First, void ()** %Last) local_unnamed_addr {
dec_label_pc_140001d50:
  call void @_initterm(void ()** %First, void ()** %Last)
  ret void
}

define i32 @function_140001d56(i32 ()** %First, i32 ()** %Last) local_unnamed_addr {
dec_label_pc_140001d56:
  %v4_140001d56 = call i32 @_initterm_e(i32 ()** %First, i32 ()** %Last)
  ret i32 %v4_140001d56
}

define void @function_140001d5c(i32 %status) local_unnamed_addr {
dec_label_pc_140001d5c:
  call void @exit(i32 %status)
  ret void
}

define void @function_140001d62(i32 %Code) local_unnamed_addr {
dec_label_pc_140001d62:
  call void @_exit(i32 %Code)
  ret void
}

define i32 @function_140001d68(i32 %Mode) local_unnamed_addr {
dec_label_pc_140001d68:
  %v2_140001d68 = call i32 @_set_fmode(i32 %Mode)
  ret i32 %v2_140001d68
}

define i32* @function_140001d6e() local_unnamed_addr {
dec_label_pc_140001d6e:
  %v0_140001d6e = call i32* @__p___argc()
  ret i32* %v0_140001d6e
}

define i8*** @function_140001d74() local_unnamed_addr {
dec_label_pc_140001d74:
  %v0_140001d74 = call i8*** @__p___argv()
  ret i8*** %v0_140001d74
}

define void @function_140001d7a() local_unnamed_addr {
dec_label_pc_140001d7a:
  call void @_cexit()
  ret void
}

define void @function_140001d80() local_unnamed_addr {
dec_label_pc_140001d80:
  call void @_c_exit()
  ret void
}

define void @function_140001d86(void (i64*, i32, i64*)* %Callback) local_unnamed_addr {
dec_label_pc_140001d86:
  call void @_register_thread_local_exe_atexit_callback(void (i64*, i32, i64*)* %Callback)
  ret void
}

define i32 @function_140001d8c(i32 %Flag) local_unnamed_addr {
dec_label_pc_140001d8c:
  %v2_140001d8c = call i32 @_configthreadlocale(i32 %Flag)
  ret i32 %v2_140001d8c
}

define i32 @function_140001d92(i32 %NewMode) local_unnamed_addr {
dec_label_pc_140001d92:
  %v2_140001d92 = call i32 @_set_new_mode(i32 %NewMode)
  ret i32 %v2_140001d92
}

define i32* @function_140001d98() local_unnamed_addr {
dec_label_pc_140001d98:
  %v0_140001d98 = call i32* @__p__commode()
  ret i32* %v0_140001d98
}

define i32 @function_140001d9e(%_onexit_table_t* %Table) local_unnamed_addr {
dec_label_pc_140001d9e:
  %v2_140001d9e = call i32 @_initialize_onexit_table(%_onexit_table_t* %Table)
  ret i32 %v2_140001d9e
}

define i32 @function_140001da4(%_onexit_table_t* %Table, i32 ()* %Function) local_unnamed_addr {
dec_label_pc_140001da4:
  %v4_140001da4 = call i32 @_register_onexit_function(%_onexit_table_t* %Table, i32 ()* %Function)
  ret i32 %v4_140001da4
}

define i64 @function_140001daa() local_unnamed_addr {
dec_label_pc_140001daa:
  %v0_140001daa = call i64 @_crt_atexit()
  ret i64 %v0_140001daa
}

define i64 @function_140001db0(i32 %arg1) local_unnamed_addr {
dec_label_pc_140001db0:
  %v0_140001db0 = call i64 @terminate()
  ret i64 %v0_140001db0
}

define i1 @function_140001db6(i32 %ProcessorFeature) local_unnamed_addr {
dec_label_pc_140001db6:
  %v2_140001db6 = call i1 @IsProcessorFeaturePresent(i32 %ProcessorFeature)
  ret i1 %v2_140001db6
}

define i64* @function_140001dbc(i64* %dest, i64* %src, i32 %n) local_unnamed_addr {
dec_label_pc_140001dbc:
  %v6_140001dbc = call i64* @memcpy(i64* %dest, i64* %src, i32 %n)
  ret i64* %v6_140001dbc
}

define i64 @function_140001de0(i32 %arg1, i64 %arg2, i32 %arg3) local_unnamed_addr {
dec_label_pc_140001de0:
  %v0_140001de0 = load i64, i64* @rax, align 8
  ret i64 %v0_140001de0
}

define i64 @function_140001de2(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_140001de2:
  %rbp.global-to-local = alloca i64, align 8
  %v0_140001de2 = load i64, i64* %rbp.global-to-local, align 8
  store i64 %arg2, i64* %rbp.global-to-local, align 8
  %tmp241 = trunc i64 %arg1 to i32
  %v4_140001df3 = inttoptr i64 %arg1 to %_EXCEPTION_POINTERS*
  %v5_140001df3 = call i32 @_seh_filter_exe(i32 %tmp241, %_EXCEPTION_POINTERS* %v4_140001df3)
  %v7_140001df3 = sext i32 %v5_140001df3 to i64
  store i64 %v0_140001de2, i64* %rbp.global-to-local, align 8
  ret i64 %v7_140001df3
}

define i64 @function_140001e00(i64 %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_140001e00:
  ret i64 0
}

declare %_IMAGE_RUNTIME_FUNCTION_ENTRY* @RtlLookupFunctionEntry(i64, i64*, %_UNWIND_HISTORY_TABLE*) local_unnamed_addr

declare i64 (%_EXCEPTION_RECORD*, i64*, %_CONTEXT*, i64*)* @RtlVirtualUnwind(i32, i64, i64, %_IMAGE_RUNTIME_FUNCTION_ENTRY*, %_CONTEXT*, i64**, i64*, %_KNONVOLATILE_CONTEXT_POINTERS*) local_unnamed_addr

declare i32 @UnhandledExceptionFilter(%_EXCEPTION_POINTERS*) local_unnamed_addr

declare i64* @GetModuleHandleW(i16*) local_unnamed_addr

declare i1 @IsDebuggerPresent() local_unnamed_addr

declare void @InitializeSListHead(i64*) local_unnamed_addr

declare void @RtlCaptureContext(%_CONTEXT*) local_unnamed_addr

declare i1 @IsProcessorFeaturePresent(i32) local_unnamed_addr

declare i32 (%_EXCEPTION_POINTERS*)* @SetUnhandledExceptionFilter(i32 (%_EXCEPTION_POINTERS*)*) local_unnamed_addr

declare i64 @__C_specific_handler() local_unnamed_addr

declare i64* @memset(i64*, i32, i32) local_unnamed_addr

declare i64* @memcpy(i64*, i64*, i32) local_unnamed_addr

declare i32 @_set_new_mode(i32) local_unnamed_addr

declare i32 @_configthreadlocale(i32) local_unnamed_addr

declare void @__setusermatherr(i64) local_unnamed_addr

declare i32 @_initialize_onexit_table(%_onexit_table_t*) local_unnamed_addr

declare i64 @terminate() local_unnamed_addr

declare i32 @_seh_filter_exe(i32, %_EXCEPTION_POINTERS*) local_unnamed_addr

declare void @_set_app_type(i64) local_unnamed_addr

declare void @_c_exit() local_unnamed_addr

declare i64 @_crt_atexit() local_unnamed_addr

declare void @_cexit() local_unnamed_addr

declare i8*** @__p___argv() local_unnamed_addr

declare i32* @__p___argc() local_unnamed_addr

declare void @_register_thread_local_exe_atexit_callback(void (i64*, i32, i64*)*) local_unnamed_addr

declare void @_exit(i32) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare i32 @_initterm_e(i32 ()**, i32 ()**) local_unnamed_addr

declare void @_initterm(void ()**, void ()**) local_unnamed_addr

declare i8** @_get_initial_narrow_environment() local_unnamed_addr

declare i32 @_initialize_narrow_environment() local_unnamed_addr

declare i32 @_configure_narrow_argv(i64) local_unnamed_addr

declare i32 @_register_onexit_function(%_onexit_table_t*, i32 ()*) local_unnamed_addr

declare i32 @__stdio_common_vfprintf(i64, %_IO_FILE*, i8*, i64, i64) local_unnamed_addr

declare i64* @__acrt_iob_func(i32) local_unnamed_addr

declare i32* @__p__commode() local_unnamed_addr

declare i32 @_set_fmode(i32) local_unnamed_addr

declare i128 @__asm_movdqa(i128) local_unnamed_addr

declare void @__asm_movdqu(i128, i128) local_unnamed_addr

declare void @__asm_int(i64) local_unnamed_addr

declare %0 @__asm_cpuid(i32) local_unnamed_addr

declare %1 @__asm_cpuid.1(i32) local_unnamed_addr

declare %2 @__asm_cpuid.2(i32) local_unnamed_addr

declare i64 @__asm_xgetbv(i32, i32) local_unnamed_addr

declare i64 @__asm_int3() local_unnamed_addr

declare i128 @__asm_movups(i128) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare void @__asm_movups.3(i128, i128) local_unnamed_addr

declare i64 @__asm_movsd.4(i128) local_unnamed_addr

declare i64 @__decompiler_undefined_function_0() local_unnamed_addr

declare i128 @__decompiler_undefined_function_5() local_unnamed_addr
