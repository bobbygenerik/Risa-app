.class public final Landroidx/media3/decoder/ffmpeg/ʽ;
.super Lⁱי/ˑﹳ;
.source "SourceFile"

# interfaces
.implements Lⁱי/ᵎⁱ;


# instance fields
.field public ʻˋ:Z

.field public ʻᵎ:I

.field public final ʼˈ:Lـʾ/ᵔﹳ;

.field public ʽᵔ:Z

.field public ʾˊ:J

.field public ʿ:I

.field public ʿᵢ:Z

.field public ˈˏ:J

.field public ˈⁱ:Lⁱי/ﾞᴵ;

.field public ˉـ:I

.field public ˊᵔ:Z

.field public ˏᵢ:Lⁱᴵ/ﾞᴵ;

.field public ˑʼ:J

.field public י:J

.field public final ـˏ:Lﹶ/ˆʾ;

.field public ـᵎ:Z

.field public ـﹶ:Z

.field public final ٴﹳ:[J

.field public ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

.field public ᐧﹶ:J

.field public ᐧﾞ:Lﹳⁱ/ˑﹳ;

.field public ᴵʼ:Lⁱᴵ/ﾞᴵ;

.field public ᴵˑ:Lʽⁱ/ﹳᐧ;

.field public ᵎʻ:I

.field public ᵎᵔ:Lﹳⁱ/ˈ;

.field public final ﹳـ:Lﹳⁱ/ˑﹳ;

.field public ﹳﹳ:Z

.field public ﹶᐧ:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lﹶ/ᵔᵢ;Lﹶ/ˆʾ;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lⁱי/ˑﹳ;-><init>(I)V

    new-instance v1, Lـʾ/ᵔﹳ;

    invoke-direct {v1, p1, p2}, Lـʾ/ᵔﹳ;-><init>(Landroid/os/Handler;Lﹶ/ᵔᵢ;)V

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iput-object p3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    new-instance p1, Lᐧﹳ/ʽ;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    invoke-interface {p3, p1}, Lﹶ/ˆʾ;->ﾞʻ(Lᐧﹳ/ʽ;)V

    new-instance p1, Lﹳⁱ/ˑﹳ;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lﹳⁱ/ˑﹳ;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳـ:Lﹳⁱ/ˑﹳ;

    iput p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    iput-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـﹶ:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, p2}, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎⁱ(J)V

    const/16 p3, 0xa

    new-array p3, p3, [J

    iput-object p3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ٴﹳ:[J

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﹶ:J

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J

    return-void
.end method


# virtual methods
.method public final ʻٴ([Lʽⁱ/ﹳᐧ;JJLﹳᵢ/ᵢˏ;)V
    .locals 2

    .prologue
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʿᵢ:Z

    iget-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˑʼ:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0, p4, p5}, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎⁱ(J)V

    return-void

    :cond_0
    iget p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎʻ:I

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ٴﹳ:[J

    array-length p3, p2

    if-ne p1, p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Too many stream changes, so dropping offset: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎʻ:I

    add-int/lit8 p3, p3, -0x1

    aget-wide v0, p2, p3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DecoderAudioRenderer"

    invoke-static {p3, p1}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎʻ:I

    :goto_0
    iget p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎʻ:I

    add-int/lit8 p1, p1, -0x1

    aput-wide p4, p2, p1

    return-void
.end method

.method public final ʼˎ()Lⁱי/ᵎⁱ;
    .locals 0

    return-object p0
.end method

.method public final ʼᐧ(ZZ)V
    .locals 3

    .prologue
    new-instance p1, Lⁱי/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v0, p2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lﹶ/ᵎﹶ;

    const/4 v2, 0x5

    invoke-direct {v1, p2, p1, v2}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lⁱי/ˑﹳ;->ˈٴ:Lⁱי/ᐧᴵ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Lⁱי/ᐧᴵ;->ⁱˊ:Z

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lﹶ/ˆʾ;->ﾞᴵ()V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lﹶ/ˆʾ;->ʼᐧ()V

    :goto_0
    iget-object p1, p0, Lⁱי/ˑﹳ;->ˊʻ:Lʻʿ/יـ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Lﹶ/ˆʾ;->ᵔﹳ(Lʻʿ/יـ;)V

    iget-object p1, p0, Lⁱי/ˑﹳ;->ٴᵢ:Lᐧˎ/ˏי;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Lﹶ/ˆʾ;->ﹳᐧ(Lᐧˎ/ˏי;)V

    return-void
.end method

.method public final ʽ(Lʽⁱ/ᵎⁱ;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0, p1}, Lﹶ/ˆʾ;->ʽ(Lʽⁱ/ᵎⁱ;)V

    return-void
.end method

.method public final ʽʽ(Lʽⁱ/ﹳᐧ;)Lﹳⁱ/ˈ;
    .locals 8

    .prologue
    const-string v0, "createFfmpegAudioDecoder"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p1, Lʽⁱ/ﹳᐧ;->ˉˆ:I

    iget v1, p1, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iget v2, p1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1680

    :goto_0
    new-instance v3, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    const/4 v4, 0x2

    invoke-static {v4, v2, v1}, Lᐧˎ/ʼʼ;->ᴵᵔ(III)Lʽⁱ/ﹳᐧ;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v6, v5}, Lﹶ/ˆʾ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    invoke-static {v5, v2, v1}, Lᐧˎ/ʼʼ;->ᴵᵔ(III)Lʽⁱ/ﹳᐧ;

    move-result-object v1

    invoke-interface {v6, v1}, Lﹶ/ˆʾ;->יـ(Lʽⁱ/ﹳᐧ;)I

    move-result v1

    if-eq v1, v4, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "audio/ac3"

    iget-object v2, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v7, v1

    :goto_1
    invoke-direct {v3, v0, p1, v7}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;-><init>(ILʽⁱ/ﹳᐧ;Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v3
.end method

.method public final ʽﹳ()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ٴʼ()V

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0}, Lﹶ/ˆʾ;->ˈ()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʽᵔ:Z

    return-void
.end method

.method public final ʾˋ(Lʽⁱ/ﹳᐧ;)I
    .locals 7

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget v1, p1, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iget v2, p1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v3, v3, v3, v3}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->ˈ()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    invoke-static {v0}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->ˑﹳ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v5, v2, v1}, Lᐧˎ/ʼʼ;->ᴵᵔ(III)Lʽⁱ/ﹳᐧ;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v4, v0}, Lﹶ/ˆʾ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    const/4 v6, 0x4

    if-nez v0, :cond_2

    invoke-static {v6, v2, v1}, Lᐧˎ/ʼʼ;->ᴵᵔ(III)Lʽⁱ/ﹳᐧ;

    move-result-object v0

    invoke-interface {v4, v0}, Lﹶ/ˆʾ;->ﹳٴ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p1, Lʽⁱ/ﹳᐧ;->ˈʿ:I

    if-eqz p1, :cond_5

    move v6, v5

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v3

    :cond_5
    :goto_2
    if-gt v6, v5, :cond_6

    invoke-static {v6, v3, v3, v3}, Lᐧـ/ˈ;->ʽ(IIII)I

    move-result p1

    return p1

    :cond_6
    or-int/lit16 p1, v6, 0xa8

    return p1
