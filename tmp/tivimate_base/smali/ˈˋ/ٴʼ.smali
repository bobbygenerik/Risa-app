.class public final Lˈˋ/ٴʼ;
.super Lˈˋ/ⁱᴵ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lˈˋ/ـᵢ;

.field public final ʽ:Ljava/lang/String;

.field public final ˆʾ:Lˈˋ/ʼـ;

.field public final ˈ:J

.field public final ˑﹳ:Ljava/lang/Long;

.field public final ٴﹶ:Ljava/util/List;

.field public final ᵎﹶ:Lˈˋ/ˑ;

.field public final ᵔᵢ:Lˈˋ/ٴᴵ;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞʻ:I

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLˈˋ/ˑ;Lˈˋ/ٴᴵ;Lˈˋ/ـᵢ;Lˈˋ/ʼـ;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lˈˋ/ٴʼ;->ʽ:Ljava/lang/String;

    iput-wide p4, p0, Lˈˋ/ٴʼ;->ˈ:J

    iput-object p6, p0, Lˈˋ/ٴʼ;->ˑﹳ:Ljava/lang/Long;

    iput-boolean p7, p0, Lˈˋ/ٴʼ;->ﾞᴵ:Z

    iput-object p8, p0, Lˈˋ/ٴʼ;->ᵎﹶ:Lˈˋ/ˑ;

    iput-object p9, p0, Lˈˋ/ٴʼ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    iput-object p10, p0, Lˈˋ/ٴʼ;->ʼˎ:Lˈˋ/ـᵢ;

    iput-object p11, p0, Lˈˋ/ٴʼ;->ˆʾ:Lˈˋ/ʼـ;

    iput-object p12, p0, Lˈˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    iput p13, p0, Lˈˋ/ٴʼ;->ﾞʻ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˈˋ/ⁱᴵ;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Lˈˋ/ⁱᴵ;

    check-cast p1, Lˈˋ/ٴʼ;

    iget-object v1, p1, Lˈˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    iget-object v3, p1, Lˈˋ/ٴʼ;->ˆʾ:Lˈˋ/ʼـ;

    iget-object v4, p1, Lˈˋ/ٴʼ;->ʼˎ:Lˈˋ/ـᵢ;

    iget-object v5, p1, Lˈˋ/ٴʼ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    iget-object v6, p1, Lˈˋ/ٴʼ;->ˑﹳ:Ljava/lang/Long;

    iget-object v7, p1, Lˈˋ/ٴʼ;->ʽ:Ljava/lang/String;

    iget-object v8, p1, Lˈˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    iget-object v9, p0, Lˈˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    iget-object v9, p1, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lˈˋ/ٴʼ;->ʽ:Ljava/lang/String;

    if-nez v8, :cond_1

    if-nez v7, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_0
    iget-wide v7, p0, Lˈˋ/ٴʼ;->ˈ:J

    iget-wide v9, p1, Lˈˋ/ٴʼ;->ˈ:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    iget-object v7, p0, Lˈˋ/ٴʼ;->ˑﹳ:Ljava/lang/Long;

    if-nez v7, :cond_2

    if-nez v6, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_1
    iget-boolean v6, p0, Lˈˋ/ٴʼ;->ﾞᴵ:Z

    iget-boolean v7, p1, Lˈˋ/ٴʼ;->ﾞᴵ:Z

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lˈˋ/ٴʼ;->ᵎﹶ:Lˈˋ/ˑ;

    iget-object v7, p1, Lˈˋ/ٴʼ;->ᵎﹶ:Lˈˋ/ˑ;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lˈˋ/ٴʼ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    if-nez v6, :cond_3

    if-nez v5, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    iget-object v5, p0, Lˈˋ/ٴʼ;->ʼˎ:Lˈˋ/ـᵢ;

    if-nez v5, :cond_4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    iget-object v4, p0, Lˈˋ/ٴʼ;->ˆʾ:Lˈˋ/ʼـ;

    if-nez v4, :cond_5

    if-nez v3, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    iget-object v3, p0, Lˈˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    if-nez v3, :cond_6

    if-nez v1, :cond_7

    goto :goto_5

    :cond_6
    invoke-interface {v3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    iget v1, p0, Lˈˋ/ٴʼ;->ﾞʻ:I

    iget p1, p1, Lˈˋ/ٴʼ;->ﾞʻ:I

    if-ne v1, p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .prologue
    iget-object v0, p0, Lˈˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lˈˋ/ٴʼ;->ʽ:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    const/16 v3, 0x20

    iget-wide v4, p0, Lˈˋ/ٴʼ;->ˈ:J

    ushr-long v6, v4, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ٴʼ;->ˑﹳ:Ljava/lang/Long;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lˈˋ/ٴʼ;->ﾞᴵ:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ٴʼ;->ᵎﹶ:Lˈˋ/ˑ;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ٴʼ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ٴʼ;->ʼˎ:Lˈˋ/ـᵢ;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ٴʼ;->ˆʾ:Lˈˋ/ʼـ;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_6
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lˈˋ/ٴʼ;->ﾞʻ:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session{generator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appQualitySessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ٴʼ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ˑﹳ:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˈˋ/ٴʼ;->ﾞᴵ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ᵎﹶ:Lˈˋ/ˑ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ʼˎ:Lˈˋ/ـᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ˆʾ:Lˈˋ/ʼـ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", generatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ٴʼ;->ﾞʻ:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Lˈˋ/ᵎⁱ;
    .locals 3

    new-instance v0, Lˈˋ/ᵎⁱ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lˈˋ/ٴʼ;->ﹳٴ:Ljava/lang/String;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ⁱˊ:Ljava/lang/String;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ʽ:Ljava/lang/String;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ʽ:Ljava/lang/String;

    iget-wide v1, p0, Lˈˋ/ٴʼ;->ˈ:J

    iput-wide v1, v0, Lˈˋ/ᵎⁱ;->ˈ:J

    iget-object v1, p0, Lˈˋ/ٴʼ;->ˑﹳ:Ljava/lang/Long;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ˑﹳ:Ljava/lang/Long;

    iget-boolean v1, p0, Lˈˋ/ٴʼ;->ﾞᴵ:Z

    iput-boolean v1, v0, Lˈˋ/ᵎⁱ;->ﾞᴵ:Z

    iget-object v1, p0, Lˈˋ/ٴʼ;->ᵎﹶ:Lˈˋ/ˑ;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ᵎﹶ:Lˈˋ/ˑ;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ʼˎ:Lˈˋ/ـᵢ;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ʼˎ:Lˈˋ/ـᵢ;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ˆʾ:Lˈˋ/ʼـ;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ˆʾ:Lˈˋ/ʼـ;

    iget-object v1, p0, Lˈˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    iput-object v1, v0, Lˈˋ/ᵎⁱ;->ٴﹶ:Ljava/util/List;

    iget v1, p0, Lˈˋ/ٴʼ;->ﾞʻ:I

    iput v1, v0, Lˈˋ/ᵎⁱ;->ﾞʻ:I

    const/4 v1, 0x7

    iput-byte v1, v0, Lˈˋ/ᵎⁱ;->ˉʿ:B

    return-object v0
.end method
