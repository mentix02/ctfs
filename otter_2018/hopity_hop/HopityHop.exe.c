//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
// Copyright (c) 2019 Retargetable Decompiler <info@retdec.com>
//

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <windows.h>

// ---------------- Integer Types Definitions -----------------

typedef int32_t int28_t;
typedef int64_t int128_t;

// ------------------------ Structures ------------------------

struct struct1 {
    int32_t e0;
    int32_t e1;
    int32_t e2;
    int32_t e3;
};

struct struct2 {
    int32_t e0;
    int32_t e1;
    int32_t e2;
    int32_t e3;
};

struct struct3 {
    int32_t e0;
    int32_t e1;
    int32_t e2;
    int32_t e3;
};

struct _EXCEPTION_POINTERS {
    struct _EXCEPTION_RECORD * e0;
    struct _CONTEXT * e1;
};

struct _EXCEPTION_RECORD {
    int32_t e0;
    int32_t e1;
    struct _EXCEPTION_RECORD * e2;
    int64_t * e3;
    int32_t e4;
    int32_t e5[1];
};

struct _IMAGE_RUNTIME_FUNCTION_ENTRY {
    int32_t e0;
    int32_t e1;
    int64_t e2;
};

struct _IO_FILE {
    int32_t e0;
};

struct _M128A {
    int64_t e0;
    int64_t e1;
};

struct _CONTEXT {
    int64_t e0;
    int64_t e1;
    int64_t e2;
    int64_t e3;
    int64_t e4;
    int64_t e5;
    int32_t e6;
    int32_t e7;
    int16_t e8;
    int16_t e9;
    int16_t e10;
    int16_t e11;
    int16_t e12;
    int16_t e13;
    int32_t e14;
    int64_t e15;
    int64_t e16;
    int64_t e17;
    int64_t e18;
    int64_t e19;
    int64_t e20;
    int64_t e21;
    int64_t e22;
    int64_t e23;
    int64_t e24;
    int64_t e25;
    int64_t e26;
    int64_t e27;
    int64_t e28;
    int64_t e29;
    int64_t e30;
    int64_t e31;
    int64_t e32;
    int64_t e33;
    int64_t e34;
    int64_t e35;
    int64_t e36;
    int64_t e37;
    int64_t e38;
    struct _M128A e39[26];
    int64_t e40;
    int64_t e41;
    int64_t e42;
    int64_t e43;
    int64_t e44;
    int64_t e45;
};

struct _onexit_table_t {
    void (**e0)();
    void (**e1)();
    void (**e2)();
};

// ------------------- Function Prototypes --------------------

int64_t entry_point(void);
int64_t function_140001000(void);
int64_t function_140001010(char * a1, char a2, int64_t a3, int64_t a4);
int64_t function_140001070(int32_t a1, int64_t a2, int64_t a3);
int64_t function_140001134(void);
int64_t function_1400011f4(void);
int64_t function_140001210(void);
int64_t function_140001558(int64_t a1);
int64_t function_1400015a4(int64_t a1);
int64_t function_140001680(int64_t a1);
int64_t function_140001712(void);
int64_t function_140001714(int32_t a1);
int64_t function_140001740(int64_t a1, int32_t a2);
int64_t function_1400017bc(int64_t a1);
int64_t function_1400017d4(void);
int64_t function_140001884(void);
int64_t function_140001888(void);
int64_t function_140001890(void);
void function_140001898(int64_t * ListHead);
int64_t function_1400018a8(int64_t a1);
int64_t function_1400018ac(void);
int64_t function_1400018b0(void);
int64_t function_1400018b8(void);
int64_t function_1400018d4(void);
int64_t function_1400018e0(void);
int64_t function_1400018e8(void);
int64_t function_1400018f0(int64_t a1);
int64_t function_1400018f8(int64_t a1, int64_t a2);
int64_t function_140001a44(int64_t a1);
int32_t (*function_140001a98(int32_t (*lpTopLevelExceptionFilter)(struct _EXCEPTION_POINTERS *)))(struct _EXCEPTION_POINTERS *);
int64_t function_140001aa8(int64_t a1);
int64_t function_140001ae0(void);
int64_t function_140001b1c(void);
int64_t function_140001b58(int64_t a1);
int64_t function_140001d14(void);
int64_t function_140001d20(void);
int64_t * function_140001d26(int64_t * s, int32_t c, int32_t n);
int32_t function_140001d2c(int32_t ExceptionNum, struct _EXCEPTION_POINTERS * ExceptionPtr);
void function_140001d32(int64_t a1);
void function_140001d38(int64_t pf);
int32_t function_140001d3e(int64_t a1);
int32_t function_140001d44(void);
char ** function_140001d4a(void);
void function_140001d50(void (**First)(), void (**Last)());
int32_t function_140001d56(int32_t (**First)(), int32_t (**Last)());
void function_140001d5c(int32_t status);
void function_140001d62(int32_t Code);
int32_t function_140001d68(int32_t Mode);
int32_t * function_140001d6e(void);
char *** function_140001d74(void);
void function_140001d7a(void);
void function_140001d80(void);
void function_140001d86(void (*Callback)(int64_t *, int32_t, int64_t *));
int32_t function_140001d8c(int32_t Flag);
int32_t function_140001d92(int32_t NewMode);
int32_t * function_140001d98(void);
int32_t function_140001d9e(struct _onexit_table_t * Table);
int32_t function_140001da4(struct _onexit_table_t * Table, int32_t (*Function)());
int64_t function_140001daa(void);
int64_t function_140001db0(int32_t a1);
bool function_140001db6(int32_t ProcessorFeature);
int64_t * function_140001dbc(int64_t * dest, int64_t * src, int32_t n);
int64_t function_140001de0(int32_t a1, int64_t a2, int32_t a3);
int64_t function_140001de2(int64_t a1, int64_t a2);
int64_t function_140001e00(int64_t a1, int64_t a2);

