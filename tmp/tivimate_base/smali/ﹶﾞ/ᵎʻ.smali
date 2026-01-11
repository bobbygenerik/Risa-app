.class public final Lﹶﾞ/ᵎʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/יﹳ;


# static fields
.field public static volatile ᴵʼ:Lﹶﾞ/ᵎʻ;


# instance fields
.field public ʼˈ:Lﹶﾞ/ʼᐧ;

.field public final ʽʽ:Lᵔﹶ/ᵔʾ;

.field public final ʾˋ:Landroid/content/Context;

.field public volatile ʿ:Ljava/lang/Boolean;

.field public volatile ʿᵢ:Z

.field public final ˆﾞ:Lﹶﾞ/ˈـ;

.field public final ˈʿ:Lﹶﾞ/ˎˉ;

.field public final ˈٴ:Lﹶﾞ/ᵎﹶ;

.field public ˈⁱ:Z

.field public ˉـ:J

.field public final ˉٴ:Lﹶﾞ/ˉʽ;

.field public final ˊʻ:Lﹶﾞ/ﹳـ;

.field public ˊˋ:Lﹶﾞ/ʿʽ;

.field public ˋᵔ:Lﹶﾞ/ˈʿ;

.field public final ˏᵢ:J

.field public final ˑٴ:Ljava/lang/String;

.field public ـˏ:Lﹶﾞ/ˆﾞ;

.field public final ٴʼ:Lﹶﾞ/ˑٴ;

.field public final ٴᵢ:Lﹶﾞ/ʻˋ;

.field public final ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public ᐧﾞ:I

.field public final ᴵˊ:Z

.field public ᴵˑ:Ljava/lang/Boolean;

.field public final ᴵᵔ:Lﹶﾞ/ᐧᴵ;

.field public final ᵎˊ:Lᵎᴵ/ﹳٴ;

.field public ᵎᵔ:I

.field public final ᵎⁱ:Lﹶﾞ/ᵢﹳ;

.field public final ᵔי:Lﹶﾞ/ﾞˏ;

.field public final ᵔٴ:Lﹶﾞ/ـˆ;

