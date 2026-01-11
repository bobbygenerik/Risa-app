.class public final enum Lﾞˉ/ʽ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final ʽʽ:Ljava/util/HashMap;

.field public static final synthetic ˈٴ:[Lﾞˉ/ʽ;

.field public static final enum ᴵˊ:Lﾞˉ/ʽ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 99

    .prologue
    new-instance v0, Lﾞˉ/ʽ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lﾞˉ/ʽ;->ᴵˊ:Lﾞˉ/ʽ;

    new-instance v2, Lﾞˉ/ʽ;

    const/4 v3, 0x1

    const-string v4, "NCA_S_FAULT_OTHER"

    invoke-direct {v2, v3, v3, v4}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v4, Lﾞˉ/ʽ;

    const/4 v5, 0x2

    const/4 v6, 0x5

    const-string v7, "NCA_S_FAULT_ACCESS_DENIED"

    invoke-direct {v4, v5, v6, v7}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v7, Lﾞˉ/ʽ;

    const/16 v8, 0x6f7

    const/4 v9, 0x3

    const-string v10, "NCA_S_FAULT_NDR"

    invoke-direct {v7, v9, v8, v10}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v8, Lﾞˉ/ʽ;

    const/16 v10, 0x6d8

    const/4 v11, 0x4

    const-string v12, "NCA_S_FAULT_CANT_PERFORM"

    invoke-direct {v8, v11, v10, v12}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v10, Lﾞˉ/ʽ;

    const-string v12, "NCA_S_FAULT_INT_DIV_BY_ZERO"

    const v13, 0x1c000001

    invoke-direct {v10, v6, v13, v12}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v12, Lﾞˉ/ʽ;

    const v13, 0x1c000002

    const/4 v14, 0x6

    const-string v15, "NCA_S_FAULT_ADDR_ERROR"

    invoke-direct {v12, v14, v13, v15}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v13, Lﾞˉ/ʽ;

    const v15, 0x1c000003

    move/from16 v16, v1

    const/4 v1, 0x7

    move/from16 v17, v3

    const-string v3, "NCA_S_FAULT_FP_DIV_ZERO"

    invoke-direct {v13, v1, v15, v3}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v3, Lﾞˉ/ʽ;

    const v15, 0x1c000004

    move/from16 v18, v1

    const/16 v1, 0x8

    move/from16 v19, v5

    const-string v5, "NCA_S_FAULT_FP_UNDERFLOW"

    invoke-direct {v3, v1, v15, v5}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v5, Lﾞˉ/ʽ;

    const v15, 0x1c000005

    move/from16 v20, v1

    const/16 v1, 0x9

    move/from16 v21, v6

    const-string v6, "NCA_S_FAULT_FP_OVERFLOW"

    invoke-direct {v5, v1, v15, v6}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v6, Lﾞˉ/ʽ;

    const v15, 0x1c000006

    move/from16 v22, v1

    const/16 v1, 0xa

    move/from16 v23, v9

    const-string v9, "NCA_S_FAULT_INVALID_TAG"

    invoke-direct {v6, v1, v15, v9}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v9, Lﾞˉ/ʽ;

    const v15, 0x1c000007

    move/from16 v24, v1

    const/16 v1, 0xb

    move/from16 v25, v11

    const-string v11, "NCA_S_FAULT_INVALID_BOUND"

    invoke-direct {v9, v1, v15, v11}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v11, Lﾞˉ/ʽ;

    const v15, 0x1c000008

    move/from16 v26, v1

    const/16 v1, 0xc

    move/from16 v27, v14

    const-string v14, "NCA_RPC_VERSION_MISMATCH"

    invoke-direct {v11, v1, v15, v14}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v14, Lﾞˉ/ʽ;

    const v15, 0x1c000009

    move/from16 v28, v1

    const/16 v1, 0xd

    move-object/from16 v29, v0

    const-string v0, "NCA_UNSPEC_REJECT"

    invoke-direct {v14, v1, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const v15, 0x1c00000a

    move/from16 v30, v1

    const/16 v1, 0xe

    move-object/from16 v31, v2

    const-string v2, "NCA_S_BAD_ACTID"

    invoke-direct {v0, v1, v15, v2}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lﾞˉ/ʽ;

    const v15, 0x1c00000b

    move/from16 v32, v1

    const/16 v1, 0xf

    move-object/from16 v33, v0

    const-string v0, "NCA_WHO_ARE_YOU_FAILED"

    invoke-direct {v2, v1, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const v15, 0x1c00000c

    move/from16 v34, v1

    const/16 v1, 0x10

    move-object/from16 v35, v2

    const-string v2, "NCA_MANAGER_NOT_ENTERED"

    invoke-direct {v0, v1, v15, v2}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lﾞˉ/ʽ;

    const v15, 0x1c00000d

    move/from16 v36, v1

    const/16 v1, 0x11

    move-object/from16 v37, v0

    const-string v0, "NCA_S_FAULT_CANCEL"

    invoke-direct {v2, v1, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const v15, 0x1c00000e

    move/from16 v38, v1

    const/16 v1, 0x12

    move-object/from16 v39, v2

    const-string v2, "NCA_S_FAULT_ILL_INST"

    invoke-direct {v0, v1, v15, v2}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lﾞˉ/ʽ;

    const v15, 0x1c00000f

    move/from16 v40, v1

    const/16 v1, 0x13

    move-object/from16 v41, v0

    const-string v0, "NCA_S_FAULT_FP_ERROR"

    invoke-direct {v2, v1, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const v15, 0x1c000010

    move/from16 v42, v1

    const/16 v1, 0x14

    move-object/from16 v43, v2

    const-string v2, "NCA_S_FAULT_INT_OVERFLOW"

    invoke-direct {v0, v1, v15, v2}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lﾞˉ/ʽ;

    const v15, 0x1c000014

    move/from16 v44, v1

    const/16 v1, 0x15

    move-object/from16 v45, v0

    const-string v0, "NCA_S_FAULT_PIPE_EMPTY"

    invoke-direct {v2, v1, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v15, 0x16

    move/from16 v46, v1

    const v1, 0x1c000015

    move-object/from16 v47, v2

    const-string v2, "NCA_S_FAULT_PIPE_CLOSED"

    invoke-direct {v0, v15, v1, v2}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x17

    const v15, 0x1c000016

    move-object/from16 v48, v0

    const-string v0, "NCA_S_FAULT_PIPE_ORDER"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x18

    const v15, 0x1c000017

    move-object/from16 v49, v1

    const-string v1, "NCA_S_FAULT_PIPE_DISCIPLINE"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x19

    const v15, 0x1c000018

    move-object/from16 v50, v0

    const-string v0, "NCA_S_FAULT_PIPE_COMM_ERROR"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x1a

    const v15, 0x1c000019

    move-object/from16 v51, v1

    const-string v1, "NCA_S_FAULT_PIPE_MEMORY"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x1b

    const v15, 0x1c00001a

    move-object/from16 v52, v0

    const-string v0, "NCA_S_FAULT_CONTEXT_MISMATCH"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x1c

    const v15, 0x1c00001b

    move-object/from16 v53, v1

    const-string v1, "NCA_S_FAULT_REMOTE_NO_MEMORY"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x1d

    const v15, 0x1c00001c

    move-object/from16 v54, v0

    const-string v0, "NCA_INVALID_PRES_CONTEXT_ID"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x1e

    const v15, 0x1c00001d

    move-object/from16 v55, v1

    const-string v1, "NCA_UNSUPPORTED_AUTHN_LEVEL"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x1f

    const v15, 0x1c00001f

    move-object/from16 v56, v0

    const-string v0, "NCA_INVALID_CHECKSUM"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x20

    const v15, 0x1c000020

    move-object/from16 v57, v1

    const-string v1, "NCA_INVALID_CRC"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x21

    const v15, 0x1c000021

    move-object/from16 v58, v0

    const-string v0, "NCS_S_FAULT_USER_DEFINED"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x22

    const v15, 0x1c000022

    move-object/from16 v59, v1

    const-string v1, "NCA_S_FAULT_TX_OPEN_FAILED"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x23

    const v15, 0x1c000023

    move-object/from16 v60, v0

    const-string v0, "NCA_S_FAULT_CODESET_CONV_ERROR"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x24

    const v15, 0x1c000024

    move-object/from16 v61, v1

    const-string v1, "NCA_S_FAULT_OBJECT_NOT_FOUND"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x25

    const v15, 0x1c000025

    move-object/from16 v62, v0

    const-string v0, "NCA_S_FAULT_NO_CLIENT_STUB"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x26

    const v15, 0x1c010002

    move-object/from16 v63, v1

    const-string v1, "NCA_OP_RNG_ERROR"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x27

    const v15, 0x1c010003

    move-object/from16 v64, v0

    const-string v0, "NCA_UNK_IF"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x28

    const v15, 0x1c010006

    move-object/from16 v65, v1

    const-string v1, "NCA_WRONG_BOOT_TIME"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x29

    const v15, 0x1c010009

    move-object/from16 v66, v0

    const-string v0, "NCA_S_YOU_CRASHED"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x2a

    const v15, 0x1c01000b

    move-object/from16 v67, v1

    const-string v1, "NCA_PROTO_ERROR"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x2b

    const v15, 0x1c010013

    move-object/from16 v68, v0

    const-string v0, "NCA_OUT_ARGS_TOO_BIG"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x2c

    const v15, 0x1c010014

    move-object/from16 v69, v1

    const-string v1, "NCA_SERVER_TOO_BUSY"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x2d

    const v15, 0x1c010017

    move-object/from16 v70, v0

    const-string v0, "NCA_UNSUPPORTED_TYPE"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x2e

    const v15, -0x7fffbfff

    move-object/from16 v71, v1

    const-string v1, "E_NOTIMPL"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x2f

    const v15, -0x7fffbffd

    move-object/from16 v72, v0

    const-string v0, "E_POINTER"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x30

    const v15, -0x7fffbffc

    move-object/from16 v73, v1

    const-string v1, "E_AOBRT"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x31

    const v15, -0x7fff0001

    move-object/from16 v74, v0

    const-string v0, "E_UNEXPECTED"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x32

    const v15, -0x7ffefefb

    move-object/from16 v75, v1

    const-string v1, "RPC_E_SERVERFAULT"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x33

    const v15, -0x7ffefef8

    move-object/from16 v76, v0

    const-string v0, "RPC_E_DISCONNECTED"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x34

    const v15, -0x7ffefeed

    move-object/from16 v77, v1

    const-string v1, "RPC_E_INVALID_IPID"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x35

    const v15, -0x7ffefee1

    move-object/from16 v78, v0

    const-string v0, "RPC_E_TIMEOUT"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x36

    const v15, -0x7ffdfffd

    move-object/from16 v79, v1

    const-string v1, "DISP_E_MEMBERNOTFOUND"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x37

    const v15, -0x7ffdfffa

    move-object/from16 v80, v0

    const-string v0, "DISP_E_UNKNOWNNAME"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x38

    const v15, -0x7ffdfff2

    move-object/from16 v81, v1

    const-string v1, "DISP_E_BADPARAMCOUNT"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x39

    const v15, -0x7ffb3500

    move-object/from16 v82, v0

    const-string v0, "CBA_E_MALFORMED"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x3a

    const v15, -0x7ffb34ff

    move-object/from16 v83, v1

    const-string v1, "CBA_E_UNKNOWNOBJECT"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x3b

    const v15, -0x7ffb34fb

    move-object/from16 v84, v0

    const-string v0, "CBA_E_INVALIDID"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x3c

    const v15, -0x7ffb34f7

    move-object/from16 v85, v1

    const-string v1, "CBA_E_INVALIDCOOKIE"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x3d

    const v15, -0x7ffb34f5

    move-object/from16 v86, v0

    const-string v0, "CBA_E_QOSTYPEUNSUPPORTED"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x3e

    const v15, -0x7ffb34f4

    move-object/from16 v87, v1

    const-string v1, "CBA_E_QOSVALUEUNSUPPORTED"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x3f

    const v15, -0x7ffb34f1

    move-object/from16 v88, v0

    const-string v0, "CBA_E_NOTAPPLICABLE"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x40

    const v15, -0x7ffb34ee

    move-object/from16 v89, v1

    const-string v1, "CBA_E_LIMITVIOLATION"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x41

    const v15, -0x7ffb34ed

    move-object/from16 v90, v0

    const-string v0, "CBA_E_QOSTYPENOTAPPLICABLE"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x42

    const v15, -0x7ffb34e8

    move-object/from16 v91, v1

    const-string v1, "CBA_E_OUTOFPARTNERACCOS"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x43

    const v15, -0x7ffb34e4

    move-object/from16 v92, v0

    const-string v0, "CBA_E_FLAGUNSUPPORTED"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x44

    const v15, -0x7ffb34dd

    move-object/from16 v93, v1

    const-string v1, "CBA_E_FRAMECOUNTUNSUPPORTED"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x45

    const v15, -0x7ffb34db

    move-object/from16 v94, v0

    const-string v0, "CBA_E_MODECHANGE"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x46

    const v15, -0x7ff8fff2

    move-object/from16 v95, v1

    const-string v1, "E_OUTOFMEMORY"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x47

    const v15, -0x7ff8ffa9

    move-object/from16 v96, v0

    const-string v0, "E_INVALIDARG"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v0, Lﾞˉ/ʽ;

    const/16 v2, 0x48

    const v15, -0x7ff8f92f

    move-object/from16 v97, v1

    const-string v1, "RPC_S_PROCNUM_OUT_OF_RANGE"

    invoke-direct {v0, v2, v15, v1}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lﾞˉ/ʽ;

    const/16 v2, 0x49

    const v15, -0x7ff8f88a

    move-object/from16 v98, v0

    const-string v0, "OR_INVALID_OXID"

    invoke-direct {v1, v2, v15, v0}, Lﾞˉ/ʽ;-><init>(IILjava/lang/String;)V

    const/16 v0, 0x4a

    new-array v0, v0, [Lﾞˉ/ʽ;

    aput-object v29, v0, v16

    aput-object v31, v0, v17

    aput-object v4, v0, v19

    aput-object v7, v0, v23

    aput-object v8, v0, v25

    aput-object v10, v0, v21

    aput-object v12, v0, v27

    aput-object v13, v0, v18

    aput-object v3, v0, v20

    aput-object v5, v0, v22

    aput-object v6, v0, v24

    aput-object v9, v0, v26

    aput-object v11, v0, v28

    aput-object v14, v0, v30

    aput-object v33, v0, v32

    aput-object v35, v0, v34

    aput-object v37, v0, v36

    aput-object v39, v0, v38

    aput-object v41, v0, v40

    aput-object v43, v0, v42

    aput-object v45, v0, v44

    aput-object v47, v0, v46

    const/16 v2, 0x16

    aput-object v48, v0, v2

    const/16 v2, 0x17

    aput-object v49, v0, v2

    const/16 v2, 0x18

    aput-object v50, v0, v2

    const/16 v2, 0x19

    aput-object v51, v0, v2

    const/16 v2, 0x1a

    aput-object v52, v0, v2

    const/16 v2, 0x1b

    aput-object v53, v0, v2

    const/16 v2, 0x1c

    aput-object v54, v0, v2

    const/16 v2, 0x1d

    aput-object v55, v0, v2

    const/16 v2, 0x1e

    aput-object v56, v0, v2

    const/16 v2, 0x1f

    aput-object v57, v0, v2

    const/16 v2, 0x20

    aput-object v58, v0, v2

    const/16 v2, 0x21

    aput-object v59, v0, v2

    const/16 v2, 0x22

    aput-object v60, v0, v2

    const/16 v2, 0x23

    aput-object v61, v0, v2

    const/16 v2, 0x24

    aput-object v62, v0, v2

    const/16 v2, 0x25

    aput-object v63, v0, v2

    const/16 v2, 0x26

    aput-object v64, v0, v2

    const/16 v2, 0x27

    aput-object v65, v0, v2

    const/16 v2, 0x28

    aput-object v66, v0, v2

    const/16 v2, 0x29

    aput-object v67, v0, v2

    const/16 v2, 0x2a

    aput-object v68, v0, v2

    const/16 v2, 0x2b

    aput-object v69, v0, v2

    const/16 v2, 0x2c

    aput-object v70, v0, v2

    const/16 v2, 0x2d

    aput-object v71, v0, v2

    const/16 v2, 0x2e

    aput-object v72, v0, v2

    const/16 v2, 0x2f

    aput-object v73, v0, v2

    const/16 v2, 0x30

    aput-object v74, v0, v2

    const/16 v2, 0x31

    aput-object v75, v0, v2

    const/16 v2, 0x32

    aput-object v76, v0, v2

    const/16 v2, 0x33

    aput-object v77, v0, v2

    const/16 v2, 0x34

    aput-object v78, v0, v2

    const/16 v2, 0x35

    aput-object v79, v0, v2

    const/16 v2, 0x36

    aput-object v80, v0, v2

    const/16 v2, 0x37

    aput-object v81, v0, v2

    const/16 v2, 0x38

    aput-object v82, v0, v2

    const/16 v2, 0x39

    aput-object v83, v0, v2

    const/16 v2, 0x3a

    aput-object v84, v0, v2

    const/16 v2, 0x3b

    aput-object v85, v0, v2

    const/16 v2, 0x3c

    aput-object v86, v0, v2

    const/16 v2, 0x3d

    aput-object v87, v0, v2

    const/16 v2, 0x3e

    aput-object v88, v0, v2

    const/16 v2, 0x3f

    aput-object v89, v0, v2

    const/16 v2, 0x40

    aput-object v90, v0, v2

    const/16 v2, 0x41

    aput-object v91, v0, v2

    const/16 v2, 0x42

    aput-object v92, v0, v2

    const/16 v2, 0x43

    aput-object v93, v0, v2

    const/16 v2, 0x44

    aput-object v94, v0, v2

    const/16 v2, 0x45

    aput-object v95, v0, v2

    const/16 v2, 0x46

    aput-object v96, v0, v2

    const/16 v2, 0x47

    aput-object v97, v0, v2

    const/16 v2, 0x48

    aput-object v98, v0, v2

    const/16 v2, 0x49

    aput-object v1, v0, v2

    sput-object v0, Lﾞˉ/ʽ;->ˈٴ:[Lﾞˉ/ʽ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lﾞˉ/ʽ;->ʽʽ:Ljava/util/HashMap;

    invoke-static {}, Lﾞˉ/ʽ;->values()[Lﾞˉ/ʽ;

    move-result-object v0

    array-length v1, v0

    move/from16 v2, v16

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lﾞˉ/ʽ;->ʽʽ:Ljava/util/HashMap;

    iget v5, v3, Lﾞˉ/ʽ;->ʾˋ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lﾞˉ/ʽ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lﾞˉ/ʽ;
    .locals 1

    const-class v0, Lﾞˉ/ʽ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lﾞˉ/ʽ;

    return-object p0
.end method

.method public static values()[Lﾞˉ/ʽ;
    .locals 1

    sget-object v0, Lﾞˉ/ʽ;->ˈٴ:[Lﾞˉ/ʽ;

    invoke-virtual {v0}, [Lﾞˉ/ʽ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﾞˉ/ʽ;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