// --------------------- Global Variables ---------------------

void (**g1)() = NULL;
void (**g2)() = NULL;
int32_t (**g3)() = NULL;
int32_t (**g4)() = NULL;
int128_t g5;
int32_t g6 = 0x2ddfa232;
int64_t g7 = -0x2b992ddfa233;
int32_t g8 = 1;
int64_t g9 = 0x200000001;
int32_t g10 = 2;
char g11[3] = "/ ";
int32_t g12 = 1;
int32_t g13 = 0;
char g14 = 0;
struct _onexit_table_t * g15 = NULL;
int64_t g16 = 0;
struct _onexit_table_t * g17 = NULL;
int64_t g18 = 0;
int32_t g19 = 0;
int64_t g20 = 0;
int32_t g21 = 0;
int32_t g22 = 0;
int64_t g23 = 0;
int64_t g24 = 0;
int64_t g25 = 0;
int64_t g26 = 0; // r9
int64_t g27 = 0; // rax
int64_t g28 = 0; // rbx
int64_t g29 = 0; // rdi
int64_t g30 = 0; // rdx
int64_t g31 = 0; // rsi
int32_t g32;

// ------------------------ Functions -------------------------

// Address range: 0x140001000 - 0x140001008
int64_t function_140001000(void) {
    // 0x140001000
    return &g25;
}

// Address range: 0x140001010 - 0x140001065
int64_t function_140001010(char * a1, char a2, int64_t a3, int64_t a4) {
    char v1 = a2; // bp+16
    int64_t * v2 = __acrt_iob_func(1); // 0x140001038
    int64_t v3 = function_140001000(); // 0x140001041
    g26 = 0;
    int64_t v4 = *(int64_t *)v3; // 0x140001054
    int32_t result = __stdio_common_vfprintf(v4, (struct _IO_FILE *)v2, (char *)(int64_t)a1, 0, (int64_t)&v1); // 0x140001057
    return result;
}

// Address range: 0x140001070 - 0x1400010ff
int64_t function_140001070(int32_t a1, int64_t a2, int64_t a3) {
    int64_t v1 = g31; // 0x140001075
    g28 = 0;
    int64_t v2; // bp-1752
    memcpy(&v2, (int64_t *)"fuOoLtJVxzVohfuwStKPGeYjeaeENjBUtrNFCQSUgfyNoGrkdgYFZNRywRxTWYzisAjBsbkbEqszyMbwkAadGdmZldjBfOiEuHzzxYEkVQvbgQTleRaxUpzNJORxNyAsoWYsyOoLwCflAMFVNIQFolWoOXqgKazCBwgrJRtYCVtJiUSKUkAOLnQCkGpvmGLPlstMQktpFvufSLggiIWqwIUXDBUpnINCuJWOOXZqyikyGjYpkBcvrypECQPKmTNGldBaVvawjQFuLckhDXSSRhQVhuXbufswQeXcriPkdzHsyVPZkBsrhAieOXLQgZVrolvhAzGZBWtmUDbRthQNwTvpXfBUtarFIN{GQzMcUqkyLnQHAfZpHUVCFyKDRRDqKHuEPVfcqsqlZIuoLQmcpHluJTSYBtydPTmvLAVCGoDnGAAeNllVupsANgRVMpKrlyHezDMVKAMLHBpJcDrwMcvswSxKzJBcgNjSLzTFOthHWduYXvmIHcHfpWomvcLkVnKuhgZCrpGfheEcUlcImXsVhAXdDnMjZtvDRZrDsnNDxIAxMuQuxKrdnzJMwmALPCsVliwoHHEuqGwgSqqMGEOLQqsvAcbZqNbSMqSthI0wCsursoXxuxNfTcJNUsLGrBdSQmnRcCtXQPSOKVAVnwHoGlAgbecalSBckiOGmEnphbhmumFvHpoekMTvhQeeqAJdBWjUtVHmlsGfLCuqpbiQVcmmPfPIJFqsxbnCiDtkWFPwLIGKEBliEDCtPrpgnAMXsKCSMDidQFzCu_mPMtRAVjqCoibPJboLEIYOTiDchrDDmYeFYYoeKVDckfJhfsjYvUqRaVrPygANsCtVTOpxFyPCmljFIbkJotORLEeOvTVofAsSWbYGHtYxFNHSvTuSOmqnUkZHeqpWUReHwwsgPetpMFYiDfhUxnBeIkzGMPyBqVPseJWnTPILENAsOkkycUHsvJ0fodiCfMRPSUKaTFBZPHfkXgwJvEJTESfdLSoHzEqrJWulXkhNYrCFWBLHxIOmDghAamJoGdMushfqvOEJzYaIpcJcGUbDwwvWXCMNAaMIGSqTrTQTLtKQhJTWROvkGnIDcGvTkCDwSFRVEVVVnOlLFIoZDjcGAMIjEBrYZWlWJaHHPTEapZbJQBBUIKPsHafYnGK_QCblKSryqzVTikKFUatKRiKTDwbFAUNNfbZggpgzlYnLAIhsqGapwprPrwVGauySbRjofNnrbiqccvOkaGVoQZDRPqeSFDffSJvmFMaKJwmwMcxgUcUBPcQySMmKhldhQSUZg0RrCZtJmicWDpDpFOyPepJzLBGrrhSyumaujkVxVbyEkdfueBUvfQqcAQIQPiBiwNOkCyxpVKEMiEbGeScaBIVSpPabyLmHNOMsdbHQmPuJYuaIwmdEyEdfVZffKbYJoRYFcLGxsQXjvImQrIqYTwrzrAKIzzlzBHagRUXqGjwHnrPqSocOYDzvohnXrtKiTsmbIrovrowuUeAGSAGwiRXZCamkwLVGwBMGYRYgkqZnZpvHN3fhMAjZLOlRdCmYILiFCXLZVFkGlhreNfPrwQzfHdsIegqOkfnWmzQRyQcPStDtBBxinzqlNKeRTsySXlhQLkremIhGJnwiGLAYpbzQFKmJtCFbufTUFROMsXjgGlaxorwBefXNssXejQWMYwnfvInpQ}qMCOoKCqKyJbUFOQoSPjQgNgEogfQQAPrtixyi", 1732);
    int128_t v3 = __asm_movdqa(g5); // 0x14000109b
    int128_t v4; // bp-1784
    g29 = &v4;
    int128_t v5;
    __asm_movdqu(v5, v3);
    g31 = g31 & -256 | 148;
    function_140001010("%c", *(char *)(64 + g28), 1732, g26);
    int64_t v6 = g31; // 0x1400010d4
    int64_t v7 = g29 + 1; // 0x1400010d8
    g29 = v7;
    unsigned char v8 = *(char *)v7; // 0x1400010dc
    g31 = v8;
    int64_t v9 = v6 + 1 + g28 & 0xffffffff; // 0x1400010e1
    g28 = v9;
    while (v8 != 0) {
        // 0x1400010c0
        function_140001010("%c", *(char *)(64 + v9), 1732, g26);
        v6 = g31;
        v7 = g29 + 1;
        g29 = v7;
        v8 = *(char *)v7;
        g31 = v8;
        v9 = v6 + 1 + g28 & 0xffffffff;
        g28 = v9;
    }
    // 0x1400010e8
    g31 = v1;
    return 0;
}

