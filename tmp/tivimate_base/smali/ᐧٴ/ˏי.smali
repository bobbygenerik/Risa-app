.class public final Lᐧٴ/ˏי;
.super Lᐧٴ/ˊʻ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lᐧٴ/ᵔʾ;

.field public final ˈ:Ljava/lang/Integer;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ⁱˊ:J

.field public final ﹳٴ:J

.field public final ﾞᴵ:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(JJLᐧٴ/ᵔʾ;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Lᐧٴ/ٴʼ;->ʾˋ:Lᐧٴ/ٴʼ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lᐧٴ/ˏי;->ﹳٴ:J

    iput-wide p3, p0, Lᐧٴ/ˏי;->ⁱˊ:J

    iput-object p5, p0, Lᐧٴ/ˏי;->ʽ:Lᐧٴ/ᵔʾ;

    iput-object p6, p0, Lᐧٴ/ˏי;->ˈ:Ljava/lang/Integer;

    iput-object p7, p0, Lᐧٴ/ˏי;->ˑﹳ:Ljava/lang/String;

    iput-object p8, p0, Lᐧٴ/ˏי;->ﾞᴵ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lᐧٴ/ˊʻ;

    if-eqz v0, :cond_3

    check-cast p1, Lᐧٴ/ˊʻ;

    check-cast p1, Lᐧٴ/ˏי;

    sget-object v0, Lᐧٴ/ٴʼ;->ʾˋ:Lᐧٴ/ٴʼ;

    iget-object v1, p1, Lᐧٴ/ˏי;->ﾞᴵ:Ljava/util/ArrayList;

    iget-object v2, p1, Lᐧٴ/ˏי;->ˑﹳ:Ljava/lang/String;

    iget-object v3, p1, Lᐧٴ/ˏי;->ˈ:Ljava/lang/Integer;

    iget-object v4, p1, Lᐧٴ/ˏי;->ʽ:Lᐧٴ/ᵔʾ;

    iget-wide v5, p1, Lᐧٴ/ˏי;->ﹳٴ:J

    iget-wide v7, p0, Lᐧٴ/ˏי;->ﹳٴ:J

    cmp-long v5, v7, v5

    if-nez v5, :cond_3

    iget-wide v5, p0, Lᐧٴ/ˏי;->ⁱˊ:J

    iget-wide v7, p1, Lᐧٴ/ˏי;->ⁱˊ:J

    cmp-long p1, v5, v7

    if-nez p1, :cond_3

    iget-object p1, p0, Lᐧٴ/ˏי;->ʽ:Lᐧٴ/ᵔʾ;

    invoke-virtual {p1, v4}, Lᐧٴ/ᵔʾ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lᐧٴ/ˏי;->ˈ:Ljava/lang/Integer;

    if-nez p1, :cond_1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p1, p0, Lᐧٴ/ˏי;->ˑﹳ:Ljava/lang/String;

    if-nez p1, :cond_2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    iget-object p1, p0, Lᐧٴ/ˏי;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    iget-wide v0, p0, Lᐧٴ/ˏי;->ﹳٴ:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lᐧٴ/ˏי;->ⁱˊ:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lᐧٴ/ˏי;->ʽ:Lᐧٴ/ᵔʾ;

    invoke-virtual {v2}, Lᐧٴ/ᵔʾ;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lᐧٴ/ˏי;->ˈ:Ljava/lang/Integer;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lᐧٴ/ˏי;->ˑﹳ:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lᐧٴ/ˏי;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    sget-object v1, Lᐧٴ/ٴʼ;->ʾˋ:Lᐧٴ/ٴʼ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogRequest{requestTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lᐧٴ/ˏי;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lᐧٴ/ˏי;->ⁱˊ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/ˏי;->ʽ:Lᐧٴ/ᵔʾ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/ˏי;->ˈ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/ˏי;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/ˏי;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lᐧٴ/ٴʼ;->ʾˋ:Lᐧٴ/ٴʼ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
