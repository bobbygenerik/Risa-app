.class public final Lʼٴ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile ʽ:Lar/tvplayer/core/domain/ʻٴ;

.field public volatile ˈ:Z

.field public final ⁱˊ:Landroid/content/Context;

.field public volatile ﹳٴ:Lˋⁱ/ﾞᴵ;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ﹳٴ;->ⁱˊ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lʼٴ/ﹳٴ;->ⁱˊ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.google.android.play.billingclient.enableBillingOverridesTesting"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "BillingClient"

    const-string v3, "Unable to retrieve metadata value for enableBillingOverridesTesting."

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