// Address range: 0x140001134 - 0x1400011f4
int64_t function_140001134(void) {
    // 0x140001134
    _set_app_type(1);
    _set_fmode((int32_t)function_140001890());
    g28 = (int64_t)__p__commode();
    int64_t v1 = function_140001884(); // 0x140001158
    g27 = v1;
    *(int32_t *)g28 = (int32_t)v1;
    int64_t v2 = function_1400015a4(1); // 0x140001164
    g27 = v2;
    if ((char)v2 == 0) {
        // 0x1400011d9
        function_1400018f8(7, g30);
        __asm_int3();
        function_1400018b8();
        return 0;
    }
    // 0x14000116d
    function_140001ae0();
    function_1400017bc(0x140001b1c);
    int64_t ListHead = function_140001888(); // 0x14000117e
    if (_configure_narrow_argv(ListHead) != 0) {
        // 0x1400011d9
        function_1400018f8(7, g30);
        __asm_int3();
        function_1400018b8();
        return 0;
    }
    // 0x14000118e
    InitializeSListHead((int64_t *)ListHead);
    int64_t v3 = function_1400018d4(); // 0x140001193
    g27 = v3;
    if ((int32_t)v3 != 0) {
        // 0x14000119c
        __setusermatherr(0x140001884);
        g27 = &g32;
    }
    // 0x1400011a8
    g27 = function_1400018ac();
    function_1400018ac();
    int64_t v4 = function_140001884(); // 0x1400011b2
    g27 = _configthreadlocale((int32_t)v4);
    if ((char)function_1400018a8(0x100000000 * v4 / 0x100000000) != 0) {
        // 0x1400011c7
        _initialize_narrow_environment();
    }
    // 0x1400011cc
    function_140001884();
    return 0;
}

// Address range: 0x1400011f4 - 0x14000120d
int64_t function_1400011f4(void) {
    // 0x1400011f4
    int64_t lpTopLevelExceptionFilter; // rcx
    SetUnhandledExceptionFilter((int32_t (*)(struct _EXCEPTION_POINTERS *))lpTopLevelExceptionFilter);
    int64_t v1 = function_140001884(); // 0x1400011fd
    return _set_new_mode((int32_t)v1);
}

// Address range: 0x140001210 - 0x14000138b
int64_t function_140001210(void) {
    // 0x140001210
    if ((char)function_140001558(1) == 0) {
        // 0x140001367
        function_1400018f8(7, g30);
        // 0x140001372
        function_1400018f8(7, g30);
        // 0x14000137c
        exit((int32_t)g28);
        // UNREACHABLE
    }
    // 0x140001231
    g31 &= -256;
    int64_t v1 = g28 & -256 | __scrt_acquire_startup_lock(); // 0x14000123e
    g28 = v1;
    uint32_t v2 = g13; // 0x140001240
    if (v2 == 1) {
        // 0x140001372
        function_1400018f8(7, g30);
        // 0x14000137c
        exit((int32_t)g28);
        // UNREACHABLE
    }
    int64_t v3; // 0x1400012a5
    if (v2 != 0) {
        // 0x14000129d
        g31 = g31 & -256 | 1;
        v3 = v2;
    } else {
        // 0x140001253
        g13 = 1;
        if (_initterm_e((int32_t (**)())&g3, (int32_t (**)())&g4) != 0) {
            // 0x140001357
            return 255;
        }
        // 0x14000127e
        _initterm((void (**)())&g1, (void (**)())&g2);
        g13 = 2;
        v3 = (int64_t)&g1;
        v1 = g28;
    }
    // 0x1400012a5
    __scrt_release_startup_lock(v3 & -256 | v1);
    int64_t v4 = function_1400018e0(); // 0x1400012ac
    if (*(int64_t *)v4 != 0) {
        // 0x1400012ba
        if ((char)function_140001680(0x100000000 * v4 / 0x100000000) != 0) {
            // 0x1400012c6
            g27 = *(int64_t *)v4;
            function_140001de0(0, 2, 0);
        }
    }
    int64_t v5 = function_1400018e8(); // 0x1400012d8
    if (*(int64_t *)v5 != 0) {
        // 0x1400012e6
        if ((char)function_140001680(v5) != 0) {
            // 0x1400012f2
            _register_thread_local_exe_atexit_callback((void (*)(int64_t *, int32_t, int64_t *))*(int64_t *)v5);
        }
    }
    // 0x1400012fa
    g29 = *(int64_t *)__p___argv();
    g28 = (int64_t)__p___argc();
    char ** v6 = _get_initial_narrow_environment(); // 0x14000130a
    int32_t v7 = *(int32_t *)g28; // 0x140001315
    g28 = function_140001070(v7, 0x100000000 * g29 / 0x100000000, (int64_t)v6);
    int64_t v8 = v7; // 0x14000131e
    int64_t v9 = function_140001a44(v8); // 0x14000131e
    g27 = v9;
    if ((char)v9 == 0) {
        // 0x14000137c
        exit((int32_t)g28);
        // UNREACHABLE
    }
    // 0x140001327
    if ((char)g31 == 0) {
        // 0x14000132c
        _cexit();
        g27 = &g32;
    }
    // 0x140001331
    function_140001740(v8 & -256 | 1, 0);
    // 0x140001357
    return g28;
}

