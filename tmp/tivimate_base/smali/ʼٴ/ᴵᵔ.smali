.class public final synthetic Lʼٴ/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑﹳ/ⁱˊ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lcom/android/billingclient/api/ProxyBillingActivityV2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ProxyBillingActivityV2;I)V
    .locals 0

    iput p2, p0, Lʼٴ/ᴵᵔ;->ʾˋ:I

    iput-object p1, p0, Lʼٴ/ᴵᵔ;->ᴵˊ:Lcom/android/billingclient/api/ProxyBillingActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 6

    .prologue
    iget v0, p0, Lʼٴ/ᴵᵔ;->ʾˋ:I

    check-cast p1, Lˑﹳ/ﹳٴ;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼٴ/ᴵᵔ;->ᴵˊ:Lcom/android/billingclient/api/ProxyBillingActivityV2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lˑﹳ/ﹳٴ;->ᴵˊ:Landroid/content/Intent;

    iget p1, p1, Lˑﹳ/ﹳٴ;->ʾˋ:I

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    const/4 v3, -0x1

    const-string v4, "ProxyBillingActivityV2"

    if-eq p1, v3, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "External offer flow finished with resultCode: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x86

    const-string v5, "INTERNAL_LOG_ERROR_REASON"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "External offer flow finished with error resultCode: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ˑﹳ(Landroid/content/Intent;Ljava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object p1

    iget p1, p1, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    iget-object v1, v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˉـ:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const-string v1, "External offer flow result receiver is null"

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "External offer flow finished with billing responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʼٴ/ᴵᵔ;->ᴵˊ:Lcom/android/billingclient/api/ProxyBillingActivityV2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lˑﹳ/ﹳٴ;->ᴵˊ:Landroid/content/Intent;

    const-string v2, "ProxyBillingActivityV2"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ˑﹳ(Landroid/content/Intent;Ljava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v3

    iget v3, v3, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    iget-object v4, v0, Lcom/android/billingclient/api/ProxyBillingActivityV2;->ˈⁱ:Landroid/os/ResultReceiver;

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_6
    iget p1, p1, Lˑﹳ/ﹳٴ;->ʾˋ:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Alternative billing only dialog finished with resultCode "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and billing\'s responseCode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
