.class public final Lᴵˈ/ˑﹳ;
.super Lᴵˈ/ﾞᴵ;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/lang/Object;

.field public static final ˈ:Lᴵˈ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵˈ/ˑﹳ;->ʽ:Ljava/lang/Object;

    new-instance v0, Lᴵˈ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᴵˈ/ˑﹳ;->ˈ:Lᴵˈ/ˑﹳ;

    return-void
.end method

.method public static ˈ(Landroid/app/Activity;ILٴﾞ/ˉˆ;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Lٴﾞ/ᵔʾ;->ⁱˊ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eq p1, v4, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const v1, 0x104000a

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    const v1, 0x7f130075

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    const v1, 0x7f13007f

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_6
    const v1, 0x7f130078

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_7

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-static {p0, p1}, Lٴﾞ/ᵔʾ;->ʽ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_8
    const-string p0, "Creating dialog for Google Play services availability issue. ConnectionResult="

    invoke-static {p1, p0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "GoogleApiAvailability"

    nop

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static ˑﹳ(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .prologue
    const-string v0, "Cannot display null dialog"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p0, Lᵔᵢ/ˆʾ;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    check-cast p0, Lᵔᵢ/ˆʾ;

    invoke-virtual {p0}, Lᵔᵢ/ˆʾ;->ٴﹶ()Lˑʼ/ʿ;

    move-result-object p0

    new-instance v2, Lᴵˈ/ʼˎ;

    invoke-direct {v2}, Lᴵˈ/ʼˎ;-><init>()V

    invoke-static {p1, v0}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lᴵˈ/ʼˎ;->יˉ:Landroid/app/Dialog;

    if-eqz p3, :cond_0

    iput-object p3, v2, Lᴵˈ/ʼˎ;->ﾞˋ:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v2, Lˑʼ/ʻٴ;->ʽˑ:Z

    const/4 p3, 0x1

    iput-boolean p3, v2, Lˑʼ/ʻٴ;->ˋˊ:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lˑʼ/ﹳٴ;

    invoke-direct {v0, p0}, Lˑʼ/ﹳٴ;-><init>(Lˑʼ/ʿ;)V

    iput-boolean p3, v0, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    invoke-virtual {v0, p1, v2, p2, p3}, Lˑʼ/ﹳٴ;->ʼˎ(ILˑʼ/ᴵᵔ;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lˑʼ/ﹳٴ;->ﾞᴵ()V

    return-void

    :catch_0
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    new-instance v2, Lᴵˈ/ʽ;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {p1, v0}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, v2, Lᴵˈ/ʽ;->ʾˋ:Landroid/app/Dialog;

    if-eqz p3, :cond_2

    iput-object p3, v2, Lᴵˈ/ʽ;->ᴵˊ:Landroid/content/DialogInterface$OnCancelListener;

    :cond_2
    invoke-virtual {v2, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/google/android/gms/common/api/GoogleApiActivity;ILcom/google/android/gms/common/api/GoogleApiActivity;)V
    .locals 3

    .prologue
    const-string v0, "d"

    invoke-super {p0, p2, p1, v0}, Lᴵˈ/ﾞᴵ;->ﹳٴ(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lٴﾞ/ˉˆ;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lٴﾞ/ˉˆ;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p2, v1, p3}, Lᴵˈ/ˑﹳ;->ˈ(Landroid/app/Activity;ILٴﾞ/ˉˆ;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, v0, p3}, Lᴵˈ/ˑﹳ;->ˑﹳ(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final ᵎﹶ(Landroid/app/Activity;Lﹳˊ/ˑﹳ;ILandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    .prologue
    const-string v0, "d"

    invoke-super {p0, p3, p1, v0}, Lᴵˈ/ﾞᴵ;->ﹳٴ(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lٴﾞ/ˉˆ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p2, v2}, Lٴﾞ/ˉˆ;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    invoke-static {p1, p3, v1, p4}, Lᴵˈ/ˑﹳ;->ˈ(Landroid/app/Activity;ILٴﾞ/ˉˆ;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lᴵˈ/ˑﹳ;->ˑﹳ(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final ﾞᴵ(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 9

    .prologue
    const-string v0, "GMS core API Availability. ConnectionResult="

    const-string v1, ", tag=null"

    invoke-static {p2, v0, v1}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v2, "GoogleApiAvailability"

    nop

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Lᴵˈ/ˆʾ;

    invoke-direct {p2, p0, p1}, Lᴵˈ/ˆʾ;-><init>(Lᴵˈ/ˑﹳ;Landroid/content/Context;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v0, 0x6

    if-nez p3, :cond_2

    if-ne p2, v0, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    nop

    :cond_1
    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    const-string v2, "common_google_play_services_resolution_required_title"

    invoke-static {p1, v2}, Lٴﾞ/ᵔʾ;->ˑﹳ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lٴﾞ/ᵔʾ;->ʽ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v3, 0x7f13007c

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eq p2, v0, :cond_6

    const/16 v0, 0x13

    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {p1, p2}, Lٴﾞ/ᵔʾ;->ⁱˊ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {p1}, Lٴﾞ/ᵔʾ;->ﹳٴ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "common_google_play_services_resolution_required_text"

    invoke-static {p1, v4, v0}, Lٴﾞ/ᵔʾ;->ˈ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    check-cast v5, Landroid/app/NotificationManager;

    new-instance v6, Lˊʻ/ʼˎ;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7}, Lˊʻ/ʼˎ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v1, v6, Lˊʻ/ʼˎ;->ٴﹶ:Z

    iget-object v7, v6, Lˊʻ/ʼˎ;->ˉˆ:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    invoke-static {v2}, Lˊʻ/ʼˎ;->ⁱˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v6, Lˊʻ/ʼˎ;->ˑﹳ:Ljava/lang/CharSequence;

    new-instance v2, Lﹳʽ/ˊʻ;

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lﹳʽ/ˊʻ;-><init>(IZ)V

    invoke-static {v0}, Lˊʻ/ʼˎ;->ⁱˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v6, v2}, Lˊʻ/ʼˎ;->ʽ(Lﹳʽ/ˊʻ;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v7, Lᵎᴵ/ⁱˊ;->ʽ:Ljava/lang/Boolean;

    if-nez v7, :cond_7

    const-string v7, "android.hardware.type.watch"

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lᵎᴵ/ⁱˊ;->ʽ:Ljava/lang/Boolean;

    :cond_7
    sget-object v2, Lᵎᴵ/ⁱˊ;->ʽ:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v7, 0x2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v2, v6, Lˊʻ/ʼˎ;->ˉˆ:Landroid/app/Notification;

    iput v0, v2, Landroid/app/Notification;->icon:I

    iput v7, v6, Lˊʻ/ʼˎ;->ᵔᵢ:I

    invoke-static {p1}, Lᵎᴵ/ⁱˊ;->ʽ(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f130084

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v6, Lˊʻ/ʼˎ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v3, Lˊʻ/ᵔᵢ;

    invoke-direct {v3, v0, p3}, Lˊʻ/ᵔᵢ;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iput-object p3, v6, Lˊʻ/ʼˎ;->ᵎﹶ:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_9
    const v2, 0x108008a

    iget-object v8, v6, Lˊʻ/ʼˎ;->ˉˆ:Landroid/app/Notification;

    iput v2, v8, Landroid/app/Notification;->icon:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Lˊʻ/ʼˎ;->ˉˆ:Landroid/app/Notification;

    invoke-static {v2}, Lˊʻ/ʼˎ;->ⁱˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v6, Lˊʻ/ʼˎ;->ˉˆ:Landroid/app/Notification;

    iput-wide v2, v4, Landroid/app/Notification;->when:J

    iput-object p3, v6, Lˊʻ/ʼˎ;->ᵎﹶ:Landroid/app/PendingIntent;

    invoke-static {v0}, Lˊʻ/ʼˎ;->ⁱˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, v6, Lˊʻ/ʼˎ;->ﾞᴵ:Ljava/lang/CharSequence;

    :goto_3
    invoke-static {}, Lᵎᴵ/ⁱˊ;->ﹳٴ()Z

    move-result p3

    if-nez p3, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {}, Lᵎᴵ/ⁱˊ;->ﹳٴ()Z

    move-result p3

    if-eqz p3, :cond_e

    sget-object p3, Lᴵˈ/ˑﹳ;->ʽ:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p3, "com.google.android.gms.availability"

    invoke-virtual {v5, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f13007b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_b

    const-string v0, "com.google.android.gms.availability"

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-direct {v2, v0, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_c
    :goto_4
    iput-object p3, v6, Lˊʻ/ʼˎ;->ˉʿ:Ljava/lang/String;

    :goto_5
    invoke-virtual {v6}, Lˊʻ/ʼˎ;->ﹳٴ()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v1, :cond_d

    if-eq p2, v7, :cond_d

    const/4 p3, 0x3

    if-eq p2, p3, :cond_d

    const p2, 0x9b6d

    goto :goto_6

    :cond_d
    sget-object p2, Lᴵˈ/ᵎﹶ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    :goto_6
    invoke-virtual {v5, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
