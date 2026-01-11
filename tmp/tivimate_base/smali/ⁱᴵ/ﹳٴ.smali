.class public final Lⁱᴵ/ﹳٴ;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lⁱᴵ/ʽ;

.field public ﹳٴ:Z


# direct methods
.method public constructor <init>(Lⁱᴵ/ʽ;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lⁱᴵ/ﹳٴ;->ⁱˊ:Lⁱᴵ/ʽ;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lⁱᴵ/ⁱˊ;

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lⁱᴵ/ﹳٴ;->ⁱˊ:Lⁱᴵ/ʽ;

    iget-object v2, v1, Lⁱᴵ/ʽ;->ٴﹶ:Lⁱᴵ/ʽﹳ;

    iget-object v1, v1, Lⁱᴵ/ʽ;->ﾞʻ:Ljava/util/UUID;

    iget-object v3, v0, Lⁱᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v3, Lⁱᴵ/ˉˆ;

    invoke-interface {v2, v1, v3}, Lⁱᴵ/ʽﹳ;->ᵎﹶ(Ljava/util/UUID;Lⁱᴵ/ˉˆ;)[B

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Lⁱᴵ/ﹳٴ;->ⁱˊ:Lⁱᴵ/ʽ;

    iget-object v1, v1, Lⁱᴵ/ʽ;->ٴﹶ:Lⁱᴵ/ʽﹳ;

    iget-object v2, v0, Lⁱᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lⁱᴵ/ʼᐧ;

    invoke-interface {v1, v2}, Lⁱᴵ/ʽﹳ;->ˆʾ(Lⁱᴵ/ʼᐧ;)[B

    move-result-object v1
    :try_end_0
    .catch Landroidx/media3/exoplayer/drm/MediaDrmCallbackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    const-string v2, "DefaultDrmSession"

    const-string v3, "Key/provisioning request produced an unexpected exception. Not retrying."

    invoke-static {v2, v3, v1}, Lᐧˎ/ﹳٴ;->ᴵᵔ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, p1, v1}, Lⁱᴵ/ﹳٴ;->ﹳٴ(Landroid/os/Message;Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v2, p0, Lⁱᴵ/ﹳٴ;->ⁱˊ:Lⁱᴵ/ʽ;

    iget-object v2, v2, Lⁱᴵ/ʽ;->ʼˎ:Lʻᴵ/יـ;

    iget-wide v3, v0, Lⁱᴵ/ⁱˊ;->ﹳٴ:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lⁱᴵ/ﹳٴ;->ﹳٴ:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lⁱᴵ/ﹳٴ;->ⁱˊ:Lⁱᴵ/ʽ;

    iget-object v2, v2, Lⁱᴵ/ʽ;->ᵔʾ:Lʻᐧ/ᵔﹳ;

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lⁱᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_3
    monitor-exit p0

    :goto_4
    return-void

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(Landroid/os/Message;Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;)Z
    .locals 6

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lⁱᴵ/ⁱˊ;

    iget-boolean v1, v0, Lⁱᴵ/ⁱˊ;->ⁱˊ:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, v0, Lⁱᴵ/ⁱˊ;->ˈ:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lⁱᴵ/ⁱˊ;->ˈ:I

    iget-object v4, p0, Lⁱᴵ/ﹳٴ;->ⁱˊ:Lⁱᴵ/ʽ;

    iget-object v4, v4, Lⁱᴵ/ʽ;->ʼˎ:Lʻᴵ/יـ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    if-le v1, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lﹳᵢ/ﹳᐧ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Ljava/io/IOException;

    goto :goto_0

    :cond_2
    new-instance v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v1

    :goto_0
    iget-object v1, p0, Lⁱᴵ/ﹳٴ;->ⁱˊ:Lⁱᴵ/ʽ;

    iget-object v1, v1, Lⁱᴵ/ʽ;->ʼˎ:Lʻᴵ/יـ;

    new-instance v4, Lʼٴ/ʾᵎ;

    iget v0, v0, Lⁱᴵ/ⁱˊ;->ˈ:I

    const/16 v5, 0xb

    invoke-direct {v4, v0, v5, p2}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v4

    if-nez p2, :cond_3

    :goto_1
    return v2

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-boolean p2, p0, Lⁱᴵ/ﹳٴ;->ﹳٴ:Z

    if-nez p2, :cond_4

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