.end method

.method public final ʾᵎ(JJ)V
    .locals 2

    .prologue
    iget-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻˋ:Z

    const/16 p2, 0x138a

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {p1}, Lﹶ/ˆʾ;->ᵔᵢ()V

    iget-wide p3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    iput-wide p3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p3, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ʽʽ:Lʽⁱ/ﹳᐧ;

    iget-boolean p4, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ᴵˊ:Z

    invoke-virtual {p0, p1, p3, p4, p2}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    const/4 p3, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {p1}, Lـʾ/ᵔﹳ;->ﾞᴵ()V

    iget-object p4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳـ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {p4}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object p4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳـ:Lﹳⁱ/ˑﹳ;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p4, v0}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result p4

    const/4 v0, -0x5

    if-ne p4, v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/ffmpeg/ʽ;->ٴᵢ(Lـʾ/ᵔﹳ;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne p4, p1, :cond_6

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳـ:Lﹳⁱ/ˑﹳ;

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result p1

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳﹳ:Z

    :try_start_1
    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻˋ:Z

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {p1}, Lﹶ/ˆʾ;->ᵔᵢ()V

    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p3, p2}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊʻ()V

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    if-eqz p1, :cond_6

    const/16 p1, 0x1389

    :try_start_2
    const-string p4, "drainAndFeed"

    invoke-static {p4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈٴ()Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵᵔ()Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    monitor-enter p1

    monitor-exit p1

    return-void

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p2

    goto :goto_4

    :catch_4
    move-exception p2

    goto :goto_5

    :catch_5
    move-exception p1

    goto :goto_6

    :goto_3
    iget-object p3, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ʽʽ:Lʽⁱ/ﹳᐧ;

    iget-boolean p4, p1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ᴵˊ:Z

    invoke-virtual {p0, p1, p3, p4, p2}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_4
    iget-object p3, p2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ʽʽ:Lʽⁱ/ﹳᐧ;

    iget-boolean p4, p2, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ᴵˊ:Z

    invoke-virtual {p0, p2, p3, p4, p1}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_5
    iget-object p4, p2, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;->ʾˋ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0, p2, p4, p3, p1}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_6
    const-string p2, "DecoderAudioRenderer"

    const-string p4, "Audio codec error"

    invoke-static {p2, p4, p1}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object p4, p2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p4, Landroid/os/Handler;

    if-eqz p4, :cond_5

    new-instance v0, Lﹶ/ᵎﹶ;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    const/16 p4, 0xfa3

    invoke-virtual {p0, p1, p2, p3, p4}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    return-void
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    const-string v0, "FfmpegAudioRenderer"

    return-object v0
