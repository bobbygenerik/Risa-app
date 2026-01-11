.class public final Landroidx/media3/decoder/ffmpeg/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/Object;

.field public ⁱˊ:Z

.field public ﹳٴ:Z


# virtual methods
.method public ﹳٴ()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ˈ;->ﹳٴ:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ˈ;->ﹳٴ:Z

    iput-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ˈ;->ⁱˊ:Z

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ˈ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lˈᵔ/ﹳٴ;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, v0, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v3, v0, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lˑʿ/ʻٴ;

    iget-object v0, v0, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lˑʿ/ʻٴ;->cancel()V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_0
    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/ˈ;->ⁱˊ:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_4
    iput-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/ˈ;->ⁱˊ:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
