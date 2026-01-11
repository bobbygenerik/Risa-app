.class public final Lʼٴ/ʾˋ;
.super Lʼٴ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public volatile ˆﾞ:Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

.field public volatile ˈʿ:Ljava/util/concurrent/ScheduledExecutorService;

.field public final ᵎˊ:Landroid/content/Context;

.field public volatile ᵔי:I

.field public volatile ᵔٴ:Lʼٴ/ᵢˏ;


# direct methods
.method public constructor <init>(Lˋⁱ/ﾞᴵ;Landroid/content/Context;Lʼٴ/ᵔʾ;Lʼٴ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lʼٴ/ⁱˊ;-><init>(Lˋⁱ/ﾞᴵ;Landroid/content/Context;Lʼٴ/ᵔʾ;Lʼٴ/ﹳٴ;)V

    const/4 p1, 0x0

    iput p1, p0, Lʼٴ/ʾˋ;->ᵔי:I

    iput-object p2, p0, Lʼٴ/ʾˋ;->ᵎˊ:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ﾞᴵ;Landroid/content/Context;Lʼٴ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lʼٴ/ⁱˊ;-><init>(Lˋⁱ/ﾞᴵ;Landroid/content/Context;Lʼٴ/ﹳٴ;)V

    const/4 p1, 0x0

    iput p1, p0, Lʼٴ/ʾˋ;->ᵔי:I

    iput-object p2, p0, Lʼٴ/ʾˋ;->ᵎˊ:Landroid/content/Context;

    return-void
.end method

.method public static synthetic ـᵢ(Lʼٴ/ʾˋ;Landroidx/leanback/widget/ˉˆ;Lʼٴ/ﾞʻ;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lʼٴ/ⁱˊ;->ˏᵢ(Landroidx/leanback/widget/ˉˆ;Lʼٴ/ﾞʻ;)V

    return-void
.end method

.method public static synthetic ﹶ(Lʼٴ/ʾˋ;Lﹳי/ʽ;Lar/tvplayer/core/data/api/parse/ˈ;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lʼٴ/ⁱˊ;->ᐧﾞ(Lﹳי/ʽ;Lar/tvplayer/core/data/api/parse/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʻʿ(ILˑٴ/ﹳٴ;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    invoke-virtual {p0, p1}, Lʼٴ/ʾˋ;->ﹳⁱ(I)Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lʼٴ/ʾˋ;->ˈʿ:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lʼٴ/ʾˋ;->ˈʿ:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lʼٴ/ʾˋ;->ˈʿ:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    new-instance v4, Lcom/google/android/gms/internal/play_billing/ˉـ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lcom/google/android/gms/internal/play_billing/ˉـ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʿᵢ;

    const-wide/16 v5, 0x6f54

    invoke-interface {v2, v4, v5, v6, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v3, Lcom/google/android/gms/internal/play_billing/ʿᵢ;->ᵎⁱ:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ʼˈ;->ʾˋ:Lcom/google/android/gms/internal/play_billing/ʼˈ;

    invoke-interface {v0, v4, v1}, Lcom/google/android/gms/internal/play_billing/ᴵˑ;->ⁱˊ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object v0, v3

    :goto_1
    new-instance v1, Lʻʽ/ʼˎ;

    invoke-direct {v1, p0, p1, p2, p3}, Lʻʽ/ʼˎ;-><init>(Lʼٴ/ʾˋ;ILˑٴ/ﹳٴ;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ʻᵎ()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/play_billing/ـˏ;

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/ـˏ;-><init>(Lcom/google/android/gms/internal/play_billing/ᴵˑ;Lʻʽ/ʼˎ;)V

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/ᴵˑ;->ⁱˊ(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˏᵢ(Landroidx/leanback/widget/ˉˆ;Lʼٴ/ﾞʻ;)V
    .locals 3

    new-instance v0, Lʼٴ/ʻٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lʼٴ/ʻٴ;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lʼٴ/ـˆ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0, v1}, Lʼٴ/ʾˋ;->ʻʿ(ILˑٴ/ﹳٴ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized ٴᴵ()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lʼٴ/ʾˋ;->ᵔי:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lʼٴ/ʾˋ;->ˆﾞ:Lcom/google/android/gms/internal/play_billing/ᵔᵢ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʼٴ/ʾˋ;->ᵔٴ:Lʼٴ/ᵢˏ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ᐧᴵ(Lᵔᵢ/ˆʾ;Lcom/bumptech/glide/ʼˎ;)Lʼٴ/ﾞᴵ;
    .locals 8

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lʼٴ/ʾˋ;->ﹳⁱ(I)Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    move-result-object v1

    const-string v2, "BillingClientTesting"

    const/4 v3, 0x0

    const/16 v4, 0x1c

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x6f54

    invoke-interface {v1, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    instance-of v5, v1, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/16 v5, 0x5f

    sget-object v6, Lʼٴ/ˈٴ;->ﹳᐧ:Lʼٴ/ﾞᴵ;

    invoke-virtual {p0, v5, v4, v6}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V

    const-string v4, "An error occurred while retrieving billing override."

    invoke-static {v2, v4, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    const/16 v5, 0x66

    sget-object v6, Lʼٴ/ˈٴ;->ﹳᐧ:Lʼٴ/ﾞᴵ;

    invoke-virtual {p0, v5, v4, v6}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V

    const-string v4, "Asynchronous call to Billing Override Service timed out."

    invoke-static {v2, v4, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-lez v3, :cond_1

    const-string p1, "Billing override value was set by a license tester."

    invoke-static {v3, p1}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object p1

    const/16 p2, 0x5d

    invoke-virtual {p0, p2, v0, p1}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V

    invoke-virtual {p0, p1}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    goto :goto_3

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lʼٴ/ⁱˊ;->ᐧᴵ(Lᵔᵢ/ˆʾ;Lcom/bumptech/glide/ʼˎ;)Lʼٴ/ﾞᴵ;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    sget-object p2, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0, p2}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V

    const-string v0, "An internal error occurred."

    invoke-static {v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    return-object p1
.end method

.method public final ᐧﾞ(Lﹳי/ʽ;Lar/tvplayer/core/data/api/parse/ˈ;)V
    .locals 3

    new-instance v0, Lʼٴ/ʻٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lʼٴ/ʻٴ;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lʼٴ/ـˆ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lʼٴ/ʾˋ;->ʻʿ(ILˑٴ/ﹳٴ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᴵʼ(Lar/tvplayer/core/domain/ʽﹳ;)V
    .locals 9

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lʼٴ/ʾˋ;->ٴᴵ()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-eqz v0, :cond_0

    const-string v0, "BillingClientTesting"

    const-string v3, "Billing Override Service connection is valid. No need to re-initialize."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    invoke-static {v2, v0}, Lʼٴ/ᴵˊ;->ʽ(ILcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    move-result-object v0

    const-string v2, "ApiSuccess should not be null"

    invoke-static {v0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ⁱי;->ᵔٴ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˆˑ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v2, "BillingLogger"

    const-string v3, "Unable to log."

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit p0

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :try_start_3
    iget v0, p0, Lʼٴ/ʾˋ;->ᵔי:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "BillingClientTesting"

    const-string v2, "Client is already in the process of connecting to Billing Override Service."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    goto/16 :goto_3

    :cond_1
    :try_start_4
    iget v0, p0, Lʼٴ/ʾˋ;->ᵔי:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    const-string v0, "BillingClientTesting"

    const-string v3, "Billing Override Service Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service connection is disconnected."

    const/4 v3, -0x1

    invoke-static {v3, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v0

    const/16 v3, 0x26

    invoke-virtual {p0, v3, v2, v0}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    goto/16 :goto_3

    :cond_2
    :try_start_5
    iput v3, p0, Lʼٴ/ʾˋ;->ᵔי:I

    const-string v0, "BillingClientTesting"

    const-string v4, "Starting Billing Override Service setup."

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lʼٴ/ᵢˏ;

    invoke-direct {v0, v1, p0}, Lʼٴ/ᵢˏ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lʼٴ/ʾˋ;->ᵔٴ:Lʼٴ/ᵢˏ;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.apps.play.billingtestcompanion"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lʼٴ/ʾˋ;->ᵎˊ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_6

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v7, "com.google.android.apps.play.billingtestcompanion"

    invoke-static {v6, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x27

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lʼٴ/ʾˋ;->ᵔٴ:Lʼٴ/ᵢˏ;

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "BillingClientTesting"

    const-string v2, "Billing Override Service was bonded successfully."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    goto :goto_3

    :cond_3
    :try_start_6
    const-string v0, "BillingClientTesting"

    const-string v3, "Connection to Billing Override Service is blocked."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v8

    goto :goto_2

    :cond_4
    const-string v0, "BillingClientTesting"

    const-string v3, "The device doesn\'t have valid Play Billing Lab."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v3, 0x29

    :cond_6
    :goto_2
    iput v1, p0, Lʼٴ/ʾˋ;->ᵔי:I

    const-string v0, "BillingClientTesting"

    const-string v4, "Billing Override Service unavailable on device."

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Billing Override Service unavailable on device."

    const/4 v4, 0x2

    invoke-static {v4, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v0}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    :goto_3
    invoke-virtual {p0, p1, v1}, Lʼٴ/ⁱˊ;->ˑʼ(Lʼٴ/ʽ;I)V

    return-void

    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public final ⁱי(IILʼٴ/ﾞᴵ;)V
    .locals 2

    sget v0, Lʼٴ/ᴵˊ;->ﹳٴ:I

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    invoke-static {p1, p2, p3, v0, v1}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p1

    const-string p2, "ApiFailure should not be null"

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-virtual {p2, p1}, Lﹶﾞ/ⁱי;->ˊʻ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V

    return-void
.end method

.method public final ﹳⁱ(I)Lcom/google/android/gms/internal/play_billing/ᴵˑ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʼٴ/ʾˋ;->ٴᴵ()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "BillingClientTesting"

    const-string v0, "Billing Override Service is not ready."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string v0, "Billing Override Service connection is disconnected."

    invoke-static {p1, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object p1

    const/16 v0, 0x5e

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1, p1}, Lʼٴ/ʾˋ;->ⁱי(IILʼٴ/ﾞᴵ;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ﹳـ;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/ﹳـ;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lʼٴ/ʾᵎ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    invoke-static {v0}, Lﹳˋ/ʽʽ;->ᴵᵔ(Lʼٴ/ʾᵎ;)Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    move-result-object p1

    return-object p1
.end method
