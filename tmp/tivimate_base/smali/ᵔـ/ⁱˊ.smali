.class public final Lᵔـ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˉˋ/ᵔᵢ;

.field public final ⁱˊ:Lˉˋ/ʼˎ;

.field public final ﹳٴ:J


# direct methods
.method public constructor <init>(JLˉˋ/ʼˎ;Lˉˋ/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lᵔـ/ⁱˊ;->ﹳٴ:J

    iput-object p3, p0, Lᵔـ/ⁱˊ;->ⁱˊ:Lˉˋ/ʼˎ;

    iput-object p4, p0, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

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
    instance-of v1, p1, Lᵔـ/ⁱˊ;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lᵔـ/ⁱˊ;

    iget-wide v3, p0, Lᵔـ/ⁱˊ;->ﹳٴ:J

    iget-wide v5, p1, Lᵔـ/ⁱˊ;->ﹳٴ:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lᵔـ/ⁱˊ;->ⁱˊ:Lˉˋ/ʼˎ;

    iget-object v3, p1, Lᵔـ/ⁱˊ;->ⁱˊ:Lˉˋ/ʼˎ;

    invoke-virtual {v1, v3}, Lˉˋ/ʼˎ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

    iget-object p1, p1, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

    invoke-virtual {v1, p1}, Lˉˋ/ᵔᵢ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x20

    iget-wide v1, p0, Lᵔـ/ⁱˊ;->ﹳٴ:J

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lᵔـ/ⁱˊ;->ⁱˊ:Lˉˋ/ʼˎ;

    invoke-virtual {v2}, Lˉˋ/ʼˎ;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

    invoke-virtual {v1}, Lˉˋ/ᵔᵢ;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersistedEvent{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lᵔـ/ⁱˊ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᵔـ/ⁱˊ;->ⁱˊ:Lˉˋ/ʼˎ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᵔـ/ⁱˊ;->ʽ:Lˉˋ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
