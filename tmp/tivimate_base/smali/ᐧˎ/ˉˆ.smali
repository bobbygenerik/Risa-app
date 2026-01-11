.class public abstract Lᐧˎ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﹳٴ(Landroid/content/Context;Lᐧˎ/ᵔﹳ;)V
    .locals 2

    .prologue
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lᐧˎ/ᵔʾ;

    invoke-direct {v0, p1}, Lᐧˎ/ᵔʾ;-><init>(Lᐧˎ/ᵔﹳ;)V

    iget-object v1, p1, Lᐧˎ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lᐧˎ/ᵔﹳ;->ʽ(I)V

    return-void
.end method
