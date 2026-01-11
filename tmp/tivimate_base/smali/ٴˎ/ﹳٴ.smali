.class public final enum Lٴˎ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lٴˎ/ﹳٴ;

.field public static final enum ˈٴ:Lٴˎ/ﹳٴ;

.field public static final synthetic ˊʻ:[Lٴˎ/ﹳٴ;

.field public static final enum ᴵˊ:Lٴˎ/ﹳٴ;

.field public static final enum ᴵᵔ:Lٴˎ/ﹳٴ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 94

    new-instance v0, Lٴˎ/ﹳٴ;

    const-wide/16 v1, 0x0

    const-string v3, "STATUS_SUCCESS"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lٴˎ/ﹳٴ;->ᴵˊ:Lٴˎ/ﹳٴ;

    new-instance v1, Lٴˎ/ﹳٴ;

    const-wide/16 v2, 0x102

    const-string v5, "STATUS_TIMEOUT"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lٴˎ/ﹳٴ;

    const-wide/16 v7, 0x103

    const-string v3, "STATUS_PENDING"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lٴˎ/ﹳٴ;

    const-wide/16 v7, 0x10b

    const-string v9, "STATUS_NOTIFY_CLEANUP"

    const/4 v10, 0x3

    invoke-direct {v3, v7, v8, v9, v10}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v7, Lٴˎ/ﹳٴ;

    const-wide/16 v8, 0x10c

    const-string v11, "STATUS_NOTIFY_ENUM_DIR"

    const/4 v12, 0x4

    invoke-direct {v7, v8, v9, v11, v12}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v8, Lٴˎ/ﹳٴ;

    const-wide v13, 0x80000005L

    const-string v9, "STATUS_BUFFER_OVERFLOW"

    const/4 v11, 0x5

    invoke-direct {v8, v13, v14, v9, v11}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v8, Lٴˎ/ﹳٴ;->ʽʽ:Lٴˎ/ﹳٴ;

    new-instance v9, Lٴˎ/ﹳٴ;

    const-wide v13, 0x80000006L

    const-string v15, "STATUS_NO_MORE_FILES"

    move/from16 v16, v4

    const/4 v4, 0x6

    invoke-direct {v9, v13, v14, v15, v4}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v13, Lٴˎ/ﹳٴ;

    const-wide v14, 0x8000002dL

    move/from16 v17, v4

    const-string v4, "STATUS_STOPPED_ON_SYMLINK"

    move/from16 v18, v5

    const/4 v5, 0x7

    invoke-direct {v13, v14, v15, v4, v5}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v4, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000002L

    move/from16 v19, v5

    const-string v5, "STATUS_NOT_IMPLEMENTED"

    move/from16 v20, v6

    const/16 v6, 0x8

    invoke-direct {v4, v14, v15, v5, v6}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v5, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000003L

    move/from16 v21, v6

    const-string v6, "STATUS_INVALID_INFO_CLASS"

    move/from16 v22, v10

    const/16 v10, 0x9

    invoke-direct {v5, v14, v15, v6, v10}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v6, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000004L

    move/from16 v23, v10

    const-string v10, "STATUS_INFO_LENGTH_MISMATCH"

    move/from16 v24, v11

    const/16 v11, 0xa

    invoke-direct {v6, v14, v15, v10, v11}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v10, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc000000fL

    move/from16 v25, v11

    const-string v11, "STATUS_NO_SUCH_FILE"

    move/from16 v26, v12

    const/16 v12, 0xb

    invoke-direct {v10, v14, v15, v11, v12}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v11, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc000000dL

    move/from16 v27, v12

    const-string v12, "STATUS_INVALID_PARAMETER"

    move-object/from16 v28, v0

    const/16 v0, 0xc

    invoke-direct {v11, v14, v15, v12, v0}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v12, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000011L

    move/from16 v29, v0

    const-string v0, "STATUS_END_OF_FILE"

    move-object/from16 v30, v1

    const/16 v1, 0xd

    invoke-direct {v12, v14, v15, v0, v1}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v12, Lٴˎ/ﹳٴ;->ˈٴ:Lٴˎ/ﹳٴ;

    new-instance v0, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000016L

    move/from16 v31, v1

    const-string v1, "STATUS_MORE_PROCESSING_REQUIRED"

    move-object/from16 v32, v2

    const/16 v2, 0xe

    invoke-direct {v0, v14, v15, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000022L

    move/from16 v33, v2

    const-string v2, "STATUS_ACCESS_DENIED"

    move-object/from16 v34, v0

    const/16 v0, 0xf

    invoke-direct {v1, v14, v15, v2, v0}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000023L

    move/from16 v35, v0

    const-string v0, "STATUS_BUFFER_TOO_SMALL"

    move-object/from16 v36, v1

    const/16 v1, 0x10

    invoke-direct {v2, v14, v15, v0, v1}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000033L

    move/from16 v37, v1

    const-string v1, "STATUS_OBJECT_NAME_INVALID"

    move-object/from16 v38, v2

    const/16 v2, 0x11

    invoke-direct {v0, v14, v15, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000034L

    move/from16 v39, v2

    const-string v2, "STATUS_OBJECT_NAME_NOT_FOUND"

    move-object/from16 v40, v0

    const/16 v0, 0x12

    invoke-direct {v1, v14, v15, v2, v0}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000035L

    move/from16 v41, v0

    const-string v0, "STATUS_OBJECT_NAME_COLLISION"

    move-object/from16 v42, v1

    const/16 v1, 0x13

    invoke-direct {v2, v14, v15, v0, v1}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc000003aL

    move/from16 v43, v1

    const-string v1, "STATUS_OBJECT_PATH_NOT_FOUND"

    move-object/from16 v44, v2

    const/16 v2, 0x14

    invoke-direct {v0, v14, v15, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const-wide v14, 0xc0000043L

    move/from16 v45, v2

    const-string v2, "STATUS_SHARING_VIOLATION"

    move-object/from16 v46, v0

    const/16 v0, 0x15

    invoke-direct {v1, v14, v15, v2, v0}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lٴˎ/ﹳٴ;

    const/16 v14, 0x16

    move/from16 v47, v0

    move-object v15, v1

    const-wide v0, 0xc0000056L

    move-object/from16 v48, v3

    const-string v3, "STATUS_DELETE_PENDING"

    invoke-direct {v2, v0, v1, v3, v14}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v1, 0x17

    move-object v14, v2

    const-wide v2, 0xc0000061L

    move-object/from16 v49, v4

    const-string v4, "STATUS_PRIVILEGE_NOT_HELD"

    invoke-direct {v0, v2, v3, v4, v1}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x18

    const-wide v3, 0xc000006dL

    move-object/from16 v50, v0

    const-string v0, "STATUS_LOGON_FAILURE"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x19

    const-wide v3, 0xc0000071L

    move-object/from16 v51, v1

    const-string v1, "STATUS_PASSWORD_EXPIRED"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x1a

    const-wide v3, 0xc0000072L

    move-object/from16 v52, v0

    const-string v0, "STATUS_ACCOUNT_DISABLED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x1b

    const-wide v3, 0xc000007fL

    move-object/from16 v53, v1

    const-string v1, "STATUS_DISK_FULL"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x1c

    const-wide v3, 0xc000009aL

    move-object/from16 v54, v0

    const-string v0, "STATUS_INSUFFICIENT_RESOURCES"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x1d

    const-wide v3, 0xc00000acL

    move-object/from16 v55, v1

    const-string v1, "STATUS_PIPE_NOT_AVAILABLE"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x1e

    const-wide v3, 0xc00000adL

    move-object/from16 v56, v0

    const-string v0, "STATUS_INVALID_PIPE_STATE"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x1f

    const-wide v3, 0xc00000aeL

    move-object/from16 v57, v1

    const-string v1, "STATUS_PIPE_BUSY"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x20

    const-wide v3, 0xc00000b5L

    move-object/from16 v58, v0

    const-string v0, "STATUS_IO_TIMEOUT"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x21

    const-wide v3, 0xc00000baL

    move-object/from16 v59, v1

    const-string v1, "STATUS_FILE_IS_A_DIRECTORY"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x22

    const-wide v3, 0xc00000bbL

    move-object/from16 v60, v0

    const-string v0, "STATUS_NOT_SUPPORTED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x23

    const-wide v3, 0xc00000beL

    move-object/from16 v61, v1

    const-string v1, "STATUS_BAD_NETWORK_PATH"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x24

    const-wide v3, 0xc00000c9L

    move-object/from16 v62, v0

    const-string v0, "STATUS_NETWORK_NAME_DELETED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x25

    const-wide v3, 0xc00000ccL

    move-object/from16 v63, v1

    const-string v1, "STATUS_BAD_NETWORK_NAME"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x26

    const-wide v3, 0xc00000d0L

    move-object/from16 v64, v0

    const-string v0, "STATUS_REQUEST_NOT_ACCEPTED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x27

    const-wide v3, 0xc00000d2L

    move-object/from16 v65, v1

    const-string v1, "STATUS_NET_WRITE_FAULT"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x28

    const-wide v3, 0xc00000d4L

    move-object/from16 v66, v0

    const-string v0, "STATUS_NOT_SAME_DEVICE"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x29

    const-wide v3, 0xc00000d5L

    move-object/from16 v67, v1

    const-string v1, "STATUS_FILE_RENAMED"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x2a

    const-wide v3, 0xc00000e2L

    move-object/from16 v68, v0

    const-string v0, "STATUS_OPLOCK_NOT_GRANTED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x2b

    const-wide v3, 0xc00000e5L

    move-object/from16 v69, v1

    const-string v1, "STATUS_INTERNAL_ERROR"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x2c

    const-wide v3, 0xc00000e9L

    move-object/from16 v70, v0

    const-string v0, "STATUS_UNEXPECTED_IO_ERROR"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x2d

    const-wide v3, 0xc0000101L

    move-object/from16 v71, v1

    const-string v1, "STATUS_DIRECTORY_NOT_EMPTY"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x2e

    const-wide v3, 0xc0000103L

    move-object/from16 v72, v0

    const-string v0, "STATUS_NOT_A_DIRECTORY"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x2f

    const-wide v3, 0xc0000106L

    move-object/from16 v73, v1

    const-string v1, "STATUS_NAME_TOO_LONG"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x30

    const-wide v3, 0xc0000107L

    move-object/from16 v74, v0

    const-string v0, "STATUS_FILES_OPEN"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x31

    const-wide v3, 0xc0000108L

    move-object/from16 v75, v1

    const-string v1, "STATUS_CONNECTION_IN_USE"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x32

    const-wide v3, 0xc000011fL

    move-object/from16 v76, v0

    const-string v0, "STATUS_TOO_MANY_OPENED_FILES"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x33

    const-wide v3, 0xc0000121L

    move-object/from16 v77, v1

    const-string v1, "STATUS_CANNOT_DELETE"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x34

    const-wide v3, 0xc0000123L

    move-object/from16 v78, v0

    const-string v0, "STATUS_FILE_DELETED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x35

    const-wide v3, 0xc0000128L

    move-object/from16 v79, v1

    const-string v1, "STATUS_FILE_CLOSED"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x36

    const-wide v3, 0xc0000136L

    move-object/from16 v80, v0

    const-string v0, "STATUS_OPEN_FAILED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x37

    const-wide v3, 0xc000015bL

    move-object/from16 v81, v1

    const-string v1, "STATUS_LOGON_TYPE_NOT_GRANTED"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x38

    const-wide v3, 0xc000017eL

    move-object/from16 v82, v0

    const-string v0, "STATUS_TOO_MANY_SIDS"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x39

    const-wide v3, 0xc0000203L

    move-object/from16 v83, v1

    const-string v1, "STATUS_USER_SESSION_DELETED"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x3a

    const-wide v3, 0xc000020cL

    move-object/from16 v84, v0

    const-string v0, "STATUS_CONNECTION_DISCONNECTED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x3b

    const-wide v3, 0xc000020dL

    move-object/from16 v85, v1

    const-string v1, "STATUS_CONNECTION_RESET"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x3c

    const-wide v3, 0xc0000225L

    move-object/from16 v86, v0

    const-string v0, "STATUS_NOT_FOUND"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x3d

    const-wide v3, 0xc000022dL

    move-object/from16 v87, v1

    const-string v1, "STATUS_RETRY"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x3e

    const-wide v3, 0xc0000257L

    move-object/from16 v88, v0

    const-string v0, "STATUS_PATH_NOT_COVERED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x3f

    const-wide v3, 0xc000026dL

    move-object/from16 v89, v1

    const-string v1, "STATUS_DFS_UNAVAILABLE"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x40

    const-wide v3, 0xc000026eL

    move-object/from16 v90, v0

    const-string v0, "STATUS_VOLUME_DISMOUNTED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x41

    const-wide v3, 0xc0000293L

    move-object/from16 v91, v1

    const-string v1, "STATUS_FILE_ENCRYPTED"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lٴˎ/ﹳٴ;

    const/16 v2, 0x42

    const-wide v3, 0xc000035cL

    move-object/from16 v92, v0

    const-string v0, "STATUS_NETWORK_SESSION_EXPIRED"

    invoke-direct {v1, v3, v4, v0, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lٴˎ/ﹳٴ;

    const/16 v2, 0x43

    const-wide v3, 0xffffffffL

    move-object/from16 v93, v1

    const-string v1, "STATUS_OTHER"

    invoke-direct {v0, v3, v4, v1, v2}, Lٴˎ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lٴˎ/ﹳٴ;->ᴵᵔ:Lٴˎ/ﹳٴ;

    const/16 v1, 0x44

    new-array v1, v1, [Lٴˎ/ﹳٴ;

    aput-object v28, v1, v16

    aput-object v30, v1, v20

    aput-object v32, v1, v18

    aput-object v48, v1, v22

    aput-object v7, v1, v26

    aput-object v8, v1, v24

    aput-object v9, v1, v17

    aput-object v13, v1, v19

    aput-object v49, v1, v21

    aput-object v5, v1, v23

    aput-object v6, v1, v25

    aput-object v10, v1, v27

    aput-object v11, v1, v29

    aput-object v12, v1, v31

    aput-object v34, v1, v33

    aput-object v36, v1, v35

    aput-object v38, v1, v37

    aput-object v40, v1, v39

    aput-object v42, v1, v41

    aput-object v44, v1, v43

    aput-object v46, v1, v45

    aput-object v15, v1, v47

    const/16 v2, 0x16

    aput-object v14, v1, v2

    const/16 v2, 0x17

    aput-object v50, v1, v2

    const/16 v2, 0x18

    aput-object v51, v1, v2

    const/16 v2, 0x19

    aput-object v52, v1, v2

    const/16 v2, 0x1a

    aput-object v53, v1, v2

    const/16 v2, 0x1b

    aput-object v54, v1, v2

    const/16 v2, 0x1c

    aput-object v55, v1, v2

    const/16 v2, 0x1d

    aput-object v56, v1, v2

    const/16 v2, 0x1e

    aput-object v57, v1, v2

    const/16 v2, 0x1f

    aput-object v58, v1, v2

    const/16 v2, 0x20

    aput-object v59, v1, v2

    const/16 v2, 0x21

    aput-object v60, v1, v2

    const/16 v2, 0x22

    aput-object v61, v1, v2

    const/16 v2, 0x23

    aput-object v62, v1, v2

    const/16 v2, 0x24

    aput-object v63, v1, v2

    const/16 v2, 0x25

    aput-object v64, v1, v2

    const/16 v2, 0x26

    aput-object v65, v1, v2

    const/16 v2, 0x27

    aput-object v66, v1, v2

    const/16 v2, 0x28

    aput-object v67, v1, v2

    const/16 v2, 0x29

    aput-object v68, v1, v2

    const/16 v2, 0x2a

    aput-object v69, v1, v2

    const/16 v2, 0x2b

    aput-object v70, v1, v2

    const/16 v2, 0x2c

    aput-object v71, v1, v2

    const/16 v2, 0x2d

    aput-object v72, v1, v2

    const/16 v2, 0x2e

    aput-object v73, v1, v2

    const/16 v2, 0x2f

    aput-object v74, v1, v2

    const/16 v2, 0x30

    aput-object v75, v1, v2

    const/16 v2, 0x31

    aput-object v76, v1, v2

    const/16 v2, 0x32

    aput-object v77, v1, v2

    const/16 v2, 0x33

    aput-object v78, v1, v2

    const/16 v2, 0x34

    aput-object v79, v1, v2

    const/16 v2, 0x35

    aput-object v80, v1, v2

    const/16 v2, 0x36

    aput-object v81, v1, v2

    const/16 v2, 0x37

    aput-object v82, v1, v2

    const/16 v2, 0x38

    aput-object v83, v1, v2

    const/16 v2, 0x39

    aput-object v84, v1, v2

    const/16 v2, 0x3a

    aput-object v85, v1, v2

    const/16 v2, 0x3b

    aput-object v86, v1, v2

    const/16 v2, 0x3c

    aput-object v87, v1, v2

    const/16 v2, 0x3d

    aput-object v88, v1, v2

    const/16 v2, 0x3e

    aput-object v89, v1, v2

    const/16 v2, 0x3f

    aput-object v90, v1, v2

    const/16 v2, 0x40

    aput-object v91, v1, v2

    const/16 v2, 0x41

    aput-object v92, v1, v2

    const/16 v2, 0x42

    aput-object v93, v1, v2

    const/16 v2, 0x43

    aput-object v0, v1, v2

    sput-object v1, Lٴˎ/ﹳٴ;->ˊʻ:[Lٴˎ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lٴˎ/ﹳٴ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lٴˎ/ﹳٴ;
    .locals 1

    const-class v0, Lٴˎ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lٴˎ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lٴˎ/ﹳٴ;
    .locals 1

    sget-object v0, Lٴˎ/ﹳٴ;->ˊʻ:[Lٴˎ/ﹳٴ;

    invoke-virtual {v0}, [Lٴˎ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lٴˎ/ﹳٴ;

    return-object v0
.end method

.method public static ⁱˊ(J)Lٴˎ/ﹳٴ;
    .locals 2

    const-class v0, Lٴˎ/ﹳٴ;

    sget-object v1, Lٴˎ/ﹳٴ;->ᴵᵔ:Lٴˎ/ﹳٴ;

    invoke-static {p0, p1, v0, v1}, Lᴵʿ/ﹳٴ;->ﾞᴵ(JLjava/lang/Class;Lٴˎ/ﹳٴ;)Lᴵʿ/ʽ;

    move-result-object p0

    check-cast p0, Lٴˎ/ﹳٴ;

    return-object p0
.end method

.method public static ﹳٴ(J)Z
    .locals 2

    .prologue
    const/16 v0, 0x1e

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lٴˎ/ﹳٴ;->ʾˋ:J

    return-wide v0
.end method
