.class public final Lʼ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼ/ᵔʾ;


# static fields
.field public static final ⁱˊ:Z

.field public static final ﹳٴ:Lʼ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Lʼ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʼ/ᵔᵢ;->ﹳٴ:Lʼ/ﾞᴵ;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.bouncycastle.jsse.provider.BouncyCastleJsseProvider"

    const-class v2, Lʼ/ᵎﹶ;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    sput-boolean v0, Lʼ/ᵔᵢ;->ⁱˊ:Z

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 1

    sget-boolean v0, Lʼ/ᵔᵢ;->ⁱˊ:Z

    return v0
.end method

.method public final ˈ(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʼ/ᵔᵢ;->ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCSSLSocket;->getParameters()Lorg/bouncycastle/jsse/BCSSLParameters;

    move-result-object p2

    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    invoke-static {p3}, Lˋⁱ/ﾞᴵ;->יـ(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p3}, Lorg/bouncycastle/jsse/BCSSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/bouncycastle/jsse/BCSSLSocket;->setParameters(Lorg/bouncycastle/jsse/BCSSLParameters;)V

    :cond_0
    return-void
.end method

.method public final ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    check-cast p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    invoke-interface {p1}, Lorg/bouncycastle/jsse/BCSSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
