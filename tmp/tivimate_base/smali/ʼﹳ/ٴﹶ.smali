.class public final Lʼﹳ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋʼ/ⁱˊ;


# static fields
.field public static final ˉˆ:[B


# instance fields
.field public ʼˎ:J

.field public ʽ:I

.field public ˆʾ:J

.field public ˈ:I

.field public ˉʿ:[B

.field public ˑﹳ:Lʼﹳ/ﾞʻ;

.field public ٴﹶ:J

.field public ᵎﹶ:J

.field public ᵔʾ:I

.field public ᵔᵢ:J

.field public ⁱˊ:I

.field public ﹳٴ:Lʼﹳ/ʽ;

.field public ﾞʻ:I

.field public ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lʼﹳ/ٴﹶ;->ˉˆ:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lʼﹳ/ٴﹶ;->ﹳٴ:Lʼﹳ/ʽ;

    iget v1, p0, Lʼﹳ/ٴﹶ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lʼﹳ/ٴﹶ;->ʽ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lʼﹳ/ٴﹶ;->ˈ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    iget-wide v5, p0, Lʼﹳ/ٴﹶ;->ﾞᴵ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lʼﹳ/ٴﹶ;->ᵎﹶ:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lʼﹳ/ٴﹶ;->ᵔᵢ:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Lʼﹳ/ٴﹶ;->ʼˎ:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lʼﹳ/ٴﹶ;->ˆʾ:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, p0, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v11, p0, Lʼﹳ/ٴﹶ;->ﾞʻ:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0xc

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    const-string v0, "dialect=%s, creditCharge=%s, creditRequest=%s, creditResponse=%s, message=%s, messageId=%s, asyncId=%s, sessionId=%s, treeId=%s, status=0x%08x, flags=%s, nextCommandOffset=%s"

    invoke-static {v0, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
