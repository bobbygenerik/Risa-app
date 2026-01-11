.class public final Lˏـ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public volatile ˈ:Z

.field public ˑﹳ:Ljava/lang/Object;

.field public final ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

.field public final ﹳٴ:Ljava/lang/Object;

.field public ﾞᴵ:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;-><init>(I)V

    iput-object v0, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lˏـ/ˉʿ;->ˉʿ()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    iput-object p1, p0, Lˏـ/ˉʿ;->ﾞᴵ:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ٴﹶ(Lˏـ/ˉʿ;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ʽ(Ljava/util/concurrent/Executor;Lˏـ/ﹳٴ;)Lˏـ/ˉʿ;
    .locals 3

    new-instance v0, Lˏـ/ˉʿ;

    invoke-direct {v0}, Lˏـ/ˉʿ;-><init>()V

    new-instance v1, Lˏـ/ˆʾ;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v0, v2}, Lˏـ/ˆʾ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ﹳٴ;Lˏـ/ˉʿ;I)V

    iget-object p1, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {p0}, Lˏـ/ˉʿ;->ᵔʾ()V

    return-object v0
.end method

.method public final ˆʾ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lˏـ/ˉʿ;->ˉʿ()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    iput-object p1, p0, Lˏـ/ˉʿ;->ˑﹳ:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ٴﹶ(Lˏـ/ˉʿ;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˈ()Ljava/lang/Exception;
    .locals 2

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˏـ/ˉʿ;->ﾞᴵ:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ˉʿ()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lˏـ/ˉʿ;->ʽ:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;->ʾˋ:I

    invoke-virtual {p0}, Lˏـ/ˉʿ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˏـ/ˉʿ;->ˈ()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lˏـ/ˉʿ;->ᵎﹶ()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lˏـ/ˉʿ;->ˈ:Z

    if-eqz v1, :cond_0

    const-string v1, "cancellation"

    goto :goto_0

    :cond_0
    const-string v1, "unknown issue"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lˏـ/ˉʿ;->ˑﹳ()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "failure"

    :goto_0
    new-instance v2, Lcom/google/android/gms/tasks/DuplicateTaskCompletionException;

    const-string v3, "Complete with: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v2

    :cond_4
    return-void
.end method

.method public final ˑﹳ()Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v2, v1}, Lٴﾞ/ʻٴ;->ᵔᵢ(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lˏـ/ˉʿ;->ˈ:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lˏـ/ˉʿ;->ﾞᴵ:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Lˏـ/ˉʿ;->ˑﹳ:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ٴﹶ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    iput-boolean v1, p0, Lˏـ/ˉʿ;->ˈ:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ٴﹶ(Lˏـ/ˉʿ;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final ᵎﹶ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lˏـ/ˉʿ;->ˈ:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lˏـ/ˉʿ;->ﾞᴵ:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ᵔʾ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ٴﹶ(Lˏـ/ˉʿ;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final ᵔᵢ(Ljava/util/concurrent/Executor;Lˏـ/ﾞᴵ;)Lˏـ/ˉʿ;
    .locals 2

    new-instance v0, Lˏـ/ˉʿ;

    invoke-direct {v0}, Lˏـ/ˉʿ;-><init>()V

    new-instance v1, Lˏـ/ٴﹶ;

    invoke-direct {v1, p1, p2, v0}, Lˏـ/ٴﹶ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ﾞᴵ;Lˏـ/ˉʿ;)V

    iget-object p1, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {p0}, Lˏـ/ˉʿ;->ᵔʾ()V

    return-object v0
.end method

.method public final ⁱˊ(Ljava/util/concurrent/Executor;Lˏـ/ˑﹳ;)V
    .locals 1

    new-instance v0, Lˏـ/ٴﹶ;

    invoke-direct {v0, p1, p2}, Lˏـ/ٴﹶ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ˑﹳ;)V

    iget-object p1, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {p0}, Lˏـ/ˉʿ;->ᵔʾ()V

    return-void
.end method

.method public final ﹳٴ(Ljava/util/concurrent/Executor;Lˏـ/ˈ;)V
    .locals 1

    new-instance v0, Lˏـ/ٴﹶ;

    invoke-direct {v0, p1, p2}, Lˏـ/ٴﹶ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ˈ;)V

    iget-object p1, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {p0}, Lˏـ/ˉʿ;->ᵔʾ()V

    return-void
.end method

.method public final ﾞʻ(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    iput-object p1, p0, Lˏـ/ˉʿ;->ˑﹳ:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ٴﹶ(Lˏـ/ˉʿ;)V

    return v1

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﾞᴵ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lˏـ/ˉʿ;->ʽ:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
