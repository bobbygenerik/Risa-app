.class public final Lʼᵔ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˑﹳ;


# instance fields
.field public final ⁱˊ:Lʿٴ/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʿٴ/ʽ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lʼᵔ/ᵔᵢ;

    if-eqz v0, :cond_0

    check-cast p1, Lʼᵔ/ᵔᵢ;

    iget-object v0, p0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    iget-object p1, p1, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v0}, Lʿٴ/ʽ;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p1, Lʼᵔ/ᵎﹶ;->ﹳٴ:Ljava/lang/Object;

    return-object p1
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    iget v2, v1, Lיـ/ﹳᐧ;->ʽʽ:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼᵔ/ᵎﹶ;

    iget-object v2, p0, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v2, v0}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lʼᵔ/ᵎﹶ;->ⁱˊ:Lʼᵔ/ﾞᴵ;

    iget-object v4, v1, Lʼᵔ/ᵎﹶ;->ˈ:[B

    if-nez v4, :cond_0

    iget-object v4, v1, Lʼᵔ/ᵎﹶ;->ʽ:Ljava/lang/String;

    sget-object v5, Lʼᵔ/ˑﹳ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Lʼᵔ/ᵎﹶ;->ˈ:[B

    :cond_0
    iget-object v1, v1, Lʼᵔ/ᵎﹶ;->ˈ:[B

    invoke-interface {v3, v1, v2, p1}, Lʼᵔ/ﾞᴵ;->ˈ([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
