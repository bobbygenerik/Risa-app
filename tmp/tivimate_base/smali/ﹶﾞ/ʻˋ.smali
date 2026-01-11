.class public final Lﹶﾞ/ʻˋ;
.super Lﹶﾞ/ˎᐧ;
.source "SourceFile"


# static fields
.field public static final ᵎˊ:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public ʽʽ:Lﹶﾞ/ﹳﹳ;

.field public ˈٴ:Lﹶﾞ/ﹳﹳ;

.field public final ˉٴ:Lﹶﾞ/ˈˏ;

.field public final ˊʻ:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final ٴʼ:Ljava/util/concurrent/Semaphore;

.field public final ٴᵢ:Lﹶﾞ/ˈˏ;

.field public final ᴵᵔ:Ljava/util/concurrent/PriorityBlockingQueue;

.field public final ᵎⁱ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lﹶﾞ/ʻˋ;->ᵎˊ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 1

    invoke-direct {p0, p1}, Lﹶﾞ/ˎᐧ;-><init>(Lﹶﾞ/ᵎʻ;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ʻˋ;->ᵎⁱ:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lﹶﾞ/ʻˋ;->ٴʼ:Ljava/util/concurrent/Semaphore;

    new-instance p1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ʻˋ;->ᴵᵔ:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ʻˋ;->ˊʻ:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lﹶﾞ/ˈˏ;

    const-string v0, "Thread death: Uncaught exception on worker thread"

    invoke-direct {p1, p0, v0}, Lﹶﾞ/ˈˏ;-><init>(Lﹶﾞ/ʻˋ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ʻˋ;->ٴᵢ:Lﹶﾞ/ˈˏ;

    new-instance p1, Lﹶﾞ/ˈˏ;

    const-string v0, "Thread death: Uncaught exception on network thread"

    invoke-direct {p1, p0, v0}, Lﹶﾞ/ˈˏ;-><init>(Lﹶﾞ/ʻˋ;Ljava/lang/String;)V

    iput-object p1, p0, Lﹶﾞ/ʻˋ;->ˉٴ:Lﹶﾞ/ˈˏ;

    return-void
.end method


# virtual methods
.method public final ʼᵢ()V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ˈٴ:Lﹶﾞ/ﹳﹳ;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from network thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    new-instance v0, Lﹶﾞ/ﹶᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ﹶᐧ;-><init>(Lﹶﾞ/ʻˋ;Ljava/util/concurrent/Callable;Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lﹶﾞ/ʻˋ;->ᴵᵔ:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v1, "Callable skipped the worker queue."

    invoke-virtual {p1, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lﹶﾞ/ʻˋ;->ˋـ(Lﹶﾞ/ﹶᐧ;)V

    return-object v0
.end method

.method public final ˋـ(Lﹶﾞ/ﹶᐧ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʻˋ;->ᵎⁱ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ᴵᵔ:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    if-nez p1, :cond_0

    new-instance p1, Lﹶﾞ/ﹳﹳ;

    const-string v2, "Measurement Worker"

    invoke-direct {p1, p0, v2, v1}, Lﹶﾞ/ﹳﹳ;-><init>(Lﹶﾞ/ʻˋ;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ٴᵢ:Lﹶﾞ/ˈˏ;

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lﹶﾞ/ﹳﹳ;->ﹳٴ()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˎʾ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    new-instance v0, Lﹶﾞ/ﹶᐧ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ﹶᐧ;-><init>(Lﹶﾞ/ʻˋ;Ljava/util/concurrent/Callable;Z)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lﹶﾞ/ʻˋ;->ˋـ(Lﹶﾞ/ﹶᐧ;)V

    return-object v0
.end method

.method public final ˎˉ(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    .prologue
    const-string v0, "Interrupted waiting for "

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1, p5}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p3, "Timed out waiting for "

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    :try_start_3
    iget-object p2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x18

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public final ˑˆ(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v0, Lﹶﾞ/ﹶᐧ;

    const/4 v1, 0x0

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lﹶﾞ/ﹶᐧ;-><init>(Lﹶﾞ/ʻˋ;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʻˋ;->ˋـ(Lﹶﾞ/ﹶᐧ;)V

    return-void
.end method

.method public final יˉ()V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call not expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵢˋ(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    const-string v0, "Task exception on network thread"

    new-instance v1, Lﹶﾞ/ﹶᐧ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lﹶﾞ/ﹶᐧ;-><init>(Lﹶﾞ/ʻˋ;Ljava/lang/Runnable;ZLjava/lang/String;)V

    iget-object p1, p0, Lﹶﾞ/ʻˋ;->ᵎⁱ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lﹶﾞ/ʻˋ;->ˊʻ:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ˈٴ:Lﹶﾞ/ﹳﹳ;

    if-nez v1, :cond_0

    new-instance v1, Lﹶﾞ/ﹳﹳ;

    const-string v2, "Measurement Network"

    invoke-direct {v1, p0, v2, v0}, Lﹶﾞ/ﹳﹳ;-><init>(Lﹶﾞ/ʻˋ;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lﹶﾞ/ʻˋ;->ˈٴ:Lﹶﾞ/ﹳﹳ;

    iget-object v0, p0, Lﹶﾞ/ʻˋ;->ˉٴ:Lﹶﾞ/ˈˏ;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lﹶﾞ/ʻˋ;->ˈٴ:Lﹶﾞ/ﹳﹳ;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lﹶﾞ/ﹳﹳ;->ﹳٴ()V

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ⁱᴵ()V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳᵢ(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Lﹶﾞ/ˎᐧ;->ʽˑ()V

    new-instance v0, Lﹶﾞ/ﹶᐧ;

    const/4 v1, 0x1

    const-string v2, "Task exception on worker thread"

    invoke-direct {v0, p0, p1, v1, v2}, Lﹶﾞ/ﹶᐧ;-><init>(Lﹶﾞ/ʻˋ;Ljava/lang/Runnable;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʻˋ;->ˋـ(Lﹶﾞ/ﹶᐧ;)V

    return-void
.end method

.method public final ﹶˎ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞˋ()Z
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ʻˋ;->ʽʽ:Lﹶﾞ/ﹳﹳ;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
