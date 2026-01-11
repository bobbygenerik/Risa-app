.class public final Lٴﾞ/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Landroid/net/Uri;


# instance fields
.field public final ʽ:Z

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gms.chimera"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lٴﾞ/ʽʽ;->ˈ:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p1, p0, Lٴﾞ/ʽʽ;->ﹳٴ:Ljava/lang/String;

    const-string p1, "com.google.android.gms"

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p1, p0, Lٴﾞ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    iput-boolean p2, p0, Lٴﾞ/ʽʽ;->ʽ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lٴﾞ/ʽʽ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lٴﾞ/ʽʽ;

    iget-object v1, p0, Lٴﾞ/ʽʽ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lٴﾞ/ʽʽ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, v3}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lٴﾞ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    iget-object v3, p1, Lٴﾞ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v1, v3}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lٴﾞ/ʽʽ;->ʽ:Z

    iget-boolean p1, p1, Lٴﾞ/ʽʽ;->ʽ:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x1081

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lٴﾞ/ʽʽ;->ʽ:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lٴﾞ/ʽʽ;->ﹳٴ:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lٴﾞ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lٴﾞ/ʽʽ;->ﹳٴ:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    throw v0
.end method

.method public final ﹳٴ(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .prologue
    const-string v0, "ConnectionStatusConfig"

    const/4 v1, 0x0

    iget-object v2, p0, Lٴﾞ/ʽʽ;->ﹳٴ:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lٴﾞ/ʽʽ;->ʽ:Z

    if-eqz v3, :cond_3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "serviceActionBundleKey"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v4, Lٴﾞ/ʽʽ;->ˈ:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_0

    :try_start_1
    const-string v4, "serviceIntentCall"

    invoke-virtual {p1, v4, v1, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    throw v3

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string v3, "Failed to acquire ContentProviderClient"

    invoke-direct {p1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    move-object v3, v1

    :goto_1
    const-string v4, "Dynamic intent resolution failed: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    :goto_2
    if-eqz v3, :cond_2

    const-string p1, "serviceResponseIntentKey"

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_2

    const-string p1, "serviceMissingResolutionIntentKey"

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dynamic lookup for intent failed for action "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but has possible resolution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    new-instance v0, Lcom/google/android/gms/common/internal/zzaj;

    new-instance v1, Lᴵˈ/ⁱˊ;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p1}, Lᴵˈ/ⁱˊ;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzaj;-><init>(Lᴵˈ/ⁱˊ;)V

    throw v0

    :cond_2
    :goto_3
    if-nez v1, :cond_3

    const-string p1, "Dynamic lookup for intent failed for action: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    :cond_3
    if-nez v1, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lٴﾞ/ʽʽ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