.field public ﹳـ:Lﹶﾞ/ﹳᵢ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵎʿ;)V
    .locals 10

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹶﾞ/ᵎʻ;->ˈⁱ:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lﹶﾞ/ᵎʻ;->ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lﹶﾞ/ᵎʿ;->ﹳٴ:Landroid/content/Context;

    new-instance v2, Lᵔﹶ/ᵔʾ;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lᵔﹶ/ᵔʾ;-><init>(I)V

    iput-object v2, p0, Lﹶﾞ/ᵎʻ;->ʽʽ:Lᵔﹶ/ᵔʾ;

    sput-object v2, Lﹶﾞ/ʻᴵ;->ٴﹶ:Lᵔﹶ/ᵔʾ;

    iput-object v1, p0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    iget-boolean v2, p1, Lﹶﾞ/ᵎʿ;->ˑﹳ:Z

    iput-boolean v2, p0, Lﹶﾞ/ᵎʻ;->ᴵˊ:Z

    iget-object v2, p1, Lﹶﾞ/ᵎʿ;->ⁱˊ:Ljava/lang/Boolean;

    iput-object v2, p0, Lﹶﾞ/ᵎʻ;->ʿ:Ljava/lang/Boolean;

    iget-object v2, p1, Lﹶﾞ/ᵎʿ;->ᵎﹶ:Ljava/lang/String;

    iput-object v2, p0, Lﹶﾞ/ᵎʻ;->ˑٴ:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lﹶﾞ/ᵎʻ;->ʿᵢ:Z

    sget-object v3, Lcom/google/android/gms/internal/measurement/יˑ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/ⁱʾ;

    if-nez v3, :cond_6

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/measurement/יˑ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/measurement/יˑ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/ⁱʾ;

    if-nez v4, :cond_5

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lcom/google/android/gms/internal/measurement/יˑ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/ⁱʾ;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/ⁱʾ;->ﹳٴ:Landroid/content/Context;

    if-eq v6, v5, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ʾˏ;->ʽ()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ʻᐧ;->ﹳٴ()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˊـ;->ﾞʻ()V

    :cond_3
    new-instance v4, Lcom/google/android/gms/internal/measurement/ᐧⁱ;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/ᐧⁱ;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lʽٴ/ˈ;->ʽﹳ(Lˆʽ/ٴﹶ;)Lˆʽ/ٴﹶ;

    move-result-object v4

    new-instance v6, Lcom/google/android/gms/internal/measurement/ⁱʾ;

    invoke-direct {v6, v5, v4}, Lcom/google/android/gms/internal/measurement/ⁱʾ;-><init>(Landroid/content/Context;Lˆʽ/ٴﹶ;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/יˑ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/ⁱʾ;

    sget-object v4, Lcom/google/android/gms/internal/measurement/יˑ;->ʼˎ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_4
    monitor-exit v3

    goto :goto_3

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v3

    goto :goto_5

    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    :goto_5
    sget-object v3, Lᵎᴵ/ﹳٴ;->ﹳٴ:Lᵎᴵ/ﹳٴ;

    iput-object v3, p0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    iget-object v3, p1, Lﹶﾞ/ᵎʿ;->ﾞᴵ:Ljava/lang/Long;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_6
    iput-wide v3, p0, Lﹶﾞ/ᵎʻ;->ˏᵢ:J

    new-instance v3, Lﹶﾞ/ᵎﹶ;

    invoke-direct {v3, p0}, Lʽⁱ/ᵎﹶ;-><init>(Lﹶﾞ/ᵎʻ;)V

    sget-object v4, Lᵔﹶ/ᴵˊ;->ᴵˊ:Lᵔﹶ/ᴵˊ;

    iput-object v4, v3, Lﹶﾞ/ᵎﹶ;->ˈٴ:Lﹶﾞ/ﾞᴵ;

    iput-object v3, p0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    new-instance v3, Lﹶﾞ/ᐧᴵ;

    invoke-direct {v3, p0}, Lﹶﾞ/ᐧᴵ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v3}, Lﹶﾞ/ˎᐧ;->ˋˊ()V

    iput-object v3, p0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    new-instance v3, Lﹶﾞ/ﹳـ;

    invoke-direct {v3, p0}, Lﹶﾞ/ﹳـ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v3}, Lﹶﾞ/ˎᐧ;->ˋˊ()V

    iput-object v3, p0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    new-instance v4, Lﹶﾞ/ᵢﹳ;

    invoke-direct {v4, p0}, Lﹶﾞ/ᵢﹳ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v4}, Lﹶﾞ/ˎᐧ;->ˋˊ()V

    iput-object v4, p0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    new-instance v4, Lﹶﾞ/ᴵʼ;

    invoke-direct {v4, p1, p0}, Lﹶﾞ/ᴵʼ;-><init>(Lﹶﾞ/ᵎʿ;Lﹶﾞ/ᵎʻ;)V

    new-instance v5, Lﹶﾞ/ˑٴ;

    invoke-direct {v5, v4}, Lﹶﾞ/ˑٴ;-><init>(Lﹶﾞ/ᴵʼ;)V

    iput-object v5, p0, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    new-instance v4, Lﹶﾞ/ـˆ;

    invoke-direct {v4, p0}, Lﹶﾞ/ـˆ;-><init>(Lﹶﾞ/ᵎʻ;)V

    iput-object v4, p0, Lﹶﾞ/ᵎʻ;->ᵔٴ:Lﹶﾞ/ـˆ;

    new-instance v4, Lﹶﾞ/ﾞˏ;

    invoke-direct {v4, p0}, Lﹶﾞ/ﾞˏ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v4}, Lﹶﾞ/ٴᵢ;->ʽˑ()V

    iput-object v4, p0, Lﹶﾞ/ᵎʻ;->ᵔי:Lﹶﾞ/ﾞˏ;

    new-instance v4, Lﹶﾞ/ˈـ;

    invoke-direct {v4, p0}, Lﹶﾞ/ˈـ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v4}, Lﹶﾞ/ٴᵢ;->ʽˑ()V

    iput-object v4, p0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    new-instance v5, Lﹶﾞ/ˉʽ;

    invoke-direct {v5, p0}, Lﹶﾞ/ˉʽ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v5}, Lﹶﾞ/ٴᵢ;->ʽˑ()V

    iput-object v5, p0, Lﹶﾞ/ᵎʻ;->ˉٴ:Lﹶﾞ/ˉʽ;

    new-instance v5, Lﹶﾞ/ˎˉ;

    invoke-direct {v5, p0}, Lﹶﾞ/ˎᐧ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v5}, Lﹶﾞ/ˎᐧ;->ˋˊ()V

    iput-object v5, p0, Lﹶﾞ/ᵎʻ;->ˈʿ:Lﹶﾞ/ˎˉ;

    new-instance v5, Lﹶﾞ/ʻˋ;

    invoke-direct {v5, p0}, Lﹶﾞ/ʻˋ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v5}, Lﹶﾞ/ˎᐧ;->ˋˊ()V

    iput-object v5, p0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    iget-object v6, p1, Lﹶﾞ/ᵎʿ;->ˈ:Lcom/google/android/gms/internal/measurement/ﹳـ;

    if-eqz v6, :cond_8

    iget-wide v6, v6, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵˊ:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_a

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v1, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_b

    iget-object v1, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iget-object v2, v4, Lﹶﾞ/ˈـ;->ʽʽ:Lﹶﾞ/ˋˊ;

    if-nez v2, :cond_9

    new-instance v2, Lﹶﾞ/ˋˊ;

    invoke-direct {v2, v4}, Lﹶﾞ/ˋˊ;-><init>(Lﹶﾞ/ˈـ;)V

    iput-object v2, v4, Lﹶﾞ/ˈـ;->ʽʽ:Lﹶﾞ/ˋˊ;

    :cond_9
    if-eqz v0, :cond_b

    iget-object v0, v4, Lﹶﾞ/ˈـ;->ʽʽ:Lﹶﾞ/ˋˊ;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lﹶﾞ/ˈـ;->ʽʽ:Lﹶﾞ/ˋˊ;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_b
    :goto_8
    new-instance v0, Lˋˋ/ˈ;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1, p1}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v5, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final ʼˎ(Lﹶﾞ/ˎᐧ;)V
    .locals 2

    .prologue
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ˉˆ(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/ﹳـ;Ljava/lang/Long;)Lﹶﾞ/ᵎʻ;
    .locals 8

    .prologue
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/google/android/gms/internal/measurement/ﹳـ;->ˈٴ:Landroid/os/Bundle;

    iget-boolean v5, p1, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʽʽ:Z

    iget-wide v3, p1, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵˊ:J

    iget-wide v1, p1, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʾˋ:J

    new-instance v0, Lcom/google/android/gms/internal/measurement/ﹳـ;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/ﹳـ;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object v0, Lﹶﾞ/ᵎʻ;->ᴵʼ:Lﹶﾞ/ᵎʻ;

    if-nez v0, :cond_2

    const-class v1, Lﹶﾞ/ᵎʻ;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lﹶﾞ/ᵎʻ;->ᴵʼ:Lﹶﾞ/ᵎʻ;

    if-nez v0, :cond_1

    new-instance v0, Lﹶﾞ/ᵎʿ;

    invoke-direct {v0, p0, p1, p2}, Lﹶﾞ/ᵎʿ;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/ﹳـ;Ljava/lang/Long;)V

    new-instance p0, Lﹶﾞ/ᵎʻ;

    invoke-direct {p0, v0}, Lﹶﾞ/ᵎʻ;-><init>(Lﹶﾞ/ᵎʿ;)V

    sput-object p0, Lﹶﾞ/ᵎʻ;->ᴵʼ:Lﹶﾞ/ᵎʻ;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p1, Lcom/google/android/gms/internal/measurement/ﹳـ;->ˈٴ:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    const-string p1, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lﹶﾞ/ᵎʻ;->ᴵʼ:Lﹶﾞ/ᵎʻ;

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object p1, Lﹶﾞ/ᵎʻ;->ᴵʼ:Lﹶﾞ/ᵎʻ;

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p1, Lﹶﾞ/ᵎʻ;->ʿ:Ljava/lang/Boolean;

    :cond_3
    :goto_2
    sget-object p0, Lﹶﾞ/ᵎʻ;->ᴵʼ:Lﹶﾞ/ᵎʻ;

    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object p0, Lﹶﾞ/ᵎʻ;->ᴵʼ:Lﹶﾞ/ᵎʻ;

    return-object p0
