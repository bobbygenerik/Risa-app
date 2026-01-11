.class public final Lʼᵢ/ﾞᴵ;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field public ʼˎ:Landroid/media/MediaFormat;

.field public ʽ:Landroid/os/Handler;

.field public ˆʾ:Landroid/media/MediaCodec$CodecException;

.field public final ˈ:Lˋˋ/ʽʽ;

.field public ˉʿ:Z

.field public ˉˆ:Lﹳי/ʽ;

.field public final ˑﹳ:Lˋˋ/ʽʽ;

.field public ٴﹶ:Landroid/media/MediaCodec$CryptoException;

.field public final ᵎﹶ:Ljava/util/ArrayDeque;

.field public ᵔʾ:Ljava/lang/IllegalStateException;

.field public ᵔᵢ:Landroid/media/MediaFormat;

.field public final ⁱˊ:Landroid/os/HandlerThread;

.field public final ﹳٴ:Ljava/lang/Object;

.field public ﾞʻ:J

.field public final ﾞᴵ:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    iput-object p1, p0, Lʼᵢ/ﾞᴵ;->ⁱˊ:Landroid/os/HandlerThread;

    new-instance p1, Lˋˋ/ʽʽ;

    invoke-direct {p1}, Lˋˋ/ʽʽ;-><init>()V

    iput-object p1, p0, Lʼᵢ/ﾞᴵ;->ˈ:Lˋˋ/ʽʽ;

    new-instance p1, Lˋˋ/ʽʽ;

    invoke-direct {p1}, Lˋˋ/ʽʽ;-><init>()V

    iput-object p1, p0, Lʼᵢ/ﾞᴵ;->ˑﹳ:Lˋˋ/ʽʽ;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lʼᵢ/ﾞᴵ;->ﾞᴵ:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lʼᵢ/ﾞᴵ;->ᵎﹶ:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    .prologue
    iget-object p1, p0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lʼᵢ/ﾞᴵ;->ٴﹶ:Landroid/media/MediaCodec$CryptoException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .prologue
    iget-object p1, p0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lʼᵢ/ﾞᴵ;->ˆʾ:Landroid/media/MediaCodec$CodecException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .prologue
    iget-object p1, p0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lʼᵢ/ﾞᴵ;->ˈ:Lˋˋ/ʽʽ;

    invoke-virtual {v0, p2}, Lˋˋ/ʽʽ;->ﹳٴ(I)V

    iget-object p2, p0, Lʼᵢ/ﾞᴵ;->ˉˆ:Lﹳי/ʽ;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lʼᵢ/ᵔﹳ;

    iget-object p2, p2, Lʼᵢ/ᵔﹳ;->ـﹶ:Lⁱי/ʾˋ;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lⁱי/ʾˋ;->ﹳٴ()V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lʼᵢ/ﾞᴵ;->ʼˎ:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lʼᵢ/ﾞᴵ;->ˑﹳ:Lˋˋ/ʽʽ;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lˋˋ/ʽʽ;->ﹳٴ(I)V

    iget-object v1, p0, Lʼᵢ/ﾞᴵ;->ᵎﹶ:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lʼᵢ/ﾞᴵ;->ʼˎ:Landroid/media/MediaFormat;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lʼᵢ/ﾞᴵ;->ˑﹳ:Lˋˋ/ʽʽ;

    invoke-virtual {v0, p2}, Lˋˋ/ʽʽ;->ﹳٴ(I)V

    iget-object p2, p0, Lʼᵢ/ﾞᴵ;->ﾞᴵ:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lʼᵢ/ﾞᴵ;->ˉˆ:Lﹳי/ʽ;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lʼᵢ/ᵔﹳ;

    iget-object p2, p2, Lʼᵢ/ᵔﹳ;->ـﹶ:Lⁱי/ʾˋ;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lⁱי/ʾˋ;->ﹳٴ()V

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    iget-object p1, p0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lʼᵢ/ﾞᴵ;->ˑﹳ:Lˋˋ/ʽʽ;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lˋˋ/ʽʽ;->ﹳٴ(I)V

    iget-object v0, p0, Lʼᵢ/ﾞᴵ;->ᵎﹶ:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    iput-object p2, p0, Lʼᵢ/ﾞᴵ;->ʼˎ:Landroid/media/MediaFormat;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final ⁱˊ(Ljava/lang/IllegalStateException;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lʼᵢ/ﾞᴵ;->ᵔʾ:Ljava/lang/IllegalStateException;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼᵢ/ﾞᴵ;->ᵎﹶ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    iput-object v1, p0, Lʼᵢ/ﾞᴵ;->ʼˎ:Landroid/media/MediaFormat;

    :cond_0
    iget-object v1, p0, Lʼᵢ/ﾞᴵ;->ˈ:Lˋˋ/ʽʽ;

    iget v2, v1, Lˋˋ/ʽʽ;->ⁱˊ:I

    iput v2, v1, Lˋˋ/ʽʽ;->ʽ:I

    iget-object v1, p0, Lʼᵢ/ﾞᴵ;->ˑﹳ:Lˋˋ/ʽʽ;

    iget v2, v1, Lˋˋ/ʽʽ;->ⁱˊ:I

    iput v2, v1, Lˋˋ/ʽʽ;->ʽ:I

    iget-object v1, p0, Lʼᵢ/ﾞᴵ;->ﾞᴵ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method