// Address range: 0x14000138c - 0x14000139e
int64_t entry_point(void) {
    // 0x14000138c
    function_1400017d4();
    return function_140001210();
}

// Address range: 0x140001558 - 0x1400015a1
int64_t function_140001558(int64_t a1) {
    int64_t v1 = g28; // 0x140001558
    g28 = 1;
    char v2 = (int32_t)a1 == 0 ? 1 : *(char *)&g19; // 0x14000156f
    *(char *)&g19 = v2;
    g27 = function_140001b58(a1);
    int64_t v3 = function_1400018a8(a1); // 0x14000157a
    g27 = v3;
    if ((char)v3 == 0) {
        // 0x14000159b
        g28 = v1;
        return v3 & -256;
    }
    int64_t v4 = function_1400018a8(a1); // 0x140001587
    g27 = v4;
    if ((char)v4 != 0) {
        int64_t result = g28 | v4 & -256; // 0x140001599
        // 0x14000159b
        g28 = v1;
        return result;
    }
    int64_t result2 = function_1400018a8(0) & -256; // 0x140001583
    // 0x14000159b
    g28 = v1;
    return result2;
}

// Address range: 0x1400015a4 - 0x140001680
int64_t function_1400015a4(int64_t a1) {
    int64_t v1 = g28; // 0x1400015a4
    g28 = a1;
    if (g14 != 0) {
        // 0x140001668
        g28 = v1;
        return g27 & -256 | 1;
    }
    if (((int32_t)a1 || 1) != 1) {
        // 0x140001673
        function_1400018f8(5, g30);
        __asm_int3();
        __asm_int3();
        return __asm_int3();
    }
    // 0x1400015c9
    if ((int32_t)function_140001d14() == 0) {
        goto lab_0x1400015fa;
    } else {
        // 0x1400015d2
        if ((int32_t)g28 != 0) {
            goto lab_0x1400015fa;
        } else {
            int32_t v2 = _initialize_onexit_table((struct _onexit_table_t *)&g15); // 0x1400015dd
            if (v2 != 0) {
                // 0x140001668
                g28 = v1;
                return (int64_t)v2 & -256;
            }
            int32_t v3 = _initialize_onexit_table((struct _onexit_table_t *)&g17); // 0x1400015ed
            int64_t v4 = v3; // 0x1400015ed
            g27 = v4;
            if (v3 != 0) {
                // 0x140001668
                g28 = v1;
                return v4 & -256;
            }
            goto lab_0x14000165f;
        }
    }
  lab_0x1400015fa:;
    int64_t v5 = g6; // 0x1400015fa
    g30 = v5;
    uint64_t v6 = (int64_t)(64 - (g6 & 63)) & 63; // 0x140001611
    int64_t v7; // 0x140001614
    if (v6 != 0) {
        // bb
        v7 = -1 << 64 - v6 | 0xffffffffffffffff >> v6;
    } else {
        v7 = -1;
    }
    int64_t v8 = v7 ^ v5; // 0x140001614
    g27 = v8;
    int128_t v9 = __asm_movups((int128_t)v8); // 0x14000161f
    int128_t v10 = __asm_movsd(g27); // 0x140001627
    __asm_movups_3(*(int128_t *)&g15, v9);
    int128_t v11 = __asm_movups((int128_t)g27); // 0x14000163b
    g16 = __asm_movsd_4(v10);
    int128_t v12 = __asm_movsd(g27); // 0x14000164b
    __asm_movups_3(*(int128_t *)&g17, v11);
    g18 = __asm_movsd_4(v12);
    goto lab_0x14000165f;
  lab_0x14000165f:
    // 0x14000165f
    g14 = 1;
    // 0x140001668
    g28 = v1;
    return g27 & -256 | 1;
}

