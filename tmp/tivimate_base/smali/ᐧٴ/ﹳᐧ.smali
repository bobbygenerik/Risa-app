.class public final Lᐧٴ/ﹳᐧ;
.super Lᐧٴ/ˈٴ;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lᐧٴ/ᵔﹳ;


# direct methods
.method public constructor <init>(Lᐧٴ/ᵔﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧٴ/ﹳᐧ;->ﹳٴ:Lᐧٴ/ᵔﹳ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lᐧٴ/ˈٴ;

    if-eqz v0, :cond_1

    check-cast p1, Lᐧٴ/ˈٴ;

    check-cast p1, Lᐧٴ/ﹳᐧ;

    iget-object p1, p1, Lᐧٴ/ﹳᐧ;->ﹳٴ:Lᐧٴ/ᵔﹳ;

    iget-object v0, p0, Lᐧٴ/ﹳᐧ;->ﹳٴ:Lᐧٴ/ᵔﹳ;

    invoke-virtual {v0, p1}, Lᐧٴ/ᵔﹳ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lᐧٴ/ﹳᐧ;->ﹳٴ:Lᐧٴ/ᵔﹳ;

    invoke-virtual {v0}, Lᐧٴ/ᵔﹳ;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExternalPrivacyContext{prequest="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lᐧٴ/ﹳᐧ;->ﹳٴ:Lᐧٴ/ᵔﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
