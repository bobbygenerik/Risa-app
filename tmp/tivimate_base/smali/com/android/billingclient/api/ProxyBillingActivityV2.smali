.class public Lcom/android/billingclient/api/ProxyBillingActivityV2;
.super Lʽ/ٴﹶ;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "PlatformActivityProxy"
.end annotation


# instance fields
.field public ʼˈ:Lˑﹳ/ˈ;

.field public ˈⁱ:Landroid/os/ResultReceiver;

.field public ˉـ:Landroid/os/ResultReceiver;

.field public ـˏ:Lˑﹳ/ˈ;

.field public ᴵˑ:Landroid/os/ResultReceiver;

.field public ﹳـ:Lˑﹳ/ˈ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lʽ/ٴﹶ;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    invoke-super {p0, p1}, Lʽ/ٴﹶ;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lˑʼ/ʼˈ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lˑʼ/ʼˈ;-><init>(I)V

    new-instance v1, Lʼٴ/ᴵᵔ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lʼٴ/ᴵᵔ;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;I)V

    invoke-virtual {p0, v0, v1}, Lʽ/ٴﹶ;->ᵔᵢ(Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ʽ;

    move-result-object v0

    check-cast v0, Lˑﹳ/ˈ;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ʼˈ:Lˑﹳ/ˈ;

    new-instance v0, Lˑʼ/ʼˈ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lˑʼ/ʼˈ;-><init>(I)V

    new-instance v1, Lﹳי/ʽ;

    invoke-direct {v1, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lʽ/ٴﹶ;->ᵔᵢ(Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ʽ;

    move-result-object v0

    check-cast v0, Lˑﹳ/ˈ;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ـˏ:Lˑﹳ/ˈ;

    new-instance v0, Lˑʼ/ʼˈ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lˑʼ/ʼˈ;-><init>(I)V

    new-instance v1, Lʼٴ/ᴵᵔ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lʼٴ/ᴵᵔ;-><init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;I)V

    invoke-virtual {p0, v0, v1}, Lʽ/ٴﹶ;->ᵔᵢ(Lcom/bumptech/glide/ˈ;Lˑﹳ/ⁱˊ;)Lˑﹳ/ʽ;

    move-result-object v0

    check-cast v0, Lˑﹳ/ˈ;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ﹳـ:Lˑﹳ/ˈ;

    const-string v0, "external_offer_flow_result_receiver"

    const-string v1, "external_payment_dialog_result_receiver"

    const-string v2, "alternative_billing_only_dialog_result_receiver"

    if-nez p1, :cond_2

    const-string p1, "ProxyBillingActivityV2"

    const-string v3, "Launching Play Store billing dialog"

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˈⁱ:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ʼˈ:Lˑﹳ/ˈ;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    new-instance v1, Lˑﹳ/ᵎﹶ;

    invoke-direct {v1, p1, v4, v5, v5}, Lˑﹳ/ᵎﹶ;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Lˑﹳ/ˈ;->ﹳٴ(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "external_payment_dialog_pending_intent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ᴵˑ:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ـˏ:Lˑﹳ/ˈ;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    new-instance v1, Lˑﹳ/ᵎﹶ;

    invoke-direct {v1, p1, v4, v5, v5}, Lˑﹳ/ᵎﹶ;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Lˑﹳ/ˈ;->ﹳٴ(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "external_offer_flow_pending_intent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˉـ:Landroid/os/ResultReceiver;

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ﹳـ:Lˑﹳ/ˈ;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    new-instance v1, Lˑﹳ/ᵎﹶ;

    invoke-direct {v1, p1, v4, v5, v5}, Lˑﹳ/ᵎﹶ;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    invoke-virtual {v0, v1}, Lˑﹳ/ˈ;->ﹳٴ(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˈⁱ:Landroid/os/ResultReceiver;

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ᴵˑ:Landroid/os/ResultReceiver;

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˉـ:Landroid/os/ResultReceiver;

    :cond_5
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-super {p0, p1}, Lʽ/ٴﹶ;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˈⁱ:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    const-string v1, "alternative_billing_only_dialog_result_receiver"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ᴵˑ:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    const-string v1, "external_payment_dialog_result_receiver"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˉـ:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_2

    const-string v1, "external_offer_flow_result_receiver"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    return-void
.end method
