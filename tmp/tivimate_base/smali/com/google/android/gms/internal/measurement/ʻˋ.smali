.class public final Lcom/google/android/gms/internal/measurement/ʻˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile ᵎﹶ:Lcom/google/android/gms/internal/measurement/ʻˋ;


# instance fields
.field public final ʽ:Ljava/util/ArrayList;

.field public ˈ:I

.field public ˑﹳ:Z

.field public final ⁱˊ:Lˊⁱ/ˑﹳ;

.field public final ﹳٴ:Ljava/util/concurrent/ExecutorService;

.field public volatile ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const-string v0, "FA"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/measurement/ˊᵔ;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/measurement/ˊᵔ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;)V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lˊⁱ/ˑﹳ;

    const/16 v3, 0x17

    invoke-direct {v1, v3, p0}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ⁱˊ:Lˊⁱ/ˑﹳ;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ʽ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lﹶﾞ/ʻᴵ;->ﹳٴ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lﹶﾞ/ʻᴵ;->ⁱˊ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v3, "com.google.firebase.analytics.FirebaseAnalytics"

    const-class v4, Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ˑﹳ:Z

    const-string p1, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection."

    nop

    return-void

    :catch_1
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵎᵔ;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/ᵎᵔ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_1

    const-string p1, "Unable to register lifecycle notifications. Application null."

    nop

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/measurement/ﹳﹳ;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/ﹳﹳ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/ʻˋ;
    .locals 2

    .prologue
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ᵎﹶ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/ʻˋ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ʻˋ;->ᵎﹶ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/ʻˋ;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/ʻˋ;->ᵎﹶ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ᵎﹶ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    return-object p0
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Exception;ZZ)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ˑﹳ:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ˑﹳ:Z

    const-string v0, "FA"

    if-eqz p2, :cond_0

    const-string p2, "Data collection startup failed. No data will be collected."

    nop

    return-void

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/measurement/ˉـ;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/ˉـ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    :cond_1
    const-string p2, "Error with data collection. Data lost."

    nop

    return-void
.end method

.method public final ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
