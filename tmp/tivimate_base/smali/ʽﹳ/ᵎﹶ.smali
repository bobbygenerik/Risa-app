.class public abstract Lʽﹳ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈˊ/ﹳᐧ;


# static fields
.field public static final ˈٴ:Z

.field public static final ˊʻ:Lcom/bumptech/glide/ˈ;

.field public static final ٴᵢ:Ljava/lang/Object;

.field public static final ᴵᵔ:Ljava/util/logging/Logger;


# instance fields
.field public volatile ʽʽ:Lʽﹳ/ﾞᴵ;

.field public volatile ʾˋ:Ljava/lang/Object;

.field public volatile ᴵˊ:Lʽﹳ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-class v0, Lʽﹳ/ﾞᴵ;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lʽﹳ/ᵎﹶ;->ˈٴ:Z

    const-class v1, Lʽﹳ/ᵎﹶ;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lʽﹳ/ᵎﹶ;->ᴵᵔ:Ljava/util/logging/Logger;

    :try_start_0
    new-instance v3, Lʽﹳ/ˈ;

    const-class v2, Ljava/lang/Thread;

    const-string v4, "\ufe73\u0674"

    invoke-static {v0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v2, "\u2071\u02ca"

    invoke-static {v0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-string v2, "\u02bd\u02bd"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lʽﹳ/ʽ;

    const-string v2, "\u1d35\u02ca"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Ljava/lang/Object;

    const-string v2, "\u02be\u02cb"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lʽﹳ/ˈ;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v3, Lʽﹳ/ˑﹳ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v3, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    if-eqz v0, :cond_0

    sget-object v1, Lʽﹳ/ᵎﹶ;->ᴵᵔ:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʽﹳ/ᵎﹶ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method

.method public static ˑﹳ(Lʽﹳ/ᵎﹶ;)V
    .locals 4

    .prologue
    :cond_0
    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

    sget-object v1, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    sget-object v2, Lʽﹳ/ﾞᴵ;->ʽ:Lʽﹳ/ﾞᴵ;

    invoke-virtual {v1, p0, v0, v2}, Lcom/bumptech/glide/ˈ;->ᵎﹶ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lʽﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    iput-object v1, v0, Lʽﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    iget-object v0, v0, Lʽﹳ/ﾞᴵ;->ⁱˊ:Lʽﹳ/ﾞᴵ;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lʽﹳ/ᵎﹶ;->ˈ()V

    :cond_3
    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ᴵˊ:Lʽﹳ/ʽ;

    sget-object v2, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    sget-object v3, Lʽﹳ/ʽ;->ˈ:Lʽﹳ/ʽ;

    invoke-virtual {v2, p0, v0, v3}, Lcom/bumptech/glide/ˈ;->ˑﹳ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ʽ;Lʽﹳ/ʽ;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move-object p0, v1

    move-object v1, v0

    if-eqz v1, :cond_4

    iget-object v0, v1, Lʽﹳ/ʽ;->ʽ:Lʽﹳ/ʽ;

    iput-object p0, v1, Lʽﹳ/ʽ;->ʽ:Lʽﹳ/ʽ;

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p0, :cond_5

    iget-object v0, p0, Lʽﹳ/ʽ;->ʽ:Lʽﹳ/ʽ;

    iget-object v1, p0, Lʽﹳ/ʽ;->ﹳٴ:Ljava/lang/Runnable;

    iget-object p0, p0, Lʽﹳ/ʽ;->ⁱˊ:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lʽﹳ/ᵎﹶ;->ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    instance-of v0, p0, Lʽﹳ/ﹳٴ;

    if-nez v0, :cond_2

    instance-of v0, p0, Lʽﹳ/ⁱˊ;

    if-nez v0, :cond_1

    sget-object v0, Lʽﹳ/ᵎﹶ;->ٴᵢ:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lʽﹳ/ⁱˊ;

    iget-object p0, p0, Lʽﹳ/ⁱˊ;->ﹳٴ:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Lʽﹳ/ﹳٴ;

    iget-object p0, p0, Lʽﹳ/ﹳٴ;->ⁱˊ:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static ᵔᵢ(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RuntimeException while executing runnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lʽﹳ/ᵎﹶ;->ᴵᵔ:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    sget-boolean v3, Lʽﹳ/ᵎﹶ;->ˈٴ:Z

    if-eqz v3, :cond_1

    new-instance v3, Lʽﹳ/ﹳٴ;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p1}, Lʽﹳ/ﹳٴ;-><init>(Ljava/lang/Throwable;Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lʽﹳ/ﹳٴ;->ʽ:Lʽﹳ/ﹳٴ;

    goto :goto_1

    :cond_2
    sget-object v3, Lʽﹳ/ﹳٴ;->ˈ:Lʽﹳ/ﹳٴ;

    :goto_1
    sget-object p1, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    invoke-virtual {p1, p0, v0, v3}, Lcom/bumptech/glide/ˈ;->ﾞᴵ(Lʽﹳ/ᵎﹶ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lʽﹳ/ᵎﹶ;->ˑﹳ(Lʽﹳ/ᵎﹶ;)V

    return v1

    :cond_3
    return v2
.end method

.method public final get()Ljava/lang/Object;
    .locals 4

    .prologue
    sget-object v0, Lʽﹳ/ﾞᴵ;->ʽ:Lʽﹳ/ﾞᴵ;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lʽﹳ/ᵎﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

    if-eq v1, v0, :cond_5

    new-instance v2, Lʽﹳ/ﾞᴵ;

    invoke-direct {v2}, Lʽﹳ/ﾞᴵ;-><init>()V

    :cond_1
    sget-object v3, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    invoke-virtual {v3, v2, v1}, Lcom/bumptech/glide/ˈ;->ʽʽ(Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)V

    invoke-virtual {v3, p0, v1, v2}, Lcom/bumptech/glide/ˈ;->ᵎﹶ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lʽﹳ/ᵎﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0, v2}, Lʽﹳ/ᵎﹶ;->ˆʾ(Lʽﹳ/ﾞᴵ;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_4
    iget-object v1, p0, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

    if-ne v1, v0, :cond_1

    :cond_5
    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0}, Lʽﹳ/ᵎﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, Lʽﹳ/ﾞᴵ;->ʽ:Lʽﹳ/ﾞᴵ;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-eqz v7, :cond_0

    invoke-static {v7}, Lʽﹳ/ᵎﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    add-long/2addr v9, v5

    goto :goto_0

    :cond_1
    move-wide v9, v7

    :goto_0
    const-wide/16 v11, 0x3e8

    cmp-long v13, v5, v11

    if-ltz v13, :cond_8

    iget-object v13, v0, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

    if-eq v13, v4, :cond_7

    new-instance v14, Lʽﹳ/ﾞᴵ;

    invoke-direct {v14}, Lʽﹳ/ﾞᴵ;-><init>()V

    :cond_2
    sget-object v15, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    invoke-virtual {v15, v14, v13}, Lcom/bumptech/glide/ˈ;->ʽʽ(Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)V

    invoke-virtual {v15, v0, v13, v14}, Lcom/bumptech/glide/ˈ;->ᵎﹶ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)Z

    move-result v13

    if-eqz v13, :cond_6

    :goto_1
    invoke-static {v0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-eqz v4, :cond_3

    invoke-static {v4}, Lʽﹳ/ᵎﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v9, v4

    cmp-long v6, v4, v11

    if-gez v6, :cond_4

    invoke-virtual {v0, v14}, Lʽﹳ/ᵎﹶ;->ˆʾ(Lʽﹳ/ﾞᴵ;)V

    :goto_2
    move-wide v5, v4

    goto :goto_3

    :cond_4
    move-wide v5, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v14}, Lʽﹳ/ᵎﹶ;->ˆʾ(Lʽﹳ/ﾞᴵ;)V

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_6
    iget-object v13, v0, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

    if-ne v13, v4, :cond_2

    :cond_7
    iget-object v1, v0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v1}, Lʽﹳ/ᵎﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8
    :goto_3
    cmp-long v4, v5, v7

    if-lez v4, :cond_b

    iget-object v4, v0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lʽﹳ/ᵎﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v9, v4

    goto :goto_2

    :cond_a
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_b
    invoke-virtual {v0}, Lʽﹳ/ᵎﹶ;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "Waited "

    const-string v14, " "

    invoke-static {v1, v2, v13, v14}, Lʼﾞ/ˊˋ;->ʻٴ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-long v15, v5, v11

    cmp-long v2, v15, v7

    if-gez v2, :cond_11

    const-string v2, " (plus "

    invoke-static {v1, v2}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    neg-long v5, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v7

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v5, v2

    cmp-long v2, v7, v15

    if-eqz v2, :cond_d

    cmp-long v3, v5, v11

    if-lez v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v3, 0x1

    :goto_5
    if-lez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_e

    const-string v2, ","

    invoke-static {v1, v2}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    invoke-static {v1, v14}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    if-eqz v3, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_10
    const-string v2, "delay)"

    invoke-static {v1, v2}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    invoke-virtual {v0}, Lʽﹳ/ᵎﹶ;->isDone()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string v3, " but future completed as timeout expired"

    invoke-static {v1, v3}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string v3, " for "

    invoke-static {v1, v3, v4}, Lʼﾞ/ˊˋ;->ﹳᐧ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    instance-of v0, v0, Lʽﹳ/ﹳٴ;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    instance-of v1, v1, Lʽﹳ/ﹳٴ;

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lʽﹳ/ᵎﹶ;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lʽﹳ/ᵎﹶ;->ʽ(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lʽﹳ/ᵎﹶ;->ʼˎ()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PENDING, info=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lʽﹳ/ᵎﹶ;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lʽﹳ/ᵎﹶ;->ʽ(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string v1, "PENDING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʼˎ()Ljava/lang/String;
    .locals 3

    .prologue
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining delay=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ʽ(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const-string v0, "]"

    :try_start_0
    invoke-static {p0}, Lʽﹳ/ᵎﹶ;->ᵔᵢ(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, p0, :cond_0

    const-string v1, "this future"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_1
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_2
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_2
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return-void
.end method

.method public final ˆʾ(Lʽﹳ/ﾞᴵ;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iput-object v0, p1, Lʽﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

    sget-object v1, Lʽﹳ/ﾞᴵ;->ʽ:Lʽﹳ/ﾞᴵ;

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    iget-object v2, p1, Lʽﹳ/ﾞᴵ;->ⁱˊ:Lʽﹳ/ﾞᴵ;

    iget-object v3, p1, Lʽﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    iput-object v2, v1, Lʽﹳ/ﾞᴵ;->ⁱˊ:Lʽﹳ/ﾞᴵ;

    iget-object p1, v1, Lʽﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    sget-object v3, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    invoke-virtual {v3, p0, p1, v2}, Lcom/bumptech/glide/ˈ;->ᵎﹶ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public ˈ()V
    .locals 0

    return-void
.end method

.method public ٴﹶ(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-nez p1, :cond_0

    sget-object p1, Lʽﹳ/ᵎﹶ;->ٴᵢ:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/bumptech/glide/ˈ;->ﾞᴵ(Lʽﹳ/ᵎﹶ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lʽﹳ/ᵎﹶ;->ˑﹳ(Lʽﹳ/ᵎﹶ;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ᴵˊ:Lʽﹳ/ʽ;

    sget-object v1, Lʽﹳ/ʽ;->ˈ:Lʽﹳ/ʽ;

    if-eq v0, v1, :cond_2

    new-instance v2, Lʽﹳ/ʽ;

    invoke-direct {v2, p1, p2}, Lʽﹳ/ʽ;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v2, Lʽﹳ/ʽ;->ʽ:Lʽﹳ/ʽ;

    sget-object v3, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    invoke-virtual {v3, p0, v0, v2}, Lcom/bumptech/glide/ˈ;->ˑﹳ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ʽ;Lʽﹳ/ʽ;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lʽﹳ/ᵎﹶ;->ᴵˊ:Lʽﹳ/ʽ;

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-static {p1, p2}, Lʽﹳ/ᵎﹶ;->ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public ﾞʻ(Ljava/lang/Throwable;)Z
    .locals 2

    .prologue
    new-instance v0, Lʽﹳ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lʽﹳ/ⁱˊ;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lʽﹳ/ᵎﹶ;->ˊʻ:Lcom/bumptech/glide/ˈ;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/bumptech/glide/ˈ;->ﾞᴵ(Lʽﹳ/ᵎﹶ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lʽﹳ/ᵎﹶ;->ˑﹳ(Lʽﹳ/ᵎﹶ;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
