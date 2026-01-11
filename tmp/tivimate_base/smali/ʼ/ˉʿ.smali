.class public final Lʼ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼ/ᵔʾ;


# instance fields
.field public ⁱˊ:Lʼ/ᵔʾ;

.field public final ﹳٴ:Lʼ/ﾞʻ;


# direct methods
.method public constructor <init>(Lʼ/ﾞʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼ/ˉʿ;->ﹳٴ:Lʼ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ˈ(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʼ/ˉʿ;->ˑﹳ(Ljavax/net/ssl/SSLSocket;)Lʼ/ᵔʾ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lʼ/ᵔʾ;->ˈ(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized ˑﹳ(Ljavax/net/ssl/SSLSocket;)Lʼ/ᵔʾ;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʼ/ˉʿ;->ⁱˊ:Lʼ/ᵔʾ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lʼ/ˉʿ;->ﹳٴ:Lʼ/ﾞʻ;

    invoke-interface {v0, p1}, Lʼ/ﾞʻ;->ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʼ/ˉʿ;->ﹳٴ:Lʼ/ﾞʻ;

    invoke-interface {v0, p1}, Lʼ/ﾞʻ;->ʼˎ(Ljavax/net/ssl/SSLSocket;)Lʼ/ᵔʾ;

    move-result-object p1

    iput-object p1, p0, Lʼ/ˉʿ;->ⁱˊ:Lʼ/ᵔʾ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lʼ/ˉʿ;->ⁱˊ:Lʼ/ᵔʾ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    iget-object v0, p0, Lʼ/ˉʿ;->ﹳٴ:Lʼ/ﾞʻ;

    invoke-interface {v0, p1}, Lʼ/ﾞʻ;->ⁱˊ(Ljavax/net/ssl/SSLSocket;)Z

    move-result p1

    return p1
.end method

.method public final ﹳٴ(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lʼ/ˉʿ;->ˑﹳ(Ljavax/net/ssl/SSLSocket;)Lʼ/ᵔʾ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lʼ/ᵔʾ;->ﹳٴ(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
