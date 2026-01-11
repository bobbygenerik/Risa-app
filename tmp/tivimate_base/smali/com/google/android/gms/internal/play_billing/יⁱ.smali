.class public Lcom/google/android/gms/internal/play_billing/יⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/ᴵˑ;


# static fields
.field public static final ˈٴ:Z

.field public static final ˊʻ:Lˈˊ/ᵔʾ;

.field public static final ٴᵢ:Ljava/lang/Object;

.field public static final ᴵᵔ:Ljava/util/logging/Logger;


# instance fields
.field public volatile ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

.field public volatile ʾˋ:Ljava/lang/Object;

.field public volatile ᴵˊ:Lcom/google/android/gms/internal/play_billing/יˉ;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-class v0, Lcom/google/android/gms/internal/play_billing/ˏʻ;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˈٴ:Z

    const-class v1, Lcom/google/android/gms/internal/play_billing/יⁱ;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᴵᵔ:Ljava/util/logging/Logger;

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/play_billing/ʿʽ;

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

    const-class v0, Lcom/google/android/gms/internal/play_billing/יˉ;

    const-string v2, "\u1d35\u02ca"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Ljava/lang/Object;

    const-string v2, "\u02be\u02cb"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/ʿʽ;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v3, Lcom/google/android/gms/internal/play_billing/ʻˆ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :goto_1
    sput-object v3, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    if-eqz v9, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᴵᵔ:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "<clinit>"

    const-string v8, "SafeAtomicHelper is broken!"

    const-string v6, "com.android.billingclient.util.concurrent.AbstractResolvableFuture"

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method

