.class public final Lـᐧ/ﹳٴ;
.super Lـᐧ/ˑﹳ;
.source "SourceFile"

# interfaces
.implements Lـᐧ/ˈ;


# static fields
.field public static final ˑﹳ:Z


# instance fields
.field public ʽ:Landroid/content/Context;

.field public final ˈ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lـᐧ/ﹳٴ;->ˑﹳ:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lʼ/ﹳٴ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lʼ/ˉʿ;

    sget-object v2, Lʼ/ˑﹳ;->ﾞᴵ:Lـˎ/ˈ;

    invoke-direct {v1, v2}, Lʼ/ˉʿ;-><init>(Lʼ/ﾞʻ;)V

    new-instance v2, Lʼ/ˉʿ;

    sget-object v3, Lʼ/ٴﹶ;->ﹳٴ:Lʼ/ʼˎ;

    invoke-direct {v2, v3}, Lʼ/ˉʿ;-><init>(Lʼ/ﾞʻ;)V

    new-instance v3, Lʼ/ˉʿ;

    sget-object v4, Lʼ/ᵔᵢ;->ﹳٴ:Lʼ/ﾞᴵ;

    invoke-direct {v3, v4}, Lʼ/ˉʿ;-><init>(Lʼ/ﾞʻ;)V

    const/4 v4, 0x4

    new-array v4, v4, [Lʼ/ᵔʾ;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lﹶˈ/ʼˎ;->ʻˋ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_1
    :goto_1
    if-ge v5, v2, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    move-object v4, v3

    check-cast v4, Lʼ/ᵔʾ;

    invoke-interface {v4}, Lʼ/ᵔʾ;->ʽ()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lـᐧ/ﹳٴ;->ˈ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final ʽ(Ljavax/net/ssl/X509TrustManager;)Lˈˊ/ˉˆ;
    .locals 2

    .prologue
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/net/http/X509TrustManagerExtensions;

    invoke-direct {v1, p1}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v0, Lʼ/ⁱˊ;

    invoke-direct {v0, p1, v1}, Lʼ/ⁱˊ;-><init>(Ljavax/net/ssl/X509TrustManager;Landroid/net/http/X509TrustManagerExtensions;)V

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lـᐧ/ˑﹳ;->ʽ(Ljavax/net/ssl/X509TrustManager;)Lˈˊ/ˉˆ;

    move-result-object p1

    return-object p1
.end method

.method public final ˈ(Ljavax/net/ssl/X509TrustManager;)Lʻﹶ/ˈ;
    .locals 1

    const-string v0, "buildTrustRootIndex"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lـᐧ/ˑﹳ;->ˈ(Ljavax/net/ssl/X509TrustManager;)Lʻﹶ/ˈ;

    move-result-object p1

    return-object p1
.end method

.method public final ˑﹳ(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lـᐧ/ﹳٴ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Lʼ/ᵔʾ;

    invoke-interface {v4, p1}, Lʼ/ᵔʾ;->ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lʼ/ᵔʾ;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1, p2, p3}, Lʼ/ᵔʾ;->ˈ(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    check-cast p1, Landroid/util/CloseGuard;

    invoke-virtual {p1}, Landroid/util/CloseGuard;->warnIfOpen()V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lـᐧ/ˑﹳ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ᵎﹶ(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 6

    .prologue
    iget-object v0, p0, Lـᐧ/ﹳٴ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    check-cast v5, Lʼ/ᵔʾ;

    invoke-interface {v5, p1}, Lʼ/ᵔʾ;->ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    check-cast v4, Lʼ/ᵔʾ;

    if-eqz v4, :cond_2

    invoke-interface {v4, p1}, Lʼ/ᵔʾ;->ﹳٴ(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v3
.end method

.method public final ᵔᵢ()Ljava/lang/Object;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lـᐧ/ˑﹳ;->ᵔᵢ()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lـᐧ/ﹳٴ;->ʽ:Landroid/content/Context;

    return-object v0
.end method

.method public final ﹳٴ(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lـᐧ/ﹳٴ;->ʽ:Landroid/content/Context;

    return-void
.end method

.method public final ﾞʻ()Ljavax/net/ssl/SSLContext;
    .locals 1

    const-string v0, "newSSLContext"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method
