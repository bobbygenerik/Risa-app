.class public abstract Lـᐧ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Ljava/util/logging/Logger;

.field public static volatile ﹳٴ:Lـᐧ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    :try_start_0
    sget-object v0, Lʼ/ʽ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Lʼ/ʽ;->ﹳٴ:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object v1, Lʼ/ˈ;->ﹳٴ:Lʼ/ˈ;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    sget-boolean v0, Lـᐧ/ﹳٴ;->ˑﹳ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Lـᐧ/ﹳٴ;

    invoke-direct {v0}, Lـᐧ/ﹳٴ;-><init>()V

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_6

    sget-boolean v0, Lـᐧ/ʽ;->ˑﹳ:Z

    if-eqz v0, :cond_5

    new-instance v1, Lـᐧ/ʽ;

    invoke-direct {v1}, Lـᐧ/ʽ;-><init>()V

    :cond_5
    move-object v0, v1

    :cond_6
    if-eqz v0, :cond_7

    sput-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    const-class v0, Lˎᵢ/ʻٴ;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lـᐧ/ˑﹳ;->ⁱˊ:Ljava/util/logging/Logger;

    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected Android API level 21+ but was "

    invoke-static {v0, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract ʼˎ(Ljava/lang/String;)Z
.end method

.method public ʽ(Ljavax/net/ssl/X509TrustManager;)Lˈˊ/ˉˆ;
    .locals 1

    new-instance v0, Lʻﹶ/ﹳٴ;

    invoke-virtual {p0, p1}, Lـᐧ/ˑﹳ;->ˈ(Ljavax/net/ssl/X509TrustManager;)Lʻﹶ/ˈ;

    move-result-object p1

    invoke-direct {v0, p1}, Lʻﹶ/ﹳٴ;-><init>(Lʻﹶ/ˈ;)V

    return-object v0
.end method

.method public ˆʾ(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    sget-object v0, Lـᐧ/ˑﹳ;->ⁱˊ:Ljava/util/logging/Logger;

    invoke-virtual {v0, p2, p1, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ˈ(Ljavax/net/ssl/X509TrustManager;)Lʻﹶ/ˈ;
    .locals 2

    new-instance v0, Lʻﹶ/ⁱˊ;

    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-direct {v0, p1}, Lʻﹶ/ⁱˊ;-><init>([Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method

.method public abstract ˑﹳ(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
.end method

.method public ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    if-nez p1, :cond_0

    const-string v0, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x5

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p2, v0, p1}, Lـᐧ/ˑﹳ;->ˆʾ(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public abstract ᵎﹶ(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
.end method

.method public ᵔᵢ()Ljava/lang/Object;
    .locals 2

    .prologue
    sget-object v0, Lـᐧ/ˑﹳ;->ⁱˊ:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "response.body().close()"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract ﾞʻ()Ljavax/net/ssl/SSLContext;
.end method

.method public ﾞᴵ(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method
