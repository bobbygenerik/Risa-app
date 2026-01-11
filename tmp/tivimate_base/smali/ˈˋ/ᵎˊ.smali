.class public final Lˈˋ/ᵎˊ;
.super Lˈˋ/ˑ;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˋ/ᵎˊ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lˈˋ/ᵎˊ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lˈˋ/ᵎˊ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lˈˋ/ᵎˊ;->ˈ:Ljava/lang/String;

    iput-object p5, p0, Lˈˋ/ᵎˊ;->ˑﹳ:Ljava/lang/String;

    iput-object p6, p0, Lˈˋ/ᵎˊ;->ﾞᴵ:Ljava/lang/String;

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
    instance-of v1, p1, Lˈˋ/ˑ;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lˈˋ/ˑ;

    check-cast p1, Lˈˋ/ᵎˊ;

    iget-object v1, p1, Lˈˋ/ᵎˊ;->ﾞᴵ:Ljava/lang/String;

    iget-object v3, p1, Lˈˋ/ᵎˊ;->ˑﹳ:Ljava/lang/String;

    iget-object v4, p1, Lˈˋ/ᵎˊ;->ˈ:Ljava/lang/String;

    iget-object v5, p1, Lˈˋ/ᵎˊ;->ʽ:Ljava/lang/String;

    iget-object v6, p1, Lˈˋ/ᵎˊ;->ﹳٴ:Ljava/lang/String;

    iget-object v7, p0, Lˈˋ/ᵎˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lˈˋ/ᵎˊ;->ⁱˊ:Ljava/lang/String;

    iget-object p1, p1, Lˈˋ/ᵎˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lˈˋ/ᵎˊ;->ʽ:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v5, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_0
    iget-object p1, p0, Lˈˋ/ᵎˊ;->ˈ:Ljava/lang/String;

    if-nez p1, :cond_2

    if-nez v4, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_1
    iget-object p1, p0, Lˈˋ/ᵎˊ;->ˑﹳ:Ljava/lang/String;

    if-nez p1, :cond_3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    iget-object p1, p0, Lˈˋ/ᵎˊ;->ﾞᴵ:Ljava/lang/String;

    if-nez p1, :cond_4

    if-nez v1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    return v0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    iget-object v0, p0, Lˈˋ/ᵎˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lˈˋ/ᵎˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lˈˋ/ᵎˊ;->ʽ:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    const v3, -0x2aff6277

    mul-int/2addr v0, v3

    iget-object v3, p0, Lˈˋ/ᵎˊ;->ˈ:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lˈˋ/ᵎˊ;->ˑﹳ:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v1, p0, Lˈˋ/ᵎˊ;->ﾞᴵ:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application{identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˈˋ/ᵎˊ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵎˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵎˊ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", organization=null, installationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵎˊ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", developmentPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵎˊ;->ˑﹳ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", developmentPlatformVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˈˋ/ᵎˊ;->ﾞᴵ:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
