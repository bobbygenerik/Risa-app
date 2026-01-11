.class public final Lʼٴ/ˊʻ;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lʼٴ/ٴᵢ;

.field public final ⁱˊ:Z

.field public ﹳٴ:Z


# direct methods
.method public constructor <init>(Lʼٴ/ٴᵢ;Z)V
    .locals 0

    iput-object p1, p0, Lʼٴ/ˊʻ;->ʽ:Lʼٴ/ٴᵢ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean p2, p0, Lʼٴ/ˊʻ;->ⁱˊ:Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x58756162

    sget-object v3, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ˈٴ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ʽʽ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    sget-object v5, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    if-eq v1, v2, :cond_2

    const v2, -0x141f9074

    if-eq v1, v2, :cond_1

    const v2, 0x14937179

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v10, v5

    goto :goto_1

    :cond_1
    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v10, v3

    goto :goto_1

    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v10, v4

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/play_billing/ˏⁱ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ˏⁱ;

    move-object v10, v0

    :goto_1
    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_4

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v9, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x20

    :goto_2
    move v9, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v0, 0x0

    const-string v2, "BillingBroadcastManager"

    move-object/from16 v6, p0

    iget-object v14, v6, Lʼٴ/ˊʻ;->ʽ:Lʼٴ/ٴᵢ;

    if-nez v7, :cond_7

    const-string v1, "Bundle is null."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v14, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ʽʽ;

    sget-object v2, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    const/16 v3, 0xb

    invoke-static {v3, v9, v2, v0, v10}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object v3

    check-cast v1, Lﹶﾞ/ⁱי;

    invoke-virtual {v1, v3}, Lﹶﾞ/ⁱי;->ˊʻ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;)V

    iget-object v1, v14, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ᵔʾ;

    if-eqz v1, :cond_f

    check-cast v1, Lar/tvplayer/core/domain/ʻٴ;

    invoke-virtual {v1, v2, v0}, Lar/tvplayer/core/domain/ʻٴ;->ⁱˊ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    return-void

    :cond_7
    const/4 v8, 0x0

    if-ne v9, v1, :cond_b

    sget v1, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    invoke-static {}, Lʼٴ/ﾞᴵ;->ﹳٴ()Lʼٴ/ˑﹳ;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v11

    iput v11, v1, Lʼٴ/ˑﹳ;->ﹳٴ:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_8

    const-string v11, "Unexpected null bundle received!"

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move v11, v8

    goto :goto_5

    :cond_8
    const-string v12, "SUB_RESPONSE_CODE"

    invoke-virtual {v11, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_9

    const-string v11, "getLaunchBillingFlowSubResponseCodeFromBundle() got null response code, assuming OK"

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    instance-of v12, v11, Ljava/lang/Integer;

    if-eqz v12, :cond_a

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_5

    :cond_a
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Unexpected type for bundle sub response code: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    iput v11, v1, Lʼٴ/ˑﹳ;->ⁱˊ:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1}, Lʼٴ/ˑﹳ;->ﹳٴ()Lʼٴ/ﾞᴵ;

    move-result-object v1

    goto :goto_6

    :cond_b
    move-object/from16 v1, p2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ˑﹳ(Landroid/content/Intent;Ljava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v1

    :goto_6
    const-string v11, "billingClientTransactionId"

    const-wide/16 v12, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v11, "wasServiceAutoReconnected"

    invoke-virtual {v7, v11, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    move v5, v11

    move-wide v3, v15

    goto :goto_7

    :cond_d
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v1, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    if-eqz v3, :cond_e

    move-object v8, v1

    move v13, v11

    move-wide v11, v15

    invoke-virtual/range {v6 .. v13}, Lʼٴ/ˊʻ;->ʽ(Landroid/os/Bundle;Lʼٴ/ﾞᴵ;ILcom/google/android/gms/internal/play_billing/ˏⁱ;JZ)V

    iget-object v0, v14, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ᵔʾ;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    check-cast v0, Lar/tvplayer/core/domain/ʻٴ;

    invoke-virtual {v0, v1, v2}, Lar/tvplayer/core/domain/ʻٴ;->ⁱˊ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    return-void

    :cond_e
    move v5, v11

    move-wide v3, v15

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v14, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ʽʽ;

    sget-object v2, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    const/16 v6, 0x4d

    invoke-static {v6, v9, v2, v0, v10}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object v0

    check-cast v1, Lﹶﾞ/ⁱי;

    invoke-virtual {v1, v0, v3, v4, v5}, Lﹶﾞ/ⁱי;->ˉٴ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;JZ)V

    iget-object v0, v14, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ᵔʾ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    check-cast v0, Lar/tvplayer/core/domain/ʻٴ;

    invoke-virtual {v0, v2, v1}, Lar/tvplayer/core/domain/ʻٴ;->ⁱˊ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    :cond_f
    return-void

    :goto_7
    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v6, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v7, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v15, "BillingHelper"

    if-eqz v2, :cond_10

    if-nez v6, :cond_11

    :cond_10
    move-wide/from16 v16, v12

    goto :goto_a

    :cond_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    move-wide/from16 v16, v12

    const-string v12, "Found purchase list of "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_13

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_13

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ˆʾ(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_13
    :goto_9
    move-object v2, v11

    goto :goto_b

    :goto_a
    const-string v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {v7, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "INAPP_DATA_SIGNATURE"

    invoke-virtual {v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ˆʾ(Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v2, "Couldn\'t find single purchase data as well."

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_b

    :cond_14
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :goto_b
    iget v0, v1, Lʼٴ/ﾞᴵ;->ﹳٴ:I

    if-nez v0, :cond_16

    iget-object v0, v14, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʽʽ;

    invoke-static {v9, v10}, Lʼٴ/ᴵˊ;->ʽ(ILcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    move-result-object v6

    check-cast v0, Lﹶﾞ/ⁱי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ᵎﹶ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/play_billing/ٴʿ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ᵔʾ()Lcom/google/android/gms/internal/play_billing/ʻʼ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ᵎﹶ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ˆﹳ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v8, v6, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v8, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    invoke-static {v8, v5}, Lcom/google/android/gms/internal/play_billing/ʻʼ;->ᵔʾ(Lcom/google/android/gms/internal/play_billing/ʻʼ;Z)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v5, v7, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ʻʼ;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ʼᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ʻʼ;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    cmp-long v6, v3, v16

    if-nez v6, :cond_15

    iget-object v3, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    goto :goto_c

    :cond_15
    iget-object v6, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ʼـ;->ᵎﹶ()Lcom/google/android/gms/internal/play_billing/ˑ;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ʽʾ;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v7, v6, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v7, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    invoke-static {v7, v3, v4}, Lcom/google/android/gms/internal/play_billing/ˆˑ;->ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ˆˑ;J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˆˑ;

    :goto_c
    invoke-virtual {v0, v5, v3}, Lﹶﾞ/ⁱי;->ᵔٴ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˆˑ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    const-string v3, "BillingLogger"

    const-string v4, "Unable to log."

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    move-object v8, v1

    goto :goto_e

    :cond_16
    move-object/from16 v6, p0

    move-object v8, v1

    move-wide v11, v3

    move v13, v5

    invoke-virtual/range {v6 .. v13}, Lʼٴ/ˊʻ;->ʽ(Landroid/os/Bundle;Lʼٴ/ﾞᴵ;ILcom/google/android/gms/internal/play_billing/ˏⁱ;JZ)V

    :goto_e
    iget-object v0, v14, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ᵔʾ;

    check-cast v0, Lar/tvplayer/core/domain/ʻٴ;

    invoke-virtual {v0, v8, v2}, Lar/tvplayer/core/domain/ʻٴ;->ⁱˊ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    return-void
.end method

.method public final ʽ(Landroid/os/Bundle;Lʼٴ/ﾞᴵ;ILcom/google/android/gms/internal/play_billing/ˏⁱ;JZ)V
    .locals 2

    .prologue
    :try_start_0
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lʼٴ/ˊʻ;->ʽ:Lʼٴ/ٴᵢ;

    iget-object p2, p2, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, Lʼٴ/ʽʽ;

    const-string p3, "FAILURE_LOGGING_PAYLOAD"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    sget p3, Lcom/google/android/gms/internal/play_billing/ᵎʻ;->ﹳٴ:I

    const-class p3, Lcom/google/android/gms/internal/play_billing/ᵎʻ;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget p4, Lcom/google/android/gms/internal/play_billing/ᵎʻ;->ﹳٴ:I

    sget-object p4, Lcom/google/android/gms/internal/play_billing/ⁱᴵ;->ʽ:Lcom/google/android/gms/internal/play_billing/ⁱᴵ;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/י;->ٴʼ()Lcom/google/android/gms/internal/play_billing/ᵎʻ;

    move-result-object p4

    sget v0, Lcom/google/android/gms/internal/play_billing/ᵎʻ;->ﹳٴ:I

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/ᵔⁱ;->ᵔʾ([BLcom/google/android/gms/internal/play_billing/ᵎʻ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p1

    check-cast p2, Lﹶﾞ/ⁱי;

    invoke-virtual {p2, p1, p5, p6, p7}, Lﹶﾞ/ⁱי;->ˉٴ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_0
    iget-object p1, p0, Lʼٴ/ˊʻ;->ʽ:Lʼٴ/ٴᵢ;

    iget-object p1, p1, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lʼٴ/ʽʽ;

    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-static {v0, p3, p2, v1, p4}, Lʼٴ/ᴵˊ;->ⁱˊ(IILʼٴ/ﾞᴵ;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/ˏⁱ;)Lcom/google/android/gms/internal/play_billing/ᵔⁱ;

    move-result-object p2

    check-cast p1, Lﹶﾞ/ⁱי;

    invoke-virtual {p1, p2, p5, p6, p7}, Lﹶﾞ/ⁱי;->ˉٴ(Lcom/google/android/gms/internal/play_billing/ᵔⁱ;JZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_1
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized ⁱˊ(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 8

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lʼٴ/ˊʻ;->ﹳٴ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    const/16 v1, 0x21

    const/4 v7, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lʼٴ/ˊʻ;->ⁱˊ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v7, v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, p0

    goto :goto_2

    :cond_2
    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    const/4 p1, 0x0

    invoke-virtual {v1, p0, v3, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_3
    iput-boolean v7, v2, Lʼٴ/ˊʻ;->ﹳٴ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ﹳٴ(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lʼٴ/ˊʻ;->ﹳٴ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lʼٴ/ˊʻ;->ⁱˊ:Z

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    iput-boolean v2, p0, Lʼٴ/ˊʻ;->ﹳٴ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
