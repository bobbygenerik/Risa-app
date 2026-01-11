.class public final Lٴʽ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʽ/ˉˆ;


# static fields
.field public static final ᵎﹶ:Ljava/util/concurrent/Executor;


# instance fields
.field public final ʽ:Lᴵˈ/ᵔᵢ;

.field public volatile ˈ:Z

.field public volatile ˑﹳ:Z

.field public final ⁱˊ:Lٴʽ/ᵔʾ;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞᴵ:Lʾʽ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lٴʽ/ﹳᐧ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lᴵˈ/ᵔᵢ;Lٴʽ/ᵔʾ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʾʽ/ˈ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lʾʽ/ˈ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lٴʽ/ﹳᐧ;->ﾞᴵ:Lʾʽ/ˈ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lٴʽ/ﹳᐧ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lٴʽ/ﹳᐧ;->ʽ:Lᴵˈ/ᵔᵢ;

    iput-object p3, p0, Lٴʽ/ﹳᐧ;->ⁱˊ:Lٴʽ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lٴʽ/ﹳᐧ;->ʽ:Lᴵˈ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˈ/ᵔᵢ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to determine connectivity status when connectivity changed"

    nop

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ⁱˊ()Z
    .locals 2

    new-instance v0, Lٴʽ/ᵔﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lٴʽ/ᵔﹳ;-><init>(Lٴʽ/ﹳᐧ;I)V

    sget-object v1, Lٴʽ/ﹳᐧ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final ﹳٴ()V
    .locals 2

    new-instance v0, Lٴʽ/ᵔﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lٴʽ/ᵔﹳ;-><init>(Lٴʽ/ﹳᐧ;I)V

    sget-object v1, Lٴʽ/ﹳᐧ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
