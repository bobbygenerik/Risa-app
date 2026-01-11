.class public final Lﹳˑ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:J

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput p1, p0, Lﹳˑ/ﹳٴ;->ﹳٴ:I

    iput-wide p2, p0, Lﹳˑ/ﹳٴ;->ⁱˊ:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null status"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lﹳˑ/ﹳٴ;

    if-eqz v0, :cond_1

    check-cast p1, Lﹳˑ/ﹳٴ;

    iget v0, p0, Lﹳˑ/ﹳٴ;->ﹳٴ:I

    iget v1, p1, Lﹳˑ/ﹳٴ;->ﹳٴ:I

    invoke-static {v0, v1}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lﹳˑ/ﹳٴ;->ⁱˊ:J

    iget-wide v2, p1, Lﹳˑ/ﹳٴ;->ⁱˊ:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lﹳˑ/ﹳٴ;->ﹳٴ:I

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    iget-wide v2, p0, Lﹳˑ/ﹳٴ;->ⁱˊ:J

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackendResponse{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget v2, p0, Lﹳˑ/ﹳٴ;->ﹳٴ:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_1

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "INVALID_PAYLOAD"

    goto :goto_0

    :cond_1
    const-string v1, "FATAL_ERROR"

    goto :goto_0

    :cond_2
    const-string v1, "TRANSIENT_ERROR"

    goto :goto_0

    :cond_3
    const-string v1, "OK"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nextRequestWaitMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lﹳˑ/ﹳٴ;->ⁱˊ:J

    const-string v3, "}"

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ˉʿ(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
