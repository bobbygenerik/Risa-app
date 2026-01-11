.class public final Lcom/google/android/gms/internal/play_billing/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʾˋ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

.field public final ᴵˊ:Lʻʽ/ʼˎ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/ᴵˑ;Lʻʽ/ʼˎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/ـˏ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/ـˏ;->ᴵˊ:Lʻʽ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/ـˏ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/ᵎᵔ;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ـˏ;->ᴵˊ:Lʻʽ/ʼˎ;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ᵎᵔ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ᵎᵔ;->ʽ()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lʻʽ/ʼˎ;->ˑﹳ(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_2
    :goto_2
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v2, Lʻʽ/ʼˎ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lʼٴ/ʾˋ;

    if-lez v1, :cond_3

    iget v1, v2, Lʻʽ/ʼˎ;->ⁱˊ:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "Billing override value was set by a license tester."

    invoke-static {v0, v4}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v3, v4, v1, v0}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V

    iget-object v1, v2, Lʻʽ/ʼˎ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lˑٴ/ﹳٴ;

    invoke-interface {v1, v0}, Lˑٴ/ﹳٴ;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v0, v2, Lʻʽ/ʼˎ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_3
    return-void

    :catchall_1
    move-exception v0

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_4
    throw v0

    :catch_1
    move v4, v3

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v0, "Future was expected to be done: %s"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˉـ(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    invoke-virtual {v2, v0}, Lʻʽ/ʼˎ;->ˑﹳ(Ljava/lang/Throwable;)V

    return-void

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lʻʽ/ʼˎ;->ˑﹳ(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/parse/ٴʼ;

    const-class v1, Lcom/google/android/gms/internal/play_billing/ـˏ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ٴʼ;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ﾞʻ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ﾞʻ;

    iput-object v1, v2, Lcom/google/android/gms/internal/play_billing/ﾞʻ;->ⁱˊ:Lcom/google/android/gms/internal/play_billing/ﾞʻ;

    iput-object v1, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/ـˏ;->ᴵˊ:Lʻʽ/ʼˎ;

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/ﾞʻ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/parse/ٴʼ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
