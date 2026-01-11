.class public final Lٴʽ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʽ/ˉˆ;


# instance fields
.field public final ʽ:Lᴵˈ/ᵔᵢ;

.field public final ˈ:Lʾʽ/ʼˎ;

.field public final ⁱˊ:Lٴʽ/ᵔʾ;

.field public ﹳٴ:Z


# direct methods
.method public constructor <init>(Lᴵˈ/ᵔᵢ;Lٴʽ/ᵔʾ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lʾʽ/ʼˎ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lʾʽ/ʼˎ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lٴʽ/ʼᐧ;->ˈ:Lʾʽ/ʼˎ;

    iput-object p1, p0, Lٴʽ/ʼᐧ;->ʽ:Lᴵˈ/ᵔᵢ;

    iput-object p2, p0, Lٴʽ/ʼᐧ;->ⁱˊ:Lٴʽ/ᵔʾ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lٴʽ/ʼᐧ;->ʽ:Lᴵˈ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˈ/ᵔᵢ;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lٴʽ/ʼᐧ;->ﹳٴ:Z

    :try_start_0
    invoke-virtual {v0}, Lᴵˈ/ᵔᵢ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lٴʽ/ʼᐧ;->ˈ:Lʾʽ/ʼˎ;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v3, "ConnectivityMonitor"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to register callback"

    nop

    :cond_1
    return v2
.end method

.method public final ﹳٴ()V
    .locals 2

    iget-object v0, p0, Lٴʽ/ʼᐧ;->ʽ:Lᴵˈ/ᵔᵢ;

    invoke-virtual {v0}, Lᴵˈ/ᵔᵢ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lٴʽ/ʼᐧ;->ˈ:Lʾʽ/ʼˎ;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
