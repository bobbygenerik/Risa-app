.class public final Lʾʽ/ﾞʻ;
.super Lʾʽ/ˑﹳ;
.source "SourceFile"


# instance fields
.field public final ᵎﹶ:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᐧᵎ/ᵢי;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lʾʽ/ˑﹳ;-><init>(Landroid/content/Context;Lᐧᵎ/ᵢי;)V

    iget-object p1, p0, Lʾʽ/ᵎﹶ;->ⁱˊ:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lʾʽ/ﾞʻ;->ᵎﹶ:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public final ˑﹳ()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʾʽ/ﾞʻ;->ᵎﹶ:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lʾʽ/ٴﹶ;->ﹳٴ(Landroid/net/ConnectivityManager;)Lⁱᵎ/ˑﹳ;

    move-result-object v0

    return-object v0
.end method

.method public final ﾞᴵ(Landroid/content/Intent;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object v0, Lʾʽ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "Network broadcast received"

    invoke-virtual {p1, v0, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lʾʽ/ﾞʻ;->ᵎﹶ:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lʾʽ/ٴﹶ;->ﹳٴ(Landroid/net/ConnectivityManager;)Lⁱᵎ/ˑﹳ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʾʽ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
