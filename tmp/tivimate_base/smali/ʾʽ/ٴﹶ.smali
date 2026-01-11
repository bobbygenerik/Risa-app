.class public abstract Lʾʽ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkStateTracker"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public static final ﹳٴ(Landroid/net/ConnectivityManager;)Lⁱᵎ/ˑﹳ;
    .locals 8

    .prologue
    sget-object v0, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_0
    move v4, v2

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v2

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v6

    const-string v7, "Unable to validate active network"

    invoke-virtual {v6, v0, v7, v5}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_4

    :cond_2
    move v3, v2

    :goto_4
    new-instance v6, Lⁱᵎ/ˑﹳ;

    invoke-direct {v6, v4, v5, p0, v3}, Lⁱᵎ/ˑﹳ;-><init>(ZZZZ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v6

    :goto_5
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v3

    const-string v4, "Unable to get active network state"

    invoke-virtual {v3, v0, v4, p0}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lⁱᵎ/ˑﹳ;

    invoke-direct {p0, v2, v2, v2, v1}, Lⁱᵎ/ˑﹳ;-><init>(ZZZZ)V

    return-object p0
.end method
