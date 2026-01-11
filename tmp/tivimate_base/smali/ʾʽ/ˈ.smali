.class public final Lʾʽ/ˈ;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʾʽ/ˈ;->ﹳٴ:I

    iput-object p2, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lʾʽ/ˈ;->ﹳٴ:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    iget v0, p0, Lʾʽ/ˈ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    if-nez p2, :cond_0

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p2, "App receiver called with null intent"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p2, "App receiver called with null action"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x72ee9a21

    if-eq v0, v1, :cond_3

    const v1, 0x4c497878    # 5.2814304E7f

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "[sgtm] App Receiver notified batches are available"

    invoke-virtual {p2, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance p2, Lﹳˊ/יـ;

    const/16 v0, 0x8

    invoke-direct {p2, v0, p0}, Lﹳˊ/יـ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string v0, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    iget-object p2, p1, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    const/4 v0, 0x0

    sget-object v1, Lﹶﾞ/ᴵᵔ;->יˉ:Lﹶﾞ/ˈٴ;

    invoke-virtual {p2, v0, v1}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v0, "App receiver notified triggers are available"

    invoke-virtual {p2, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object p2, p1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v0, Lﹳˊ/יـ;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lﹳˊ/יـ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string p2, "App receiver called with unknown action"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ˑﹳ;

    iget-object v1, v0, Lﹶ/ˑﹳ;->ʼˎ:Lʽⁱ/ˑﹳ;

    iget-object v2, v0, Lﹶ/ˑﹳ;->ᵔᵢ:Lⁱʽ/ﹳٴ;

    invoke-static {p1, p2, v1, v2}, Lﹶ/ⁱˊ;->ⁱˊ(Landroid/content/Context;Landroid/content/Intent;Lʽⁱ/ˑﹳ;Lⁱʽ/ﹳٴ;)Lﹶ/ⁱˊ;

    move-result-object p1

    invoke-virtual {v0, p1}, Lﹶ/ˑﹳ;->ﹳٴ(Lﹶ/ⁱˊ;)V

    :cond_6
    return-void

    :pswitch_1
    iget-object p1, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lיٴ/ˉʿ;

    invoke-virtual {p1}, Lיٴ/ˉʿ;->ٴﹶ()V

    return-void

    :pswitch_2
    iget-object p2, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast p2, Lᐧˎ/ᵔﹳ;

    iget-object p2, p2, Lᐧˎ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/Executor;

    new-instance v0, Lʻʿ/ᵔʾ;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1, p1}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lٴʽ/ﹳᐧ;

    sget-object p2, Lٴʽ/ﹳᐧ;->ᵎﹶ:Ljava/util/concurrent/Executor;

    new-instance v0, Lٴʽ/ᵔﹳ;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lٴʽ/ᵔﹳ;-><init>(Lٴʽ/ﹳᐧ;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    invoke-static {p1, p2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "recentapps"

    invoke-static {p1, p2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lʼﾞ/ᴵᵔ;

    invoke-virtual {p1}, Lʼﾞ/ᴵᵔ;->ʽ()Ljava/lang/Object;

    :cond_9
    return-void

    :pswitch_5
    iget-object p1, p0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lʾʽ/ˑﹳ;

    invoke-virtual {p1, p2}, Lʾʽ/ˑﹳ;->ﾞᴵ(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