// Address range: 0x140001680 - 0x140001712
int64_t function_140001680(int64_t a1) {
    // 0x140001680
    if (*(int16_t *)0x140000000 != 0x5a4d) {
        // 0x14000170e
        g27 = 0x5a00;
        return function_140001714((int32_t)a1);
    }
    int64_t v1 = (int64_t)*(int32_t *)0x14000003c; // 0x140001695
    int64_t v2 = v1 + 0x140000000; // 0x1400016a3
    if (*(int32_t *)v2 != 0x4550) {
        // 0x14000170e
        g27 = v1 & -256;
        return function_140001714((int32_t)v2);
    }
    int64_t v3 = v1 + 0x140000018; // 0x1400016b4
    if (*(int16_t *)v3 != 523) {
        // 0x14000170e
        g27 = 512;
        return function_140001714((int32_t)v2);
    }
    uint64_t v4 = a1 - 0x140000000; // 0x1400016ba
    int64_t v5 = (int64_t)*(int16_t *)(v1 + 0x140000014) + v3; // 0x1400016c5
    uint16_t v6 = *(int16_t *)(v1 + 0x140000006); // 0x1400016c8
    int64_t v7 = v6; // 0x1400016c8
    int64_t v8 = 40 * v7 + v5; // 0x1400016d0
    g26 = v8;
    int64_t v9; // 0x1400016fe24
    int64_t v10; // 0x14000170a30
    int64_t v11; // 0x14000170c29
    int64_t v12; // 0x1400016fc22
    if (v6 != 0) {
        int64_t v13 = v7; // 0x1400016fc20
        while (true) {
            uint32_t v14 = *(int32_t *)(v5 + 12); // 0x1400016dd
            int64_t v15 = v14; // 0x1400016dd
            int64_t v16; // 0x1400016fc19
            if (v4 >= v15) {
                int64_t v17 = (int64_t)(*(int32_t *)(v5 + 8) + v14); // 0x1400016e8
                if (v4 < v17) {
                    if (v5 != 0) {
                        int64_t v18 = v17 & 0xffffff00; // 0x14000170a
                        if (*(int32_t *)(v5 + 36) >= 0) {
                            // 0x14000170a
                            g27 = v18 | 1;
                            return function_140001714(v14);
                        }
                        // 0x140001706
                        g27 = v18;
                        return function_140001714(v14);
                    }
                    v10 = v17;
                    v11 = v15;
                    goto lab_0x1400016fc;
                }
                v16 = v17;
            } else {
                v16 = v13;
            }
            int64_t v19 = v5 + 40; // 0x1400016ef
            if (v19 == v8) {
                v9 = v15;
                v12 = v16;
                // break -> 0x1400016f7
                break;
            }
            v13 = v16;
            v5 = v19;
        }
    } else {
        v9 = 5 * v7;
        v12 = v7;
    }
    v10 = v12;
    v11 = v9;
  lab_0x1400016fc:
    // 0x1400016fc
    g27 = v10 & -256;
    return function_140001714((int32_t)v11);
}

// Address range: 0x140001712 - 0x140001714
int64_t function_140001712(void) {
    // 0x140001712
    int64_t v1; // rax
    return v1 & -256;
}

// Address range: 0x140001714 - 0x140001719
int64_t function_140001714(int32_t a1) {
    // 0x140001714
    return g27;
}

// Address range: 0x140001740 - 0x14000176b
int64_t function_140001740(int64_t a1, int32_t a2) {
    int64_t v1 = g28; // 0x140001740
    int64_t v2 = a1 | v1 & -256; // 0x14000174d
    if (*(char *)&g19 != 0) {
        // 0x140001751
        if ((char)(int64_t)a2 != 0) {
            // 0x140001763
            g28 = v1;
            return g27 & -256 | 1;
        }
    }
    // 0x140001755
    g27 = function_1400018a8(v2);
    // 0x140001763
    g28 = v1;
    return function_1400018a8(v2 | v2 & -256) & -256 | 1;
}

// Address range: 0x1400017bc - 0x1400017d3
int64_t function_1400017bc(int64_t a1) {
    // 0x1400017bc
    return 0xffffffff - (int64_t)(_onexit((int32_t (*)())a1) != NULL) & 0xffffffff;
}

// Address range: 0x1400017d4 - 0x140001881
int64_t function_1400017d4(void) {
    int64_t result = -1 - (int64_t)g6; // 0x140001871
    g7 = result;
    return result;
}

// Address range: 0x140001884 - 0x140001887
int64_t function_140001884(void) {
    // 0x140001884
    return 0;
}

// Address range: 0x140001888 - 0x14000188e
int64_t function_140001888(void) {
    // 0x140001888
    return 1;
}

// Address range: 0x140001890 - 0x140001896
int64_t function_140001890(void) {
    // 0x140001890
    return 0x4000;
}

// Address range: 0x140001898 - 0x1400018a6
void function_140001898(int64_t * ListHead) {
    // 0x140001898
    InitializeSListHead(ListHead);
}

// Address range: 0x1400018a8 - 0x1400018ab
int64_t function_1400018a8(int64_t a1) {
    // 0x1400018a8
    return g27 & -256 | 1;
}

// Address range: 0x1400018ac - 0x1400018af
int64_t function_1400018ac(void) {
    // 0x1400018ac
    return g27;
}

// Address range: 0x1400018b0 - 0x1400018b8
int64_t function_1400018b0(void) {
    // 0x1400018b0
    return &g20;
}

// Address range: 0x1400018b8 - 0x1400018d3
int64_t function_1400018b8(void) {
    int64_t * v1 = (int64_t *)function_140001000(); // 0x1400018c1
    *v1 = *v1 | 4;
    int64_t result = function_1400018b0(); // 0x1400018c5
    int64_t * v2 = (int64_t *)result; // 0x1400018ca
    *v2 = *v2 | 2;
    return result;
}

// Address range: 0x1400018d4 - 0x1400018e0
int64_t function_1400018d4(void) {
    // 0x1400018d4
    return g8 == 0;
}

// Address range: 0x1400018e0 - 0x1400018e8
int64_t function_1400018e0(void) {
    // 0x1400018e0
    return &g24;
}

// Address range: 0x1400018e8 - 0x1400018f0
int64_t function_1400018e8(void) {
    // 0x1400018e8
    return &g23;
}

// Address range: 0x1400018f0 - 0x1400018f8
int64_t function_1400018f0(int64_t a1) {
    // 0x1400018f0
    g21 = 0;
    return g27;
}

