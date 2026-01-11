.class public final Lˈˋ/ᐧﾞ;
.super Lˈˋ/ᵎʿ;
.source "SourceFile"


# instance fields
.field public final ʽ:Z

.field public final ˈ:I

.field public final ˑﹳ:J

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/Double;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Ljava/lang/Double;IZIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˋ/ᐧﾞ;->ﹳٴ:Ljava/lang/Double;

    iput p2, p0, Lˈˋ/ᐧﾞ;->ⁱˊ:I

    iput-boolean p3, p0, Lˈˋ/ᐧﾞ;->ʽ:Z

    iput p4, p0, Lˈˋ/ᐧﾞ;->ˈ:I

    iput-wide p5, p0, Lˈˋ/ᐧﾞ;->ˑﹳ:J

    iput-wide p7, p0, Lˈˋ/ᐧﾞ;->ﾞᴵ:J

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
    instance-of v1, p1, Lˈˋ/ᵎʿ;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lˈˋ/ᵎʿ;

    iget-object v1, p0, Lˈˋ/ᐧﾞ;->ﹳٴ:Ljava/lang/Double;

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, Lˈˋ/ᐧﾞ;

    iget-object v1, v1, Lˈˋ/ᐧﾞ;->ﹳٴ:Ljava/lang/Double;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    move-object v3, p1

    check-cast v3, Lˈˋ/ᐧﾞ;

    iget-object v3, v3, Lˈˋ/ᐧﾞ;->ﹳٴ:Ljava/lang/Double;

    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    check-cast p1, Lˈˋ/ᐧﾞ;

    iget v1, p1, Lˈˋ/ᐧﾞ;->ⁱˊ:I

    iget v3, p0, Lˈˋ/ᐧﾞ;->ⁱˊ:I

    if-ne v3, v1, :cond_2

    iget-boolean v1, p0, Lˈˋ/ᐧﾞ;->ʽ:Z

    iget-boolean v3, p1, Lˈˋ/ᐧﾞ;->ʽ:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lˈˋ/ᐧﾞ;->ˈ:I

    iget v3, p1, Lˈˋ/ᐧﾞ;->ˈ:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lˈˋ/ᐧﾞ;->ˑﹳ:J

    iget-wide v5, p1, Lˈˋ/ᐧﾞ;->ˑﹳ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lˈˋ/ᐧﾞ;->ﾞᴵ:J

    iget-wide v5, p1, Lˈˋ/ᐧﾞ;->ﾞᴵ:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    iget-object v0, p0, Lˈˋ/ᐧﾞ;->ﹳٴ:Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ᐧﾞ;->ⁱˊ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lˈˋ/ᐧﾞ;->ʽ:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ᐧﾞ;->ˈ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˈˋ/ᐧﾞ;->ˑﹳ:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lˈˋ/ᐧﾞ;->ﾞᴵ:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device{batteryLevel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ᐧﾞ;->ﹳٴ:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ᐧﾞ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proximityOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˈˋ/ᐧﾞ;->ʽ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ᐧﾞ;->ˈ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ramUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ᐧﾞ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", diskUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ᐧﾞ;->ﾞᴵ:J

    const-string v3, "}"

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ˉʿ(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
