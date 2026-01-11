.class public final Lˈˋ/ˉـ;
.super Lˈˋ/ʾﾞ;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:J

.field public final ˑﹳ:I

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lˈˋ/ˉـ;->ﹳٴ:J

    iput-object p3, p0, Lˈˋ/ˉـ;->ⁱˊ:Ljava/lang/String;

    iput-object p4, p0, Lˈˋ/ˉـ;->ʽ:Ljava/lang/String;

    iput-wide p5, p0, Lˈˋ/ˉـ;->ˈ:J

    iput p7, p0, Lˈˋ/ˉـ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˈˋ/ʾﾞ;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lˈˋ/ʾﾞ;

    check-cast p1, Lˈˋ/ˉـ;

    iget-object v1, p1, Lˈˋ/ˉـ;->ʽ:Ljava/lang/String;

    iget-wide v3, p1, Lˈˋ/ˉـ;->ﹳٴ:J

    iget-wide v5, p0, Lˈˋ/ˉـ;->ﹳٴ:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lˈˋ/ˉـ;->ⁱˊ:Ljava/lang/String;

    iget-object v4, p1, Lˈˋ/ˉـ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lˈˋ/ˉـ;->ʽ:Ljava/lang/String;

    if-nez v3, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-wide v3, p0, Lˈˋ/ˉـ;->ˈ:J

    iget-wide v5, p1, Lˈˋ/ˉـ;->ˈ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lˈˋ/ˉـ;->ˑﹳ:I

    iget p1, p1, Lˈˋ/ˉـ;->ˑﹳ:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    iget-wide v0, p0, Lˈˋ/ˉـ;->ﹳٴ:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ˉـ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ˉـ;->ʽ:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lˈˋ/ˉـ;->ˈ:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v2, v3

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lˈˋ/ˉـ;->ˑﹳ:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Frame{pc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lˈˋ/ˉـ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˉـ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ˉـ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ˉـ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ˉـ;->ˑﹳ:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