.end method

.method public final ˈٴ()Z
    .locals 8

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    check-cast v0, Lﹳⁱ/ᵎﹶ;

    invoke-virtual {v0}, Lﹳⁱ/ᵎﹶ;->ﾞʻ()Lﹳⁱ/ﾞᴵ;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, v0, Lﹳⁱ/ﾞᴵ;->ˈٴ:I

    if-lez v0, :cond_1

    iget-object v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    iget v4, v3, Lⁱי/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v4, v0

    iput v4, v3, Lⁱי/ﾞᴵ;->ﾞᴵ:I

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0}, Lﹶ/ˆʾ;->ـˆ()V

    :cond_1
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v3}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ٴﹳ:[J

    iget-object v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v3}, Lﹶ/ˆʾ;->ـˆ()V

    iget v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎʻ:I

    if-eqz v3, :cond_2

    aget-wide v3, v0, v2

    invoke-virtual {p0, v3, v4}, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎⁱ(J)V

    iget v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎʻ:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎʻ:I

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˉٴ()V

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊʻ()V

    iput-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـﹶ:Z

    return v2

    :cond_3
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ʽﹳ()V

    iput-object v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻˋ:Z

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0}, Lﹶ/ˆʾ;->ᵔᵢ()V

    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ʽʽ:Lʽⁱ/ﹳᐧ;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ᴵˊ:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_4
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J

    iget-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـﹶ:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lʽⁱ/ᵔﹳ;

    invoke-direct {v4}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v5, "audio/raw"

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget v5, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʽﹳ:I

    iput v5, v4, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget v5, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʻٴ:I

    iput v5, v4, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iget v0, v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ᵔﹳ:I

    iput v0, v4, Lʽⁱ/ᵔﹳ;->ٴᵢ:I

    new-instance v0, Lʽⁱ/ﹳᐧ;

    invoke-direct {v0, v4}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    invoke-virtual {v0}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v0

    iget v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˉـ:I

    iput v4, v0, Lʽⁱ/ᵔﹳ;->ˉٴ:I

    iget v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʿ:I

    iput v4, v0, Lʽⁱ/ᵔﹳ;->ᵎⁱ:I

    iget-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iget-object v5, v4, Lʽⁱ/ﹳᐧ;->ﾞʻ:Lʽⁱ/ٴᵢ;

    iput-object v5, v0, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    iget-object v5, v4, Lʽⁱ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v5, v0, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget-object v5, v4, Lʽⁱ/ﹳᐧ;->ⁱˊ:Ljava/lang/String;

    iput-object v5, v0, Lʽⁱ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    iget-object v4, v4, Lʽⁱ/ﹳᐧ;->ʽ:Lʼʻ/ᵎⁱ;

    invoke-static {v4}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v4

    iput-object v4, v0, Lʽⁱ/ᵔﹳ;->ʽ:Lʼʻ/ᵎⁱ;

    iget-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iget-object v5, v4, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    iput-object v5, v0, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v5, v4, Lʽⁱ/ﹳᐧ;->ˑﹳ:I

    iput v5, v0, Lʽⁱ/ᵔﹳ;->ˑﹳ:I

    iget v4, v4, Lʽⁱ/ﹳᐧ;->ﾞᴵ:I

    iput v4, v0, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    new-instance v4, Lʽⁱ/ﹳᐧ;

    invoke-direct {v4, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0, v4, v3}, Lﹶ/ˆʾ;->ʻٴ(Lʽⁱ/ﹳᐧ;[I)V

    iput-boolean v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـﹶ:Z

    :cond_5
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    iget-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget-object v5, v4, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ٴᵢ:Ljava/nio/ByteBuffer;

    iget-wide v6, v4, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    invoke-interface {v0, v5, v6, v7, v1}, Lﹶ/ˆʾ;->ᵔʾ(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    iget v2, v0, Lⁱי/ﾞᴵ;->ˑﹳ:I

    add-int/2addr v2, v1

    iput v2, v0, Lⁱי/ﾞᴵ;->ˑﹳ:I

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ʽﹳ()V

    iput-object v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    return v1

    :cond_6
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget-wide v0, v0, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J

    return v2
.end method

.method public final ˉʿ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0}, Lﹶ/ˆʾ;->ʼˎ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ᵔʾ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ˉˆ()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـﹶ:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v2, v3}, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎⁱ(J)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـᵎ:Z

    iput-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J

    :try_start_0
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵʼ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v2, v1}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵʼ:Lⁱᴵ/ﾞᴵ;

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˉٴ()V

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v1}, Lﹶ/ˆʾ;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v1}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    invoke-virtual {v0, v2}, Lـʾ/ᵔﹳ;->ᵔᵢ(Lⁱי/ﾞᴵ;)V

    throw v1
