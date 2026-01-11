.class public final Lᐧٴ/ʼᐧ;
.super Lᐧٴ/ᴵˊ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:[B

.field public final ﹳٴ:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧٴ/ʼᐧ;->ﹳٴ:[B

    iput-object p2, p0, Lᐧٴ/ʼᐧ;->ⁱˊ:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lᐧٴ/ᴵˊ;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lᐧٴ/ᴵˊ;

    instance-of v1, p1, Lᐧٴ/ʼᐧ;

    move-object v3, p1

    check-cast v3, Lᐧٴ/ʼᐧ;

    if-eqz v1, :cond_1

    iget-object v3, v3, Lᐧٴ/ʼᐧ;->ﹳٴ:[B

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lᐧٴ/ʼᐧ;->ﹳٴ:[B

    :goto_0
    iget-object v4, p0, Lᐧٴ/ʼᐧ;->ﹳٴ:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast p1, Lᐧٴ/ʼᐧ;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lᐧٴ/ʼᐧ;->ⁱˊ:[B

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lᐧٴ/ʼᐧ;->ⁱˊ:[B

    :goto_1
    iget-object v1, p0, Lᐧٴ/ʼᐧ;->ⁱˊ:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lᐧٴ/ʼᐧ;->ﹳٴ:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lᐧٴ/ʼᐧ;->ⁱˊ:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentIds{clearBlob="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lᐧٴ/ʼᐧ;->ﹳٴ:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", encryptedBlob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᐧٴ/ʼᐧ;->ⁱˊ:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
