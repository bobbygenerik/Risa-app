.class public final Lﹶﾞ/ᵎᵔ;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ⁱˊ:Z

.field public final ﹳٴ:Lﹶﾞ/ᵢי;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵢי;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p1, p0, Lﹶﾞ/ᵎᵔ;->ﹳٴ:Lﹶﾞ/ᵢי;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    iget-object p1, p0, Lﹶﾞ/ᵎᵔ;->ﹳٴ:Lﹶﾞ/ᵢי;

    invoke-virtual {p1}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "NetworkBroadcastReceiver received action"

    invoke-virtual {v0, p2, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Lﹶﾞ/ᵢי;->ᴵˊ:Lﹶﾞ/ʿ;

    invoke-static {p2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {p2}, Lﹶﾞ/ʿ;->ـʻ()Z

    move-result p2

    iget-boolean v0, p0, Lﹶﾞ/ᵎᵔ;->ʽ:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lﹶﾞ/ᵎᵔ;->ʽ:Z

    invoke-virtual {p1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object p1

    new-instance v0, Lﹳˊ/יـ;

    invoke-direct {v0, p0, p2}, Lﹳˊ/יـ;-><init>(Lﹶﾞ/ᵎᵔ;Z)V

    invoke-virtual {p1, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p1, p2, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵎᵔ;->ﹳٴ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ʻˋ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-boolean v1, p0, Lﹶﾞ/ᵎᵔ;->ⁱˊ:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Unregistering connectivity change receiver"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lﹶﾞ/ᵎᵔ;->ⁱˊ:Z

    iput-boolean v1, p0, Lﹶﾞ/ᵎᵔ;->ʽ:Z

    iget-object v1, v0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
