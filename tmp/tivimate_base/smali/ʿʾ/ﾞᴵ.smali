.class public final Lʿʾ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˑﹳ;


# instance fields
.field public final ʽ:Lʼᵔ/ˑﹳ;

.field public final ⁱˊ:Lʼᵔ/ˑﹳ;


# direct methods
.method public constructor <init>(Lʼᵔ/ˑﹳ;Lʼᵔ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʾ/ﾞᴵ;->ⁱˊ:Lʼᵔ/ˑﹳ;

    iput-object p2, p0, Lʿʾ/ﾞᴵ;->ʽ:Lʼᵔ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lʿʾ/ﾞᴵ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lʿʾ/ﾞᴵ;

    iget-object v0, p0, Lʿʾ/ﾞᴵ;->ⁱˊ:Lʼᵔ/ˑﹳ;

    iget-object v2, p1, Lʿʾ/ﾞᴵ;->ⁱˊ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, v2}, Lʼᵔ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ﾞᴵ;->ʽ:Lʼᵔ/ˑﹳ;

    iget-object p1, p1, Lʿʾ/ﾞᴵ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lʿʾ/ﾞᴵ;->ⁱˊ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0}, Lʼᵔ/ˑﹳ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʿʾ/ﾞᴵ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-interface {v1}, Lʼᵔ/ˑﹳ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataCacheKey{sourceKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿʾ/ﾞᴵ;->ⁱˊ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/ﾞᴵ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lʿʾ/ﾞᴵ;->ⁱˊ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    iget-object v0, p0, Lʿʾ/ﾞᴵ;->ʽ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, p1}, Lʼᵔ/ˑﹳ;->ⁱˊ(Ljava/security/MessageDigest;)V

    return-void
.end method
