.class public final Lcom/google/android/gms/internal/play_billing/ʿᵢ;
.super Lcom/google/android/gms/internal/play_billing/ˈʿ;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/ٴʼ;


# instance fields
.field public ˉٴ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

.field public ᵎⁱ:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public static ˆʾ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v2, p0}, Lʽٴ/ˈ;->ʽʽ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ﹳٴ:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ﹳٴ:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    and-int/2addr v3, v6

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v6, v3, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    if-eqz v6, :cond_3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ﹳٴ:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎⁱ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_5

    invoke-interface {v2, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_5
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎⁱ:Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v2, p0}, Lʽٴ/ˈ;->ᴵˊ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    move-result-object p0

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_4
    if-eqz v1, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    iput-object p0, v1, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    move-object p0, v1

    move-object v1, v2

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz p0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ﹳٴ:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v3, v1, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    if-eqz v3, :cond_7

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    iget-object p0, v1, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-ne v3, v1, :cond_8

    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵔᵢ(Lcom/google/android/gms/internal/play_billing/ᴵˑ;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v4, p0, v1, v3}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v2

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ⁱˊ:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ٴﹶ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_8
    move-object p0, v2

    goto :goto_5

    :cond_9
    return-void
.end method

.method public static ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    if-nez v0, :cond_3

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ﹳٴ:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ()Ljava/util/logging/Logger;

    move-result-object p0

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "getDoneValue"

    const-string v2, "Failure.exception is unexpectedly null."

    const-string v3, "com.google.common.util.concurrent.AbstractFuture"

    invoke-virtual {p0, v0, v3, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/concurrent/ExecutionException;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ʽ:Lcom/google/android/gms/internal/play_billing/ˉٴ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ﹳٴ:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˈٴ:Ljava/lang/Object;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    return-object p0

    :cond_3
    check-cast p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ⁱˊ:Ljava/lang/Throwable;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static ٴﹶ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .prologue
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˈⁱ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˈⁱ;->ⁱˊ()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RuntimeException while executing runnable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static ᵎﹶ(Ljava/lang/Object;)Z
    .locals 0

    .prologue
    instance-of p0, p0, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ᵔᵢ(Lcom/google/android/gms/internal/play_billing/ᴵˑ;)Ljava/lang/Object;
    .locals 6

    .prologue
    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/ٴʼ;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p0, Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ﹳٴ:Z

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ⁱˊ:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;-><init>(Ljava/lang/Throwable;Z)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    :cond_1
    :goto_0
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/ᵎᵔ;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ᵎᵔ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ᵎᵔ;->ʽ()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˊʻ:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    and-int/2addr v3, v1

    if-eqz v3, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_5
    move v3, v2

    :goto_2
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    :cond_6
    if-eqz v1, :cond_7

    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;-><init>(Ljava/lang/Throwable;Z)V

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_6

    :cond_7
    if-nez v4, :cond_8

    sget-object p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˈٴ:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_4

    :cond_8
    return-object v4

    :catchall_0
    move-exception v4

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    throw v4
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception p0

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :goto_5
    if-nez v1, :cond_a

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_a
    new-instance p0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;-><init>(Ljava/lang/Throwable;Z)V

    return-object p0

    :goto_6
    if-eqz v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;-><init>(Ljava/lang/Throwable;Z)V

    return-object v1

    :cond_b
    new-instance p0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :catch_4
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/2addr v1, v4

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˊʻ:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4, p1}, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;-><init>(Ljava/lang/Throwable;Z)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    :goto_1
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v4, p0

    move v5, v2

    :cond_3
    :goto_3
    sget-object v6, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v6, v4, v0, v1}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˆʾ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)V

    instance-of v4, v0, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    if-eqz v4, :cond_6

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    instance-of v4, v0, Lcom/google/android/gms/internal/play_billing/ٴʼ;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-nez v0, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    instance-of v6, v0, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    or-int/2addr v5, v6

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_3

    :cond_5
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    return v3

    :cond_7
    iget-object v0, v4, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v5

    :cond_8
    return v2
.end method

