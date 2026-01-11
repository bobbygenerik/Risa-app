.class public final Lﹶﾞ/ˋˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic ʾˋ:Lﹶﾞ/ˈـ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ˈـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˋˊ;->ʾˋ:Lﹶﾞ/ˈـ;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ﹳٴ(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lﹶﾞ/ˋˊ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ﹳٴ(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹶﾞ/ˋˊ;->ⁱˊ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ﹳٴ(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹶﾞ/ˋˊ;->ʽ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ﹳٴ(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹶﾞ/ˋˊ;->ˈ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ﹳٴ(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lﹶﾞ/ˋˊ;->ˑﹳ(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final ʽ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˋˊ;->ʾˋ:Lﹶﾞ/ˈـ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v2, v1, Lﹶﾞ/ﾞˏ;->ᵔי:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, v1, Lﹶﾞ/ﾞˏ;->ᵎˊ:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lﹶﾞ/ﾞˏ;->ˉٴ:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v5}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iput-object v6, v1, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    iget-object p1, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v2, Lﹶﾞ/ʻٴ;

    invoke-direct {v2, v1, v3, v4}, Lﹶﾞ/ʻٴ;-><init>(Lﹶﾞ/ﾞˏ;J)V

    invoke-virtual {p1, v2}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lﹶﾞ/ﾞˏ;->יˉ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)Lﹶﾞ/ﹶʽ;

    move-result-object p1

    iget-object v5, v1, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    iput-object v5, v1, Lﹶﾞ/ﾞˏ;->ˈٴ:Lﹶﾞ/ﹶʽ;

    iput-object v6, v1, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v5, Lﹶﾞ/ﹳٴ;

    invoke-direct {v5, v1, p1, v3, v4}, Lﹶﾞ/ﹳٴ;-><init>(Lﹶﾞ/ﾞˏ;Lﹶﾞ/ﹶʽ;J)V

    invoke-virtual {v2, v5}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˉٴ:Lﹶﾞ/ˉʽ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v3, Lﹶﾞ/ᵢᐧ;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v1, v2, v4}, Lﹶﾞ/ᵢᐧ;-><init>(Lﹶﾞ/ˉʽ;JI)V

    invoke-virtual {v0, v3}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˈ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˋˊ;->ʾˋ:Lﹶﾞ/ˈـ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ˉٴ:Lﹶﾞ/ˉʽ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v2, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v5, Lﹶﾞ/ᵢᐧ;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v4, v6}, Lﹶﾞ/ᵢᐧ;-><init>(Lﹶﾞ/ˉʽ;JI)V

    invoke-virtual {v2, v5}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v1, v0, Lﹶﾞ/ﾞˏ;->ᵔי:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lﹶﾞ/ﾞˏ;->ᵎˊ:Z

    iget-object v2, v0, Lﹶﾞ/ﾞˏ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-static {p1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, v0, Lﹶﾞ/ﾞˏ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ᴵˑ;

    iput-boolean v3, v0, Lﹶﾞ/ﾞˏ;->ˉٴ:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v4, v2, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v4}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, v0, Lﹶﾞ/ﾞˏ;->ᵎⁱ:Lﹶﾞ/ﹶʽ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v4, Lﹶﾞ/ٴʿ;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lﹶﾞ/ٴʿ;-><init>(Lﹶﾞ/ﾞˏ;I)V

    invoke-virtual {v2, v4}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v2}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, v0, Lﹶﾞ/ﾞˏ;->ᵎⁱ:Lﹶﾞ/ﹶʽ;

    iput-object p1, v0, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    iget-object p1, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v1, Lﹶﾞ/ٴʿ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lﹶﾞ/ٴʿ;-><init>(Lﹶﾞ/ﾞˏ;I)V

    invoke-virtual {p1, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lﹶﾞ/ﾞˏ;->יˉ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)Lﹶﾞ/ﹶʽ;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lﹶﾞ/ﾞˏ;->ˑˆ(Ljava/lang/String;Lﹶﾞ/ﹶʽ;Z)V

    iget-object p1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ᵔٴ:Lﹶﾞ/ـˆ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v0, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v3, Lﹶﾞ/ʻٴ;

    invoke-direct {v3, p1, v1, v2}, Lﹶﾞ/ʻٴ;-><init>(Lﹶﾞ/ـˆ;J)V

    invoke-virtual {v0, v3}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final ˑﹳ(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˋˊ;->ʾˋ:Lﹶﾞ/ˈـ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, v0, Lﹶﾞ/ﾞˏ;->ˊʻ:Lj$/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ʾˋ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹶﾞ/ﹶʽ;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p1, Lﹶﾞ/ﹶʽ;->ʽ:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    iget-object v2, p1, Lﹶﾞ/ﹶʽ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    iget-object p1, p1, Lﹶﾞ/ﹶʽ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ⁱˊ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˋˊ;->ʾˋ:Lﹶﾞ/ˈـ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v1, v0, Lﹶﾞ/ﾞˏ;->ᵔי:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lﹶﾞ/ﾞˏ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lﹶﾞ/ﾞˏ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ᴵˑ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lﹶﾞ/ﾞˏ;->ˊʻ:Lj$/util/concurrent/ConcurrentHashMap;

    iget p1, p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ʾˋ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    iget-object v1, p0, Lﹶﾞ/ˋˊ;->ʾˋ:Lﹶﾞ/ˈـ;

    :try_start_0
    iget-object v0, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "onActivityCreated"

    invoke-virtual {v2, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ʽʽ:Landroid/content/Intent;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v5, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v5, "com.android.vending.referral_url"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_8

    :cond_3
    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "https://www.google.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android-app://com.google.appcrawler"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v2, "auto"

    :goto_3
    move-object v6, v2

    goto :goto_5

    :cond_5
    :goto_4
    const-string v2, "gs"

    goto :goto_3

    :goto_5
    const-string v2, "referrer"

    invoke-virtual {v5, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez p2, :cond_6

    const/4 v2, 0x1

    :goto_6
    move v4, v2

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :goto_7
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v2, Lﹶﾞ/ʻʿ;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lﹶﾞ/ʻʿ;-><init>(Lﹶﾞ/ˋˊ;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :cond_7
    :goto_8
    iget-object v0, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    :goto_9
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v0, p1, p2}, Lﹶﾞ/ﾞˏ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;)V

    return-void

    :goto_a
    :try_start_1
    iget-object v2, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Throwable caught in onActivityCreated"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    iget-object v0, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    goto :goto_9

    :goto_c
    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v1, p1, p2}, Lﹶﾞ/ﾞˏ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;)V

    throw v0
.end method
