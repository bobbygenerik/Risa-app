.class public final enum Lʼﹳ/ˉʿ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lʼﹳ/ˉʿ;

.field public static final synthetic ˈٴ:[Lʼﹳ/ˉʿ;

.field public static final enum ᴵˊ:Lʼﹳ/ˉʿ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lʼﹳ/ˉʿ;

    const-wide/16 v1, 0x1

    const-string v3, "SMB2_FLAGS_SERVER_TO_REDIR"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lʼﹳ/ˉʿ;-><init>(JLjava/lang/String;I)V

    new-instance v1, Lʼﹳ/ˉʿ;

    const-wide/16 v2, 0x2

    const-string v5, "SMB2_FLAGS_ASYNC_COMMAND"

    const/4 v6, 0x1

    invoke-direct {v1, v2, v3, v5, v6}, Lʼﹳ/ˉʿ;-><init>(JLjava/lang/String;I)V

    sput-object v1, Lʼﹳ/ˉʿ;->ᴵˊ:Lʼﹳ/ˉʿ;

    new-instance v2, Lʼﹳ/ˉʿ;

    const-wide/16 v7, 0x4

    const-string v3, "SMB2_FLAGS_RELATED_OPERATIONS"

    const/4 v5, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lʼﹳ/ˉʿ;-><init>(JLjava/lang/String;I)V

    new-instance v3, Lʼﹳ/ˉʿ;

    const-wide/16 v7, 0x8

    const-string v9, "SMB2_FLAGS_SIGNED"

    const/4 v10, 0x3

    invoke-direct {v3, v7, v8, v9, v10}, Lʼﹳ/ˉʿ;-><init>(JLjava/lang/String;I)V

    sput-object v3, Lʼﹳ/ˉʿ;->ʽʽ:Lʼﹳ/ˉʿ;

    new-instance v7, Lʼﹳ/ˉʿ;

    const-wide/16 v8, 0x70

    const-string v11, "SMB2_FLAGS_PRIORITY_MASK"

    const/4 v12, 0x4

    invoke-direct {v7, v8, v9, v11, v12}, Lʼﹳ/ˉʿ;-><init>(JLjava/lang/String;I)V

    new-instance v8, Lʼﹳ/ˉʿ;

    const-wide/32 v13, 0x10000000

    const-string v9, "SMB2_FLAGS_DFS_OPERATIONS"

    const/4 v11, 0x5

    invoke-direct {v8, v13, v14, v9, v11}, Lʼﹳ/ˉʿ;-><init>(JLjava/lang/String;I)V

    new-instance v9, Lʼﹳ/ˉʿ;

    const-wide/32 v13, 0x20000000

    const-string v15, "SMB2_FLAGS_REPLAY_OPERATION"

    move/from16 v16, v4

    const/4 v4, 0x6

    invoke-direct {v9, v13, v14, v15, v4}, Lʼﹳ/ˉʿ;-><init>(JLjava/lang/String;I)V

    const/4 v13, 0x7

    new-array v13, v13, [Lʼﹳ/ˉʿ;

    aput-object v0, v13, v16

    aput-object v1, v13, v6

    aput-object v2, v13, v5

    aput-object v3, v13, v10

    aput-object v7, v13, v12

    aput-object v8, v13, v11

    aput-object v9, v13, v4

    sput-object v13, Lʼﹳ/ˉʿ;->ˈٴ:[Lʼﹳ/ˉʿ;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p1, p0, Lʼﹳ/ˉʿ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʼﹳ/ˉʿ;
    .locals 1

    const-class v0, Lʼﹳ/ˉʿ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʼﹳ/ˉʿ;

    return-object p0
.end method

.method public static values()[Lʼﹳ/ˉʿ;
    .locals 1

    sget-object v0, Lʼﹳ/ˉʿ;->ˈٴ:[Lʼﹳ/ˉʿ;

    invoke-virtual {v0}, [Lʼﹳ/ˉʿ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʼﹳ/ˉʿ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lʼﹳ/ˉʿ;->ʾˋ:J

    return-wide v0
.end method
