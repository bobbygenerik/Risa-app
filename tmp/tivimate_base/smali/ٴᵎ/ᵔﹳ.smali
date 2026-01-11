.class public final Lٴᵎ/ᵔﹳ;
.super Lᵔᐧ/ﾞʻ;
.source "SourceFile"

# interfaces
.implements Lʽי/ˈ;


# instance fields
.field public final ʼˎ:Lˊᐧ/ᵔᵢ;

.field public ʼᐧ:I

.field public final ʽ:Lٴᵎ/יـ;

.field public final ˆʾ:Lˊᐧ/ᵎﹶ;

.field public final ˈ:Lˎᵢ/ˊʻ;

.field public ˉʿ:Z

.field public ˉˆ:I

.field public final ˑﹳ:Ljava/net/Socket;

.field public יـ:J

.field public ٴﹶ:Lᵔᐧ/ᵔʾ;

.field public final ᵎﹶ:Lˎᵢ/ᵔʾ;

.field public ᵔʾ:I

.field public final ᵔᵢ:Lˎᵢ/ـˆ;

.field public ᵔﹳ:I

.field public final ⁱˊ:Lﾞʿ/ʽ;

.field public final ﹳᐧ:Ljava/util/ArrayList;

.field public ﾞʻ:Z

.field public final ﾞᴵ:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;Lˎᵢ/ˊʻ;Ljava/net/Socket;Ljava/net/Socket;Lˎᵢ/ᵔʾ;Lˎᵢ/ـˆ;Lˊᐧ/ـˆ;Lˊᐧ/ʻٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ᵔﹳ;->ⁱˊ:Lﾞʿ/ʽ;

    iput-object p2, p0, Lٴᵎ/ᵔﹳ;->ʽ:Lٴᵎ/יـ;

    iput-object p3, p0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iput-object p4, p0, Lٴᵎ/ᵔﹳ;->ˑﹳ:Ljava/net/Socket;

    iput-object p5, p0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    iput-object p6, p0, Lٴᵎ/ᵔﹳ;->ᵎﹶ:Lˎᵢ/ᵔʾ;

    iput-object p7, p0, Lٴᵎ/ᵔﹳ;->ᵔᵢ:Lˎᵢ/ـˆ;

    iput-object p8, p0, Lٴᵎ/ᵔﹳ;->ʼˎ:Lˊᐧ/ᵔᵢ;

    iput-object p9, p0, Lٴᵎ/ᵔﹳ;->ˆʾ:Lˊᐧ/ᵎﹶ;

    const/4 p1, 0x1

    iput p1, p0, Lٴᵎ/ᵔﹳ;->ᵔﹳ:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lٴᵎ/ᵔﹳ;->ﹳᐧ:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lٴᵎ/ᵔﹳ;->יـ:J

    return-void
.end method

.method public static ʽ(Lˎᵢ/ʻٴ;Lˎᵢ/ˊʻ;Ljava/io/IOException;)V
    .locals 3

    .prologue
    iget-object v0, p1, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v1, v0, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v0}, Lˎᵢ/ʼᐧ;->ᵔᵢ()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, Lˎᵢ/ʻٴ;->ʼʼ:Lˉˆ/ʿ;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ˑﹳ:Ljava/net/Socket;

    invoke-static {v0}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v2, v1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v2, v2, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget v2, v2, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴᵎ/ᵔﹳ;->ᵎﹶ:Lˎᵢ/ᵔʾ;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lˎᵢ/ᵔʾ;->ⁱˊ:Lˎᵢ/ᵔᵢ;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "none"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lٴᵎ/ᵔﹳ;->ᵔᵢ:Lˎᵢ/ـˆ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(Z)Z
    .locals 6

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lٴᵎ/ᵔﹳ;->ˑﹳ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lٴᵎ/ᵔﹳ;->ٴﹶ:Lᵔᐧ/ᵔʾ;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Lᵔᐧ/ᵔʾ;->ˉˆ(J)Z

    move-result p1

    return p1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lٴᵎ/ᵔﹳ;->יـ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long/2addr v0, v4

    monitor-exit p0

    const-wide v4, 0x2540be400L

    cmp-long v0, v0, v4

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ʼˎ:Lˊᐧ/ᵔᵢ;

    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {v0}, Lˊᐧ/ᵔᵢ;->ᵎⁱ()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr v0, v1

    :try_start_3
    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move v3, v1

    :catch_1
    return v3

    :cond_2
    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_0
    return v3
.end method