// Address range: 0x1400018f8 - 0x140001a42
int64_t function_1400018f8(int64_t a1, int64_t a2) {
    int64_t v1 = g28; // 0x1400018f8
    bool v2 = IsProcessorFeaturePresent(23); // 0x140001914
    g27 = v2;
    if (v2) {
        // 0x14000191d
        __asm_int(41);
    }
    // 0x140001921
    function_1400018f0(3);
    int64_t v3; // bp-1240
    memset(&v3, 0, 1232);
    RtlCaptureContext((struct _CONTEXT *)&v3);
    int32_t v4; // bp+16
    int64_t v5;
    struct _IMAGE_RUNTIME_FUNCTION_ENTRY * v6 = RtlLookupFunctionEntry(v5, (int64_t *)&v4, NULL); // 0x14000195a
    if (v6 != NULL) {
        // 0x140001965
        int64_t v7; // bp+24
        int64_t v8; // bp+32
        RtlVirtualUnwind(0, (int64_t)v4, a1, v6, (struct _CONTEXT *)&v3, (int64_t **)&v8, &v7, NULL);
    }
    // 0x1400019a1
    int64_t v9; // bp-1400
    int64_t ExceptionInfo = &v9; // 0x1400019a8
    g30 = 0;
    memset(&v9, 0, 152);
    v9 = 0x40000015;
    IsDebuggerPresent();
    SetUnhandledExceptionFilter(NULL);
    int32_t v10 = UnhandledExceptionFilter((struct _EXCEPTION_POINTERS *)&ExceptionInfo); // 0x140001a1b
    int64_t result = v10; // 0x140001a1b
    g27 = result;
    if (v10 != 0) {
        // 0x140001a31
        g28 = v1;
        return result;
    }
    // 0x140001a25
    int64_t result2; // 0x140001a41
    if ((char)(a1 & -256) == 0) {
        // 0x140001a29
        result2 = function_1400018f0(result + 3);
    } else {
        result2 = result;
    }
    // 0x140001a31
    g28 = v1;
    return result2;
}

// Address range: 0x140001a44 - 0x140001a96
int64_t function_140001a44(int64_t a1) {
    int64_t * v1 = GetModuleHandleW(NULL); // 0x140001a4a
    int64_t v2 = (int64_t)v1; // 0x140001a4a
    if (v1 == NULL || *(int16_t *)v1 != 0x5a4d) {
        // 0x140001a91
        return v2 & -256;
    }
    int64_t v3 = (int64_t)*(int32_t *)(v2 + 60) + v2; // 0x140001a63
    if (*(int32_t *)v3 != 0x4550) {
        // 0x140001a91
        return v2 & -256;
    }
    // 0x140001a6e
    if (*(int16_t *)(v3 + 24) != 523 || *(int32_t *)(v3 + 132) < 15) {
        // 0x140001a91
        return 512;
    }
    // 0x140001a82
    if (*(int32_t *)(v3 + 248) != 0) {
        // 0x140001a91
        return 513;
    }
    // 0x140001a91
    return 512;
}

// Address range: 0x140001a98 - 0x140001aa6
int32_t (*function_140001a98(int32_t (*lpTopLevelExceptionFilter)(struct _EXCEPTION_POINTERS *)))(struct _EXCEPTION_POINTERS *) {
    // 0x140001a98
    return SetUnhandledExceptionFilter(lpTopLevelExceptionFilter);
}

// Address range: 0x140001aa8 - 0x140001ae0
int64_t function_140001aa8(int64_t a1) {
    if ((int32_t)a1 != -0x1f928c9d || *(int32_t *)(a1 + 24) != 4) {
        // 0x140001ad3
        return 0;
    }
    int32_t v1 = *(int32_t *)(a1 + 32); // 0x140001abd
    if (v1 == 0x1994000 || v1 < 0x19930523) {
        // 0x140001ada
        function_140001db0(v1);
        return __asm_int3();
    }
    // 0x140001ad3
    return 0;
}

// Address range: 0x140001ae0 - 0x140001b1c
int64_t function_140001ae0(void) {
    // 0x140001b11
    return g27;
}

// Address range: 0x140001b1c - 0x140001b58
int64_t function_140001b1c(void) {
    // 0x140001b4d
    int64_t result; // rax
    return result;
}

