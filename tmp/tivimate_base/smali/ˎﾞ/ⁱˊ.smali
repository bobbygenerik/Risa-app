.class public final Lˎﾞ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:J

.field public final ᵎﹶ:Ljava/lang/String;

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iput p2, p0, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    iput-object p3, p0, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lˎﾞ/ⁱˊ;->ˈ:Ljava/lang/String;

    iput-wide p5, p0, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    iput-wide p7, p0, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    iput-object p9, p0, Lˎﾞ/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_3

    :cond_0
    instance-of v0, p1, Lˎﾞ/ⁱˊ;

    if-eqz v0, :cond_5

    check-cast p1, Lˎﾞ/ⁱˊ;

    iget-object v0, p1, Lˎﾞ/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    iget-object v1, p1, Lˎﾞ/ⁱˊ;->ˈ:Ljava/lang/String;

    iget-object v2, p1, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    iget-object v3, p1, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iget-object v4, p0, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    if-nez v4, :cond_1

    if-nez v3, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget v3, p0, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    iget v4, p1, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    invoke-static {v3, v4}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    if-nez v3, :cond_2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    iget-object v2, p0, Lˎﾞ/ⁱˊ;->ˈ:Ljava/lang/String;

    if-nez v2, :cond_3

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-wide v1, p0, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    iget-wide v3, p1, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    iget-wide v1, p0, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    iget-wide v3, p1, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_5

    iget-object p1, p0, Lˎﾞ/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    if-nez p1, :cond_4

    if-nez v0, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v1, v2

    mul-int/2addr v1, v2

    iget v3, p0, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    invoke-static {v3}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v3

    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lˎﾞ/ⁱˊ;->ˈ:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v3, v3

    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-wide v3, p0, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    xor-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v2, p0, Lˎﾞ/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistedInstallationEntry{firebaseInstallationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget v2, p0, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x4

    if-eq v2, v1, :cond_1

    const/4 v1, 0x5

    if-eq v2, v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "REGISTER_ERROR"

    goto :goto_0

    :cond_1
    const-string v1, "REGISTERED"

    goto :goto_0

    :cond_2
    const-string v1, "UNREGISTERED"

    goto :goto_0

    :cond_3
    const-string v1, "NOT_GENERATED"

    goto :goto_0

    :cond_4
    const-string v1, "ATTEMPT_MIGRATION"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCreationEpochInSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fisError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Lˎﾞ/ﹳٴ;
    .locals 3

    new-instance v0, Lˎﾞ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iput-object v1, v0, Lˎﾞ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget v1, p0, Lˎﾞ/ⁱˊ;->ⁱˊ:I

    iput v1, v0, Lˎﾞ/ﹳٴ;->ⁱˊ:I

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ʽ:Ljava/lang/String;

    iput-object v1, v0, Lˎﾞ/ﹳٴ;->ʽ:Ljava/lang/String;

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ˈ:Ljava/lang/String;

    iput-object v1, v0, Lˎﾞ/ﹳٴ;->ˈ:Ljava/lang/String;

    iget-wide v1, p0, Lˎﾞ/ⁱˊ;->ˑﹳ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lˎﾞ/ﹳٴ;->ˑﹳ:Ljava/lang/Long;

    iget-wide v1, p0, Lˎﾞ/ⁱˊ;->ﾞᴵ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lˎﾞ/ﹳٴ;->ﾞᴵ:Ljava/lang/Long;

    iget-object v1, p0, Lˎﾞ/ⁱˊ;->ᵎﹶ:Ljava/lang/String;

    iput-object v1, v0, Lˎﾞ/ﹳٴ;->ᵎﹶ:Ljava/lang/String;

    return-object v0
.end method
