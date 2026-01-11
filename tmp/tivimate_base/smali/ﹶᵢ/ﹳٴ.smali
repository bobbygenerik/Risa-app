.class public final enum Lﹶᵢ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lﹶᵢ/ﹳٴ;

.field public static final enum ˈٴ:Lﹶᵢ/ﹳٴ;

.field public static final enum ᴵˊ:Lﹶᵢ/ﹳٴ;

.field public static final synthetic ᴵᵔ:[Lﹶᵢ/ﹳٴ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v0, Lﹶᵢ/ﹳٴ;

    const-wide/16 v1, 0x20

    const-string v3, "FILE_ATTRIBUTE_ARCHIVE"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lﹶᵢ/ﹳٴ;

    const-wide/16 v2, 0x800

    const-string v5, "FILE_ATTRIBUTE_COMPRESSED"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v2, Lﹶᵢ/ﹳٴ;

    const-wide/16 v7, 0x10

    const-string v3, "FILE_ATTRIBUTE_DIRECTORY"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v2, Lﹶᵢ/ﹳٴ;->ᴵˊ:Lﹶᵢ/ﹳٴ;

    new-instance v3, Lﹶᵢ/ﹳٴ;

    const-wide/16 v7, 0x4000

    const-string v9, "FILE_ATTRIBUTE_ENCRYPTED"

    const/4 v10, 0x3

    invoke-direct {v3, v7, v8, v9, v10}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v7, Lﹶᵢ/ﹳٴ;

    const-wide/16 v8, 0x2

    const-string v11, "FILE_ATTRIBUTE_HIDDEN"

    const/4 v12, 0x4

    invoke-direct {v7, v8, v9, v11, v12}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v7, Lﹶᵢ/ﹳٴ;->ʽʽ:Lﹶᵢ/ﹳٴ;

    new-instance v8, Lﹶᵢ/ﹳٴ;

    const-wide/16 v13, 0x80

    const-string v9, "FILE_ATTRIBUTE_NORMAL"

    const/4 v11, 0x5

    invoke-direct {v8, v13, v14, v9, v11}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    sput-object v8, Lﹶᵢ/ﹳٴ;->ˈٴ:Lﹶᵢ/ﹳٴ;

    new-instance v9, Lﹶᵢ/ﹳٴ;

    const-wide/16 v13, 0x2000

    const-string v15, "FILE_ATTRIBUTE_NOT_CONTENT_INDEXED"

    move/from16 v16, v4

    const/4 v4, 0x6

    invoke-direct {v9, v13, v14, v15, v4}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v13, Lﹶᵢ/ﹳٴ;

    const-wide/16 v14, 0x1000

    move/from16 v17, v4

    const-string v4, "FILE_ATTRIBUTE_OFFLINE"

    move/from16 v18, v5

    const/4 v5, 0x7

    invoke-direct {v13, v14, v15, v4, v5}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v4, Lﹶᵢ/ﹳٴ;

    const-wide/16 v14, 0x1

    move/from16 v19, v5

    const-string v5, "FILE_ATTRIBUTE_READONLY"

    move/from16 v20, v6

    const/16 v6, 0x8

    invoke-direct {v4, v14, v15, v5, v6}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v5, Lﹶᵢ/ﹳٴ;

    const-wide/16 v14, 0x400

    move/from16 v21, v6

    const-string v6, "FILE_ATTRIBUTE_REPARSE_POINT"

    move/from16 v22, v10

    const/16 v10, 0x9

    invoke-direct {v5, v14, v15, v6, v10}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v6, Lﹶᵢ/ﹳٴ;

    const-wide/16 v14, 0x200

    move/from16 v23, v10

    const-string v10, "FILE_ATTRIBUTE_SPARSE_FILE"

    move/from16 v24, v11

    const/16 v11, 0xa

    invoke-direct {v6, v14, v15, v10, v11}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v10, Lﹶᵢ/ﹳٴ;

    const-wide/16 v14, 0x4

    move/from16 v25, v11

    const-string v11, "FILE_ATTRIBUTE_SYSTEM"

    move/from16 v26, v12

    const/16 v12, 0xb

    invoke-direct {v10, v14, v15, v11, v12}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v11, Lﹶᵢ/ﹳٴ;

    const-wide/16 v14, 0x100

    move/from16 v27, v12

    const-string v12, "FILE_ATTRIBUTE_TEMPORARY"

    move-object/from16 v28, v0

    const/16 v0, 0xc

    invoke-direct {v11, v14, v15, v12, v0}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v12, Lﹶᵢ/ﹳٴ;

    const-wide/32 v14, 0x8000

    move/from16 v29, v0

    const-string v0, "FILE_ATTRIBUTE_INTEGRITY_STREAM"

    move-object/from16 v30, v1

    const/16 v1, 0xd

    invoke-direct {v12, v14, v15, v0, v1}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    new-instance v0, Lﹶᵢ/ﹳٴ;

    const-wide/32 v14, 0x20000

    move/from16 v31, v1

    const-string v1, "FILE_ATTRIBUTE_NO_SCRUB_DATA"

    move-object/from16 v32, v2

    const/16 v2, 0xe

    invoke-direct {v0, v14, v15, v1, v2}, Lﹶᵢ/ﹳٴ;-><init>(JLjava/lang/String;I)V

    const/16 v1, 0xf

    new-array v1, v1, [Lﹶᵢ/ﹳٴ;

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

    aput-object v0, v1, v2

    sput-object v1, Lﹶᵢ/ﹳٴ;->ᴵᵔ:[Lﹶᵢ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lﹶᵢ/ﹳٴ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lﹶᵢ/ﹳٴ;
    .locals 1

    const-class v0, Lﹶᵢ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lﹶᵢ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lﹶᵢ/ﹳٴ;
    .locals 1

    sget-object v0, Lﹶᵢ/ﹳٴ;->ᴵᵔ:[Lﹶᵢ/ﹳٴ;

    invoke-virtual {v0}, [Lﹶᵢ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﹶᵢ/ﹳٴ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lﹶᵢ/ﹳٴ;->ʾˋ:J

    return-wide v0
.end method
