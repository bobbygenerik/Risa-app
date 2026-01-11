.class public final Lcom/google/android/gms/internal/play_billing/ˉـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const-string v0, "Timed out (timeout delayed by "

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/ˉـ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/play_billing/ˉـ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵔᵢ(Lcom/google/android/gms/internal/play_billing/ᴵˑ;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v2, v1, v3, v0}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˆʾ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˊʻ;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ˊʻ;-><init>(Lcom/google/android/gms/internal/play_billing/ʿᵢ;Lcom/google/android/gms/internal/play_billing/ᴵˑ;)V

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v4, v1, v3, v0}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/play_billing/ʼˈ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼˈ;

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/play_billing/ᴵˑ;->ⁱˊ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object v3, Lcom/google/android/gms/internal/play_billing/ˉٴ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ˉٴ;

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v2, v1, v0, v3}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ʾˋ:Ljava/lang/Object;

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/play_billing/ᴵᵔ;->ﹳٴ:Z

    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_4
    const/4 v4, 0x1

    :try_start_2
    iget-object v5, v1, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎⁱ:Ljava/util/concurrent/ScheduledFuture;

    iput-object v3, v1, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎⁱ:Ljava/util/concurrent/ScheduledFuture;

    const-string v6, "Timed out"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_5

    :try_start_3
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0xa

    cmp-long v5, v7, v9

    if-lez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms after scheduled time)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v5, Lcom/google/android/gms/internal/play_billing/ʿ;

    invoke-direct {v5, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v5, v1, v3, v0}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˆʾ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :catchall_2
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_5
    new-instance v5, Lcom/google/android/gms/internal/play_billing/ʿ;

    invoke-direct {v5, v6}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/internal/play_billing/ˉٴ;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/play_billing/ˉٴ;-><init>(Ljava/lang/Throwable;)V

    sget-object v5, Lcom/google/android/gms/internal/play_billing/ˈʿ;->ٴᵢ:Lʽٴ/ˈ;

    invoke-virtual {v5, v1, v3, v6}, Lʽٴ/ˈ;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ˈʿ;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˆʾ(Lcom/google/android/gms/internal/play_billing/ʿᵢ;)V

    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0

    :cond_8
    :goto_4
    return-void
.end method