.end method

.method public static final ˑﹳ(Lﹶﾞ/ʾᵎ;)V
    .locals 1

    .prologue
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ᵔᵢ(Lﹶﾞ/ٴᵢ;)V
    .locals 2

    .prologue
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lﹶﾞ/ٴᵢ;->ᴵˊ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ﾞᴵ(Lʽⁱ/ᵎﹶ;)V
    .locals 1

    .prologue
    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ʽ()Z
    .locals 6

    .prologue
    iget-boolean v0, p0, Lﹶﾞ/ᵎʻ;->ˈⁱ:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ᴵˑ:Ljava/lang/Boolean;

    iget-object v1, p0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lﹶﾞ/ᵎʻ;->ˉـ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lﹶﾞ/ᵎʻ;->ˉـ:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lﹶﾞ/ᵎʻ;->ˉـ:J

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lﹶﾞ/ᵢﹳ;->ˎـ(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lﹶﾞ/ᵢﹳ;->ˎـ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v1}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v3

    invoke-virtual {v3}, Lˑˊ/ⁱˊ;->ⁱˊ()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v3}, Lﹶﾞ/ᵎﹶ;->ˋˊ()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lﹶﾞ/ᵢﹳ;->ˎᵎ(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lﹶﾞ/ᵢﹳ;->ˊﾞ(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lﹶﾞ/ᵎʻ;->ᴵˑ:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lﹶﾞ/ᵢﹳ;->ʼᵢ(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lﹶﾞ/ᵎʻ;->ᴵˑ:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ᴵˑ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˆʾ()Lﹶﾞ/ˑٴ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    return-object v0
.end method

.method public final ˈ(ILjava/lang/Throwable;[B)V
    .locals 19

    .prologue
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "timestamp"

    const-string v5, "gad_source"

    const-string v6, "gbraid"

    const-string v7, "gclid"

    const-string v8, "deeplink"

    const-string v9, ""

    const/16 v10, 0xc8

    iget-object v11, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    if-eq v0, v10, :cond_1

    const/16 v10, 0xcc

    if-eq v0, v10, :cond_1

    const/16 v10, 0x130

    if-ne v0, v10, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move-object v3, v11

    goto/16 :goto_6

    :cond_1
    :goto_0
    if-nez v2, :cond_0

    iget-object v0, v1, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v0, v0, Lﹶﾞ/ᐧᴵ;->ـˏ:Lﹶﾞ/ᐧﾞ;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lﹶﾞ/ᐧﾞ;->ⁱˊ(Z)V

    if-eqz v3, :cond_2

    array-length v0, v3

    if-nez v0, :cond_3

    :cond_2
    move-object v3, v11

    goto/16 :goto_5

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v11, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v2, "Deferred Deep Link is empty."

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    move-object v3, v11

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v3, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v13, 0x0

    invoke-virtual {v3, v4, v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v15, v1, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v15}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v2, v15, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v16, v11

    goto/16 :goto_3

    :cond_5
    move-wide/from16 p2, v13

    iget-object v13, v2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v11

    :try_start_1
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v17, v15

    const-string v15, "android.intent.action.VIEW"

    move-object/from16 v18, v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v11, v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v11, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v3, v6, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v3, v16

    goto/16 :goto_4

    :cond_6
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v3, v5, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3, v7, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "_cis"

    const-string v6, "ddp"

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    const-string v6, "auto"

    const-string v7, "_cmp"

    invoke-virtual {v5, v6, v7, v3}, Lﹶﾞ/ˈـ;->ˈـ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    :try_start_2
    const-string v3, "google.analytics.deferred.deeplink.prefs"

    invoke-virtual {v13, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_a

    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.google.analytics.action.DEEPLINK_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, v18

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_9

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_9
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catch_2
    move-exception v0

    move-object/from16 v2, v17

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Failed to persist Deferred Deep Link. exception"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    :goto_3
    invoke-static/range {v16 .. v16}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v3, v16

    :try_start_4
    iget-object v2, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v4, "Deferred Deep Link validation failed. gclid, gbraid, deep link"

    invoke-virtual {v2, v4, v10, v12, v0}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception v0

    :goto_4
    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Failed to parse the Deferred Deep Link response. exception"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :goto_5
    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v3, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v2, "Deferred Deep Link response empty."

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void

    :goto_6
    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v4, "Network Request for Deferred Deep Link failed. response, exception"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ˈʿ()Lᵔﹶ/ᵔʾ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ʽʽ:Lᵔﹶ/ᵔʾ;

    return-object v0
.end method

.method public final ˉʿ()Lﹶﾞ/ʼᐧ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ʼˈ:Lﹶﾞ/ʼᐧ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ʼˈ:Lﹶﾞ/ʼᐧ;

    return-object v0
.end method

.method public final ـˆ()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    return-object v0
.end method

.method public final ٴﹶ()Lﹶﾞ/ˈʿ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ˋᵔ:Lﹶﾞ/ˈʿ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ˋᵔ:Lﹶﾞ/ˈʿ;

    return-object v0
.end method

.method public final ᵎˊ()Lᵎᴵ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    return-object v0
.end method

.method public final ᵎﹶ()Lﹶﾞ/ﹳـ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    return-object v0
.end method

.method public final ᵔʾ()Lﹶﾞ/ˆﾞ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ـˏ:Lﹶﾞ/ˆﾞ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ـˏ:Lﹶﾞ/ˆﾞ;

    return-object v0
.end method

.method public final ⁱˊ()I
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v1, p0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v1}, Lﹶﾞ/ᵎﹶ;->ˋـ()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v0, p0, Lﹶﾞ/ᵎʻ;->ʿᵢ:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "measurement_enabled"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    iget-object v0, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʽʽ:Lᵔﹶ/ᵔʾ;

    const-string v0, "firebase_analytics_collection_enabled"

    invoke-virtual {v1, v0}, Lﹶﾞ/ᵎﹶ;->ᵢˋ(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    return v0

    :cond_4
    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ʿ:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ʿ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x7

    return v0

    :cond_6
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_7
    const/16 v0, 0x8

    return v0

    :cond_8
    return v3
.end method

.method public final ﹳٴ()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ᵎʻ;->ⁱˊ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳᐧ()Lﹶﾞ/ʻˋ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    return-object v0
.end method

.method public final ﾞʻ()Lﹶﾞ/ʿʽ;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ˊˋ:Lﹶﾞ/ʿʽ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, p0, Lﹶﾞ/ᵎʻ;->ˊˋ:Lﹶﾞ/ʿʽ;

    return-object v0
.end method