// Address range: 0x140001b58 - 0x140001d11
int64_t function_140001b58(int64_t a1) {
    struct struct1 v1; // 0x140001c63
    struct struct3 v2; // 0x140001b82
    struct struct2 v3; // 0x140001bc6
    // 0x140001b58
    g10 = 2;
    *(int32_t *)&g9 = 1;
    v2 = __asm_cpuid(0);
    int32_t v4 = v2.e1; // 0x140001b82
    int32_t v5 = v2.e2; // 0x140001b82
    int32_t v6 = v2.e3; // 0x140001b82
    int64_t v7 = 0; // r11
    int64_t v8 = v6 ^ 0x69746e65 | v4 ^ 0x68747541 | v5 ^ 0x444d4163; // rbp
    g26 = v4 ^ 0x756e6547;
    v3 = __asm_cpuid_1(1);
    int32_t v9 = v3.e0; // 0x140001bc6
    int32_t v10 = v3.e3; // 0x140001bc6
    g30 = v10;
    int64_t v11 = v5 ^ 0x6c65746e; // 0x140001bc8
    int64_t v12 = v3.e2; // rsi
    if ((int32_t)(v11 | (int64_t)(v6 ^ 0x49656e69) | g26) != 0) {
        goto lab_0x140001c33;
    } else {
        // 0x140001be3
        *(int64_t *)&g11 = -1;
        int32_t v13 = v9 & 0xfff3ff0; // 0x140001beb
        switch ((int28_t)v13) {
            case 0x106c0: {
                goto lab_0x140001c1f;
            }
            case 0x20660: {
                goto lab_0x140001c1f;
            }
            case 0x20670: {
                goto lab_0x140001c1f;
            }
            default: {
                uint32_t v14 = v13 - 0x30650; // 0x140001c05
                if (v14 < 33) {
                    if ((1 << ((int64_t)v14 & 48) & 0x100010001) == 0) {
                        goto lab_0x140001c33;
                    } else {
                        goto lab_0x140001c1f;
                    }
                } else {
                    goto lab_0x140001c33;
                }
            }
        }
    }
  lab_0x140001c33:;
    int32_t v15 = g22; // 0x140001c33
    int64_t v16 = v15; // r8
    goto lab_0x140001c3a;
  lab_0x140001c3a:
    // 0x140001c3a
    if ((int32_t)v8 == 0) {
        if ((v9 & 0xff00f00) >= 0x601100) {
            int32_t v17 = v15 | 4; // 0x140001c4c
            v16 = v17;
            g22 = v17;
        }
    }
    // 0x140001c57
    int32_t v18; // 0x140001cb0
    if ((int64_t)v2.e0 >= 7) {
        // 0x140001c61
        v1 = __asm_cpuid_2(7);
        int64_t v19 = v1.e1; // 0x140001c63
        int32_t v20 = v1.e3; // 0x140001c63
        g30 = v20;
        v7 = v19;
        if ((v19 & 512) != 0) {
            // 0x140001c7d
            g22 = (int32_t)v16 | 2;
            v18 = v20;
        } else {
            v18 = v20;
        }
    } else {
        v18 = v10;
    }
    // 0x140001c88
    if ((v12 & 0x100000) == 0) {
        // 0x140001cfc
        return 0;
    }
    // 0x140001c8e
    *(int32_t *)&g9 = 2;
    g10 = 6;
    if ((v12 & 0x8000000) == 0) {
        // 0x140001cfc
        return 0;
    }
    if ((v12 & 0x10000000) == 0) {
        // 0x140001cfc
        return 0;
    }
    int64_t v21 = __asm_xgetbv(0, v18); // 0x140001cb0
    g30 = 0x100000000 * g30 | v21;
    if ((0x100000000000000 * v21 / 0x100000000000000 & 6) != 6) {
        // 0x140001cfc
        return 0;
    }
    int32_t v22 = g10; // 0x140001cca
    *(int32_t *)&g9 = 3;
    g10 = v22 | 8;
    if ((v7 & 32) != 0) {
        // 0x140001ce9
        *(int32_t *)&g9 = 5;
        g10 = v22 | 40;
    }
    // 0x140001cfc
    return 0;
  lab_0x140001c1f:;
    int32_t v23 = g22 | 1; // 0x140001c26
    v16 = v23;
    g22 = v23;
    v15 = v23;
    goto lab_0x140001c3a;
}

// Address range: 0x140001d14 - 0x140001d20
int64_t function_140001d14(void) {
    // 0x140001d14
    return g12 != 0;
}

// Address range: 0x140001d20 - 0x140001d26
int64_t function_140001d20(void) {
    // 0x140001d20
    return __C_specific_handler();
}

// Address range: 0x140001d26 - 0x140001d2c
int64_t * function_140001d26(int64_t * s, int32_t c, int32_t n) {
    // 0x140001d26
    return memset(s, c, n);
}

// Address range: 0x140001d2c - 0x140001d32
int32_t function_140001d2c(int32_t ExceptionNum, struct _EXCEPTION_POINTERS * ExceptionPtr) {
    // 0x140001d2c
    return _seh_filter_exe(ExceptionNum, ExceptionPtr);
}

// Address range: 0x140001d32 - 0x140001d38
void function_140001d32(int64_t a1) {
    // 0x140001d32
    _set_app_type(a1);
}

// Address range: 0x140001d38 - 0x140001d3e
void function_140001d38(int64_t pf) {
    // 0x140001d38
    __setusermatherr(pf);
}

// Address range: 0x140001d3e - 0x140001d44
int32_t function_140001d3e(int64_t a1) {
    // 0x140001d3e
    return _configure_narrow_argv(a1);
}

// Address range: 0x140001d44 - 0x140001d4a
int32_t function_140001d44(void) {
    // 0x140001d44
    return _initialize_narrow_environment();
}

// Address range: 0x140001d4a - 0x140001d50
char ** function_140001d4a(void) {
    // 0x140001d4a
    return _get_initial_narrow_environment();
}

// Address range: 0x140001d50 - 0x140001d56
void function_140001d50(void (**First)(), void (**Last)()) {
    // 0x140001d50
    _initterm(First, Last);
}

// Address range: 0x140001d56 - 0x140001d5c
int32_t function_140001d56(int32_t (**First)(), int32_t (**Last)()) {
    // 0x140001d56
    return _initterm_e(First, Last);
}

// Address range: 0x140001d5c - 0x140001d62
void function_140001d5c(int32_t status) {
    // 0x140001d5c
    exit(status);
}

// Address range: 0x140001d62 - 0x140001d68
void function_140001d62(int32_t Code) {
    // 0x140001d62
    _exit(Code);
}

// Address range: 0x140001d68 - 0x140001d6e
int32_t function_140001d68(int32_t Mode) {
    // 0x140001d68
    return _set_fmode(Mode);
}

// Address range: 0x140001d6e - 0x140001d74
int32_t * function_140001d6e(void) {
    // 0x140001d6e
    return __p___argc();
}

// Address range: 0x140001d74 - 0x140001d7a
char *** function_140001d74(void) {
    // 0x140001d74
    return __p___argv();
}

// Address range: 0x140001d7a - 0x140001d80
void function_140001d7a(void) {
    // 0x140001d7a
    _cexit();
}

// Address range: 0x140001d80 - 0x140001d86
void function_140001d80(void) {
    // 0x140001d80
    _c_exit();
}

// Address range: 0x140001d86 - 0x140001d8c
void function_140001d86(void (*Callback)(int64_t *, int32_t, int64_t *)) {
    // 0x140001d86
    _register_thread_local_exe_atexit_callback(Callback);
}

// Address range: 0x140001d8c - 0x140001d92
int32_t function_140001d8c(int32_t Flag) {
    // 0x140001d8c
    return _configthreadlocale(Flag);
}

