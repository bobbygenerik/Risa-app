.class public final Lˈˋ/ˈٴ;
.super Lˈˋ/ـᵎ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/util/List;

.field public final ʽ:I

.field public final ˈ:I

.field public final ˑﹳ:J

.field public final ᵎﹶ:J

.field public final ᵔᵢ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(ILjava/lang/String;IIJJJLjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˈˋ/ˈٴ;->ﹳٴ:I

    iput-object p2, p0, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    iput p3, p0, Lˈˋ/ˈٴ;->ʽ:I

    iput p4, p0, Lˈˋ/ˈٴ;->ˈ:I

    iput-wide p5, p0, Lˈˋ/ˈٴ;->ˑﹳ:J

    iput-wide p7, p0, Lˈˋ/ˈٴ;->ﾞᴵ:J

    iput-wide p9, p0, Lˈˋ/ˈٴ;->ᵎﹶ:J

    iput-object p11, p0, Lˈˋ/ˈٴ;->ᵔᵢ:Ljava/lang/String;

    iput-object p12, p0, Lˈˋ/ˈٴ;->ʼˎ:Ljava/util/List;

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
    instance-of v1, p1, Lˈˋ/ـᵎ;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lˈˋ/ـᵎ;

    check-cast p1, Lˈˋ/ˈٴ;

    iget-object v1, p1, Lˈˋ/ˈٴ;->ʼˎ:Ljava/util/List;

    iget-object v3, p1, Lˈˋ/ˈٴ;->ᵔᵢ:Ljava/lang/String;

    iget v4, p1, Lˈˋ/ˈٴ;->ﹳٴ:I

    iget v5, p0, Lˈˋ/ˈٴ;->ﹳٴ:I

    if-ne v5, v4, :cond_3

    iget-object v4, p0, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v5, p1, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lˈˋ/ˈٴ;->ʽ:I

    iget v5, p1, Lˈˋ/ˈٴ;->ʽ:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Lˈˋ/ˈٴ;->ˈ:I

    iget v5, p1, Lˈˋ/ˈٴ;->ˈ:I

    if-ne v4, v5, :cond_3

    iget-wide v4, p0, Lˈˋ/ˈٴ;->ˑﹳ:J

    iget-wide v6, p1, Lˈˋ/ˈٴ;->ˑﹳ:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-wide v4, p0, Lˈˋ/ˈٴ;->ﾞᴵ:J

    iget-wide v6, p1, Lˈˋ/ˈٴ;->ﾞᴵ:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-wide v4, p0, Lˈˋ/ˈٴ;->ᵎﹶ:J

    iget-wide v6, p1, Lˈˋ/ˈٴ;->ᵎﹶ:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_3

    iget-object p1, p0, Lˈˋ/ˈٴ;->ᵔᵢ:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v3, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p1, p0, Lˈˋ/ˈٴ;->ʼˎ:Ljava/util/List;

    if-nez p1, :cond_2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    iget v0, p0, Lˈˋ/ˈٴ;->ﹳٴ:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ˈٴ;->ʽ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ˈٴ;->ˈ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˈˋ/ˈٴ;->ˑﹳ:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˈˋ/ˈٴ;->ﾞᴵ:J

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˈˋ/ˈٴ;->ᵎﹶ:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lˈˋ/ˈٴ;->ᵔᵢ:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˈˋ/ˈٴ;->ʼˎ:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationExitInfo{pid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lˈˋ/ˈٴ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˈٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ˈٴ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ˈٴ;->ˈ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ˈٴ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ˈٴ;->ﾞᴵ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ˈٴ;->ᵎﹶ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", traceFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˈٴ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buildIdMappingForArch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˈٴ;->ʼˎ:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
