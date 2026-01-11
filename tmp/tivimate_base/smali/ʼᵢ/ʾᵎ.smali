.class public final Lʼᵢ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵢ/ﾞʻ;


# instance fields
.field public final ⁱˊ:Lʼᵢ/ˆʾ;

.field public final ﹳٴ:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Lʼᵢ/ˆʾ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    iput-object p2, p0, Lʼᵢ/ʾᵎ;->ⁱˊ:Lʼᵢ/ˆʾ;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lʼᵢ/ˆʾ;->ﹳٴ(Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public final ʼˎ()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final ʼᐧ(Lﾞˏ/ʼˎ;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lʼᵢ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lʼᵢ/ﹳٴ;-><init>(Lʼᵢ/ﾞʻ;Lﾞˏ/ʼˎ;I)V

    iget-object p1, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final ʽ(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public final ˆʾ()V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->detachOutputSurface()V

    return-void
.end method

.method public final ˈ(IIJI)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public final ˉʿ(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ()I
    .locals 3

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    return v0
.end method

.method public final ˑﹳ(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 3

    .prologue
    :cond_0
    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    return v0
.end method

.method public final ٴﹶ(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic ᵎﹶ(Lﹳי/ʽ;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ᵔʾ(IJ)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final ᵔᵢ(I)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final ⁱˊ(ILﹳⁱ/ʽ;JI)V
    .locals 7

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    iget-object v3, p2, Lﹳⁱ/ʽ;->ʼˎ:Landroid/media/MediaCodec$CryptoInfo;

    const/4 v2, 0x0

    move v1, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ⁱˊ:Lʼᵢ/ˆʾ;

    iget-object v1, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    const/16 v2, 0x23

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_0

    const/16 v4, 0x21

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    :goto_0
    if-lt v3, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lʼᵢ/ˆʾ;->ʽ(Landroid/media/MediaCodec;)V

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    return-void

    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lʼᵢ/ˆʾ;->ʽ(Landroid/media/MediaCodec;)V

    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    throw v3
.end method

.method public final ﾞʻ(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final ﾞᴵ(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lʼᵢ/ʾᵎ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method