.end method

.method public final ˉٴ()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    iput-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊᵔ:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﹶ:J

    iput-wide v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    iget v3, v2, Lⁱי/ﾞᴵ;->ⁱˊ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lⁱי/ﾞᴵ;->ⁱˊ:I

    check-cast v1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v1}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ﹳٴ()V

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    check-cast v1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v1}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v3, v2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_0

    new-instance v4, Lﹶ/ᵎﹶ;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v1, v5}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    :cond_1
    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˏᵢ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˏᵢ:Lⁱᴵ/ﾞᴵ;

    return-void
.end method

.method public final ˊʻ()V
    .locals 10

    .prologue
    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵʼ:Lⁱᴵ/ﾞᴵ;

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˏᵢ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v2, v0}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˏᵢ:Lⁱᴵ/ﾞᴵ;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lⁱᴵ/ﾞᴵ;->ᵎﹶ()Lﹳⁱ/ﹳٴ;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˏᵢ:Lⁱᴵ/ﾞᴵ;

    invoke-interface {v0}, Lⁱᴵ/ﾞᴵ;->ﾞᴵ()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0xfa1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v0, "createAudioDecoder"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0, v0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ʽʽ(Lʽⁱ/ﹳᐧ;)Lﹳⁱ/ˈ;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    iget-wide v4, p0, Lⁱי/ˑﹳ;->ᵔי:J

    check-cast v0, Lﹳⁱ/ᵎﹶ;

    invoke-virtual {v0, v4, v5}, Lﹳⁱ/ᵎﹶ;->ʽ(J)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    move-wide v5, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v0}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    sub-long v5, v3, v5

    iget-object v0, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/Handler;

    if-eqz v9, :cond_3

    new-instance v0, Lﹶ/ᵎﹶ;

    invoke-direct/range {v0 .. v6}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/String;JJ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    iget v2, v0, Lⁱי/ﾞᴵ;->ﹳٴ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lⁱי/ﾞᴵ;->ﹳٴ:I
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0, v0, v1, v7, v8}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :goto_3
    const-string v2, "DecoderAudioRenderer"

    const-string v3, "Audio codec error"

    invoke-static {v2, v3, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_4

    new-instance v3, Lﹶ/ᵎﹶ;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lﹶ/ᵎﹶ;-><init>(Lـʾ/ᵔﹳ;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {p0, v0, v1, v7, v8}, Lⁱי/ˑﹳ;->ﹳٴ(Ljava/lang/Throwable;Lʽⁱ/ﹳᐧ;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final ˏי()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0}, Lﹶ/ˆʾ;->ˉʿ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʽᵔ:Z

    return-void
.end method

.method public final ˑﹳ()Lʽⁱ/ᵎⁱ;
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0}, Lﹶ/ˆʾ;->ˑﹳ()Lʽⁱ/ᵎⁱ;

    move-result-object v0

    return-object v0
.end method

.method public final ٴʼ()V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ﾞʻ()Z

    move-result v1

    invoke-interface {v0, v1}, Lﹶ/ˆʾ;->ˉˆ(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹶᐧ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈˏ:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈˏ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹶᐧ:Z

    :cond_1
    return-void
.end method

.method public final ٴᵢ(Lـʾ/ᵔﹳ;)V
    .locals 8

    .prologue
    iget-object v0, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lʽⁱ/ﹳᐧ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lⁱᴵ/ﾞᴵ;

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵʼ:Lⁱᴵ/ﾞᴵ;

    invoke-static {v0, p1}, Lᐧـ/ˈ;->ʽﹳ(Lⁱᴵ/ﾞᴵ;Lⁱᴵ/ﾞᴵ;)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵʼ:Lⁱᴵ/ﾞᴵ;

    iget-object v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iput-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iget v0, v4, Lʽⁱ/ﹳᐧ;->ᵎⁱ:I

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˉـ:I

    iget v0, v4, Lʽⁱ/ﹳᐧ;->ٴʼ:I

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʿ:I

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    iget-object v7, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʼˈ:Lـʾ/ᵔﹳ;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊʻ()V

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v7, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_4

    new-instance v1, Lᐧᵢ/ˉʿ;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, v7, p1, v3, v2}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lʽⁱ/ﹳᐧ;Lⁱי/ᵎﹶ;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˏᵢ:Lⁱᴵ/ﾞᴵ;

    if-eq p1, v1, :cond_1

    new-instance v1, Lⁱי/ᵎﹶ;

    check-cast v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v0}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x80

    invoke-direct/range {v1 .. v6}, Lⁱי/ᵎﹶ;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;II)V

    goto :goto_0

    :cond_1
    check-cast v0, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {v0}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->ʼᐧ()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lⁱי/ᵎﹶ;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lⁱי/ᵎﹶ;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;II)V

    :goto_0
    iget p1, v1, Lⁱי/ᵎﹶ;->ˈ:I

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊᵔ:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˉٴ()V

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊʻ()V

    iput-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـﹶ:Z

    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iget-object v0, v7, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_4

    new-instance v2, Lᐧᵢ/ˉʿ;

    const/16 v3, 0x9

    invoke-direct {v2, v7, p1, v1, v3}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;Lʽⁱ/ﹳᐧ;Lⁱי/ᵎﹶ;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final ᴵˊ()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final ᴵᵔ()Z
    .locals 7

    .prologue
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    iget-boolean v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳﹳ:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    if-nez v2, :cond_1

    check-cast v0, Lﹳⁱ/ᵎﹶ;

    invoke-virtual {v0}, Lﹳⁱ/ᵎﹶ;->ﾞᴵ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳⁱ/ˑﹳ;

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    iput v2, v0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    check-cast v2, Lﹳⁱ/ᵎﹶ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lﹳⁱ/ᵎﹶ;->ᵔʾ(Lﹳⁱ/ˑﹳ;)V

    iput-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    iput v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    return v1

    :cond_2
    iget-object v0, p0, Lⁱי/ˑﹳ;->ʽʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {v0}, Lـʾ/ᵔﹳ;->ﾞᴵ()V

    iget-object v3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {p0, v0, v3, v1}, Lⁱי/ˑﹳ;->ـˆ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result v3

    const/4 v6, -0x5

    if-eq v3, v6, :cond_9

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ٴﹶ()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﹶ:J

    iput-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    return v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {v0, v2}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳﹳ:Z

    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﹶ:J

    iput-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    check-cast v0, Lﹳⁱ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lﹳⁱ/ᵎﹶ;->ᵔʾ(Lﹳⁱ/ˑﹳ;)V

    iput-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    return v1

    :cond_5
    iget-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʿᵢ:Z

    if-nez v0, :cond_6

    iput-boolean v5, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʿᵢ:Z

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lʻᴵ/ﾞᴵ;->ⁱˊ(I)V

    :cond_6
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    iget-wide v0, v0, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﹶ:J

    invoke-virtual {p0}, Lⁱי/ˑﹳ;->ٴﹶ()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﹶ:J

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->י:J

    :cond_8
    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    invoke-virtual {v0}, Lﹳⁱ/ˑﹳ;->ـˆ()V

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᴵˑ:Lʽⁱ/ﹳᐧ;

    iput-object v1, v0, Lﹳⁱ/ˑﹳ;->ʽʽ:Lʽⁱ/ﹳᐧ;

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    check-cast v1, Lﹳⁱ/ᵎﹶ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lﹳⁱ/ᵎﹶ;->ᵔʾ(Lﹳⁱ/ˑﹳ;)V

    iput-boolean v5, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊᵔ:Z

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈⁱ:Lⁱי/ﾞᴵ;

    iget v1, v0, Lⁱי/ﾞᴵ;->ʽ:I

    add-int/2addr v1, v5

    iput v1, v0, Lⁱי/ﾞᴵ;->ʽ:I

    iput-object v4, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    return v5

    :cond_9
    invoke-virtual {p0, v0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ٴᵢ(Lـʾ/ᵔﹳ;)V

    return v5

    :cond_a
    :goto_0
    return v1
.end method

.method public final ᵎⁱ(J)V
    .locals 2

    .prologue
    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˑʼ:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final ᵎﹶ()J
    .locals 2

    .prologue
    iget v0, p0, Lⁱי/ˑﹳ;->ˉٴ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ٴʼ()V

    :cond_0
    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈˏ:J

    return-wide v0
.end method

.method public final ᵔᵢ(JJ)J
    .locals 8

    .prologue
    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʽᵔ:Z

    const-wide/16 v4, 0x2710

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    iget-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻˋ:Z

    if-eqz p1, :cond_5

    :cond_1
    const-wide/32 p1, 0xf4240

    return-wide p1

    :cond_2
    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v1}, Lﹶ/ˆʾ;->ٴﹶ()J

    move-result-wide v6

    if-eqz v0, :cond_5

    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J

    sub-long/2addr v2, p1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-float p1, p1

    invoke-interface {v1}, Lﹶ/ˆʾ;->ˑﹳ()Lʽⁱ/ᵎⁱ;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {v1}, Lﹶ/ˆʾ;->ˑﹳ()Lʽⁱ/ᵎⁱ;

    move-result-object p2

    iget p2, p2, Lʽⁱ/ᵎⁱ;->ﹳٴ:F

    goto :goto_1

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    iget-object v0, p0, Lⁱי/ˑﹳ;->ٴᵢ:Lᐧˎ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_5
    :goto_2
    return-wide v4
