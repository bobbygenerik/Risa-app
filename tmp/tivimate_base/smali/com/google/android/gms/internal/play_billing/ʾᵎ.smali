.class public abstract Lcom/google/android/gms/internal/play_billing/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    return-void
.end method

.method public static ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    const/4 v0, 0x5

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    nop

    return-void

    :cond_1
    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public static ʽ(Lʼٴ/ﾞᴵ;I)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE_CODE"

    iget v2, p0, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DEBUG_MESSAGE"

    iget-object p0, p0, Lʼٴ/ﾞᴵ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "LOG_REASON"

    invoke-static {p1}, Landroid/support/v4/media/session/ﹳٴ;->ˈ(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static ˆʾ(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "BillingHelper"

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v2, p0, p1}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string p1, "Got JSONException while parsing purchase data: "

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string p0, "Received a null purchase data."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/play_billing/ʾˊ;J)Landroid/os/Bundle;
    .locals 7

    .prologue
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-static {p4, p5, p3, p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ⁱˊ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "enablePendingPurchases"

    const/4 p1, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "SKU_DETAILS_RESPONSE_FORMAT"

    const-string p4, "PRODUCT_DETAILS"

    invoke-virtual {p3, p0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    sget-object p4, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    const/4 p4, 0x2

    new-array p5, p4, [Ljava/lang/Object;

    const-string v0, "subs"

    const/4 v1, 0x0

    aput-object v0, p5, v1

    const-string v0, "inapp"

    aput-object v0, p5, p1

    invoke-static {p4, p5}, Lʼ/ᵎﹶ;->ٴᵢ(I[Ljava/lang/Object;)V

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/play_billing/יـ;->ʼˎ(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/ʼʼ;

    move-result-object p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p4, "PRODUCT_TYPES_TO_RETURN_MULTIPLE_OFFERS"

    invoke-virtual {p3, p4, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance p0, Ljava/util/ArrayList;

    new-array p4, p1, [Ljava/lang/Object;

    aput-object v0, p4, v1

    invoke-static {p1, p4}, Lʼ/ᵎﹶ;->ٴᵢ(I[Ljava/lang/Object;)V

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/יـ;->ʼˎ(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/ʼʼ;

    move-result-object p4

    invoke-direct {p0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p4, "PRODUCT_TYPES_TO_RETURN_RENT_OFFERS"

    invoke-virtual {p3, p4, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "SHOULD_RETURN_UNFETCHED_PRODUCTS"

    invoke-virtual {p3, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʼٴ/ˉˆ;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, p1

    or-int/2addr v2, v6

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, p1

    or-int/2addr v3, v4

    iget-object v4, v5, Lʼٴ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    const-string v5, "first_party"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Serialized DocId is required for constructing ExtraParams to query ProductDetails for all first party products."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "SKU_SERIALIZED_DOCID_LIST"

    invoke-virtual {p3, p0, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "accountName"

    invoke-virtual {p3, p0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    const-string p0, "SKU_DYNAMIC_PRODUCT_TOKEN_LIST"

    invoke-virtual {p3, p0, p5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    return-object p3
.end method

.method public static ˑﹳ(Landroid/content/Intent;Ljava/lang/String;)Lʼٴ/ﾞᴵ;
    .locals 2

    .prologue
    if-nez p0, :cond_0

    const-string p0, "BillingHelper"

    const-string p1, "Got null intent!"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lʼٴ/ﾞᴵ;->ﹳٴ()Lʼٴ/ˑﹳ;

    move-result-object p0

    const/4 p1, 0x6

    iput p1, p0, Lʼٴ/ˑﹳ;->ﹳٴ:I

    const-string p1, "An internal error occurred."

    iput-object p1, p0, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    invoke-virtual {p0}, Lʼٴ/ˑﹳ;->ﹳٴ()Lʼٴ/ﾞᴵ;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lʼٴ/ﾞᴵ;->ﹳٴ()Lʼٴ/ˑﹳ;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    iput v1, v0, Lʼٴ/ˑﹳ;->ﹳٴ:I

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0}, Lʼٴ/ˑﹳ;->ﹳٴ()Lʼٴ/ﾞᴵ;

    move-result-object p0

    return-object p0
.end method

.method public static ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x9c40

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    nop

    :cond_1
    return-void
.end method

.method public static ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public static ⁱˊ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string v0, "playBillingLibraryVersion"

    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string p3, "playBillingLibraryWrapperVersion"

    invoke-virtual {p2, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, "billingClientSessionId"

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    .prologue
    const/4 v0, 0x6

    if-nez p1, :cond_0

    const-string p1, "Unexpected null bundle received!"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "getResponseCodeFromBundle() got null response code, assuming OK"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected type for bundle response code: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, ""

    if-nez p1, :cond_0

    const-string p1, "Unexpected null bundle received!"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "DEBUG_MESSAGE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "getDebugMessageFromBundle() got null response code, assuming OK"

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected type for debug message: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
