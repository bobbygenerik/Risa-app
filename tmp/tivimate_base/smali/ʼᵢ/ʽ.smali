.class public final Lʼᵢ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵢ/ﾞʻ;


# instance fields
.field public final ʽ:Lʼᵢ/ˉʿ;

.field public final ˈ:Lʼᵢ/ˆʾ;

.field public ˑﹳ:Z

.field public final ⁱˊ:Lʼᵢ/ﾞᴵ;

.field public final ﹳٴ:Landroid/media/MediaCodec;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lʼᵢ/ˉʿ;Lʼᵢ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    new-instance p1, Lʼᵢ/ﾞᴵ;

    invoke-direct {p1, p2}, Lʼᵢ/ﾞᴵ;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iput-object p3, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    iput-object p4, p0, Lʼᵢ/ʽ;->ˈ:Lʼᵢ/ˆʾ;

    const/4 p1, 0x0

    iput p1, p0, Lʼᵢ/ʽ;->ﾞᴵ:I

    return-void
.end method

.method public static ᵔﹳ(Lʼᵢ/ʽ;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 5

    .prologue
    iget-object v0, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iget-object v1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ⁱˊ:Landroid/os/HandlerThread;

    iget-object v3, v0, Lʼᵢ/ﾞᴵ;->ʽ:Landroid/os/Handler;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v3, v0, Lʼᵢ/ﾞᴵ;->ʽ:Landroid/os/Handler;

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    invoke-interface {p1}, Lʼᵢ/ˉʿ;->start()V

    const-string p1, "startCodec"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lʼᵢ/ʽ;->ˈ:Lʼᵢ/ˆʾ;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lʼᵢ/ˆʾ;->ﹳٴ(Landroid/media/MediaCodec;)V

    :cond_1
    iput v4, p0, Lʼᵢ/ʽ;->ﾞᴵ:I

    return-void
.end method

.method public static ﹳᐧ(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final flush()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    invoke-interface {v0}, Lʼᵢ/ˉʿ;->flush()V

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iget-object v1, v0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Lʼᵢ/ﾞᴵ;->ﾞʻ:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lʼᵢ/ﾞᴵ;->ﾞʻ:J

    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ʽ:Landroid/os/Handler;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    new-instance v3, Landroidx/lifecycle/ᵎⁱ;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ʼˎ()Landroid/media/MediaFormat;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iget-object v1, v0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lʼᵢ/ﾞᴵ;->ᵔᵢ:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ʼᐧ(Lﾞˏ/ʼˎ;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lʼᵢ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lʼᵢ/ﹳٴ;-><init>(Lʼᵢ/ﾞʻ;Lﾞˏ/ʼˎ;I)V

    iget-object p1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final ʽ(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    invoke-interface {v0, p1}, Lʼᵢ/ˉʿ;->ʽ(Landroid/os/Bundle;)V

    return-void
.end method

.method public final ˆʾ()V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->detachOutputSurface()V

    return-void
.end method

.method public final ˈ(IIJI)V
    .locals 6

    iget-object v0, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lʼᵢ/ˉʿ;->ˈ(IIJI)V

    return-void
.end method

.method public final ˉʿ(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ()I
    .locals 7

    .prologue
    iget-object v0, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    invoke-interface {v0}, Lʼᵢ/ˉʿ;->ﹳٴ()V

    iget-object v0, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iget-object v1, v0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ᵔʾ:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v2, :cond_8

    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ˆʾ:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_7

    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ٴﹶ:Landroid/media/MediaCodec$CryptoException;

    if-nez v2, :cond_6

    iget-wide v2, v0, Lʼᵢ/ﾞᴵ;->ﾞʻ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Lʼᵢ/ﾞᴵ;->ˉʿ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v0, v0, Lʼᵢ/ﾞᴵ;->ˈ:Lˋˋ/ʽʽ;

    iget v2, v0, Lˋˋ/ʽʽ;->ⁱˊ:I

    iget v6, v0, Lˋˋ/ʽʽ;->ʽ:I

    if-ne v2, v6, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    if-eq v2, v6, :cond_5

    iget-object v3, v0, Lˋˋ/ʽʽ;->ﹳٴ:[I

    aget v5, v3, v2

    add-int/2addr v2, v4

    iget v3, v0, Lˋˋ/ʽʽ;->ˈ:I

    and-int/2addr v2, v3

    iput v2, v0, Lˋˋ/ʽʽ;->ⁱˊ:I

    :goto_2
    monitor-exit v1

    return v5

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_6
    iput-object v3, v0, Lʼᵢ/ﾞᴵ;->ٴﹶ:Landroid/media/MediaCodec$CryptoException;

    throw v2

    :cond_7
    iput-object v3, v0, Lʼᵢ/ﾞᴵ;->ˆʾ:Landroid/media/MediaCodec$CodecException;

    throw v2

    :cond_8
    iput-object v3, v0, Lʼᵢ/ﾞᴵ;->ᵔʾ:Ljava/lang/IllegalStateException;

    throw v2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ˑﹳ(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 10

    .prologue
    iget-object v0, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    invoke-interface {v0}, Lʼᵢ/ˉʿ;->ﹳٴ()V

    iget-object v0, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iget-object v1, v0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ᵔʾ:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ˆʾ:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_9

    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ٴﹶ:Landroid/media/MediaCodec$CryptoException;

    if-nez v2, :cond_8

    iget-wide v2, v0, Lʼᵢ/ﾞᴵ;->ﾞʻ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Lʼᵢ/ﾞᴵ;->ˉʿ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ˑﹳ:Lˋˋ/ʽʽ;

    iget v6, v2, Lˋˋ/ʽʽ;->ⁱˊ:I

    iget v7, v2, Lˋˋ/ʽʽ;->ʽ:I

    if-ne v6, v7, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    monitor-exit v1

    return v5

    :cond_4
    if-eq v6, v7, :cond_7

    iget-object v3, v2, Lˋˋ/ʽʽ;->ﹳٴ:[I

    aget v3, v3, v6

    add-int/2addr v6, v4

    iget v4, v2, Lˋˋ/ʽʽ;->ˈ:I

    and-int/2addr v4, v6

    iput v4, v2, Lˋˋ/ʽʽ;->ⁱˊ:I

    if-ltz v3, :cond_5

    iget-object v2, v0, Lʼᵢ/ﾞᴵ;->ᵔᵢ:Landroid/media/MediaFormat;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, v0, Lʼᵢ/ﾞᴵ;->ﾞᴵ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_2

    :cond_5
    const/4 p1, -0x2

    if-ne v3, p1, :cond_6

    iget-object p1, v0, Lʼᵢ/ﾞᴵ;->ᵎﹶ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, v0, Lʼᵢ/ﾞᴵ;->ᵔᵢ:Landroid/media/MediaFormat;

    :cond_6
    :goto_2
    monitor-exit v1

    return v3

    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_8
    iput-object v3, v0, Lʼᵢ/ﾞᴵ;->ٴﹶ:Landroid/media/MediaCodec$CryptoException;

    throw v2

    :cond_9
    iput-object v3, v0, Lʼᵢ/ﾞᴵ;->ˆʾ:Landroid/media/MediaCodec$CodecException;

    throw v2

    :cond_a
    iput-object v3, v0, Lʼᵢ/ﾞᴵ;->ᵔʾ:Ljava/lang/IllegalStateException;

    throw v2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ٴﹶ(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎﹶ(Lﹳי/ʽ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iget-object v1, v0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lʼᵢ/ﾞᴵ;->ˉˆ:Lﹳי/ʽ;

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ᵔʾ(IJ)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final ᵔᵢ(I)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final ⁱˊ(ILﹳⁱ/ʽ;JI)V
    .locals 6

    iget-object v0, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lʼᵢ/ˉʿ;->ⁱˊ(ILﹳⁱ/ʽ;JI)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 7

    .prologue
    const/16 v0, 0x21

    const/16 v1, 0x1e

    const/16 v2, 0x23

    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Lʼᵢ/ʽ;->ﾞᴵ:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lʼᵢ/ʽ;->ʽ:Lʼᵢ/ˉʿ;

    invoke-interface {v4}, Lʼᵢ/ˉʿ;->shutdown()V

    iget-object v4, p0, Lʼᵢ/ʽ;->ⁱˊ:Lʼᵢ/ﾞᴵ;

    iget-object v5, v4, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v3, v4, Lʼᵢ/ﾞᴵ;->ˉʿ:Z

    iget-object v6, v4, Lʼᵢ/ﾞᴵ;->ⁱˊ:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {v4}, Lʼᵢ/ﾞᴵ;->ﹳٴ()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Lʼᵢ/ʽ;->ﾞᴵ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v4, p0, Lʼᵢ/ʽ;->ˑﹳ:Z

    if-nez v4, :cond_4

    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    iget-object v0, p0, Lʼᵢ/ʽ;->ˈ:Lʼᵢ/ˆʾ;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lʼᵢ/ˆʾ;->ʽ(Landroid/media/MediaCodec;)V

    :cond_2
    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Lʼᵢ/ʽ;->ˑﹳ:Z

    return-void

    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lʼᵢ/ʽ;->ˈ:Lʼᵢ/ˆʾ;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Lʼᵢ/ˆʾ;->ʽ(Landroid/media/MediaCodec;)V

    :cond_3
    iget-object v1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Lʼᵢ/ʽ;->ˑﹳ:Z

    throw v0

    :cond_4
    return-void

    :goto_3
    iget-boolean v5, p0, Lʼᵢ/ʽ;->ˑﹳ:Z

    if-nez v5, :cond_8

    :try_start_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v1, :cond_5

    if-ge v5, v0, :cond_5

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    if-lt v5, v2, :cond_6

    iget-object v0, p0, Lʼᵢ/ʽ;->ˈ:Lʼᵢ/ˆʾ;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lʼᵢ/ˆʾ;->ʽ(Landroid/media/MediaCodec;)V

    :cond_6
    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Lʼᵢ/ʽ;->ˑﹳ:Z

    goto :goto_6

    :goto_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Lʼᵢ/ʽ;->ˈ:Lʼᵢ/ˆʾ;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Lʼᵢ/ˆʾ;->ʽ(Landroid/media/MediaCodec;)V

    :cond_7
    iget-object v1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Lʼᵢ/ʽ;->ˑﹳ:Z

    throw v0

    :cond_8
    :goto_6
    throw v4
.end method

.method public final ﾞʻ(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final ﾞᴵ(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lʼᵢ/ʽ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method
