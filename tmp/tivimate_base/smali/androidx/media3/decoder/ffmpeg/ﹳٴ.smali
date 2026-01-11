.class public final Landroidx/media3/decoder/ffmpeg/ﹳٴ;
.super Lⁱי/ˑﹳ;
.source "SourceFile"


# instance fields
.field public ʻᵎ:Z

.field public final ʼˈ:J

.field public ʿ:Ljava/lang/Object;

.field public ʿᵢ:Landroid/view/Surface;

.field public ˈˏ:I

.field public final ˈⁱ:Lﹳⁱ/ˑﹳ;

.field public ˉـ:I

.field public ˊᵔ:Lʽⁱ/ˏᵢ;

.field public ˏᵢ:I

.field public final ـˏ:Lـʾ/ᵔﹳ;

.field public ـﹶ:J

.field public ᐧᴵ:Lⁱᴵ/ﾞᴵ;

.field public ᐧﾞ:Lⁱᴵ/ﾞᴵ;

.field public ᴵʼ:J

.field public ᴵˑ:Lʽⁱ/ﹳᐧ;

.field public ᵎᵔ:Lﾞˏ/ˏי;

.field public final ﹳـ:Lʻˆ/ﾞᴵ;

.field public ﹶᐧ:Lⁱי/ﾞᴵ;


# direct methods
.method public constructor <init>(JLandroid/os/Handler;Lﾞˏ/ʽʽ;I)V
    .locals 0

    const/4 p5, 0x2

    invoke-direct {p0, p5}, Lⁱי/ˑﹳ;-><init>(I)V

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʼˈ:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    new-instance p1, Lʻˆ/ﾞᴵ;

    invoke-direct {p1}, Lʻˆ/ﾞᴵ;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ﹳـ:Lʻˆ/ﾞᴵ;

    new-instance p1, Lﹳⁱ/ˑﹳ;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lﹳⁱ/ˑﹳ;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˈⁱ:Lﹳⁱ/ˑﹳ;

    new-instance p1, Lـʾ/ᵔﹳ;

    invoke-direct {p1, p3, p4}, Lـʾ/ᵔﹳ;-><init>(Landroid/os/Handler;Lﾞˏ/ʽʽ;)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـˏ:Lـʾ/ᵔﹳ;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˉـ:I

    iput p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    new-instance p1, Lⁱי/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ﹶᐧ:Lⁱי/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ʻٴ([Lʽⁱ/ﹳᐧ;JJLﹳᵢ/ᵢˏ;)V
    .locals 0

    return-void
.end method

.method public final ʼᐧ(ZZ)V
    .locals 4

    .prologue
    new-instance p1, Lⁱי/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ﹶᐧ:Lⁱי/ﾞᴵ;

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـˏ:Lـʾ/ᵔﹳ;

    iget-object v1, v0, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lﾞˏ/ᴵˊ;

    const/4 v3, 0x5

    invoke-direct {v2, v0, p1, v3}, Lﾞˏ/ᴵˊ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    return-void
.end method

.method public final ʽʽ()V
    .locals 7

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧᴵ:Lⁱᴵ/ﾞᴵ;

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧﾞ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧﾞ:Lⁱᴵ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lⁱᴵ/ﾞᴵ;->ᵎﹶ()Lﹳⁱ/ﹳٴ;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧﾞ:Lⁱᴵ/ﾞᴵ;

    invoke-interface {v0}, Lⁱᴵ/ﾞᴵ;->ﾞᴵ()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xfa1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "createFfmpegVideoDecoder"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :goto_0
    iget-object v3, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0, v2, v3, v0, v1}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :goto_1
    const-string v3, "DecoderVideoRenderer"

    const-string v4, "Video codec error"

    invoke-static {v3, v4, v2}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـˏ:Lـʾ/ᵔﹳ;

    iget-object v4, v3, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    if-eqz v4, :cond_1

    new-instance v5, Lﾞˏ/ᴵˊ;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v2, v6}, Lﾞˏ/ᴵˊ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v3, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0, v2, v3, v0, v1}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final ʽﹳ()V
    .locals 8

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    iget v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˈˏ:I

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـﹶ:J

    sub-long v2, v0, v2

    iget v4, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˈˏ:I

    iget-object v5, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـˏ:Lـʾ/ᵔﹳ;

    iget-object v6, v5, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    if-eqz v6, :cond_0

    new-instance v7, Lﾞˏ/ᴵˊ;

    invoke-direct {v7, v5, v4, v2, v3}, Lﾞˏ/ᴵˊ;-><init>(Lـʾ/ᵔﹳ;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˈˏ:I

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـﹶ:J

    :cond_1
    return-void
.end method

.method public final ʾˋ(Lʽⁱ/ﹳᐧ;)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1
.end method

.method public final ʾᵎ(JJ)V
    .locals 2

    .prologue
    iget-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʻᵎ:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    if-nez p1, :cond_3

    iget-object p1, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {p1}, Lـʾ/ᵔﹳ;->ﾞᴵ()V

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˈⁱ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {p2}, Lﹳⁱ/ˑﹳ;->ˏי()V

    const/4 p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_1

    iget-object p2, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lʽⁱ/ﹳᐧ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lⁱᴵ/ﾞᴵ;

    iget-object p3, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧᴵ:Lⁱᴵ/ﾞᴵ;

    invoke-static {p3, p1}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧᴵ:Lⁱᴵ/ﾞᴵ;

    iput-object p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʽʽ()V

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـˏ:Lـʾ/ᵔﹳ;

    iget-object p3, p2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    if-eqz p3, :cond_3

    new-instance p4, Lᐧᵢ/ˉʿ;

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-direct {p4, p2, p1, v1, v0}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lʽⁱ/ﹳᐧ;Lⁱי/ᵎﹶ;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const/4 p1, -0x4

    if-ne p3, p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result p1

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʻᵎ:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʽʽ()V

    return-void
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "ExperimentalFfmpegVideoRenderer"

    return-object v0
.end method

.method public final ˈ()V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    :cond_0
    return-void
.end method

.method public final ˉʿ()Z
    .locals 9

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ᵔʾ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    iget v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˉـ:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    return v1

    :cond_2
    :goto_0
    iget-wide v4, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    return v4
.end method

.method public final ˉˆ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـˏ:Lـʾ/ᵔﹳ;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˊᵔ:Lʽⁱ/ˏᵢ;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    :try_start_0
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧᴵ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v2, v1}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧᴵ:Lⁱᴵ/ﾞᴵ;

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧﾞ:Lⁱᴵ/ﾞᴵ;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᐧﾞ:Lⁱᴵ/ﾞᴵ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ﹶᐧ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v1}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ﹶᐧ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v2}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    throw v1
.end method

