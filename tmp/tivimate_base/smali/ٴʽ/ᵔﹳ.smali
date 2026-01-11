.class public final Lٴʽ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lٴʽ/ﹳᐧ;


# direct methods
.method public synthetic constructor <init>(Lٴʽ/ﹳᐧ;I)V
    .locals 0

    iput p2, p0, Lٴʽ/ᵔﹳ;->ʾˋ:I

    iput-object p1, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    iget v0, p0, Lٴʽ/ᵔﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    iget-boolean v0, v0, Lٴʽ/ﹳᐧ;->ˈ:Z

    iget-object v1, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    invoke-virtual {v1}, Lٴʽ/ﹳᐧ;->ʽ()Z

    move-result v2

    iput-boolean v2, v1, Lٴʽ/ﹳᐧ;->ˈ:Z

    iget-object v1, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    iget-boolean v1, v1, Lٴʽ/ﹳᐧ;->ˈ:Z

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    const-string v1, "ConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "connectivity changed, isConnected: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    iget-boolean v2, v2, Lٴʽ/ﹳᐧ;->ˈ:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_0
    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    iget-boolean v1, v0, Lٴʽ/ﹳᐧ;->ˈ:Z

    new-instance v2, Lʻـ/ⁱˊ;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, v1}, Lʻـ/ⁱˊ;-><init>(ILjava/lang/Object;Z)V

    invoke-static {}, Lʿٴ/ᵔʾ;->ﾞᴵ()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    iget-boolean v0, v0, Lٴʽ/ﹳᐧ;->ˑﹳ:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lٴʽ/ﹳᐧ;->ˑﹳ:Z

    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    iget-object v1, v0, Lٴʽ/ﹳᐧ;->ﹳٴ:Landroid/content/Context;

    iget-object v0, v0, Lٴʽ/ﹳᐧ;->ﾞᴵ:Lʾʽ/ˈ;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    invoke-virtual {v0}, Lٴʽ/ﹳᐧ;->ʽ()Z

    move-result v1

    iput-boolean v1, v0, Lٴʽ/ﹳᐧ;->ˈ:Z

    :try_start_0
    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    iget-object v1, v0, Lٴʽ/ﹳᐧ;->ﹳٴ:Landroid/content/Context;

    iget-object v0, v0, Lٴʽ/ﹳᐧ;->ﾞᴵ:Lʾʽ/ˈ;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lٴʽ/ﹳᐧ;->ˑﹳ:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Failed to register"

    nop

    :cond_3
    iget-object v0, p0, Lٴʽ/ᵔﹳ;->ᴵˊ:Lٴʽ/ﹳᐧ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lٴʽ/ﹳᐧ;->ˑﹳ:Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