.method public final get()Ljava/lang/Object;
    .locals 6

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    if-eq v1, v0, :cond_7

    new-instance v4, Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    invoke-direct {v4}, Lcom/google/android/gms/internal/play_billing/ᵔٴ;-><init>()V

    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v5, v4, v1}, Lʽٴ/ˈ;->ˈٴ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)V

    invoke-virtual {v5, p0, v1, v4}, Lʽٴ/ˈ;->ˉٴ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˈ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    if-ne v1, v0, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ᵔٴ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v7, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v11

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v7, v5, v10

    if-lez v7, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    add-long/2addr v12, v5

    goto :goto_1

    :cond_2
    move-wide v12, v10

    :goto_1
    const-wide/16 v14, 0x3e8

    cmp-long v7, v5, v14

    if-ltz v7, :cond_a

    iget-object v7, v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    if-eq v7, v4, :cond_9

    new-instance v8, Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    invoke-direct {v8}, Lcom/google/android/gms/internal/play_billing/ᵔٴ;-><init>()V

    :goto_2
    sget-object v9, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v9, v8, v7}, Lʽٴ/ˈ;->ˈٴ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)V

    invoke-virtual {v9, v0, v7, v8}, Lʽٴ/ˈ;->ˉٴ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;Lcom/google/android/gms/internal/play_billing/ᵔٴ;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-wide/from16 v17, v10

    :goto_3
    const-wide v10, 0x1dcd64ffffffffffL    # 3.98785104510193E-165

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v12, v4

    cmp-long v6, v4, v14

    if-gez v6, :cond_5

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˈ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;)V

    :goto_5
    move-wide v5, v4

    goto :goto_7

    :cond_5
    move-wide v5, v4

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ˈ(Lcom/google/android/gms/internal/play_billing/ᵔٴ;)V

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_7
    move-wide/from16 v17, v10

    iget-object v7, v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔٴ;

    if-ne v7, v4, :cond_8

    goto :goto_6

    :cond_8
    move-wide/from16 v10, v17

    goto :goto_2

    :cond_9
    :goto_6
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    move-wide/from16 v17, v10

    :goto_7
    cmp-long v4, v5, v17

    if-lez v4, :cond_e

    iget-object v4, v0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v12, v4

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Waited "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v8, v5, v14

    cmp-long v8, v8, v17

    if-gez v8, :cond_14

    const-string v8, " (plus "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v5, v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    sub-long/2addr v5, v10

    cmp-long v3, v8, v17

    if-eqz v3, :cond_f

    cmp-long v10, v5, v14

    if-lez v10, :cond_10

    :cond_f
    const/16 v16, 0x1

    goto :goto_9

    :cond_10
    const/16 v16, 0x0

    :goto_9
    if-lez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_13
    const-string v1, "delay)"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " but future completed as timeout expired"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, " for "

    invoke-static {v2, v3, v4}, Lʼﾞ/ˊˋ;->ﹳᐧ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    return v0
.end method

.method public final isDone()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎﹶ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr v0, v1

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

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    const-string v2, "]"

    if-eqz v1, :cond_1

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ʼˎ(Ljava/lang/StringBuilder;)V

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v4, v3, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    const-string v5, "Exception thrown from implementation: "

    if-eqz v4, :cond_6

    const-string v4, ", setFuture=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    iget-object v3, v3, Lcom/google/android/gms/internal/play_billing/ˊʻ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    if-ne v3, p0, :cond_3

    :try_start_0
    const-string v3, "this future"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_1
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_5

    instance-of v4, v3, Ljava/lang/StackOverflowError;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_5
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ﾞᴵ()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_a

    :cond_7
    move-object v3, v4

    goto :goto_5

    :catchall_1
    move-exception v3

    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_9

    instance-of v4, v3, Ljava/lang/StackOverflowError;

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_9
    :goto_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    const-string v4, ", info=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->isDone()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ʼˎ(Ljava/lang/StringBuilder;)V

    :cond_c
    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const-string v0, "]"

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const-string v1, "SUCCESS, result=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_1
    if-ne v2, p0, :cond_2

    const-string v1, "this future"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_2
    throw v2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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

.method public final ʽ()Ljava/lang/Throwable;
    .locals 2

    .prologue
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/ٴʼ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ﹳٴ:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ⁱˊ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ˈ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    if-eq v1, v0, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    iput-object v1, v2, Lcom/google/android/gms/internal/play_billing/ᵎⁱ;->ʽ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v3, p0, v1, v2}, Lʽٴ/ˈ;->ˊʻ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;Lcom/google/android/gms/internal/play_billing/ᵎⁱ;Lcom/google/android/gms/internal/play_billing/ᵎⁱ;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵎⁱ;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ٴﹶ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Executor was null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﾞᴵ()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎⁱ:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inputFuture=["

    const-string v3, "]"

    invoke-static {v2, v0, v3}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remaining delay=["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
