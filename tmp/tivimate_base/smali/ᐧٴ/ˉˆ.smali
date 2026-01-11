.class public final Lᐧٴ/ˉˆ;
.super Lᐧٴ/ʾˋ;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lᐧٴ/ﹳᐧ;


# direct methods
.method public constructor <init>(Lᐧٴ/ﹳᐧ;)V
    .locals 1

    sget-object v0, Lᐧٴ/ᵢˏ;->ʾˋ:Lᐧٴ/ᵢˏ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧٴ/ˉˆ;->ﹳٴ:Lᐧٴ/ﹳᐧ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lᐧٴ/ʾˋ;

    if-eqz v0, :cond_1

    check-cast p1, Lᐧٴ/ʾˋ;

    check-cast p1, Lᐧٴ/ˉˆ;

    iget-object p1, p1, Lᐧٴ/ˉˆ;->ﹳٴ:Lᐧٴ/ﹳᐧ;

    iget-object v0, p0, Lᐧٴ/ˉˆ;->ﹳٴ:Lᐧٴ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lᐧٴ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lᐧٴ/ᵢˏ;->ʾˋ:Lᐧٴ/ᵢˏ;

    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lᐧٴ/ˉˆ;->ﹳٴ:Lᐧٴ/ﹳᐧ;

    invoke-virtual {v0}, Lᐧٴ/ﹳᐧ;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    sget-object v1, Lᐧٴ/ᵢˏ;->ʾˋ:Lᐧٴ/ᵢˏ;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComplianceData{privacyContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lᐧٴ/ˉˆ;->ﹳٴ:Lᐧٴ/ﹳᐧ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productIdOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lᐧٴ/ᵢˏ;->ʾˋ:Lᐧٴ/ᵢˏ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
