.class public final Lˈˋ/ᵎᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:I

.field public ˑﹳ:J

.field public ᵎﹶ:B

.field public ⁱˊ:I

.field public ﹳٴ:Ljava/lang/Double;

.field public ﾞᴵ:J


# virtual methods
.method public final ﹳٴ()Lˈˋ/ᐧﾞ;
    .locals 11

    .prologue
    iget-byte v0, p0, Lˈˋ/ᵎᵔ;->ᵎﹶ:B

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lˈˋ/ᵎᵔ;->ᵎﹶ:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " batteryVelocity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Lˈˋ/ᵎᵔ;->ᵎﹶ:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " proximityOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v1, p0, Lˈˋ/ᵎᵔ;->ᵎﹶ:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    const-string v1, " orientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lˈˋ/ᵎᵔ;->ᵎﹶ:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    const-string v1, " ramUsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lˈˋ/ᵎᵔ;->ᵎﹶ:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    const-string v1, " diskUsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v2, Lˈˋ/ᐧﾞ;

    iget-object v3, p0, Lˈˋ/ᵎᵔ;->ﹳٴ:Ljava/lang/Double;

    iget v4, p0, Lˈˋ/ᵎᵔ;->ⁱˊ:I

    iget-boolean v5, p0, Lˈˋ/ᵎᵔ;->ʽ:Z

    iget v6, p0, Lˈˋ/ᵎᵔ;->ˈ:I

    iget-wide v7, p0, Lˈˋ/ᵎᵔ;->ˑﹳ:J

    iget-wide v9, p0, Lˈˋ/ᵎᵔ;->ﾞᴵ:J

    invoke-direct/range {v2 .. v10}, Lˈˋ/ᐧﾞ;-><init>(Ljava/lang/Double;IZIJJ)V

    return-object v2
.end method
