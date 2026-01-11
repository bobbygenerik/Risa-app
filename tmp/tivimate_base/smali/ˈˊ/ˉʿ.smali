.class public abstract Lˈˊ/ˉʿ;
.super Lˊˑ/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lˈˊ/ﹳᐧ;


# static fields
.field public static final ˈٴ:Z

.field public static final ˊʻ:Lﹳٴ/ﹳٴ;

.field public static final ٴᵢ:Ljava/lang/Object;

.field public static final ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;


# instance fields
.field public volatile ʽʽ:Lˈˊ/ﾞʻ;

.field public volatile ʾˋ:Ljava/lang/Object;

.field public volatile ᴵˊ:Lˈˊ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-class v1, Lˈˊ/ﾞʻ;

    const-class v2, Lˈˊ/ˉʿ;

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v3, "false"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lˈˊ/ˉʿ;->ˈٴ:Z

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;-><init>()V

    sput-object v0, Lˈˊ/ˉʿ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    const/4 v3, 0x0

    :try_start_1
    new-instance v0, Lˈˊ/ٴﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v3

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_1
    move-object v4, v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_2
    :try_start_2
    new-instance v5, Lˈˊ/ˈ;

    const-class v0, Ljava/lang/Thread;

    const-string v6, "\ufe73\u0674"

    invoke-static {v1, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-string v0, "\u2071\u02ca"

    invoke-static {v1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-string v0, "\u02bd\u02bd"

    invoke-static {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    const-class v0, Lˈˊ/ʽ;

    const-string v1, "\u1d35\u02ca"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v9

    const-class v0, Ljava/lang/Object;

    const-string v1, "\u02be\u02cb"

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lˈˊ/ˈ;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move-object v0, v5

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_3
    move-object v3, v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :goto_4
    new-instance v0, Lˈˊ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_5
    sput-object v0, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    if-eqz v3, :cond_0

    sget-object v0, Lˈˊ/ˉʿ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ﹳٴ()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ﹳٴ()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˊ/ˉʿ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method

.method public static ˑﹳ(Lˈˊ/ˉʿ;)V
    .locals 4

    .prologue
    sget-object v0, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-virtual {v0, p0}, Lﹳٴ/ﹳٴ;->ʽﹳ(Lˈˊ/ˉʿ;)Lˈˊ/ﾞʻ;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lˈˊ/ﾞʻ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iput-object v1, v0, Lˈˊ/ﾞʻ;->ﹳٴ:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object v0, v0, Lˈˊ/ﾞʻ;->ⁱˊ:Lˈˊ/ﾞʻ;

    goto :goto_0

    :cond_1
    sget-object v0, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-virtual {v0, p0}, Lﹳٴ/ﹳٴ;->ˏי(Lˈˊ/ˉʿ;)Lˈˊ/ʽ;

    move-result-object p0

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, v1, Lˈˊ/ʽ;->ʽ:Lˈˊ/ʽ;

    iput-object p0, v1, Lˈˊ/ʽ;->ʽ:Lˈˊ/ʽ;

    move-object p0, v1

    move-object v1, v0

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    iget-object v0, p0, Lˈˊ/ʽ;->ʽ:Lˈˊ/ʽ;

    iget-object v1, p0, Lˈˊ/ʽ;->ﹳٴ:Ljava/lang/Runnable;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lˈˊ/ʽ;->ⁱˊ:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, p0}, Lˈˊ/ˉʿ;->ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p0, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    instance-of v0, p0, Lˈˊ/ﹳٴ;

    if-nez v0, :cond_2

    instance-of v0, p0, Lˈˊ/ⁱˊ;

    if-nez v0, :cond_1

    sget-object v0, Lˈˊ/ˉʿ;->ٴᵢ:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lˈˊ/ⁱˊ;

    iget-object p0, p0, Lˈˊ/ⁱˊ;->ﹳٴ:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Lˈˊ/ﹳٴ;

    iget-object p0, p0, Lˈˊ/ﹳٴ;->ﹳٴ:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static ᵔᵢ(Lˈˊ/ˉʿ;)Ljava/lang/Object;
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
    .locals 5

    .prologue
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lˈˊ/ˉʿ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ﹳٴ()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException while executing runnable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-nez v0, :cond_2

    sget-boolean v1, Lˈˊ/ˉʿ;->ˈٴ:Z

    if-eqz v1, :cond_0

    new-instance v1, Lˈˊ/ﹳٴ;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "Future.cancel() was called."

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lˈˊ/ﹳٴ;-><init>(Ljava/lang/Throwable;Z)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lˈˊ/ﹳٴ;->ⁱˊ:Lˈˊ/ﹳٴ;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    sget-object p1, Lˈˊ/ﹳٴ;->ʽ:Lˈˊ/ﹳٴ;

    goto :goto_0

    :goto_1
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p1, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-virtual {p1, p0, v0, v1}, Lﹳٴ/ﹳٴ;->ⁱˊ(Lˈˊ/ˉʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lˈˊ/ˉʿ;->ˑﹳ(Lˈˊ/ˉʿ;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    .prologue
    sget-object v0, Lˈˊ/ﾞʻ;->ʽ:Lˈˊ/ﾞʻ;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lˈˊ/ˉʿ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    if-eq v1, v0, :cond_5

    new-instance v2, Lˈˊ/ﾞʻ;

    invoke-direct {v2}, Lˈˊ/ﾞʻ;-><init>()V

    :cond_1
    sget-object v3, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-virtual {v3, v2, v1}, Lﹳٴ/ﹳٴ;->ٴᵢ(Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)V

    invoke-virtual {v3, p0, v1, v2}, Lﹳٴ/ﹳٴ;->ʽ(Lˈˊ/ˉʿ;Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lˈˊ/ˉʿ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0, v2}, Lˈˊ/ˉʿ;->ˆʾ(Lˈˊ/ﾞʻ;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_4
    iget-object v1, p0, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    if-ne v1, v0, :cond_1

    :cond_5
    iget-object v0, p0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lˈˊ/ˉʿ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, Lˈˊ/ﾞʻ;->ʽ:Lˈˊ/ﾞʻ;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v7, :cond_0

    invoke-static {v7}, Lˈˊ/ˉʿ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v13, v0, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    if-eq v13, v4, :cond_7

    new-instance v14, Lˈˊ/ﾞʻ;

    invoke-direct {v14}, Lˈˊ/ﾞʻ;-><init>()V

    :goto_1
    sget-object v15, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-virtual {v15, v14, v13}, Lﹳٴ/ﹳٴ;->ٴᵢ(Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)V

    invoke-virtual {v15, v0, v13, v14}, Lﹳٴ/ﹳٴ;->ʽ(Lˈˊ/ˉʿ;Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-wide v15, v7

    :goto_2
    const-wide v7, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v4, :cond_2

    invoke-static {v4}, Lˈˊ/ˉʿ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v9, v4

    cmp-long v6, v4, v11

    if-gez v6, :cond_3

    invoke-virtual {v0, v14}, Lˈˊ/ˉʿ;->ˆʾ(Lˈˊ/ﾞʻ;)V

    :goto_3
    move-wide v5, v4

    goto :goto_5

    :cond_3
    move-wide v5, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v14}, Lˈˊ/ˉʿ;->ˆʾ(Lˈˊ/ﾞʻ;)V

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_5
    move-wide v15, v7

    iget-object v13, v0, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    if-ne v13, v4, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v15

    goto :goto_1

    :cond_7
    :goto_4
    iget-object v1, v0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lˈˊ/ˉʿ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8
    move-wide v15, v7

    :goto_5
    cmp-long v4, v5, v15

    if-lez v4, :cond_b

    iget-object v4, v0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lˈˊ/ˉʿ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v9, v4

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_b
    invoke-virtual {v0}, Lˈˊ/ˉʿ;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Waited "

    const-string v10, " "

    invoke-static {v1, v2, v9, v10}, Lʼﾞ/ˊˋ;->ʻٴ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-long v8, v5, v11

    cmp-long v2, v8, v15

    if-gez v2, :cond_11

    const-string v2, " (plus "

    invoke-static {v1, v2}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    neg-long v5, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v5, v2

    cmp-long v2, v8, v15

    if-eqz v2, :cond_d

    cmp-long v3, v5, v11

    if-lez v3, :cond_c

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v3, 0x1

    :goto_7
    if-lez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_e

    const-string v2, ","

    invoke-static {v1, v2}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    invoke-static {v1, v10}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {v0}, Lˈˊ/ˉʿ;->isDone()Z

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

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v0, v0, Lˈˊ/ﹳٴ;

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lˈˊ/ˉʿ;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_1
    invoke-virtual {p0}, Lˈˊ/ˉʿ;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lˈˊ/ˉʿ;->ʽ(Ljava/lang/StringBuilder;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Lˈˊ/ˉʿ;->ʼˎ()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    goto :goto_3

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception thrown from implementation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    const-string v4, ", info=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lˈˊ/ˉʿ;->isDone()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lˈˊ/ˉʿ;->ʽ(Ljava/lang/StringBuilder;)V

    :cond_6
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ()Ljava/lang/String;
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
    invoke-static {p0}, Lˈˊ/ˉʿ;->ᵔᵢ(Lˈˊ/ˉʿ;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v1}, Lˈˊ/ˉʿ;->ˈ(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_2
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_1
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-void
.end method

.method public final ˆʾ(Lˈˊ/ﾞʻ;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iput-object v0, p1, Lˈˊ/ﾞʻ;->ﹳٴ:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    sget-object v1, Lˈˊ/ﾞʻ;->ʽ:Lˈˊ/ﾞʻ;

    if-ne p1, v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    iget-object v2, p1, Lˈˊ/ﾞʻ;->ⁱˊ:Lˈˊ/ﾞʻ;

    iget-object v3, p1, Lˈˊ/ﾞʻ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    iput-object v2, v1, Lˈˊ/ﾞʻ;->ⁱˊ:Lˈˊ/ﾞʻ;

    iget-object p1, v1, Lˈˊ/ﾞʻ;->ﹳٴ:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    sget-object v3, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-virtual {v3, p0, p1, v2}, Lﹳٴ/ﹳٴ;->ʽ(Lˈˊ/ˉʿ;Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z

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

.method public final ˈ(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-nez p2, :cond_0

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    if-ne p2, p0, :cond_1

    const-string p2, "this future"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public ﹳٴ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    sget-object v0, Lˈˊ/ʽ;->ˈ:Lˈˊ/ʽ;

    invoke-virtual {p0}, Lˈˊ/ˉʿ;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lˈˊ/ˉʿ;->ᴵˊ:Lˈˊ/ʽ;

    if-eq v1, v0, :cond_2

    new-instance v2, Lˈˊ/ʽ;

    invoke-direct {v2, p1, p2}, Lˈˊ/ʽ;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v1, v2, Lˈˊ/ʽ;->ʽ:Lˈˊ/ʽ;

    sget-object v3, Lˈˊ/ˉʿ;->ˊʻ:Lﹳٴ/ﹳٴ;

    invoke-virtual {v3, p0, v1, v2}, Lﹳٴ/ﹳٴ;->ﹳٴ(Lˈˊ/ˉʿ;Lˈˊ/ʽ;Lˈˊ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lˈˊ/ˉʿ;->ᴵˊ:Lˈˊ/ʽ;

    if-ne v1, v0, :cond_0

    :cond_2
    invoke-static {p1, p2}, Lˈˊ/ˉʿ;->ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
