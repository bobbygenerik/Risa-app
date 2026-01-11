.class public final enum Lﾞʾ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lﾞʾ/ﹳٴ;

.field public static final enum ˈٴ:Lﾞʾ/ﹳٴ;

.field public static final enum ˉٴ:Lﾞʾ/ﹳٴ;

.field public static final enum ˊʻ:Lﾞʾ/ﹳٴ;

.field public static final enum ٴᵢ:Lﾞʾ/ﹳٴ;

.field public static final enum ᴵˊ:Lﾞʾ/ﹳٴ;

.field public static final enum ᴵᵔ:Lﾞʾ/ﹳٴ;

.field public static final synthetic ᵎⁱ:[Lﾞʾ/ﹳٴ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 56

    new-instance v0, Lﾞʾ/ﹳٴ;

    const-wide/16 v1, 0x1

    const-string v3, "FILE_READ_DATA"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lﾞʾ/ﹳٴ;

    const-wide/16 v5, 0x2

    const-string v7, "FILE_WRITE_DATA"

    const/4 v8, 0x1

    invoke-direct {v3, v5, v6, v7, v8}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v7, Lﾞʾ/ﹳٴ;

    const-wide/16 v9, 0x4

    const-string v11, "FILE_APPEND_DATA"

    const/4 v12, 0x2

    invoke-direct {v7, v9, v10, v11, v12}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v11, Lﾞʾ/ﹳٴ;

    const-wide/16 v13, 0x20

    const-string v15, "FILE_EXECUTE"

    move/from16 v16, v4

    const/4 v4, 0x3

    invoke-direct {v11, v13, v14, v15, v4}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v15, Lﾞʾ/ﹳٴ;

    move/from16 v17, v4

    const-string v4, "FILE_LIST_DIRECTORY"

    move/from16 v18, v8

    const/4 v8, 0x4

    invoke-direct {v15, v1, v2, v4, v8}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v15, Lﾞʾ/ﹳٴ;->ᴵˊ:Lﾞʾ/ﹳٴ;

    new-instance v4, Lﾞʾ/ﹳٴ;

    move/from16 v19, v8

    const-string v8, "FILE_ADD_FILE"

    move/from16 v20, v12

    const/4 v12, 0x5

    invoke-direct {v4, v5, v6, v8, v12}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v8, Lﾞʾ/ﹳٴ;

    move/from16 v21, v12

    const-string v12, "FILE_ADD_SUBDIRECTORY"

    const/4 v5, 0x6

    invoke-direct {v8, v9, v10, v12, v5}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v6, Lﾞʾ/ﹳٴ;

    const-string v9, "FILE_TRAVERSE"

    const/4 v10, 0x7

    invoke-direct {v6, v13, v14, v9, v10}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v9, Lﾞʾ/ﹳٴ;

    move v12, v5

    move-object/from16 v24, v6

    const-wide/16 v5, 0x40

    move/from16 v25, v10

    const-string v10, "FILE_DELETE_CHILD"

    move/from16 v26, v12

    const/16 v12, 0x8

    invoke-direct {v9, v5, v6, v10, v12}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v5, Lﾞʾ/ﹳٴ;

    move v6, v12

    const-wide/16 v12, 0x80

    const-string v10, "FILE_READ_ATTRIBUTES"

    const/16 v14, 0x9

    invoke-direct {v5, v12, v13, v10, v14}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v5, Lﾞʾ/ﹳٴ;->ʽʽ:Lﾞʾ/ﹳٴ;

    new-instance v10, Lﾞʾ/ﹳٴ;

    const-wide/16 v12, 0x100

    move/from16 v28, v6

    const-string v6, "FILE_WRITE_ATTRIBUTES"

    move/from16 v29, v14

    const/16 v14, 0xa

    invoke-direct {v10, v12, v13, v6, v14}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v6, Lﾞʾ/ﹳٴ;

    move/from16 v31, v14

    move-object/from16 v30, v15

    const-wide/16 v14, 0x8

    const-string v1, "FILE_READ_EA"

    const/16 v2, 0xb

    invoke-direct {v6, v14, v15, v1, v2}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v6, Lﾞʾ/ﹳٴ;->ˈٴ:Lﾞʾ/ﹳٴ;

    new-instance v1, Lﾞʾ/ﹳٴ;

    move/from16 v34, v2

    move-object/from16 v33, v3

    const-wide/16 v2, 0x10

    const-string v14, "FILE_WRITE_EA"

    const/16 v15, 0xc

    invoke-direct {v1, v2, v3, v14, v15}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v14, Lﾞʾ/ﹳٴ;

    const-wide/32 v2, 0x10000

    move/from16 v35, v15

    const-string v15, "DELETE"

    const/16 v12, 0xd

    invoke-direct {v14, v2, v3, v15, v12}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v14, Lﾞʾ/ﹳٴ;->ᴵᵔ:Lﾞʾ/ﹳٴ;

    new-instance v2, Lﾞʾ/ﹳٴ;

    move v3, v12

    const-wide/32 v12, 0x20000

    const-string v15, "READ_CONTROL"

    move/from16 v37, v3

    const/16 v3, 0xe

    invoke-direct {v2, v12, v13, v15, v3}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v12, Lﾞʾ/ﹳٴ;

    move v15, v3

    move-object v13, v4

    const-wide/32 v3, 0x40000

    move/from16 v38, v15

    const-string v15, "WRITE_DAC"

    move-object/from16 v39, v0

    const/16 v0, 0xf

    invoke-direct {v12, v3, v4, v15, v0}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lﾞʾ/ﹳٴ;

    move v15, v0

    move-object v4, v1

    const-wide/32 v0, 0x80000

    move/from16 v40, v15

    const-string v15, "WRITE_OWNER"

    move-object/from16 v41, v2

    const/16 v2, 0x10

    invoke-direct {v3, v0, v1, v15, v2}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lﾞʾ/ﹳٴ;

    move v15, v2

    move-object v1, v3

    const-wide/32 v2, 0x100000

    move/from16 v42, v15

    const-string v15, "SYNCHRONIZE"

    move-object/from16 v43, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v3, v15, v1}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lﾞʾ/ﹳٴ;

    move v3, v1

    move-object v15, v2

    const-wide/32 v1, 0x1000000

    move/from16 v44, v3

    const-string v3, "ACCESS_SYSTEM_SECURITY"

    move-object/from16 v45, v0

    const/16 v0, 0x12

    invoke-direct {v15, v1, v2, v3, v0}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lﾞʾ/ﹳٴ;

    const-wide/32 v2, 0x2000000

    move/from16 v46, v0

    const-string v0, "MAXIMUM_ALLOWED"

    move-object/from16 v47, v4

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v0, v4}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v1, Lﾞʾ/ﹳٴ;->ˊʻ:Lﾞʾ/ﹳٴ;

    new-instance v0, Lﾞʾ/ﹳٴ;

    const-wide/32 v2, 0x10000000

    move/from16 v48, v4

    const-string v4, "GENERIC_ALL"

    move-object/from16 v49, v1

    const/16 v1, 0x14

    invoke-direct {v0, v2, v3, v4, v1}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lﾞʾ/ﹳٴ;

    const-wide/32 v3, 0x20000000

    move/from16 v50, v1

    const-string v1, "GENERIC_EXECUTE"

    move-object/from16 v51, v0

    const/16 v0, 0x15

    invoke-direct {v2, v3, v4, v1, v0}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lﾞʾ/ﹳٴ;

    const/16 v3, 0x16

    move-object/from16 v52, v5

    const-wide/32 v4, 0x40000000

    move/from16 v53, v0

    const-string v0, "GENERIC_WRITE"

    invoke-direct {v1, v4, v5, v0, v3}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v1, Lﾞʾ/ﹳٴ;->ٴᵢ:Lﾞʾ/ﹳٴ;

    new-instance v0, Lﾞʾ/ﹳٴ;

    const/16 v3, 0x17

    const-wide v4, 0x80000000L

    move-object/from16 v54, v1

    const-string v1, "GENERIC_READ"

    invoke-direct {v0, v4, v5, v1, v3}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v0, Lﾞʾ/ﹳٴ;->ˉٴ:Lﾞʾ/ﹳٴ;

    new-instance v1, Lﾞʾ/ﹳٴ;

    const-string v3, "ADS_RIGHT_DS_CONTROL_ACCESS"

    const/16 v4, 0x18

    move-object/from16 v55, v6

    const-wide/16 v5, 0x100

    invoke-direct {v1, v5, v6, v3, v4}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lﾞʾ/ﹳٴ;

    const-string v4, "ADS_RIGHT_DS_CREATE_CHILD"

    const/16 v5, 0x19

    move-object v6, v0

    move-object/from16 v36, v1

    const-wide/16 v0, 0x1

    invoke-direct {v3, v0, v1, v4, v5}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lﾞʾ/ﹳٴ;

    const-string v1, "ADS_RIGHT_DS_DELETE_CHILD"

    const/16 v4, 0x1a

    move-object v5, v2

    move-object/from16 v32, v3

    const-wide/16 v2, 0x2

    invoke-direct {v0, v2, v3, v1, v4}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lﾞʾ/ﹳٴ;

    const-string v2, "ADS_RIGHT_DS_READ_PROP"

    const/16 v3, 0x1b

    move-object/from16 v22, v5

    const-wide/16 v4, 0x10

    invoke-direct {v1, v4, v5, v2, v3}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lﾞʾ/ﹳٴ;

    const-string v3, "ADS_RIGHT_DS_WRITE_PROP"

    const/16 v4, 0x1c

    move-object v5, v0

    move-object/from16 v23, v1

    const-wide/16 v0, 0x20

    invoke-direct {v2, v0, v1, v3, v4}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lﾞʾ/ﹳٴ;

    const-string v1, "ADS_RIGHT_DS_SELF"

    const/16 v3, 0x1d

    move-object/from16 v27, v5

    const-wide/16 v4, 0x8

    invoke-direct {v0, v4, v5, v1, v3}, Lﾞʾ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    const/16 v1, 0x1e

    new-array v1, v1, [Lﾞʾ/ﹳٴ;

    aput-object v39, v1, v16

    aput-object v33, v1, v18

    aput-object v7, v1, v20

    aput-object v11, v1, v17

    aput-object v30, v1, v19

    aput-object v13, v1, v21

    aput-object v8, v1, v26

    aput-object v24, v1, v25

    aput-object v9, v1, v28

    aput-object v52, v1, v29

    aput-object v10, v1, v31

    aput-object v55, v1, v34

    aput-object v47, v1, v35

    aput-object v14, v1, v37

    aput-object v41, v1, v38

    aput-object v12, v1, v40

    aput-object v43, v1, v42

    aput-object v45, v1, v44

    aput-object v15, v1, v46

    aput-object v49, v1, v48

    aput-object v51, v1, v50

    aput-object v22, v1, v53

    const/16 v3, 0x16

    aput-object v54, v1, v3

    const/16 v3, 0x17

    aput-object v6, v1, v3

    const/16 v3, 0x18

    aput-object v36, v1, v3

    const/16 v3, 0x19

    aput-object v32, v1, v3

    const/16 v3, 0x1a

    aput-object v27, v1, v3

    const/16 v3, 0x1b

    aput-object v23, v1, v3

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sput-object v1, Lﾞʾ/ﹳٴ;->ᵎⁱ:[Lﾞʾ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lﾞʾ/ﹳٴ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lﾞʾ/ﹳٴ;
    .locals 1

    const-class v0, Lﾞʾ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lﾞʾ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lﾞʾ/ﹳٴ;
    .locals 1

    sget-object v0, Lﾞʾ/ﹳٴ;->ᵎⁱ:[Lﾞʾ/ﹳٴ;

    invoke-virtual {v0}, [Lﾞʾ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﾞʾ/ﹳٴ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lﾞʾ/ﹳٴ;->ʾˋ:J

    return-wide v0
.end method
