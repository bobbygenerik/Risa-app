.class public final Lˋٴ/ˈ;
.super Lˋٴ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ʾˋ:Lˋٴ/ʽ;


# virtual methods
.method public final cancel(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 4

    .prologue
    :try_start_0
    iget-object v0, p0, Lˋٴ/ˈ;->ʾˋ:Lˋٴ/ʽ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lˋٴ/ʽ;->ᵎﹶ(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lˋٴ/ˈ;->ʾˋ:Lˋٴ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lˋٴ/ʽ;->ᵎﹶ(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, v0, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lˋⁱ/ﾞᴵ;

    new-instance p2, Ljava/util/concurrent/TimeoutException;

    const-string p3, "Timeout expired"

    invoke-direct {p2, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lˋⁱ/ﾞᴵ;->ᵢˏ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDone()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lˋٴ/ˈ;->ʾˋ:Lˋٴ/ʽ;

    iget-object v1, v0, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, v0, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v0, v0, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ˉˆ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
