.class public final Lˈˋ/ᵔٴ;
.super Lˈˋ/ʼـ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/lang/String;

.field public final ʽ:I

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ᵎﹶ:I

.field public final ᵔᵢ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˈˋ/ᵔٴ;->ﹳٴ:I

    iput-object p2, p0, Lˈˋ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    iput p3, p0, Lˈˋ/ᵔٴ;->ʽ:I

    iput-wide p4, p0, Lˈˋ/ᵔٴ;->ˈ:J

    iput-wide p6, p0, Lˈˋ/ᵔٴ;->ˑﹳ:J

    iput-boolean p8, p0, Lˈˋ/ᵔٴ;->ﾞᴵ:Z

    iput p9, p0, Lˈˋ/ᵔٴ;->ᵎﹶ:I

    iput-object p10, p0, Lˈˋ/ᵔٴ;->ᵔᵢ:Ljava/lang/String;

    iput-object p11, p0, Lˈˋ/ᵔٴ;->ʼˎ:Ljava/lang/String;

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
    instance-of v1, p1, Lˈˋ/ʼـ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lˈˋ/ʼـ;

    check-cast p1, Lˈˋ/ᵔٴ;

    iget v1, p1, Lˈˋ/ᵔٴ;->ﹳٴ:I

    iget v3, p0, Lˈˋ/ᵔٴ;->ﹳٴ:I

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lˈˋ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lˈˋ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lˈˋ/ᵔٴ;->ʽ:I

    iget v3, p1, Lˈˋ/ᵔٴ;->ʽ:I

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lˈˋ/ᵔٴ;->ˈ:J

    iget-wide v5, p1, Lˈˋ/ᵔٴ;->ˈ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lˈˋ/ᵔٴ;->ˑﹳ:J

    iget-wide v5, p1, Lˈˋ/ᵔٴ;->ˑﹳ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lˈˋ/ᵔٴ;->ﾞᴵ:Z

    iget-boolean v3, p1, Lˈˋ/ᵔٴ;->ﾞᴵ:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lˈˋ/ᵔٴ;->ᵎﹶ:I

    iget v3, p1, Lˈˋ/ᵔٴ;->ᵎﹶ:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lˈˋ/ᵔٴ;->ᵔᵢ:Ljava/lang/String;

    iget-object v3, p1, Lˈˋ/ᵔٴ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˈˋ/ᵔٴ;->ʼˎ:Ljava/lang/String;

    iget-object p1, p1, Lˈˋ/ᵔٴ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    iget v0, p0, Lˈˋ/ᵔٴ;->ﹳٴ:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ᵔٴ;->ʽ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˈˋ/ᵔٴ;->ˈ:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lˈˋ/ᵔٴ;->ˑﹳ:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lˈˋ/ᵔٴ;->ﾞᴵ:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lˈˋ/ᵔٴ;->ᵎﹶ:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ᵔٴ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˈˋ/ᵔٴ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device{arch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lˈˋ/ᵔٴ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵔٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ᵔٴ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ram="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ᵔٴ;->ˈ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", diskSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lˈˋ/ᵔٴ;->ˑﹳ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", simulator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lˈˋ/ᵔٴ;->ﾞᴵ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˈˋ/ᵔٴ;->ᵎﹶ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵔٴ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modelClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵔٴ;->ʼˎ:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
