.class public Lʼٴ/ⁱˊ;
.super Lﹳٴ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ʻٴ:Z

.field public ʼʼ:Z

.field public final ʼˎ:Ljava/lang/String;

.field public volatile ʼᐧ:Lʼٴ/ʽﹳ;

.field public ʽʽ:Z

.field public ʽﹳ:Z

.field public ʾˋ:Z

.field public ʾᵎ:Z

.field public final ˆʾ:Ljava/lang/String;

.field public final ˈٴ:Lˋⁱ/ﾞᴵ;

.field public final ˉʿ:Landroid/content/Context;

.field public volatile ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

.field public ˉٴ:Ljava/util/concurrent/ExecutorService;

.field public final ˊʻ:Z

.field public ˏי:Z

.field public יـ:Z

.field public ـˆ:Z

.field public final ٴʼ:Lcom/google/android/gms/internal/measurement/ᵎ;

.field public volatile ٴᵢ:Lʼٴ/ʽ;

.field public final ٴﹶ:Landroid/os/Handler;

.field public ᴵˊ:Z

.field public final ᴵᵔ:Z

.field public final ᵎⁱ:Ljava/lang/Long;

.field public final ᵎﹶ:Ljava/lang/Object;

.field public final ᵔʾ:Lﹶﾞ/ⁱי;

.field public volatile ᵔᵢ:I

.field public ᵔﹳ:Z

.field public ᵢˏ:Z

.field public ﹳᐧ:I

.field public volatile ﾞʻ:Lʼٴ/ٴᵢ;


