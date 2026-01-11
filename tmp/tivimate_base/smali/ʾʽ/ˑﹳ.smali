.class public abstract Lʾʽ/ˑﹳ;
.super Lʾʽ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ﾞᴵ:Lʾʽ/ˈ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᐧᵎ/ᵢי;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lʾʽ/ᵎﹶ;-><init>(Landroid/content/Context;Lᐧᵎ/ᵢי;)V

    new-instance p1, Lʾʽ/ˈ;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lʾʽ/ˈ;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lʾʽ/ˑﹳ;->ﾞᴵ:Lʾʽ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Lʾʽ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": registering receiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lʾʽ/ˑﹳ;->ﾞᴵ:Lʾʽ/ˈ;

    invoke-virtual {p0}, Lʾʽ/ˑﹳ;->ˑﹳ()Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, p0, Lʾʽ/ᵎﹶ;->ⁱˊ:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final ˈ()V
    .locals 4

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Lʾʽ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ": unregistering receiver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lʾʽ/ᵎﹶ;->ⁱˊ:Landroid/content/Context;

    iget-object v1, p0, Lʾʽ/ˑﹳ;->ﾞᴵ:Lʾʽ/ˈ;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public abstract ˑﹳ()Landroid/content/IntentFilter;
.end method

.method public abstract ﾞᴵ(Landroid/content/Intent;)V
.end method
