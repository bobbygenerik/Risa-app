.class public final enum Lʼﹳ/ⁱˊ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lʼﹳ/ⁱˊ;

.field public static final synthetic ˈٴ:[Lʼﹳ/ⁱˊ;

.field public static final enum ᴵˊ:Lʼﹳ/ⁱˊ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 45

    new-instance v0, Lʼﹳ/ⁱˊ;

    const-wide/16 v1, 0x1

    const-string v3, "FILE_DIRECTORY_FILE"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lʼﹳ/ⁱˊ;->ᴵˊ:Lʼﹳ/ⁱˊ;

    new-instance v1, Lʼﹳ/ⁱˊ;

    const-wide/16 v2, 0x2

    const-string v5, "FILE_WRITE_THROUGH"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lʼﹳ/ⁱˊ;

    const-wide/16 v7, 0x4

    const-string v3, "FILE_SEQUENTIAL_ONLY"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lʼﹳ/ⁱˊ;

    const-wide/16 v7, 0x8

    const-string v9, "FILE_NO_INTERMEDIATE_BUFFERING"

    const/4 v10, 0x3

    invoke-direct {v3, v7, v8, v9, v10}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v7, Lʼﹳ/ⁱˊ;

    const-wide/16 v8, 0x10

    const-string v11, "FILE_SYNCHRONOUS_IO_ALERT"

    const/4 v12, 0x4

    invoke-direct {v7, v8, v9, v11, v12}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v8, Lʼﹳ/ⁱˊ;

    const-wide/16 v13, 0x20

    const-string v9, "FILE_SYNCHRONOUS_IO_NONALERT"

    const/4 v11, 0x5

    invoke-direct {v8, v13, v14, v9, v11}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v9, Lʼﹳ/ⁱˊ;

    const-wide/16 v13, 0x40

    const-string v15, "FILE_NON_DIRECTORY_FILE"

    move/from16 v16, v4

    const/4 v4, 0x6

    invoke-direct {v9, v13, v14, v15, v4}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    sput-object v9, Lʼﹳ/ⁱˊ;->ʽʽ:Lʼﹳ/ⁱˊ;

    new-instance v13, Lʼﹳ/ⁱˊ;

    const-wide/16 v14, 0x100

    move/from16 v17, v4

    const-string v4, "FILE_COMPLETE_IF_OPLOCKED"

    move/from16 v18, v5

    const/4 v5, 0x7

    invoke-direct {v13, v14, v15, v4, v5}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v4, Lʼﹳ/ⁱˊ;

    const-wide/16 v14, 0x200

    move/from16 v19, v5

    const-string v5, "FILE_NO_EA_KNOWLEDGE"

    move/from16 v20, v6

    const/16 v6, 0x8

    invoke-direct {v4, v14, v15, v5, v6}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v5, Lʼﹳ/ⁱˊ;

    const-wide/16 v14, 0x800

    move/from16 v21, v6

    const-string v6, "FILE_RANDOM_ACCESS"

    move/from16 v22, v10

    const/16 v10, 0x9

    invoke-direct {v5, v14, v15, v6, v10}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v6, Lʼﹳ/ⁱˊ;

    const-wide/16 v14, 0x1000

    move/from16 v23, v10

    const-string v10, "FILE_DELETE_ON_CLOSE"

    move/from16 v24, v11

    const/16 v11, 0xa

    invoke-direct {v6, v14, v15, v10, v11}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v10, Lʼﹳ/ⁱˊ;

    const-wide/16 v14, 0x2000

    move/from16 v25, v11

    const-string v11, "FILE_OPEN_BY_FILE_ID"

    move/from16 v26, v12

    const/16 v12, 0xb

    invoke-direct {v10, v14, v15, v11, v12}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v11, Lʼﹳ/ⁱˊ;

    const-wide/16 v14, 0x4000

    move/from16 v27, v12

    const-string v12, "FILE_OPEN_FOR_BACKUP_INTENT"

    move-object/from16 v28, v0

    const/16 v0, 0xc

    invoke-direct {v11, v14, v15, v12, v0}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v12, Lʼﹳ/ⁱˊ;

    const-wide/32 v14, 0x8000

    move/from16 v29, v0

    const-string v0, "FILE_NO_COMPRESSION"

    move-object/from16 v30, v1

    const/16 v1, 0xd

    invoke-direct {v12, v14, v15, v0, v1}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lʼﹳ/ⁱˊ;

    const-wide/16 v14, 0x400

    move/from16 v31, v1

    const-string v1, "FILE_OPEN_REMOTE_INSTANCE"

    move-object/from16 v32, v2

    const/16 v2, 0xe

    invoke-direct {v0, v14, v15, v1, v2}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lʼﹳ/ⁱˊ;

    const-wide/32 v14, 0x10000

    move/from16 v33, v2

    const-string v2, "FILE_OPEN_REQUIRING_OPLOCK"

    move-object/from16 v34, v0

    const/16 v0, 0xf

    invoke-direct {v1, v14, v15, v2, v0}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lʼﹳ/ⁱˊ;

    const-wide/32 v14, 0x20000

    move/from16 v35, v0

    const-string v0, "FILE_DISALLOW_EXCLUSIVE"

    move-object/from16 v36, v1

    const/16 v1, 0x10

    invoke-direct {v2, v14, v15, v0, v1}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lʼﹳ/ⁱˊ;

    const-wide/32 v14, 0x100000

    move/from16 v37, v1

    const-string v1, "FILE_RESERVE_OPFILTER"

    move-object/from16 v38, v2

    const/16 v2, 0x11

    invoke-direct {v0, v14, v15, v1, v2}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lʼﹳ/ⁱˊ;

    const-wide/32 v14, 0x200000

    move/from16 v39, v2

    const-string v2, "FILE_OPEN_REPARSE_POINT"

    move-object/from16 v40, v0

    const/16 v0, 0x12

    invoke-direct {v1, v14, v15, v2, v0}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lʼﹳ/ⁱˊ;

    const-wide/32 v14, 0x400000

    move/from16 v41, v0

    const-string v0, "FILE_OPEN_NO_RECALL"

    move-object/from16 v42, v1

    const/16 v1, 0x13

    invoke-direct {v2, v14, v15, v0, v1}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lʼﹳ/ⁱˊ;

    const-wide/32 v14, 0x800000

    move/from16 v43, v1

    const-string v1, "FILE_OPEN_FOR_FREE_SPACE_QUERY"

    move-object/from16 v44, v2

    const/16 v2, 0x14

    invoke-direct {v0, v14, v15, v1, v2}, Lʼﹳ/ⁱˊ;-><init>(JLjava/lang/String;I)V

    const/16 v1, 0x15

    new-array v1, v1, [Lʼﹳ/ⁱˊ;

    aput-object v28, v1, v16

    aput-object v30, v1, v20

    aput-object v32, v1, v18

    aput-object v3, v1, v22

    aput-object v7, v1, v26

    aput-object v8, v1, v24

    aput-object v9, v1, v17

    aput-object v13, v1, v19

    aput-object v4, v1, v21

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

    aput-object v0, v1, v2

    sput-object v1, Lʼﹳ/ⁱˊ;->ˈٴ:[Lʼﹳ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lʼﹳ/ⁱˊ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʼﹳ/ⁱˊ;
    .locals 1

    const-class v0, Lʼﹳ/ⁱˊ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʼﹳ/ⁱˊ;

    return-object p0
.end method

.method public static values()[Lʼﹳ/ⁱˊ;
    .locals 1

    sget-object v0, Lʼﹳ/ⁱˊ;->ˈٴ:[Lʼﹳ/ⁱˊ;

    invoke-virtual {v0}, [Lʼﹳ/ⁱˊ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʼﹳ/ⁱˊ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lʼﹳ/ⁱˊ;->ʾˋ:J

    return-wide v0
.end method
