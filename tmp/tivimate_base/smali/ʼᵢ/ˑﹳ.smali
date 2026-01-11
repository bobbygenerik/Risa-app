.class public final Lʼᵢ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵢ/ˉʿ;


# static fields
.field public static final ᵎﹶ:Ljava/util/ArrayDeque;

.field public static final ᵔᵢ:Ljava/lang/Object;


# instance fields
.field public ʽ:Lʻᐧ/ᵔﹳ;

.field public final ˈ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final ˑﹳ:Lᐧˎ/ˑﹳ;

.field public final ⁱˊ:Landroid/os/HandlerThread;

.field public final ﹳٴ:Landroid/media/MediaCodec;

.field public ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lʼᵢ/ˑﹳ;->ᵎﹶ:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʼᵢ/ˑﹳ;->ᵔᵢ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .locals 1

    new-instance v0, Lᐧˎ/ˑﹳ;

    invoke-direct {v0}, Lᐧˎ/ˑﹳ;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼᵢ/ˑﹳ;->ﹳٴ:Landroid/media/MediaCodec;

    iput-object p2, p0, Lʼᵢ/ˑﹳ;->ⁱˊ:Landroid/os/HandlerThread;

    iput-object v0, p0, Lʼᵢ/ˑﹳ;->ˑﹳ:Lᐧˎ/ˑﹳ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lʼᵢ/ˑﹳ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static ˑﹳ()Lʼᵢ/ˈ;
    .locals 2

    .prologue
    sget-object v0, Lʼᵢ/ˑﹳ;->ᵎﹶ:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lʼᵢ/ˈ;

    invoke-direct {v1}, Lʼᵢ/ˈ;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼᵢ/ˈ;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ﾞᴵ(Lʼᵢ/ˈ;)V
    .locals 1

    .prologue
    sget-object v0, Lʼᵢ/ˑﹳ;->ᵎﹶ:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final flush()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʼᵢ/ˑﹳ;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lʼᵢ/ˑﹳ;->ʽ:Lʻᐧ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lʼᵢ/ˑﹳ;->ˑﹳ:Lᐧˎ/ˑﹳ;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lᐧˎ/ˑﹳ;->ⁱˊ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    iget-object v1, p0, Lʼᵢ/ˑﹳ;->ʽ:Lʻᐧ/ᵔﹳ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0}, Lᐧˎ/ˑﹳ;->ﹳٴ()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public final shutdown()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʼᵢ/ˑﹳ;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʼᵢ/ˑﹳ;->flush()V

    iget-object v0, p0, Lʼᵢ/ˑﹳ;->ⁱˊ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lʼᵢ/ˑﹳ;->ﾞᴵ:Z

    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lʼᵢ/ˑﹳ;->ﾞᴵ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lʼᵢ/ˑﹳ;->ⁱˊ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lʻᐧ/ᵔﹳ;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lʻᐧ/ᵔﹳ;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v1, p0, Lʼᵢ/ˑﹳ;->ʽ:Lʻᐧ/ᵔﹳ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʼᵢ/ˑﹳ;->ﾞᴵ:Z

    :cond_0
    return-void
.end method

.method public final ʽ(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lʼᵢ/ˑﹳ;->ﹳٴ()V

    iget-object v0, p0, Lʼᵢ/ˑﹳ;->ʽ:Lʻᐧ/ᵔﹳ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final ˈ(IIJI)V
    .locals 1

    invoke-virtual {p0}, Lʼᵢ/ˑﹳ;->ﹳٴ()V

    invoke-static {}, Lʼᵢ/ˑﹳ;->ˑﹳ()Lʼᵢ/ˈ;

    move-result-object v0

    iput p1, v0, Lʼᵢ/ˈ;->ﹳٴ:I

    iput p2, v0, Lʼᵢ/ˈ;->ⁱˊ:I

    iput-wide p3, v0, Lʼᵢ/ˈ;->ˈ:J

    iput p5, v0, Lʼᵢ/ˈ;->ˑﹳ:I

    iget-object p1, p0, Lʼᵢ/ˑﹳ;->ʽ:Lʻᐧ/ᵔﹳ;

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final ⁱˊ(ILﹳⁱ/ʽ;JI)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʼᵢ/ˑﹳ;->ﹳٴ()V

    invoke-static {}, Lʼᵢ/ˑﹳ;->ˑﹳ()Lʼᵢ/ˈ;

    move-result-object v0

    iput p1, v0, Lʼᵢ/ˈ;->ﹳٴ:I

    const/4 p1, 0x0

    iput p1, v0, Lʼᵢ/ˈ;->ⁱˊ:I

    iput-wide p3, v0, Lʼᵢ/ˈ;->ˈ:J

    iput p5, v0, Lʼᵢ/ˈ;->ˑﹳ:I

    iget-object p3, v0, Lʼᵢ/ˈ;->ʽ:Landroid/media/MediaCodec$CryptoInfo;

    iget p4, p2, Lﹳⁱ/ʽ;->ﾞᴵ:I

    iput p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p4, p2, Lﹳⁱ/ʽ;->ˈ:[I

    iget-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_2

    array-length v1, p5

    array-length v2, p4

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v1, p4

    invoke-static {p4, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    :goto_0
    array-length p5, p4

    invoke-static {p4, p5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p5

    :goto_1
    iput-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p4, p2, Lﹳⁱ/ʽ;->ˑﹳ:[I

    iget-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p5, :cond_5

    array-length v1, p5

    array-length v2, p4

    if-ge v1, v2, :cond_4

    goto :goto_2

    :cond_4
    array-length v1, p4

    invoke-static {p4, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    :goto_2
    array-length p5, p4

    invoke-static {p4, p5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p5

    :goto_3
    iput-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p4, p2, Lﹳⁱ/ʽ;->ⁱˊ:[B

    iget-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-nez p4, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p5, :cond_8

    array-length v1, p5

    array-length v2, p4

    if-ge v1, v2, :cond_7

    goto :goto_4

    :cond_7
    array-length v1, p4

    invoke-static {p4, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_8
    :goto_4
    array-length p5, p4

    invoke-static {p4, p5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p5

    :goto_5
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p4, p2, Lﹳⁱ/ʽ;->ﹳٴ:[B

    iget-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    if-nez p4, :cond_9

    goto :goto_7

    :cond_9
    if-eqz p5, :cond_b

    array-length v1, p5

    array-length v2, p4

    if-ge v1, v2, :cond_a

    goto :goto_6

    :cond_a
    array-length v1, p4

    invoke-static {p4, p1, p5, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_b
    :goto_6
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p5

    :goto_7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget p1, p2, Lﹳⁱ/ʽ;->ʽ:I

    iput p1, p3, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x18

    if-lt p1, p4, :cond_c

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget p1, p2, Lﹳⁱ/ʽ;->ᵎﹶ:I

    iget p2, p2, Lﹳⁱ/ʽ;->ᵔᵢ:I

    new-instance p4, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {p4, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    invoke-virtual {p3, p4}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_c
    iget-object p1, p0, Lʼᵢ/ˑﹳ;->ʽ:Lʻᐧ/ᵔﹳ;

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼᵢ/ˑﹳ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method