// Address range: 0x140001d92 - 0x140001d98
int32_t function_140001d92(int32_t NewMode) {
    // 0x140001d92
    return _set_new_mode(NewMode);
}

// Address range: 0x140001d98 - 0x140001d9e
int32_t * function_140001d98(void) {
    // 0x140001d98
    return __p__commode();
}

// Address range: 0x140001d9e - 0x140001da4
int32_t function_140001d9e(struct _onexit_table_t * Table) {
    // 0x140001d9e
    return _initialize_onexit_table(Table);
}

// Address range: 0x140001da4 - 0x140001daa
int32_t function_140001da4(struct _onexit_table_t * Table, int32_t (*Function)()) {
    // 0x140001da4
    return _register_onexit_function(Table, Function);
}

// Address range: 0x140001daa - 0x140001db0
int64_t function_140001daa(void) {
    // 0x140001daa
    return _crt_atexit();
}

// Address range: 0x140001db0 - 0x140001db6
int64_t function_140001db0(int32_t a1) {
    // 0x140001db0
    return terminate();
}

// Address range: 0x140001db6 - 0x140001dbc
bool function_140001db6(int32_t ProcessorFeature) {
    // 0x140001db6
    return IsProcessorFeaturePresent(ProcessorFeature);
}

// Address range: 0x140001dbc - 0x140001dc2
int64_t * function_140001dbc(int64_t * dest, int64_t * src, int32_t n) {
    // 0x140001dbc
    return memcpy(dest, src, n);
}

// Address range: 0x140001de0 - 0x140001de2
int64_t function_140001de0(int32_t a1, int64_t a2, int32_t a3) {
    // 0x140001de0
    return g27;
}

// Address range: 0x140001de2 - 0x140001dff
int64_t function_140001de2(int64_t a1, int64_t a2) {
    // 0x140001de2
    return _seh_filter_exe((int32_t)a1, (struct _EXCEPTION_POINTERS *)a1);
}

// Address range: 0x140001e00 - 0x140001e17
int64_t function_140001e00(int64_t a1, int64_t a2) {
    // 0x140001e00
    return 0;
}

// --------------- Statically Linked Functions ----------------

// int64_t __scrt_acquire_startup_lock(void);
// int64_t __scrt_release_startup_lock(int64_t a1);
// _onexit_t _onexit(_onexit_t Function);

// --------------- Dynamically Linked Functions ---------------

// _ACRTIMP_ALT FILE * __cdecl __acrt_iob_func(unsigned);
// int64_t __C_specific_handler(void);
// int * __cdecl __p___argc(void);
// char *** __cdecl __p___argv(void);
// int * __cdecl __p__commode(void);
// void __setusermatherr(_HANDLE_MATH_ERROR pf);
// int __cdecl __stdio_common_vfprintf(_In_ unsigned __int64 Options, _Inout_ FILE * Stream, _In_z_ char const * Format, _In_opt_ _locale_t Locale, va_list ArgList);
// void __cdecl _c_exit(void);
// void __cdecl _cexit(void);
// int __cdecl _configthreadlocale(_In_ int Flag);
// errno_t __cdecl _configure_narrow_argv(_In_ mode);
// int64_t _crt_atexit(void);
// void __cdecl _exit(_In_ int Code);
// char ** __cdecl _get_initial_narrow_environment(void);
// int _initialize_narrow_environment(void);
// int __cdecl _initialize_onexit_table(_In_opt_ _onexit_table_t * Table);
// void __cdecl _initterm(_In_ _PVFV * First, _In_ _PVFV * Last);
// int __cdecl _initterm_e(_PIFV * First, _In_ _PIFV * Last);
// int __cdecl _register_onexit_function(_In_opt_ _onexit_table_t * Table, _In_opt_ _onexit_t Function);
// void __cdecl _register_thread_local_exe_atexit_callback(_In_ _tls_callback_type Callback);
// int __cdecl _seh_filter_exe(_In_ unsigned long ExceptionNum, _In_ struct _EXCEPTION_POINTERS * ExceptionPtr);
// void __cdecl _set_app_type(_In_ _Type);
// errno_t __cdecl _set_fmode(_In_ int Mode);
// int __cdecl _set_new_mode(_In_ int NewMode);
// void exit(int status);
// HMODULE GetModuleHandleW(_In_opt_ LPCWSTR lpModuleName);
// VOID InitializeSListHead(_Out_ PSLIST_HEADER ListHead);
// BOOL IsDebuggerPresent(VOID);
// BOOL IsProcessorFeaturePresent(_In_ DWORD ProcessorFeature);
// void * memcpy(void * restrict dest, const void * restrict src, size_t n);
// void * memset(void * s, int c, size_t n);
// VOID RtlCaptureContext(_Out_ PCONTEXT ContextRecord);
// PRUNTIME_FUNCTION RtlLookupFunctionEntry(_In_ ULONG64 ControlPc, _Out_ PULONG64 ImageBase, _Inout_opt_ PUNWIND_HISTORY_TABLE HistoryTable);
// PEXCEPTION_ROUTINE RtlVirtualUnwind(_In_ ULONG HandlerType, _In_ ULONG64 ImageBase, _In_ ULONG64 ControlPc, _In_ PRUNTIME_FUNCTION FunctionEntry, _Inout_ PCONTEXT ContextRecord, _Out_ PVOID * HandlerData, _Out_ PULONG64 EstablisherFrame, _Inout_opt_ PKNONVOLATILE_CONTEXT_POINTERS ContextPointers);
// LPTOP_LEVEL_EXCEPTION_FILTER SetUnhandledExceptionFilter(_In_opt_ LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter);
// int64_t terminate(void);
// LONG UnhandledExceptionFilter(_In_ struct _EXCEPTION_POINTERS * ExceptionInfo);

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: msvc
// Detected functions: 65
// Decompilation date: 2019-07-17 06:02:56