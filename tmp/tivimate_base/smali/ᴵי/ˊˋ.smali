.class public final Lᴵי/ˊˋ;
.super Lᴵי/ˋᵔ;
.source "SourceFile"

# interfaces
.implements Lᴵי/ʽʽ;


# instance fields
.field public final ᴵˊ:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Lᴵי/ˏי;-><init>()V

    iput-object p1, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    sget-object v0, Lˊʽ/ﹳٴ;->ﹳٴ:Ljava/lang/reflect/Method;

    :try_start_0
    instance-of v0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lˊʽ/ﹳٴ;->ﹳٴ:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lᴵי/ˊˋ;

    if-eqz v0, :cond_0

    check-cast p1, Lᴵי/ˊˋ;

    iget-object p1, p1, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʾˋ(JLᴵי/ٴﹶ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lˋˋ/ˈ;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-direct {v1, p0, p3, v3, v4}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object v3, p3, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v4, "The task was rejected"

    invoke-direct {v1, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    sget-object v0, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v3, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵי/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    new-instance p1, Lᴵי/ᵔᵢ;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v2}, Lᴵי/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Lᴵי/ٴﹶ;->ʼʼ(Lᴵי/ˊᵔ;)V

    return-void

    :cond_2
    sget-object v0, Lᴵי/ʼʼ;->ˉٴ:Lᴵי/ʼʼ;

    invoke-virtual {v0, p1, p2, p3}, Lᴵי/ˈʿ;->ʾˋ(JLᴵי/ٴﹶ;)V

    return-void
.end method

.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "The task was rejected"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    sget-object v0, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p1, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵי/ᴵˑ;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object v0, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object v0, Lʿⁱ/ʽ;->ᴵˊ:Lʿⁱ/ʽ;

    invoke-virtual {v0, p1, p2}, Lʿⁱ/ʽ;->ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;
    .locals 4

    .prologue
    iget-object v0, p0, Lᴵי/ˊˋ;->ᴵˊ:Ljava/util/concurrent/Executor;

    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v3, "The task was rejected"

    invoke-direct {v1, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    sget-object v0, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p4, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵי/ᴵˑ;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    new-instance p1, Lᴵי/ˉٴ;

    invoke-direct {p1, v2}, Lᴵי/ˉٴ;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    return-object p1

    :cond_2
    sget-object v0, Lᴵי/ʼʼ;->ˉٴ:Lᴵי/ʼʼ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lᴵי/ʼʼ;->ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;

    move-result-object p1

    return-object p1
.end method
