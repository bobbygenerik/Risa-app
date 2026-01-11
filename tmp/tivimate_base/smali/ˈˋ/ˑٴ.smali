.class public final Lˈˋ/ˑٴ;
.super Lˈˋ/ﹶ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˈˋ/ـˊ;

.field public final ˈ:Lˈˋ/ᵎʿ;

.field public final ˑﹳ:Lˈˋ/ʿـ;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:J

.field public final ﾞᴵ:Lˈˋ/ʻʿ;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lˈˋ/ـˊ;Lˈˋ/ᵎʿ;Lˈˋ/ʿـ;Lˈˋ/ʻʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lˈˋ/ˑٴ;->ﹳٴ:J

    iput-object p3, p0, Lˈˋ/ˑٴ;->ⁱˊ:Ljava/lang/String;

    iput-object p4, p0, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    iput-object p5, p0, Lˈˋ/ˑٴ;->ˈ:Lˈˋ/ᵎʿ;

    iput-object p6, p0, Lˈˋ/ˑٴ;->ˑﹳ:Lˈˋ/ʿـ;

    iput-object p7, p0, Lˈˋ/ˑٴ;->ﾞᴵ:Lˈˋ/ʻʿ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˈˋ/ﹶ;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lˈˋ/ﹶ;

    check-cast p1, Lˈˋ/ˑٴ;

    iget-object v1, p1, Lˈˋ/ˑٴ;->ﾞᴵ:Lˈˋ/ʻʿ;

    iget-object v3, p1, Lˈˋ/ˑٴ;->ˑﹳ:Lˈˋ/ʿـ;

    iget-wide v4, p1, Lˈˋ/ˑٴ;->ﹳٴ:J

    iget-wide v6, p0, Lˈˋ/ˑٴ;->ﹳٴ:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lˈˋ/ˑٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v5, p1, Lˈˋ/ˑٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    iget-object v5, p1, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lˈˋ/ˑٴ;->ˈ:Lˈˋ/ᵎʿ;

    iget-object p1, p1, Lˈˋ/ˑٴ;->ˈ:Lˈˋ/ᵎʿ;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lˈˋ/ˑٴ;->ˑﹳ:Lˈˋ/ʿـ;

    if-nez p1, :cond_1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p1, p0, Lˈˋ/ˑٴ;->ﾞᴵ:Lˈˋ/ʻʿ;

    if-nez p1, :cond_2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/16 v0, 0x20

    iget-wide v1, p0, Lˈˋ/ˑٴ;->ﹳٴ:J

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ˑٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ˑٴ;->ˈ:Lˈˋ/ᵎʿ;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lˈˋ/ˑٴ;->ˑﹳ:Lˈˋ/ʿـ;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˈˋ/ˑٴ;->ﾞᴵ:Lˈˋ/ʻʿ;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event{timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lˈˋ/ˑٴ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ˈ:Lˈˋ/ᵎʿ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", log="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ˑﹳ:Lˈˋ/ʿـ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rollouts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ﾞᴵ:Lˈˋ/ʻʿ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Lˈˋ/ˈʿ;
    .locals 3

    new-instance v0, Lˈˋ/ˈʿ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p0, Lˈˋ/ˑٴ;->ﹳٴ:J

    iput-wide v1, v0, Lˈˋ/ˈʿ;->ﹳٴ:J

    iget-object v1, p0, Lˈˋ/ˑٴ;->ⁱˊ:Ljava/lang/String;

    iput-object v1, v0, Lˈˋ/ˈʿ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ʽ:Lˈˋ/ـˊ;

    iput-object v1, v0, Lˈˋ/ˈʿ;->ʽ:Lˈˋ/ـˊ;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ˈ:Lˈˋ/ᵎʿ;

    iput-object v1, v0, Lˈˋ/ˈʿ;->ˈ:Lˈˋ/ᵎʿ;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ˑﹳ:Lˈˋ/ʿـ;

    iput-object v1, v0, Lˈˋ/ˈʿ;->ˑﹳ:Lˈˋ/ʿـ;

    iget-object v1, p0, Lˈˋ/ˑٴ;->ﾞᴵ:Lˈˋ/ʻʿ;

    iput-object v1, v0, Lˈˋ/ˈʿ;->ﾞᴵ:Lˈˋ/ʻʿ;

    const/4 v1, 0x1

    iput-byte v1, v0, Lˈˋ/ˈʿ;->ᵎﹶ:B

    return-object v0
.end method
