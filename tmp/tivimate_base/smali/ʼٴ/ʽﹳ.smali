.class public final Lʼٴ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

.field public final ʾˋ:Lʼٴ/ʽ;

.field public final ˈٴ:I

.field public final ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

.field public final synthetic ᴵᵔ:Lʼٴ/ⁱˊ;


# direct methods
.method public constructor <init>(Lʼٴ/ⁱˊ;Lʼٴ/ʽ;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object p1, p1, Lʼٴ/ⁱˊ;->ٴʼ:Lcom/google/android/gms/internal/measurement/ᵎ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/ᵔʾ;-><init>(Lcom/google/android/gms/internal/measurement/ᵎ;)V

    iput-object v0, p0, Lʼٴ/ʽﹳ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/ᵔʾ;-><init>(Lcom/google/android/gms/internal/measurement/ᵎ;)V

    iput-object v0, p0, Lʼٴ/ʽﹳ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    iput-object p2, p0, Lʼٴ/ʽﹳ;->ʾˋ:Lʼٴ/ʽ;

    iput p3, p0, Lʼٴ/ʽﹳ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    const-string p1, "BillingClient"

    const-string v0, "Billing service died."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    invoke-static {v0}, Lʼٴ/ⁱˊ;->ᐧﹶ(Lʼٴ/ⁱˊ;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ʽﹳ()Lcom/google/android/gms/internal/play_billing/ﹶʽ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ˏי(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->יـ()Lcom/google/android/gms/internal/play_billing/ˊˊ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    const/16 v4, 0x6e

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ˑﹳ(Lcom/google/android/gms/internal/play_billing/ˊˊ;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ﹳᐧ()Lcom/google/android/gms/internal/play_billing/ˑﹶ;

    move-result-object v2

    iget v3, p0, Lʼٴ/ʽﹳ;->ˈٴ:I

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ˑﹳ(Z)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ﾞᴵ(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ˑﹶ;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ˊʻ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ـʻ;->ᵔʾ()Lcom/google/android/gms/internal/play_billing/ـʻ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ٴʼ(Lcom/google/android/gms/internal/play_billing/ـʻ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object v1, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, v0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget v2, v0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, p1}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    invoke-virtual {v0}, Lʼٴ/ⁱˊ;->ٴﹳ()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p1, p0, Lʼٴ/ʽﹳ;->ʾˋ:Lʼٴ/ʽ;

    invoke-interface {p1}, Lʼٴ/ʽ;->ˑﹳ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingServiceDisconnected."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_3
    :try_start_3
    monitor-exit v1

    :goto_4
    return-void

    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .prologue
    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object v1, p1, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/google/android/gms/internal/play_billing/ⁱˊ;->ˑﹳ:I

    const-string v0, "com.android.vending.billing.IInAppBillingService"

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/play_billing/ʽ;

    if-eqz v3, :cond_2

    move-object p2, v2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ʽ;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v0, v3}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p2, v2

    :goto_0
    iput-object p2, p1, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Lʼٴ/ˏי;

    const/4 p2, 0x0

    invoke-direct {v2, p2, p0}, Lʼٴ/ˏי;-><init>(ILjava/lang/Object;)V

    new-instance v5, Landroidx/leanback/widget/ᵔʾ;

    const/16 p2, 0xa

    invoke-direct {v5, p2, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lʼٴ/ⁱˊ;->י()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {p1}, Lʼٴ/ⁱˊ;->ʻᵎ()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    const-wide/16 v3, 0x7530

    invoke-static/range {v2 .. v7}, Lʼٴ/ⁱˊ;->ˊᵔ(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p2, :cond_3

    iget p2, p0, Lʼٴ/ʽﹳ;->ˈٴ:I

    invoke-virtual {p1}, Lʼٴ/ⁱˊ;->ʼـ()Lʼٴ/ﾞᴵ;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {p1, v1, p2, v0}, Lʼٴ/ⁱˊ;->ﹳﹳ(IILʼٴ/ﾞᴵ;)V

    invoke-virtual {p0, v0}, Lʼٴ/ʽﹳ;->ʽ(Lʼٴ/ﾞᴵ;)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .prologue
    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    invoke-static {v0}, Lʼٴ/ⁱˊ;->ᐧﹶ(Lʼٴ/ⁱˊ;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ʽﹳ()Lcom/google/android/gms/internal/play_billing/ﹶʽ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ˏי(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->יـ()Lcom/google/android/gms/internal/play_billing/ˊˊ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    const/16 v4, 0x6d

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ˑﹳ(Lcom/google/android/gms/internal/play_billing/ˊˊ;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ﹳᐧ()Lcom/google/android/gms/internal/play_billing/ˑﹶ;

    move-result-object v2

    iget v3, p0, Lʼٴ/ʽﹳ;->ˈٴ:I

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ˑﹳ(Z)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ﾞᴵ(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ˑﹶ;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ˊʻ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ᴵٴ;->ᵔʾ()Lcom/google/android/gms/internal/play_billing/ᴵٴ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ᵔי(Lcom/google/android/gms/internal/play_billing/ᴵٴ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "BillingClient"

    const-string v2, "Unable to log."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object v0, p0, Lʼٴ/ʽﹳ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    iput-boolean p1, v0, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ﹳٴ()V

    iget-object v0, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object v1, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, v0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_2
    invoke-virtual {v0, p1}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lʼٴ/ʽﹳ;->ʾˋ:Lʼٴ/ʽ;

    invoke-interface {p1}, Lʼٴ/ʽ;->ˑﹳ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingServiceDisconnected."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final ʽ(Lʼٴ/ﾞᴵ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object v1, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, v0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lʼٴ/ʽﹳ;->ʾˋ:Lʼٴ/ʽ;

    invoke-interface {v0, p1}, Lʼٴ/ʽ;->ˈ(Lʼٴ/ﾞᴵ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v0, "BillingClient"

    const-string v1, "Exception while calling onBillingSetupFinished."

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Z)V
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->יـ()Lcom/google/android/gms/internal/play_billing/ˊˊ;

    move-result-object v0

    iget v1, p1, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    iget-object p1, p1, Lʼٴ/ﾞᴵ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ᵔʾ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p4}, Lʼٴ/ʽﹳ;->ﹳٴ(Z)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    if-eqz p4, :cond_3

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ﹳᐧ()Lcom/google/android/gms/internal/play_billing/ˑﹶ;

    move-result-object p3

    iget p4, p0, Lʼٴ/ʽﹳ;->ˈٴ:I

    if-lez p4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ˑﹳ(Z)V

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ﾞᴵ(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p1, p3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ˎʼ;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ʼᐧ(Lcom/google/android/gms/internal/play_billing/ˎʼ;J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ʽﹳ()Lcom/google/android/gms/internal/play_billing/ﹶʽ;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ˑﹳ(Lcom/google/android/gms/internal/play_billing/ˊˊ;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p4, p1, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p4, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    const/4 v0, 0x6

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ˏי(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;I)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ˑﹶ;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-virtual {p2, p1}, Lʼٴ/ⁱˊ;->ˈˏ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/יʿ;->ʼᐧ()Lcom/google/android/gms/internal/play_billing/ˉʽ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p4, p3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p4, Lcom/google/android/gms/internal/play_billing/יʿ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {p4, v0}, Lcom/google/android/gms/internal/play_billing/יʿ;->ᵔʾ(Lcom/google/android/gms/internal/play_billing/יʿ;Lcom/google/android/gms/internal/play_billing/ˊﾞ;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p1, p3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/יʿ;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/יʿ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/יʿ;J)V

    :cond_4
    iget-object p1, p2, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/יʿ;

    invoke-virtual {p1, p2}, Lﹶﾞ/ⁱי;->ᵎˊ(Lcom/google/android/gms/internal/play_billing/יʿ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_2
    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ﹳٴ(Z)Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-string v1, "This stopwatch is already stopped."

    if-eqz p1, :cond_1

    iget-object p1, p0, Lʼٴ/ʽﹳ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᵎ;->ـˆ()J

    move-result-wide v2

    iget-boolean v4, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    if-eqz v4, :cond_0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    iget-wide v0, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ˈ:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lʼٴ/ʽﹳ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᵎ;->ـˆ()J

    move-result-wide v2

    iget-boolean v4, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    if-eqz v4, :cond_2

    iput-boolean v0, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    iget-wide v0, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ˈ:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