.method public final ˆʾ()V
    .locals 8

    .prologue
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lٴᵎ/ᵔﹳ;->יـ:J

    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ᵔᵢ:Lˎᵢ/ـˆ;

    sget-object v1, Lˎᵢ/ـˆ;->ᴵᵔ:Lˎᵢ/ـˆ;

    if-eq v0, v1, :cond_1

    sget-object v1, Lˎᵢ/ـˆ;->ˊʻ:Lˎᵢ/ـˆ;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    sget-object v0, Lᵔᐧ/ﹳٴ;->ﹳٴ:Lᵔᐧ/ﹳٴ;

    new-instance v2, Lˉˆ/ˎـ;

    iget-object v3, p0, Lٴᵎ/ᵔﹳ;->ⁱˊ:Lﾞʿ/ʽ;

    invoke-direct {v2, v3}, Lˉˆ/ˎـ;-><init>(Lﾞʿ/ʽ;)V

    iget-object v3, p0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    iget-object v4, p0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v4, v4, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v4, v4, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v4, v4, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v5, p0, Lٴᵎ/ᵔﹳ;->ʼˎ:Lˊᐧ/ᵔᵢ;

    iget-object v6, p0, Lٴᵎ/ᵔﹳ;->ˆʾ:Lˊᐧ/ᵎﹶ;

    iput-object v3, v2, Lˉˆ/ˎـ;->ⁱˊ:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lⁱᐧ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    iput-object v5, v2, Lˉˆ/ˎـ;->ˈ:Ljava/lang/Object;

    iput-object v6, v2, Lˉˆ/ˎـ;->ˑﹳ:Ljava/lang/Object;

    iput-object p0, v2, Lˉˆ/ˎـ;->ﾞᴵ:Ljava/lang/Object;

    iput-object v0, v2, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    new-instance v0, Lᵔᐧ/ᵔʾ;

    invoke-direct {v0, v2}, Lᵔᐧ/ᵔʾ;-><init>(Lˉˆ/ˎـ;)V

    iput-object v0, p0, Lٴᵎ/ᵔﹳ;->ٴﹶ:Lᵔᐧ/ᵔʾ;

    sget-object v2, Lᵔᐧ/ᵔʾ;->ʿᵢ:Lᵔᐧ/ᵢˏ;

    iget v3, v2, Lᵔᐧ/ᵢˏ;->ﹳٴ:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    iget-object v2, v2, Lᵔᐧ/ᵢˏ;->ⁱˊ:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    goto :goto_1

    :cond_2
    const v2, 0x7fffffff

    :goto_1
    iput v2, p0, Lٴᵎ/ᵔﹳ;->ᵔﹳ:I

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    const-string v3, ">> CONNECTION "

    monitor-enter v2

    :try_start_0
    iget-boolean v4, v2, Lᵔᐧ/ـˆ;->ˈٴ:Z

    if-nez v4, :cond_5

    sget-object v4, Lᵔᐧ/ـˆ;->ˊʻ:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lᵔᐧ/ﾞᴵ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-virtual {v3}, Lˊᐧ/ʼˎ;->ˈ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lⁱᐧ/ˑﹳ;->ˈ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v3, v2, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    sget-object v4, Lᵔᐧ/ﾞᴵ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-interface {v3, v4}, Lˊᐧ/ᵎﹶ;->ﾞʻ(Lˊᐧ/ʼˎ;)Lˊᐧ/ᵎﹶ;

    iget-object v3, v2, Lᵔᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᵎﹶ;

    invoke-interface {v3}, Lˊᐧ/ᵎﹶ;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    iget-object v3, v0, Lᵔᐧ/ᵔʾ;->ˋᵔ:Lᵔᐧ/ᵢˏ;

    invoke-virtual {v2, v3}, Lᵔᐧ/ـˆ;->ᵎˊ(Lᵔᐧ/ᵢˏ;)V

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ˋᵔ:Lᵔᐧ/ᵢˏ;

    invoke-virtual {v2}, Lᵔᐧ/ᵢˏ;->ﹳٴ()I

    move-result v2

    const v3, 0xffff

    if-eq v2, v3, :cond_4

    iget-object v4, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v4, v1, v2, v3}, Lᵔᐧ/ـˆ;->ˈʿ(IJ)V

    :cond_4
    iget-object v1, v0, Lᵔᐧ/ᵔʾ;->ٴᵢ:Lﾞʿ/ʽ;

    invoke-virtual {v1}, Lﾞʿ/ʽ;->ˈ()Lﾞʿ/ⁱˊ;

    move-result-object v1

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    iget-object v0, v0, Lᵔᐧ/ᵔʾ;->ˉـ:Lᵔᐧ/ˉʿ;

    invoke-static {v1, v2, v0}, Lﾞʿ/ⁱˊ;->ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    return-void

    :cond_5
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    monitor-exit v2

    throw v0
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lٴᵎ/ᵔﹳ;->ˉˆ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lٴᵎ/ᵔﹳ;->ˉˆ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ˑﹳ(Lٴᵎ/ʼᐧ;Ljava/io/IOException;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Lokhttp3/internal/http2/StreamResetException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    iget v0, v0, Lokhttp3/internal/http2/StreamResetException;->ʾˋ:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget p1, p0, Lٴᵎ/ᵔﹳ;->ʼᐧ:I

    add-int/2addr p1, v1

    iput p1, p0, Lٴᵎ/ᵔﹳ;->ʼᐧ:I

    if-le p1, v1, :cond_6

    iput-boolean v1, p0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    iget p1, p0, Lٴᵎ/ᵔﹳ;->ᵔʾ:I

    add-int/2addr p1, v1

    iput p1, p0, Lٴᵎ/ᵔﹳ;->ᵔʾ:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    check-cast p2, Lokhttp3/internal/http2/StreamResetException;

    iget p2, p2, Lokhttp3/internal/http2/StreamResetException;->ʾˋ:I

    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    iget-boolean p1, p1, Lٴᵎ/ʼᐧ;->ˆﾞ:Z

    if-nez p1, :cond_6

    :cond_1
    iput-boolean v1, p0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    iget p1, p0, Lٴᵎ/ᵔﹳ;->ᵔʾ:I

    add-int/2addr p1, v1

    iput p1, p0, Lٴᵎ/ᵔﹳ;->ᵔʾ:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ٴﹶ:Lᵔᐧ/ᵔʾ;

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    instance-of v0, p2, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v0, :cond_6

    :cond_4
    iput-boolean v1, p0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    iget v0, p0, Lٴᵎ/ᵔﹳ;->ˉˆ:I

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    iget-object p1, p1, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    invoke-static {p1, v0, p2}, Lٴᵎ/ᵔﹳ;->ʽ(Lˎᵢ/ʻٴ;Lˎᵢ/ˊʻ;Ljava/io/IOException;)V

    :cond_5
    iget p1, p0, Lٴᵎ/ᵔﹳ;->ᵔʾ:I

    add-int/2addr p1, v1

    iput p1, p0, Lٴᵎ/ᵔﹳ;->ᵔʾ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final ᵎﹶ(Lˎᵢ/ﹳٴ;Ljava/util/List;)Z
    .locals 7

    .prologue
    iget-object v0, p1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    sget-object v1, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v1, p0, Lٴᵎ/ᵔﹳ;->ﹳᐧ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lٴᵎ/ᵔﹳ;->ᵔﹳ:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_a

    iget-boolean v1, p0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v2, v1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v4, v1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-virtual {v2, p1}, Lˎᵢ/ﹳٴ;->ﹳٴ(Lˎᵢ/ﹳٴ;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v5, v4, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v5, v5, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v2, v5}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lٴᵎ/ᵔﹳ;->ٴﹶ:Lᵔᐧ/ᵔʾ;

    if-nez v2, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eqz p2, :cond_a

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˎᵢ/ˊʻ;

    iget-object v5, v2, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_5

    iget-object v5, v1, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    if-ne v5, v6, :cond_5

    iget-object v5, v1, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    iget-object v2, v2, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    invoke-static {v5, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p2, p1, Lˎᵢ/ﹳٴ;->ˈ:Ljavax/net/ssl/HostnameVerifier;

    sget-object v1, Lʻﹶ/ʽ;->ﹳٴ:Lʻﹶ/ʽ;

    if-eq p2, v1, :cond_6

    goto :goto_2

    :cond_6
    sget-object p2, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object p2, v4, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget v1, v0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iget-object v0, v0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget v2, p2, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object p2, p2, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v0, p2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-object v1, p0, Lٴᵎ/ᵔﹳ;->ᵎﹶ:Lˎᵢ/ᵔʾ;

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p2, p0, Lٴᵎ/ᵔﹳ;->ˉʿ:Z

    if-nez p2, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lˎᵢ/ᵔʾ;->ﹳٴ()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {v0, p2}, Lʻﹶ/ʽ;->ʽ(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_a

    :goto_0
    :try_start_0
    iget-object p1, p1, Lˎᵢ/ﹳٴ;->ˑﹳ:Lˎᵢ/ﾞᴵ;

    invoke-virtual {v1}, Lˎᵢ/ᵔʾ;->ﹳٴ()Ljava/util/List;

    iget-object p1, p1, Lˎᵢ/ﾞᴵ;->ﹳٴ:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_9

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    :goto_2
    return v3
.end method

.method public final ᵔᵢ()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ⁱˊ(Lᵔᐧ/ʻٴ;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lᵔᐧ/ʻٴ;->ʽ(ILjava/io/IOException;)V

    return-void
.end method

.method public final ﹳٴ(Lᵔᐧ/ᵢˏ;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lٴᵎ/ᵔﹳ;->ᵔﹳ:I

    iget v1, p1, Lᵔᐧ/ᵢˏ;->ﹳٴ:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object p1, p1, Lᵔᐧ/ᵢˏ;->ⁱˊ:[I

    const/4 v1, 0x3

    aget p1, p1, v1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, Lٴᵎ/ᵔﹳ;->ᵔﹳ:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lٴᵎ/ᵔﹳ;->ʽ:Lٴᵎ/יـ;

    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object p1, p1, Lٴᵎ/יـ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-le p1, v0, :cond_3

    iget-object p1, p0, Lٴᵎ/ᵔﹳ;->ʽ:Lٴᵎ/יـ;

    iget-object v0, p1, Lٴᵎ/יـ;->ʽ:Lﾞʿ/ⁱˊ;

    iget-object p1, p1, Lٴᵎ/יـ;->ˈ:Lٴᵎ/ﹳᐧ;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lﾞʿ/ⁱˊ;->ˈ(Lﾞʿ/ﹳٴ;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final ﾞᴵ()Lˎᵢ/ˊʻ;
    .locals 1

    iget-object v0, p0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    return-object v0
.end method
