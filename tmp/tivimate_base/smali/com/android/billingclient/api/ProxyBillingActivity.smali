.class public Lcom/android/billingclient/api/ProxyBillingActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "PlatformActivityProxy"
.end annotation


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:Landroid/os/ResultReceiver;

.field public ˈٴ:I

.field public ˊʻ:Z

.field public ᴵˊ:Z

.field public ᴵᵔ:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/16 v2, 0x6e

    const-string v3, "ProxyBillingActivity"

    if-eq p1, v0, :cond_5

    if-ne p1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 p2, 0x65

    if-ne p1, p2, :cond_4

    if-nez p3, :cond_1

    const-string p1, "Got null intent!"

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    sget p1, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Unexpected null bundle received!"

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "IN_APP_MESSAGE_RESPONSE_CODE"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_1
    iget-object p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʾˋ:Landroid/os/ResultReceiver;

    if-eqz p2, :cond_11

    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    :goto_2
    invoke-virtual {p2, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_9

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Got onActivityResult with wrong requestCode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; skipping..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_5
    :goto_3
    invoke-static {p3, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ˑﹳ(Landroid/content/Intent;Ljava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v0

    iget v0, v0, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    const/4 v4, -0x1

    if-ne p2, v4, :cond_7

    if-eqz v0, :cond_6

    move p2, v4

    goto :goto_4

    :cond_6
    move p2, v4

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Activity finished with resultCode "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and billing\'s responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "LAUNCH_BILLING_FLOW"

    const-string v4, "INTENT_SOURCE"

    if-eqz p2, :cond_8

    new-instance p3, Landroid/content/Intent;

    const-string v5, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-direct {p3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->ⁱˊ()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object p3, p2

    :goto_6
    iget-wide v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    const-string p2, "billingClientTransactionId"

    invoke-virtual {p3, p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˊʻ:Z

    const-string v0, "wasServiceAutoReconnected"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_8

    :cond_9
    const-string p2, "Got null bundle!"

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x16

    iget-wide v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/billingclient/api/ProxyBillingActivity;->ﹳٴ(IJ)Landroid/content/Intent;

    move-result-object p3

    goto :goto_8

    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Got null data with resultCode "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v4, :cond_f

    if-eqz p2, :cond_e

    const/4 p3, 0x3

    if-eq p2, p3, :cond_d

    const/4 p3, 0x4

    if-eq p2, p3, :cond_c

    const/4 p3, 0x5

    if-eq p2, p3, :cond_b

    const/16 p2, 0x75

    goto :goto_7

    :cond_b
    const/16 p2, 0x76

    goto :goto_7

    :cond_c
    const/16 p2, 0x74

    goto :goto_7

    :cond_d
    const/16 p2, 0x73

    goto :goto_7

    :cond_e
    const/16 p2, 0x72

    goto :goto_7

    :cond_f
    const/16 p2, 0x71

    :goto_7
    iget-wide v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/billingclient/api/ProxyBillingActivity;->ﹳٴ(IJ)Landroid/content/Intent;

    move-result-object p3

    :goto_8
    if-ne p1, v2, :cond_10

    const-string p1, "IS_FIRST_PARTY_PURCHASE"

    const/4 p2, 0x1

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    invoke-virtual {p0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_11
    :goto_9
    iput-boolean v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵˊ:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 v2, 0x64

    const-string v3, "in_app_message_result_receiver"

    const-string v4, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    const-string v8, "ProxyBillingActivity"

    const-string v5, "wasServiceAutoReconnected"

    const-string v6, "billingClientTransactionId"

    const/4 v9, 0x0

    if-nez p1, :cond_7

    const-string v0, "Launching Play Store billing flow"

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˈٴ:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BUY_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v11, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʽʽ:Z

    const/16 v2, 0x6e

    iput v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˈٴ:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "IN_APP_MESSAGE_INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʾˋ:Landroid/os/ResultReceiver;

    const/16 v2, 0x65

    iput v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˈٴ:I

    goto :goto_0

    :cond_1
    move-object v0, v10

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˊʻ:Z

    :cond_4
    :try_start_0
    iput-boolean v11, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵˊ:Z

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    iget v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˈٴ:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Got exception while trying to start a purchase flow."

    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʾˋ:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v9, v10}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0x89

    iget-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/billingclient/api/ProxyBillingActivity;->ﹳٴ(IJ)Landroid/content/Intent;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʽʽ:Z

    if-eqz v2, :cond_6

    const-string v2, "IS_FIRST_PARTY_PURCHASE"

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    iput-boolean v9, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵˊ:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    const-string v7, "Launching Play Store billing flow from savedInstanceState"

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "send_cancelled_broadcast_if_finished"

    invoke-virtual {p1, v7, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵˊ:Z

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    iput-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʾˋ:Landroid/os/ResultReceiver;

    :cond_8
    invoke-virtual {p1, v4, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʽʽ:Z

    const-string v3, "activity_code"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˈٴ:I

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    :cond_9
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˊʻ:Z

    :cond_a
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵˊ:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->ⁱˊ()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "DEBUG_MESSAGE"

    const-string v3, "Billing dialog closed."

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʽʽ:Z

    if-eqz v1, :cond_1

    const-string v1, "IS_FIRST_PARTY_PURCHASE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˈٴ:I

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, "INTENT_SOURCE"

    const-string v2, "LAUNCH_BILLING_FLOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    const-string v3, "billingClientTransactionId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʾˋ:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    const-string v1, "in_app_message_result_receiver"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵˊ:Z

    const-string v1, "send_cancelled_broadcast_if_finished"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ʽʽ:Z

    const-string v1, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˈٴ:I

    const-string v1, "activity_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ᴵᵔ:J

    const-string v2, "billingClientTransactionId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˊʻ:Z

    const-string v1, "wasServiceAutoReconnected"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final ⁱˊ()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final ﹳٴ(IJ)Landroid/content/Intent;
    .locals 5

    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->ⁱˊ()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "DEBUG_MESSAGE"

    const-string v3, "An internal error occurred."

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lʼٴ/ﾞᴵ;->ﹳٴ()Lʼٴ/ˑﹳ;

    move-result-object v1

    iput v2, v1, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput-object v3, v1, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1}, Lʼٴ/ˑﹳ;->ﹳٴ()Lʼٴ/ﾞᴵ;

    move-result-object v1

    sget v2, Lʼٴ/ᴵˊ;->ﹳٴ:I

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    const/4 v4, 0x2

    invoke-static {p1, v4, v1, v2, v3}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/ـﹶ;->ﹳٴ()[B

    move-result-object p1

    const-string v1, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "INTENT_SOURCE"

    const-string v1, "LAUNCH_BILLING_FLOW"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "billingClientTransactionId"

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "wasServiceAutoReconnected"

    iget-boolean p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->ˊʻ:Z

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method
