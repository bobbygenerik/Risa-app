.class public final Lʼ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼ/ﾞʻ;


# virtual methods
.method public final ʼˎ(Ljavax/net/ssl/SSLSocket;)Lʼ/ᵔʾ;
    .locals 0

    new-instance p1, Lʼ/ٴﹶ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1
.end method

.method public final ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    .prologue
    sget-boolean v0, Lʼ/ٴﹶ;->ⁱˊ:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
