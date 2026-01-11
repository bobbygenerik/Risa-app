.class public final Lʾʽ/ˆʾ;
.super Lʾʽ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ᵎﹶ:Lʾʽ/ʼˎ;

.field public final ﾞᴵ:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᐧᵎ/ᵢי;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lʾʽ/ᵎﹶ;-><init>(Landroid/content/Context;Lᐧᵎ/ᵢי;)V

    iget-object p1, p0, Lʾʽ/ᵎﹶ;->ⁱˊ:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lʾʽ/ˆʾ;->ﾞᴵ:Landroid/net/ConnectivityManager;

    new-instance p1, Lʾʽ/ʼˎ;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lʾʽ/ʼˎ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lʾʽ/ˆʾ;->ᵎﹶ:Lʾʽ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    .prologue
    const-string v0, "Received exception while registering network callback"

    :try_start_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    sget-object v2, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lʾʽ/ˆʾ;->ﾞᴵ:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lʾʽ/ˆʾ;->ᵎﹶ:Lʾʽ/ʼˎ;

    invoke-static {v1, v2}, Lˆﹶ/ﾞᴵ;->ﹳٴ(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    sget-object v3, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    sget-object v3, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final ˈ()V
    .locals 4

    .prologue
    const-string v0, "Received exception while unregistering network callback"

    :try_start_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    sget-object v2, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lʾʽ/ˆʾ;->ﾞᴵ:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lʾʽ/ˆʾ;->ᵎﹶ:Lʾʽ/ʼˎ;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    sget-object v3, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    sget-object v3, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʾʽ/ˆʾ;->ﾞᴵ:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lʾʽ/ٴﹶ;->ﹳٴ(Landroid/net/ConnectivityManager;)Lⁱᵎ/ˑﹳ;

    move-result-object v0

    return-object v0
.end method