.end method

.method public final ᵔﹳ(ZJ)V
    .locals 2

    .prologue
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {p1}, Lﹶ/ˆʾ;->flush()V

    iput-wide p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˈˏ:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʾˊ:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـᵎ:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹶᐧ:Z

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ﹳﹳ:Z

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻˋ:Z

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    if-eqz p2, :cond_2

    iget p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻᵎ:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˉٴ()V

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊʻ()V

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧﾞ:Lﹳⁱ/ˑﹳ;

    iget-object p3, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->ʽﹳ()V

    iput-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᐧᴵ:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    :cond_1
    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ᵎᵔ:Lﹳⁱ/ˈ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lﹳⁱ/ᵎﹶ;

    invoke-virtual {p2}, Lﹳⁱ/ᵎﹶ;->flush()V

    iget-wide v0, p0, Lⁱי/ˑﹳ;->ᵔי:J

    invoke-virtual {p2, v0, v1}, Lﹳⁱ/ᵎﹶ;->ʽ(J)V

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ˊᵔ:Z

    :cond_2
    return-void
.end method

.method public final ⁱˊ(ILjava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x2

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lﹶ/ˆʾ;->ˆʾ(I)V

    return-void

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v1, p1}, Lﹶ/ˆʾ;->ʽﹳ(Z)V

    return-void

    :cond_2
    check-cast p2, Landroid/media/AudioDeviceInfo;

    invoke-interface {v1, p2}, Lﹶ/ˆʾ;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    return-void

    :cond_3
    check-cast p2, Lʽⁱ/ﾞᴵ;

    invoke-interface {v1, p2}, Lﹶ/ˆʾ;->ˏי(Lʽⁱ/ﾞᴵ;)V

    return-void

    :cond_4
    check-cast p2, Lʽⁱ/ˑﹳ;

    invoke-interface {v1, p2}, Lﹶ/ˆʾ;->ᵎﹶ(Lʽⁱ/ˑﹳ;)V

    return-void

    :cond_5
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v1, p1}, Lﹶ/ˆʾ;->ʾᵎ(F)V

    return-void
.end method

.method public final ﾞʻ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ʻˋ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـˏ:Lﹶ/ˆʾ;

    invoke-interface {v0}, Lﹶ/ˆʾ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞᴵ()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـᵎ:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/decoder/ffmpeg/ʽ;->ـᵎ:Z

    return v0
.end method