.method public final ˏי()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˈˏ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـﹶ:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public final ᵔﹳ(ZJ)V
    .locals 4

    .prologue
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʻᵎ:Z

    const/4 p2, 0x1

    iget p3, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʼˈ:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v2

    move-wide p2, p1

    :cond_0
    iput-wide p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    goto :goto_0

    :cond_1
    iput-wide p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    :goto_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ﹳـ:Lʻˆ/ﾞᴵ;

    invoke-virtual {p1}, Lʻˆ/ﾞᴵ;->ⁱˊ()V

    return-void
.end method

.method public final ⁱˊ(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    instance-of p1, p2, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroid/view/Surface;

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʿᵢ:Landroid/view/Surface;

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᵎᵔ:Lﾞˏ/ˏי;

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˉـ:I

    goto :goto_0

    :cond_0
    instance-of p1, p2, Lﾞˏ/ˏי;

    if-eqz p1, :cond_1

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʿᵢ:Landroid/view/Surface;

    move-object p1, p2

    check-cast p1, Lﾞˏ/ˏי;

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᵎᵔ:Lﾞˏ/ˏי;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˉـ:I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʿᵢ:Landroid/view/Surface;

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᵎᵔ:Lﾞˏ/ˏי;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˉـ:I

    move-object p2, v1

    :goto_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʿ:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ـˏ:Lـʾ/ᵔﹳ;

    if-eq p1, p2, :cond_5

    iput-object p2, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʿ:Ljava/lang/Object;

    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˊᵔ:Lʽⁱ/ˏᵢ;

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Lـʾ/ᵔﹳ;->ʾˋ(Lʽⁱ/ˏᵢ;)V

    :cond_2
    iget p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    iget p1, p0, Lⁱי/ˑﹳ;->ˉٴ:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    const-wide/16 p1, 0x0

    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʼˈ:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v0

    goto :goto_1

    :cond_3
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ᴵʼ:J

    return-void

    :cond_4
    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˊᵔ:Lʽⁱ/ˏᵢ;

    iget p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    return-void

    :cond_5
    if-eqz p2, :cond_8

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˊᵔ:Lʽⁱ/ˏᵢ;

    if-eqz p1, :cond_6

    invoke-virtual {v2, p1}, Lـʾ/ᵔﹳ;->ʾˋ(Lʽⁱ/ˏᵢ;)V

    :cond_6
    iget p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ˏᵢ:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʿ:Ljava/lang/Object;

    if-eqz p1, :cond_8

    iget-object p2, v2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Landroid/os/Handler;

    if-eqz p2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v3, Lﹳˎ/ʼᐧ;

    invoke-direct {v3, v2, p1, v0, v1}, Lﹳˎ/ʼᐧ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;J)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    check-cast p2, Lﾞˏ/ʽﹳ;

    :cond_8
    return-void
.end method

.method public final ﾞʻ()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ﹳٴ;->ʻᵎ:Z

    return v0
.end method