.method public static ˈ(Lcom/google/android/gms/internal/play_billing/יⁱ;)V
    .locals 4

    .prologue
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    invoke-virtual {v1, p0, v0, v2}, Lˈˊ/ᵔʾ;->ﹳـ(Lcom/google/android/gms/internal/play_billing/יⁱ;Lcom/google/android/gms/internal/play_billing/ˏʻ;Lcom/google/android/gms/internal/play_billing/ˏʻ;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/יˉ;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/יˉ;->ˈ:Lcom/google/android/gms/internal/play_billing/יˉ;

    invoke-virtual {v1, p0, v0, v3}, Lˈˊ/ᵔʾ;->ʼˈ(Lcom/google/android/gms/internal/play_billing/יⁱ;Lcom/google/android/gms/internal/play_billing/יˉ;Lcom/google/android/gms/internal/play_billing/יˉ;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object p0, v2

    move-object v2, v0

    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/internal/play_billing/יˉ;->ʽ:Lcom/google/android/gms/internal/play_billing/יˉ;

    iput-object p0, v2, Lcom/google/android/gms/internal/play_billing/יˉ;->ʽ:Lcom/google/android/gms/internal/play_billing/יˉ;

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יˉ;->ﹳٴ:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/יˉ;->ʽ:Lcom/google/android/gms/internal/play_billing/יˉ;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/יˉ;->ⁱˊ:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object p0, v1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v3, :cond_5

    iput-object v2, v0, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ﹳٴ:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    goto :goto_0
.end method

.method public static final ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/ـˊ;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ٴᵢ:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ـˊ;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/ـˊ;->ﹳٴ:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ﹳٴ:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .prologue
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RuntimeException while executing runnable "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.android.billingclient.util.concurrent.AbstractResolvableFuture"

    const-string v3, "executeListener"

    sget-object v0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᴵᵔ:Ljava/util/logging/Logger;

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    if-nez v0, :cond_2

    sget-boolean v1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˈٴ:Z

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Future.cancel() was called."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;-><init>(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;->ʽ:Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    invoke-virtual {v1, p0, v0, p1}, Lˈˊ/ᵔʾ;->ـˏ(Lcom/google/android/gms/internal/play_billing/יⁱ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˈ(Lcom/google/android/gms/internal/play_billing/יⁱ;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    if-eq v0, v1, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ˏʻ;

    invoke-direct {v2}, Lcom/google/android/gms/internal/play_billing/ˏʻ;-><init>()V

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    invoke-virtual {v3, v2, v0}, Lˈˊ/ᵔʾ;->ˈʿ(Lcom/google/android/gms/internal/play_billing/ˏʻ;Lcom/google/android/gms/internal/play_billing/ˏʻ;)V

    invoke-virtual {v3, p0, v0, v2}, Lˈˊ/ᵔʾ;->ﹳـ(Lcom/google/android/gms/internal/play_billing/יⁱ;Lcom/google/android/gms/internal/play_billing/ˏʻ;Lcom/google/android/gms/internal/play_billing/ˏʻ;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵎﹶ(Lcom/google/android/gms/internal/play_billing/ˏʻ;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    if-ne v0, v1, :cond_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 12

    .prologue
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0x3e8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_8

    iget-object v8, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    sget-object v9, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    if-eq v8, v9, :cond_7

    new-instance v10, Lcom/google/android/gms/internal/play_billing/ˏʻ;

    invoke-direct {v10}, Lcom/google/android/gms/internal/play_billing/ˏʻ;-><init>()V

    :cond_2
    sget-object v11, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    invoke-virtual {v11, v10, v8}, Lˈˊ/ᵔʾ;->ˈʿ(Lcom/google/android/gms/internal/play_billing/ˏʻ;Lcom/google/android/gms/internal/play_billing/ˏʻ;)V

    invoke-virtual {v11, p0, v8, v10}, Lˈˊ/ᵔʾ;->ﹳـ(Lcom/google/android/gms/internal/play_billing/יⁱ;Lcom/google/android/gms/internal/play_billing/ˏʻ;Lcom/google/android/gms/internal/play_billing/ˏʻ;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_3
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    cmp-long v8, v0, v6

    if-gez v8, :cond_3

    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵎﹶ(Lcom/google/android/gms/internal/play_billing/ˏʻ;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵎﹶ(Lcom/google/android/gms/internal/play_billing/ˏʻ;)V

    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_6
    iget-object v8, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    if-ne v8, v9, :cond_2

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    cmp-long v8, v0, v2

    if-lez v8, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_1

    :cond_a
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Waited "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-long v8, v0, v6

    cmp-long v8, v8, v2

    if-gez v8, :cond_11

    const-string v8, " (plus "

    invoke-virtual {p2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    neg-long v0, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-virtual {p3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    sub-long/2addr v0, v10

    cmp-long p3, v8, v2

    const/4 v2, 0x1

    if-eqz p3, :cond_d

    cmp-long v3, v0, v6

    if-lez v3, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x0

    :cond_d
    :goto_2
    if-lez p3, :cond_f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_e

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_e
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_f
    if-eqz v2, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " nanoseconds "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_10
    const-string p1, "delay)"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->isDone()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, " but future completed as timeout expired"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_12
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p3, " for "

    invoke-static {p2, p3, v4}, Lʼﾞ/ˊˋ;->ﹳᐧ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʾˋ:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/play_billing/ﹳﹳ;

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˑﹳ(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʽ()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception thrown from implementation: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˑﹳ(Ljava/lang/StringBuilder;)V

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

.method public ʽ()Ljava/lang/String;
    .locals 4

    .prologue
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remaining delay=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˑﹳ(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const-string v0, "]"

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/יⁱ;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_1
    const-string v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, p0, :cond_1

    const-string v1, "this future"

    goto :goto_2

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :goto_4
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final ᵎﹶ(Lcom/google/android/gms/internal/play_billing/ˏʻ;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ﹳٴ:Ljava/lang/Thread;

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    if-eq p1, v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˏʻ;

    iget-object p1, v1, Lcom/google/android/gms/internal/play_billing/ˏʻ;->ﹳٴ:Ljava/lang/Thread;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    invoke-virtual {v3, p0, p1, v2}, Lˈˊ/ᵔʾ;->ﹳـ(Lcom/google/android/gms/internal/play_billing/יⁱ;Lcom/google/android/gms/internal/play_billing/ˏʻ;Lcom/google/android/gms/internal/play_billing/ˏʻ;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final ⁱˊ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/יˉ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/יˉ;->ˈ:Lcom/google/android/gms/internal/play_billing/יˉ;

    if-eq v0, v1, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/play_billing/יˉ;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/play_billing/יˉ;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/יˉ;->ʽ:Lcom/google/android/gms/internal/play_billing/יˉ;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/יⁱ;->ˊʻ:Lˈˊ/ᵔʾ;

    invoke-virtual {v3, p0, v0, v2}, Lˈˊ/ᵔʾ;->ʼˈ(Lcom/google/android/gms/internal/play_billing/יⁱ;Lcom/google/android/gms/internal/play_billing/יˉ;Lcom/google/android/gms/internal/play_billing/יˉ;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/יⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/יˉ;

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/יⁱ;->ﾞᴵ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