# direct methods
.method public constructor <init>(Lˋⁱ/ﾞᴵ;Landroid/content/Context;Lʼٴ/ᵔʾ;Lʼٴ/ﹳٴ;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    iput v0, p0, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lʼٴ/ⁱˊ;->ᵎⁱ:Ljava/lang/Long;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/ˆʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    iput-object v3, p0, Lʼٴ/ⁱˊ;->ٴʼ:Lcom/google/android/gms/internal/measurement/ᵎ;

    const-string v3, "8.0.0"

    iput-object v3, p0, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    invoke-static {}, Lʼٴ/ⁱˊ;->ʽⁱ()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lʼٴ/ⁱˊ;->ˆʾ:Ljava/lang/String;

    const-string v4, "BillingClient"

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʾᵎ()Lcom/google/android/gms/internal/play_billing/ʽʾ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʻٴ(Lcom/google/android/gms/internal/play_billing/ˆˑ;)V

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ـˆ(Lcom/google/android/gms/internal/play_billing/ˆˑ;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ˏי(Lcom/google/android/gms/internal/play_billing/ˆˑ;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v3, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˆˑ;J)V

    iget-boolean v1, p4, Lʼٴ/ﹳٴ;->ˈ:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʽﹳ(Lcom/google/android/gms/internal/play_billing/ˆˑ;Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ᵔʾ(Lcom/google/android/gms/internal/play_billing/ˆˑ;I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ʽʾ;->ˑﹳ()V

    :try_start_0
    iget-object v1, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/ˆˑ;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Error getting app version code."

    invoke-static {v4, v2, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    new-instance v2, Lﹶﾞ/ⁱי;

    invoke-direct {v2, v1, p2}, Lﹶﾞ/ⁱי;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/ˆˑ;)V

    iput-object v2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    if-nez p3, :cond_1

    const-string p2, "Billing client should have a valid listener but the provided is null."

    invoke-static {v4, p2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lʼٴ/ٴᵢ;

    iget-object v1, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    iget-object v2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-direct {p2, v1, p3, v2}, Lʼٴ/ٴᵢ;-><init>(Landroid/content/Context;Lʼٴ/ᵔʾ;Lﹶﾞ/ⁱי;)V

    iput-object p2, p0, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    iput-object p1, p0, Lʼٴ/ⁱˊ;->ˈٴ:Lˋⁱ/ﾞᴵ;

    iput-boolean v0, p0, Lʼٴ/ⁱˊ;->ˊʻ:Z

    iget-object p1, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    iget-boolean p1, p4, Lʼٴ/ﹳٴ;->ˈ:Z

    iput-boolean p1, p0, Lʼٴ/ⁱˊ;->ᴵᵔ:Z

    return-void
.end method

.method public constructor <init>(Lˋⁱ/ﾞᴵ;Landroid/content/Context;Lʼٴ/ﹳٴ;)V
    .locals 6

    .prologue
    const-string v0, "BillingClient"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    iput v1, p0, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lʼٴ/ⁱˊ;->ᵎⁱ:Ljava/lang/Long;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ˆʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ᵎ;

    iput-object v4, p0, Lʼٴ/ⁱˊ;->ٴʼ:Lcom/google/android/gms/internal/measurement/ᵎ;

    const-string v4, "8.0.0"

    iput-object v4, p0, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    invoke-static {}, Lʼٴ/ⁱˊ;->ʽⁱ()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lʼٴ/ⁱˊ;->ˆʾ:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʾᵎ()Lcom/google/android/gms/internal/play_billing/ʽʾ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʻٴ(Lcom/google/android/gms/internal/play_billing/ˆˑ;)V

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ـˆ(Lcom/google/android/gms/internal/play_billing/ˆˑ;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ˏי(Lcom/google/android/gms/internal/play_billing/ˆˑ;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v4, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˆˑ;J)V

    iget-boolean v2, p3, Lʼٴ/ﹳٴ;->ˈ:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v3, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʽﹳ(Lcom/google/android/gms/internal/play_billing/ˆˑ;Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v3, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ᵔʾ(Lcom/google/android/gms/internal/play_billing/ˆˑ;I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ʽʾ;->ˑﹳ()V

    :try_start_0
    iget-object v2, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/ˆˑ;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Error getting app version code."

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v1, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    new-instance v2, Lﹶﾞ/ⁱי;

    invoke-direct {v2, v1, p2}, Lﹶﾞ/ⁱי;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/ˆˑ;)V

    iput-object v2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    const-string p2, "Billing client should have a valid listener but the provided is null."

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lʼٴ/ٴᵢ;

    iget-object v0, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-direct {p2, v0, v1, v2}, Lʼٴ/ٴᵢ;-><init>(Landroid/content/Context;Lʼٴ/ᵔʾ;Lﹶﾞ/ⁱי;)V

    iput-object p2, p0, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    iput-object p1, p0, Lʼٴ/ⁱˊ;->ˈٴ:Lˋⁱ/ﾞᴵ;

    iget-object p1, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    iget-boolean p1, p3, Lʼٴ/ﹳٴ;->ˈ:Z

    iput-boolean p1, p0, Lʼٴ/ⁱˊ;->ᴵᵔ:Z

    return-void
.end method

.method public static ʽᵔ(Lʼٴ/ⁱˊ;I)V
    .locals 4

    .prologue
    if-nez p1, :cond_4

    iget-object p1, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    iget-object v0, p0, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lʼٴ/ⁱˊ;->ʾˋ:Z

    iget-object p1, v0, Lʼٴ/ٴᵢ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lʼٴ/ˊʻ;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-boolean p0, v0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    iget-object p0, v0, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    check-cast p0, Lʼٴ/ˊʻ;

    iget-object v3, v0, Lʼٴ/ٴᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lʼٴ/ˊʻ;->ﹳٴ(Landroid/content/Context;Landroid/content/IntentFilter;)V

    iget-boolean p0, v0, Lʼٴ/ٴᵢ;->ʾˋ:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1, v3, v1}, Lʼٴ/ˊʻ;->ⁱˊ(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void

    :cond_2
    invoke-virtual {p1, v3, v1}, Lʼٴ/ˊʻ;->ﹳٴ(Landroid/content/Context;Landroid/content/IntentFilter;)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    return-void
.end method

.method public static ʽⁱ()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.billingclient.ktx.BuildConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "VERSION_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static ˊᵔ(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p1, p1

    new-instance p5, Lˈˊ/ᵔﹳ;

    const/4 v0, 0x3

    invoke-direct {p5, p0, v0, p3}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "BillingClient"

    const-string p2, "Async task throws exception!"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic ᐧﹶ(Lʼٴ/ⁱˊ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ʻˋ(I)V
    .locals 6

    .prologue
    const-string v0, "Setting clientState from "

    iget-object v1, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const-string v2, "BillingClient"

    iget v3, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    const-string v3, "CLOSED"

    goto :goto_0

    :cond_1
    const-string v3, "CONNECTED"

    goto :goto_0

    :cond_2
    const-string v3, "CONNECTING"

    goto :goto_0

    :cond_3
    const-string v3, "DISCONNECTED"

    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    const-string v4, "CLOSED"

    goto :goto_1

    :cond_4
    const-string v4, "CONNECTED"

    goto :goto_1

    :cond_5
    const-string v4, "CONNECTING"

    goto :goto_1

    :cond_6
    const-string v4, "DISCONNECTED"

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ʻᴵ(IILʼٴ/ﾞᴵ;Ljava/lang/String;)V
    .locals 1

    .prologue
    :try_start_0
    sget v0, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    invoke-static {p1, p2, p3, p4, v0}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʼٴ/ⁱˊ;->ˈˏ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized ʻᵎ()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ˉٴ:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    new-instance v1, Lʼٴ/יـ;

    invoke-direct {v1, p0}, Lʼٴ/יـ;-><init>(Lʼٴ/ⁱˊ;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lʼٴ/ⁱˊ;->ˉٴ:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ˉٴ:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ʼـ()Lʼٴ/ﾞᴵ;
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iget-object v2, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v2

    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    :try_start_0
    aget v3, v0, v1

    iget v4, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    if-ne v4, v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;
    .locals 1

    const-string v0, "BillingClient"

    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p3, 0x7

    invoke-static {p4}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p2, p3, p1, p4}, Lʼٴ/ⁱˊ;->ʻᴵ(IILʼٴ/ﾞᴵ;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget p3, p1, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    iget-object p1, p1, Lʼٴ/ﾞᴵ;->ʽ:Ljava/lang/String;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p3, p1, p4, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p2
.end method

.method public final ʾﾞ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lﹳʽ/ˊʻ;
    .locals 2

    const/16 v0, 0x9

    invoke-static {p4}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, p1, v1}, Lʼٴ/ⁱˊ;->ʻᴵ(IILʼٴ/ﾞᴵ;Ljava/lang/String;)V

    const-string p2, "BillingClient"

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lﹳʽ/ˊʻ;

    const/4 p3, 0x0

    const/4 p4, 0x6

    invoke-direct {p2, p1, p4, p3}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p2
.end method

.method public final ʿـ(Lʼٴ/ﾞᴵ;)V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lˈˊ/ᵔﹳ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ˈˏ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V
    .locals 5

    .prologue
    const-string v0, "Unable to log."

    :try_start_0
    iget-object v1, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    iget v2, p0, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v1, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ᵎﹶ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ʽʾ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʼᐧ(Lcom/google/android/gms/internal/play_billing/ˆˑ;I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    iput-object v2, v1, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lﹶﾞ/ⁱי;->ˊʻ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "BillingLogger"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string v1, "BillingClient"

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ˎᐧ(I)Lcom/google/android/gms/internal/play_billing/ᴵˑ;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lʼٴ/ⁱˊ;->ᴵᵔ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ـᵎ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lʼٴ/ʾᵎ;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p0}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    invoke-static {v0}, Lﹳˋ/ʽʽ;->ᴵᵔ(Lʼٴ/ʾᵎ;)Lcom/google/android/gms/internal/play_billing/ˎᵎ;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "BillingClient"

    const-string v0, "Already connected or not opted into auto reconnection."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ﹳـ;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/ﹳـ;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public ˏᵢ(Landroidx/leanback/widget/ˉˆ;Lʼٴ/ﾞʻ;)V
    .locals 6

    .prologue
    new-instance v0, Lʼٴ/ﹳᐧ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, Lʼٴ/ﹳᐧ;-><init>(Lʼٴ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lˈˊ/ᵔﹳ;

    const/4 p1, 0x4

    invoke-direct {v3, p0, p1, p2}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->י()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ʻᵎ()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    invoke-static/range {v0 .. v5}, Lʼٴ/ⁱˊ;->ˊᵔ(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ʼـ()Lʼٴ/ﾞᴵ;

    move-result-object p1

    const/16 v0, 0x19

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1, p1}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    new-instance v0, Lʼٴ/ʼᐧ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-direct {v0, v1}, Lʼٴ/ʼᐧ;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p1, v0}, Lʼٴ/ﾞʻ;->ﹳٴ(Lʼٴ/ﾞᴵ;Lʼٴ/ʼᐧ;)V

    :cond_0
    return-void
.end method

.method public final ˑ(I)Lʼٴ/ﾞᴵ;
    .locals 3

    .prologue
    const-string v0, "BillingClient"

    const-string v1, "Service connection is valid. No need to re-initialize."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->יـ()Lcom/google/android/gms/internal/play_billing/ٴʿ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ﹳᐧ()Lcom/google/android/gms/internal/play_billing/ˑﹶ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/ˎʼ;

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ˎʼ;)V

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ˑﹳ(Z)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ﾞᴵ(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/ˎʼ;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˎʼ;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-virtual {p0, p1}, Lʼٴ/ⁱˊ;->ﹶᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;)V

    sget-object p1, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    return-object p1
.end method

.method public final ˑʼ(Lʼٴ/ʽ;I)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ـᵎ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lʼٴ/ⁱˊ;->ˑ(I)Lʼٴ/ﾞᴵ;

    move-result-object p2

    monitor-exit v0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    iget v1, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "BillingClient"

    const-string v2, "Client is already in the process of connecting to billing service."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lʼٴ/ˈٴ;->ˈ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x25

    invoke-virtual {p0, v2, p2, v1}, Lʼٴ/ⁱˊ;->ﹳﹳ(IILʼٴ/ﾞᴵ;)V

    monitor-exit v0

    :goto_0
    move-object p2, v1

    goto/16 :goto_4

    :cond_1
    iget v1, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const-string v1, "BillingClient"

    const-string v2, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x26

    invoke-virtual {p0, v2, p2, v1}, Lʼٴ/ⁱˊ;->ﹳﹳ(IILʼٴ/ﾞᴵ;)V

    monitor-exit v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    const/4 v1, 0x0

    if-nez p2, :cond_3

    iput-object p1, p0, Lʼٴ/ⁱˊ;->ٴᵢ:Lʼٴ/ʽ;

    move p2, v1

    :cond_3
    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ٴﹳ()V

    const-string v3, "BillingClient"

    const-string v4, "Starting in-app billing setup."

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lʼٴ/ʽﹳ;

    invoke-direct {v3, p0, p1, p2}, Lʼٴ/ʽﹳ;-><init>(Lʼٴ/ⁱˊ;Lʼٴ/ʽ;I)V

    iput-object v3, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    iget-object v3, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    iget-object v3, v3, Lʼٴ/ʽﹳ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔʾ;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ʽ:J

    iput-boolean v1, v3, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ⁱˊ:Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ᵔʾ;->ﹳٴ()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const/16 v4, 0x28

    if-eqz v3, :cond_9

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v6, "com.android.vending"

    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    const-string v4, "playBillingLibraryVersion"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget v4, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, p2}, Lʼٴ/ⁱˊ;->ˑ(I)Lʼٴ/ﾞᴵ;

    move-result-object p2

    monitor-exit v0

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    iget v4, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    if-eq v4, v2, :cond_5

    const-string v1, "BillingClient"

    const-string v2, "Client state no longer CONNECTING, returning service disconnected."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x69

    invoke-virtual {p0, v2, p2, v1}, Lʼٴ/ⁱˊ;->ﹳﹳ(IILʼٴ/ﾞᴵ;)V

    monitor-exit v0

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-lez p2, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_6

    iget-object v0, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ʻᵎ()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_7

    const-string p2, "BillingClient"

    const-string v0, "Service was bonded successfully."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    goto :goto_4

    :cond_7
    const-string v0, "BillingClient"

    const-string v2, "Connection to Billing service is blocked."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x27

    goto :goto_3

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    const-string v0, "BillingClient"

    const-string v2, "The device doesn\'t have valid Play Store."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v0, "BillingClient"

    const-string v2, "The device doesn\'t have valid Play Store."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const/16 v4, 0x29

    :goto_3
    invoke-virtual {p0, v1}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    const-string v0, "BillingClient"

    const-string v1, "Billing service unavailable on device."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lʼٴ/ˈٴ;->ⁱˊ:Lʼٴ/ﾞᴵ;

    invoke-virtual {p0, v4, p2, v0}, Lʼٴ/ⁱˊ;->ﹳﹳ(IILʼٴ/ﾞᴵ;)V

    move-object p2, v0

    :goto_4
    if-eqz p2, :cond_b

    invoke-interface {p1, p2}, Lʼٴ/ʽ;->ˈ(Lʼٴ/ﾞᴵ;)V

    :cond_b
    return-void

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final י()Landroid/os/Handler;
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public final יﹳ()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public final ـˊ(ILʼٴ/ﾞᴵ;JZ)V
    .locals 11

    .prologue
    const-string v1, "Unable to log."

    const-string v2, "BillingClient"

    :try_start_0
    sget v0, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v3, p2, v4, v0}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    iget v7, p0, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    move-wide v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Lﹶﾞ/ⁱי;->ᵎⁱ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ـᵎ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ـﹶ(Lar/tvplayer/core/data/api/parse/ˈ;Lʼٴ/ﾞᴵ;ILjava/lang/Exception;)V
    .locals 1

    const-string p1, "BillingClient"

    const-string v0, "Error in acknowledge purchase!"

    invoke-static {p1, v0, p4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    invoke-static {p4}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, p1, p2, p4}, Lʼٴ/ⁱˊ;->ʻᴵ(IILʼٴ/ﾞᴵ;Ljava/lang/String;)V

    sget-boolean p1, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    return-void
.end method

.method public final ٴﹳ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    iget-object v3, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v1, p0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    iput-object v1, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    const-string v3, "BillingClient"

    const-string v4, "There was an exception while unbinding service!"

    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iput-object v1, p0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    iput-object v1, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    goto :goto_0

    :catchall_2
    move-exception v2

    iput-object v1, p0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    iput-object v1, p0, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    throw v2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final ᐧˎ(ILʼٴ/ﾞᴵ;J)V
    .locals 5

    .prologue
    const-string v0, "Unable to log."

    const-string v1, "BillingClient"

    :try_start_0
    sget v2, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v3, p2, v4, v2}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    iget v2, p0, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    invoke-virtual {p2, p1, v2, p3, p4}, Lﹶﾞ/ⁱי;->ٴᵢ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ᐧᴵ(Lᵔᵢ/ˆʾ;Lcom/bumptech/glide/ʼˎ;)Lʼٴ/ﾞᴵ;
    .locals 30

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v0, v1, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    if-eqz v0, :cond_4f

    iget-object v0, v1, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    iget-object v0, v0, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ᵔʾ;

    if-eqz v0, :cond_4f

    const-string v4, "BillingClient"

    const-string v0, "Reconnection failed with result: "

    const-string v6, "Reconnection succeeded with result: "

    const/4 v8, 0x1

    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1d

    if-ge v9, v10, :cond_0

    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0xbb8

    :goto_0
    invoke-virtual {v1, v8}, Lʼٴ/ⁱˊ;->ˎᐧ(I)Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    move-result-object v11

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v9, v10, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lʼٴ/ﾞᴵ;

    iget v9, v9, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    instance-of v6, v0, Ljava/lang/InterruptedException;

    if-eqz v6, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const-string v6, "Error during reconnection attempt: "

    invoke-static {v4, v6, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v1}, Lʼٴ/ⁱˊ;->ـᵎ()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0, v2, v3}, Lʼٴ/ⁱˊ;->ᐧˎ(ILʼٴ/ﾞᴵ;J)V

    invoke-virtual {v1, v0}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v0

    :cond_3
    iget-object v4, v1, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v0, v1, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lʼٴ/ⁱˊ;->ʼᐧ:Lʼٴ/ʽﹳ;

    iget v0, v0, Lʼٴ/ʽﹳ;->ˈٴ:I

    if-lez v0, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    move v0, v6

    :goto_3
    move/from16 v28, v6

    move v6, v0

    move/from16 v0, v28

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_2f

    :cond_5
    move v0, v6

    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v5, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v9, v5, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_5
    if-nez v10, :cond_4e

    invoke-virtual {v9}, Lcom/google/android/gms/internal/play_billing/יـ;->iterator()Ljava/util/Iterator;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/ᵔﹳ;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/ᵔﹳ;->next()Ljava/lang/Object;

    move-result-object v10

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    :goto_6
    check-cast v10, Lʼٴ/ˈ;

    iget-object v11, v10, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    move-object v13, v4

    move-wide/from16 v28, v2

    move-object v2, v5

    move-wide/from16 v4, v28

    iget-object v3, v11, Lʼٴ/ٴﹶ;->ʽ:Ljava/lang/String;

    iget-object v11, v11, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    const-string v14, "subs"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-boolean v14, v1, Lʼٴ/ⁱˊ;->ᵔﹳ:Z

    if-eqz v14, :cond_8

    goto :goto_7

    :cond_8
    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support subscriptions."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lʼٴ/ˈٴ;->ﾞʻ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x9

    invoke-virtual/range {v1 .. v6}, Lʼٴ/ⁱˊ;->ـˊ(ILʼٴ/ﾞᴵ;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :cond_9
    :goto_7
    iget-object v14, v2, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v14, Lﹳˋ/ʼˎ;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v14, v2, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    if-nez v14, :cond_b

    iget-object v14, v2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/play_billing/יـ;

    if-eqz v14, :cond_a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    move v12, v0

    const/16 v16, 0x0

    :goto_8
    if-ge v12, v15, :cond_c

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lʼٴ/ˈ;

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_a
    const/16 v16, 0x0

    goto :goto_9

    :cond_b
    const/16 v16, 0x0

    iget-boolean v12, v1, Lʼٴ/ⁱˊ;->יـ:Z

    if-eqz v12, :cond_4d

    :cond_c
    :goto_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v8, :cond_e

    iget-boolean v12, v1, Lʼٴ/ⁱˊ;->ـˆ:Z

    if-eqz v12, :cond_d

    goto :goto_a

    :cond_d
    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support multi-item purchases."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lʼٴ/ˈٴ;->ˉʿ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x13

    invoke-virtual/range {v1 .. v6}, Lʼٴ/ⁱˊ;->ـˊ(ILʼٴ/ﾞᴵ;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :cond_e
    :goto_a
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_10

    iget-boolean v12, v1, Lʼٴ/ⁱˊ;->ʾᵎ:Z

    if-eqz v12, :cond_f

    goto :goto_b

    :cond_f
    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support purchases with ProductDetails."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lʼٴ/ˈٴ;->ˉˆ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x14

    invoke-virtual/range {v1 .. v6}, Lʼٴ/ⁱˊ;->ـˊ(ILʼٴ/ﾞᴵ;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :cond_10
    :goto_b
    const-string v12, "packageName"

    const-string v14, "."

    const-string v15, "play_pass_subs"

    iget-object v8, v2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    move-object/from16 v18, v3

    :goto_c
    move-wide/from16 v21, v4

    move/from16 v23, v6

    move-object v3, v8

    move-object/from16 v27, v11

    goto/16 :goto_14

    :cond_11
    iget-object v8, v2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʼٴ/ˈ;

    const/4 v0, 0x1

    :goto_d
    iget-object v1, v2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    move-object/from16 v18, v3

    if-ge v0, v1, :cond_14

    iget-object v1, v2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼٴ/ˈ;

    iget-object v3, v1, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v3, v3, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    move/from16 v20, v0

    iget-object v0, v8, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v0, v0, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v1, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v0, v0, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_e

    :cond_12
    const-string v0, "All products should have same ProductType."

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v8

    goto :goto_c

    :cond_13
    :goto_e
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v3, v18

    goto :goto_d

    :cond_14
    iget-object v0, v8, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v1, v0, Lʼٴ/ٴﹶ;->ⁱˊ:Lorg/json/JSONObject;

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-wide/from16 v21, v4

    iget-object v4, v2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v23, v6

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_1a

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v4, v24

    check-cast v4, Lʼٴ/ˈ;

    move/from16 v24, v5

    iget-object v5, v4, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    move/from16 v26, v6

    iget-object v6, v5, Lʼٴ/ٴﹶ;->ʽ:Ljava/lang/String;

    move-object/from16 v27, v11

    iget-object v11, v5, Lʼٴ/ٴﹶ;->ʽ:Ljava/lang/String;

    iget-object v7, v5, Lʼٴ/ٴﹶ;->ᵔᵢ:Ljava/util/ArrayList;

    if-eqz v7, :cond_15

    iget-object v7, v4, Lʼٴ/ˈ;->ⁱˊ:Ljava/lang/String;

    if-eqz v7, :cond_16

    :cond_15
    const/4 v7, 0x5

    goto :goto_11

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "offerToken is required for constructing ProductDetailsParams for subscriptions. Missing value for product id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x5

    invoke-static {v7, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v8

    :goto_10
    move-object v3, v8

    goto/16 :goto_14

    :goto_11
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductId can not be duplicated. Invalid product id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v8

    goto :goto_10

    :cond_17
    invoke-virtual {v3, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, v5, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-object v4, v5, Lʼٴ/ٴﹶ;->ⁱˊ:Lorg/json/JSONObject;

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_12

    :cond_18
    const-string v0, "All products must have the same package name."

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v8

    goto :goto_10

    :cond_19
    :goto_12
    add-int/lit8 v6, v26, 0x1

    move/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v11, v27

    goto/16 :goto_f

    :cond_1a
    move-object/from16 v27, v11

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼٴ/ˈ;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OldProductId must not be one of the products to be purchased. Invalid old product id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v8

    goto/16 :goto_10

    :cond_1c
    iget-object v0, v0, Lʼٴ/ٴﹶ;->ʼˎ:Ljava/util/ArrayList;

    iget-object v1, v8, Lʼٴ/ˈ;->ⁱˊ:Ljava/lang/String;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1d
    if-ge v4, v3, :cond_1e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lʼٴ/ᵎﹶ;

    iget-object v6, v5, Lʼٴ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_13

    :cond_1e
    move-object/from16 v5, v16

    :goto_13
    if-eqz v5, :cond_1f

    iget-object v0, v5, Lʼٴ/ᵎﹶ;->ˑﹳ:Lٴﾞ/ˆʾ;

    if-eqz v0, :cond_1f

    const-string v0, "Both autoPayDetails and autoPayBalanceThreshold is required for constructing ProductDetailsParams for autopay."

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v8

    goto/16 :goto_10

    :cond_1f
    sget-object v8, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    goto/16 :goto_10

    :goto_14
    sget-object v0, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    if-eq v3, v0, :cond_20

    const/16 v2, 0x6c

    move-object/from16 v1, p0

    move-wide/from16 v4, v21

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lʼٴ/ⁱˊ;->ـˊ(ILʼٴ/ﾞᴵ;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :cond_20
    move-object/from16 v1, p0

    move-wide/from16 v4, v21

    move/from16 v6, v23

    iget-boolean v0, v1, Lʼٴ/ⁱˊ;->יـ:Z

    if-eqz v0, :cond_45

    iget-boolean v0, v1, Lʼٴ/ⁱˊ;->ˏי:Z

    iget-object v3, v1, Lʼٴ/ⁱˊ;->ˈٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lʼٴ/ⁱˊ;->ˈٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v1, Lʼٴ/ⁱˊ;->ˊʻ:Z

    iget-object v7, v1, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    iget-object v8, v1, Lʼٴ/ⁱˊ;->ˆʾ:Ljava/lang/String;

    iget-object v11, v1, Lʼٴ/ⁱˊ;->ᵎⁱ:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v14, v1, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    sget v14, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    move/from16 v23, v6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {v11, v12, v6, v7, v8}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ⁱˊ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "billingClientTransactionId"

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, v2, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lﹳˋ/ʼˎ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_21

    const-string v7, "accountId"

    move-object/from16 v8, v16

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_21
    move-object/from16 v8, v16

    :goto_15
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_22

    const-string v7, "obfuscatedProfileId"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    new-instance v7, Ljava/util/ArrayList;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v11, "skusToReplace"

    invoke-virtual {v6, v11, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_23
    iget-object v7, v2, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lﹳˋ/ʼˎ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    iget-object v7, v2, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lﹳˋ/ʼˎ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "oldSkuPurchaseToken"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "oldSkuPurchaseId"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object v7, v2, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lﹳˋ/ʼˎ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_26

    iget-object v7, v2, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lﹳˋ/ʼˎ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "originalExternalTransactionId"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, "paymentsPurchaseParams"

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-eqz v0, :cond_28

    const-string v0, "enablePendingPurchases"

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_16

    :cond_28
    const/4 v7, 0x1

    :goto_16
    if-eqz v3, :cond_29

    const-string v0, "enableAlternativeBilling"

    invoke-virtual {v6, v0, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/יـ;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/play_billing/יـ;->ٴﹶ(I)Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    move-result-object v3

    :goto_17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ᵔﹳ;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ᵔﹳ;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʼٴ/ˈ;

    goto :goto_17

    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->ᵔʾ()Lcom/google/android/gms/internal/play_billing/ˏᵢ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v7, v3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v7, Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/play_billing/ᴵʼ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/ᴵʼ;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ᴵʼ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ـﹶ;->ﹳٴ()[B

    move-result-object v0

    const-string v3, "subscriptionProductReplacementParamsList"

    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2b
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    const-string v3, "skuDetailsTokens"

    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x1

    if-le v0, v7, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_2e

    const-string v8, "additionalSkus"

    invoke-virtual {v6, v8, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "additionalSkuTypes"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2d
    move-wide/from16 v24, v4

    goto/16 :goto_1d

    :cond_2e
    invoke-static {v7, v13}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_2f
    invoke-static {v3}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_30
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_18
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_37

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lʼٴ/ˈ;

    iget-object v15, v14, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v2, v15, Lʼٴ/ٴﹶ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, v15, Lʼٴ/ٴﹶ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    iget-object v2, v14, Lʼٴ/ˈ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v15, Lʼٴ/ٴﹶ;->ᵎﹶ:Ljava/lang/String;

    iget-object v14, v15, Lʼٴ/ٴﹶ;->ʼˎ:Ljava/util/ArrayList;

    if-eqz v14, :cond_34

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_34

    iget-object v14, v15, Lʼٴ/ٴﹶ;->ʼˎ:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v15, :cond_33

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v2, v2, 0x1

    move/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, Lʼٴ/ᵎﹶ;

    move-wide/from16 v24, v4

    iget-object v4, v2, Lʼٴ/ᵎﹶ;->ˈ:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v2, v2, Lʼٴ/ᵎﹶ;->ˈ:Ljava/lang/String;

    goto :goto_1c

    :cond_32
    move/from16 v2, v21

    move-wide/from16 v4, v24

    goto :goto_19

    :cond_33
    :goto_1a
    move-wide/from16 v24, v4

    goto :goto_1b

    :cond_34
    move-object/from16 v19, v2

    goto :goto_1a

    :goto_1b
    move-object/from16 v2, v19

    :goto_1c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    if-lez v13, :cond_36

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʼٴ/ˈ;

    iget-object v2, v2, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v2, v2, Lʼٴ/ٴﹶ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʼٴ/ˈ;

    iget-object v2, v2, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v2, v2, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v4, v24

    goto/16 :goto_18

    :cond_37
    move-wide/from16 v24, v4

    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {v6, v2, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "autoPayBalanceThresholdList"

    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_38
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "skuDetailsTokens"

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_39
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    invoke-virtual {v6, v2, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "additionalSkus"

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "additionalSkuTypes"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3b
    :goto_1d
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {v6, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, v1, Lʼٴ/ⁱˊ;->ʽﹳ:Z

    if-eqz v0, :cond_3d

    :cond_3c
    move/from16 v7, v23

    move-wide/from16 v21, v24

    goto :goto_1e

    :cond_3d
    sget-object v3, Lʼٴ/ˈٴ;->ᵔʾ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x15

    move/from16 v6, v23

    move-wide/from16 v4, v24

    invoke-virtual/range {v1 .. v6}, Lʼٴ/ⁱˊ;->ـˊ(ILʼٴ/ﾞᴵ;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :goto_1e
    iget-object v0, v10, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v0, v0, Lʼٴ/ٴﹶ;->ⁱˊ:Lorg/json/JSONObject;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, v10, Lʼٴ/ˈ;->ﹳٴ:Lʼٴ/ٴﹶ;

    iget-object v0, v0, Lʼٴ/ٴﹶ;->ⁱˊ:Lorg/json/JSONObject;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "skuPackageName"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1f
    const/4 v8, 0x0

    goto :goto_20

    :cond_3e
    const/4 v0, 0x0

    goto :goto_1f

    :goto_20
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "accountName"

    invoke-virtual {v6, v2, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_40

    const-string v2, "BillingClient"

    const-string v3, "Activity\'s intent is null."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_40
    const-string v3, "PROXY_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    const-string v3, "PROXY_PACKAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxyPackage"

    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    iget-object v3, v1, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "proxyPackageVersion"

    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_21

    :catch_1
    const-string v2, "proxyPackageVersion"

    const-string v3, "package not found"

    invoke-virtual {v6, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_21
    iget-boolean v2, v1, Lʼٴ/ⁱˊ;->ʾᵎ:Z

    if-eqz v2, :cond_42

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    const/16 v0, 0x11

    :goto_22
    move v2, v0

    goto :goto_23

    :cond_42
    iget-boolean v2, v1, Lʼٴ/ⁱˊ;->ʻٴ:Z

    if-eqz v2, :cond_43

    if-eqz v0, :cond_43

    const/16 v0, 0xf

    goto :goto_22

    :cond_43
    iget-boolean v0, v1, Lʼٴ/ⁱˊ;->ˏי:Z

    if-eqz v0, :cond_44

    const/16 v0, 0x9

    goto :goto_22

    :cond_44
    const/4 v0, 0x6

    goto :goto_22

    :goto_23
    new-instance v0, Lʼٴ/ˉٴ;

    move-object/from16 v5, p2

    move-object/from16 v3, v18

    move-object/from16 v4, v27

    invoke-direct/range {v0 .. v6}, Lʼٴ/ˉٴ;-><init>(Lʼٴ/ⁱˊ;ILjava/lang/String;Ljava/lang/String;Lcom/bumptech/glide/ʼˎ;Landroid/os/Bundle;)V

    iget-object v13, v1, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    invoke-virtual {v1}, Lʼٴ/ⁱˊ;->ʻᵎ()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    const-wide/16 v10, 0x1388

    const/4 v12, 0x0

    move-object v9, v0

    invoke-static/range {v9 .. v14}, Lʼٴ/ⁱˊ;->ˊᵔ(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_24

    :cond_45
    move-wide/from16 v21, v4

    move v7, v6

    move-object/from16 v8, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v27

    new-instance v9, Lʼٴ/ﹳᐧ;

    const/4 v0, 0x3

    invoke-direct {v9, v1, v3, v4, v0}, Lʼٴ/ﹳᐧ;-><init>(Lʼٴ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v13, v1, Lʼٴ/ⁱˊ;->ٴﹶ:Landroid/os/Handler;

    invoke-virtual {v1}, Lʼٴ/ⁱˊ;->ʻᵎ()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    const-wide/16 v10, 0x1388

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lʼٴ/ⁱˊ;->ˊᵔ(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_24
    if-nez v0, :cond_46

    :try_start_3
    sget-object v3, Lʼٴ/ˈٴ;->ʽ:Lʼٴ/ﾞᴵ;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    const/16 v2, 0x19

    move v6, v7

    move-wide/from16 v4, v21

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lʼٴ/ⁱˊ;->ـˊ(ILʼٴ/ﾞᴵ;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :catch_2
    move-exception v0

    goto/16 :goto_2d

    :catch_3
    move-exception v0

    goto/16 :goto_2e

    :catch_4
    move-exception v0

    goto/16 :goto_2e

    :catch_5
    move-exception v0

    move v6, v7

    move-wide/from16 v4, v21

    goto/16 :goto_2d

    :catch_6
    move-exception v0

    :goto_25
    move v6, v7

    move-wide/from16 v4, v21

    goto/16 :goto_2e

    :catch_7
    move-exception v0

    goto :goto_25

    :cond_46
    move v6, v7

    move-wide/from16 v4, v21

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1388

    invoke-interface {v0, v9, v10, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    const-string v0, "BillingClient"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    const-string v3, "BillingClient"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4c

    const-string v7, "BillingClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to buy item, Error response code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v3

    const-string v7, "BillingClient"
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v2, :cond_47

    :goto_26
    const/4 v7, 0x1

    :goto_27
    const/4 v9, 0x1

    goto :goto_29

    :cond_47
    :try_start_5
    const-string v0, "LOG_REASON"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_48

    goto :goto_26

    :cond_48
    instance-of v9, v0, Ljava/lang/Integer;

    if-eqz v9, :cond_49

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/support/v4/media/session/ﹳٴ;->ʽ(I)I

    move-result v7

    goto :goto_27

    :catchall_1
    move-exception v0

    goto :goto_28

    :cond_49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected type for bundle log reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_26

    :goto_28
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Failed to get log reason from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    :goto_29
    if-ne v7, v9, :cond_4a

    const/16 v7, 0x17

    :cond_4a
    const-string v9, "BillingClient"
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-nez v2, :cond_4b

    :goto_2a
    move v2, v7

    move v7, v6

    move-wide v5, v4

    move-object v4, v8

    goto :goto_2b

    :cond_4b
    :try_start_7
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v2, v7

    move v7, v6

    move-wide v5, v4

    move-object v4, v12

    goto :goto_2b

    :catchall_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to get additional log details from bundle: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2a

    :goto_2b
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lʼٴ/ⁱˊ;->ᵎʿ(ILʼٴ/ﾞᴵ;Ljava/lang/String;JZ)V
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-wide v4, v5

    move v6, v7

    :try_start_a
    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :catch_8
    move-exception v0

    move-wide v4, v5

    move v6, v7

    goto :goto_2d

    :catch_9
    move-exception v0

    :goto_2c
    move-wide v4, v5

    move v6, v7

    goto :goto_2e

    :catch_a
    move-exception v0

    goto :goto_2c

    :cond_4c
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v7, p1

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "BUY_INTENT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const-string v3, "BUY_INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "billingClientTransactionId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "wasServiceAutoReconnected"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    sget-object v0, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    return-object v0

    :goto_2d
    const-string v2, "BillingClient"

    const-string v3, "Exception while launching billing flow. Try to reconnect"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    invoke-static {v0}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    move v7, v6

    move-wide v5, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lʼٴ/ⁱˊ;->ᵎʿ(ILʼٴ/ﾞᴵ;Ljava/lang/String;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :goto_2e
    const-string v2, "BillingClient"

    const-string v3, "Time out while launching billing flow. Try to reconnect"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lʼٴ/ˈٴ;->ٴﹶ:Lʼٴ/ﾞᴵ;

    invoke-static {v0}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    move v7, v6

    move-wide v5, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lʼٴ/ⁱˊ;->ᵎʿ(ILʼٴ/ﾞᴵ;Ljava/lang/String;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :cond_4d
    const-string v0, "BillingClient"

    const-string v2, "Current client doesn\'t support extra params for buy intent."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lʼٴ/ˈٴ;->ﾞᴵ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0x12

    invoke-virtual/range {v1 .. v6}, Lʼٴ/ⁱˊ;->ـˊ(ILʼٴ/ﾞᴵ;JZ)V

    invoke-virtual {v1, v3}, Lʼٴ/ⁱˊ;->ʿـ(Lʼٴ/ﾞᴵ;)V

    return-object v3

    :cond_4e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :goto_2f
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    :cond_4f
    move-wide v5, v2

    sget-object v0, Lʼٴ/ˈٴ;->ᵔﹳ:Lʼٴ/ﾞᴵ;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0, v5, v6}, Lʼٴ/ⁱˊ;->ᐧˎ(ILʼٴ/ﾞᴵ;J)V

    return-object v0
.end method

.method public ᐧﾞ(Lﹳי/ʽ;Lar/tvplayer/core/data/api/parse/ˈ;)V
    .locals 6

    .prologue
    new-instance v0, Lʼٴ/ﹳᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lʼٴ/ﹳᐧ;-><init>(Lʼٴ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Landroidx/leanback/widget/ᵔʾ;

    invoke-direct {v3, p0, p2}, Landroidx/leanback/widget/ᵔʾ;-><init>(Lʼٴ/ⁱˊ;Lar/tvplayer/core/data/api/parse/ˈ;)V

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->י()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ʻᵎ()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    const-wide/16 v1, 0x7530

    invoke-static/range {v0 .. v5}, Lʼٴ/ⁱˊ;->ˊᵔ(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʼٴ/ⁱˊ;->ʼـ()Lʼٴ/ﾞᴵ;

    move-result-object p1

    const/16 p2, 0x19

    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0, p1}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    sget-boolean p1, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    :cond_0
    return-void
.end method

.method public ᴵʼ(Lar/tvplayer/core/domain/ʽﹳ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lʼٴ/ⁱˊ;->ˑʼ(Lʼٴ/ʽ;I)V

    return-void
.end method

.method public final ᵎʻ()Z
    .locals 20

    .prologue
    move-object/from16 v1, p0

    iget-object v2, v1, Lʼٴ/ⁱˊ;->ٴʼ:Lcom/google/android/gms/internal/measurement/ᵎ;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᵎ;->ـˆ()J

    move-result-wide v3

    const/4 v0, 0x1

    const-wide/16 v5, 0x7530

    move v7, v0

    move-wide v8, v5

    :goto_0
    const/4 v10, 0x3

    const-string v11, "BillingClient"

    if-gt v7, v10, :cond_5

    const-wide/16 v12, 0x0

    :try_start_0
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long v0, v8, v12

    if-gtz v0, :cond_0

    const-string v0, "No time remaining for reconnection attempt."

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lʼٴ/ⁱˊ;->ـᵎ()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v7}, Lʼٴ/ⁱˊ;->ˎᐧ(I)Lcom/google/android/gms/internal/play_billing/ᴵˑ;

    move-result-object v0

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v14}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼٴ/ﾞᴵ;

    iget v0, v0, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    if-nez v0, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reconnection succeeded with result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lʼٴ/ⁱˊ;->ـᵎ()Z

    move-result v0

    return v0

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reconnection failed with result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    instance-of v8, v0, Ljava/lang/InterruptedException;

    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const-string v8, "Error during reconnection attempt: "

    invoke-static {v11, v8, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᵎ;->ـˆ()J

    move-result-wide v8

    sub-long/2addr v8, v3

    add-long/2addr v8, v12

    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9, v14}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long v8, v5, v8

    add-int/lit8 v15, v7, -0x1

    move-wide/from16 v16, v5

    int-to-double v5, v15

    move-wide/from16 v18, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-long v5, v5

    const-wide/16 v12, 0x3e8

    mul-long/2addr v5, v12

    cmp-long v12, v8, v5

    if-gez v12, :cond_3

    const-string v0, "Reconnection failed due to timeout limit reached."

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lʼٴ/ⁱˊ;->ـᵎ()Z

    move-result v0

    return v0

    :cond_3
    if-ge v7, v10, :cond_4

    cmp-long v10, v5, v18

    if-lez v10, :cond_4

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᵎ;->ـˆ()J

    move-result-wide v5

    sub-long/2addr v5, v3

    add-long v5, v5, v18

    invoke-virtual {v0, v5, v6, v14}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    sub-long v5, v16, v5

    move-wide v8, v5

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    const-string v2, "Error sleeping during reconnection attempt: "

    invoke-static {v11, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v5, v16

    goto/16 :goto_0

    :cond_5
    :goto_4
    const-string v0, "Max retries reached."

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lʼٴ/ⁱˊ;->ـᵎ()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "ticker"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎʿ(ILʼٴ/ﾞᴵ;Ljava/lang/String;JZ)V
    .locals 4

    .prologue
    const-string v1, "Unable to log."

    const-string v2, "BillingClient"

    :try_start_0
    sget v0, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v3, 0x2

    invoke-static {p1, v3, p2, p3, v0}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    iget p3, p0, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    invoke-virtual/range {p1 .. p6}, Lﹶﾞ/ⁱי;->ᵎⁱ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v2, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ⁱˉ(IILʼٴ/ﾞᴵ;)V
    .locals 2

    .prologue
    :try_start_0
    sget v0, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1, v0}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʼٴ/ⁱˊ;->ˈˏ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ﹳﹳ(IILʼٴ/ﾞᴵ;)V
    .locals 3

    .prologue
    :try_start_0
    sget v0, Lʼٴ/ᴵˊ;->ﹳٴ:I

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v1, p3, v2, v0}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ᵎﹶ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ﹶʽ;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ﹳᐧ()Lcom/google/android/gms/internal/play_billing/ˑﹶ;

    move-result-object p3

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ˑﹳ(Z)V

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ﾞᴵ(I)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/ﹶʽ;->ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ˑﹶ;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    invoke-virtual {p0, p1}, Lʼٴ/ⁱˊ;->ˈˏ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BillingClient"

    const-string p3, "Unable to log."

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ﹶᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;)V
    .locals 6

    .prologue
    const-string v0, "BillingLogger"

    const-string v1, "Unable to log."

    :try_start_0
    iget-object v2, p0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    iget v3, p0, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v4, v2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ᵎﹶ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/ʽʾ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ʼᐧ(Lcom/google/android/gms/internal/play_billing/ˆˑ;I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    iput-object v3, v2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, p1, v3}, Lﹶﾞ/ⁱי;->ᵔٴ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˆˑ;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_0
    return-void

    :catchall_2
    move-exception p1

    const-string v0, "BillingClient"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
