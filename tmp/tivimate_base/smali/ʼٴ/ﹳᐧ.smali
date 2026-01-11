.class public final synthetic Lʼٴ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Ljava/lang/Object;

.field public final synthetic ˈ:Ljava/lang/Object;

.field public final synthetic ⁱˊ:Lʼٴ/ⁱˊ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lʼٴ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lʼٴ/ﹳᐧ;->ﹳٴ:I

    iput-object p1, p0, Lʼٴ/ﹳᐧ;->ⁱˊ:Lʼٴ/ⁱˊ;

    iput-object p2, p0, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʼٴ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lʼٴ/ⁱˊ;Lʼٴ/ˉʿ;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʼٴ/ﹳᐧ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʼٴ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lʼٴ/ﹳᐧ;->ⁱˊ:Lʼٴ/ⁱˊ;

    return-void
.end method

.method private final ʽ()Ljava/lang/Object;
    .locals 20

    .prologue
    move-object/from16 v1, p0

    iget-object v2, v1, Lʼٴ/ﹳᐧ;->ⁱˊ:Lʼٴ/ⁱˊ;

    invoke-virtual {v2}, Lʼٴ/ⁱˊ;->ᵎʻ()Z

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-nez v0, :cond_0

    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4, v0}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    iget-object v2, v1, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ˉʿ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-interface {v2, v0, v4}, Lʼٴ/ˉʿ;->ʽ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    return-object v3

    :cond_0
    iget-object v0, v1, Lʼٴ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BillingClient"

    const-string v5, "Please provide a valid product type."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lʼٴ/ˈٴ;->ˑﹳ:Lʼٴ/ﾞᴵ;

    const/16 v5, 0x32

    invoke-virtual {v2, v5, v4, v0}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    iget-object v2, v1, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ˉʿ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-interface {v2, v0, v4}, Lʼٴ/ˉʿ;->ʽ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    return-object v3

    :cond_1
    const-string v0, "Querying owned items, item type: "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BillingClient"

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, v2, Lʼٴ/ⁱˊ;->ˏי:Z

    iget-object v6, v2, Lʼٴ/ⁱˊ;->ˈٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lʼٴ/ⁱˊ;->ˈٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lʼٴ/ⁱˊ;->ᵎⁱ:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v9, v2, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    iget-object v11, v2, Lʼٴ/ⁱˊ;->ˆʾ:Ljava/lang/String;

    invoke-static {v6, v7, v10, v9, v11}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ⁱˊ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    if-eqz v5, :cond_2

    const-string v5, "enablePendingPurchases"

    invoke-virtual {v10, v5, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    move-object v9, v3

    :goto_0
    const/16 v12, 0x34

    :try_start_0
    iget-object v5, v2, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v2, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    :try_start_2
    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const-string v4, "Service has been reset to null"

    const/16 v5, 0x6b

    invoke-virtual {v2, v0, v5, v4, v3}, Lʼٴ/ⁱˊ;->ʾﾞ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lﹳʽ/ˊʻ;

    move-result-object v0

    :goto_1
    move-object/from16 v16, v3

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_b

    :cond_3
    iget-boolean v5, v2, Lʼٴ/ⁱˊ;->ˏי:Z

    if-nez v5, :cond_4

    iget-object v5, v2, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    invoke-virtual {v6, v5, v8, v9}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ـˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_3

    :cond_4
    iget-boolean v5, v2, Lʼٴ/ⁱˊ;->ʽʽ:Z

    if-eqz v5, :cond_5

    const/16 v5, 0x1a

    goto :goto_2

    :cond_5
    iget-boolean v5, v2, Lʼٴ/ⁱˊ;->ᴵˊ:Z

    if-eqz v5, :cond_6

    const/16 v5, 0x18

    goto :goto_2

    :cond_6
    iget-boolean v5, v2, Lʼٴ/ⁱˊ;->ʼʼ:Z

    if-eqz v5, :cond_7

    const/16 v5, 0x13

    goto :goto_2

    :cond_7
    move v5, v4

    :goto_2
    iget-object v7, v2, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    move-object/from16 v19, v6

    move v6, v5

    move-object/from16 v5, v19

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ﹳـ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sget-object v6, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    const-string v7, "BillingClient"

    if-nez v5, :cond_8

    const-string v9, "getPurchase() got null owned items list"

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x36

    :goto_4
    move-object v12, v6

    goto/16 :goto_6

    :cond_8
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v9

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lʼٴ/ﾞᴵ;->ﹳٴ()Lʼٴ/ˑﹳ;

    move-result-object v14

    iput v9, v14, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput-object v12, v14, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    invoke-virtual {v14}, Lʼٴ/ˑﹳ;->ﹳٴ()Lʼٴ/ﾞᴵ;

    move-result-object v12

    if-eqz v9, :cond_9

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getPurchase() failed. Response code: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x17

    goto :goto_6

    :cond_9
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_5

    :cond_a
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v12, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const-string v14, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    if-nez v9, :cond_b

    const-string v9, "Bundle returned from getPurchase() contains null SKUs list."

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x38

    goto :goto_4

    :cond_b
    if-nez v12, :cond_c

    const-string v9, "Bundle returned from getPurchase() contains null purchases list."

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x39

    goto :goto_4

    :cond_c
    if-nez v14, :cond_d

    const-string v9, "Bundle returned from getPurchase() contains null signatures list."

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3a

    goto :goto_4

    :cond_d
    sget-object v12, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    move v7, v11

    goto :goto_6

    :cond_e
    :goto_5
    const-string v9, "Bundle returned from getPurchase() doesn\'t contain required fields."

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x37

    goto/16 :goto_4

    :goto_6
    sget-object v9, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    if-eq v12, v9, :cond_f

    const-string v0, "Purchase bundle invalid"

    invoke-virtual {v2, v12, v7, v0, v3}, Lʼٴ/ⁱˊ;->ʾﾞ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lﹳʽ/ˊʻ;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v12, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v14, 0x0

    move-object/from16 v16, v3

    move v15, v14

    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_11

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v13, "Sku is owned: "

    move-object/from16 v18, v7

    const-string v7, "BillingClient"

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v4, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v4, v3, v11}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v3, v4, Lcom/android/billingclient/api/Purchase;->ʽ:Lorg/json/JSONObject;

    const-string v7, "purchaseToken"

    const-string v11, "token"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "BillingClient"

    const-string v7, "BUG: empty/null token!"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v18

    const/16 v4, 0x9

    const/4 v11, 0x1

    goto :goto_7

    :catch_2
    move-exception v0

    sget-object v3, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    const/16 v4, 0x33

    const-string v5, "Got an exception trying to decode the purchase!"

    invoke-virtual {v2, v3, v4, v5, v0}, Lʼٴ/ⁱˊ;->ʾﾞ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lﹳʽ/ˊʻ;

    move-result-object v0

    goto :goto_c

    :cond_11
    if-eqz v15, :cond_12

    const/16 v3, 0x1a

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4, v6}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    goto :goto_8

    :cond_12
    const/16 v4, 0x9

    :goto_8
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v5, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Continuation token: "

    const-string v6, "BillingClient"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    new-instance v2, Lﹳʽ/ˊʻ;

    sget-object v3, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4, v0}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v0, v2

    goto :goto_c

    :cond_13
    move-object/from16 v3, v16

    const/4 v11, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    :goto_9
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_9

    :goto_a
    sget-object v3, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    const-string v4, "Got exception trying to get purchases try to reconnect"

    invoke-virtual {v2, v3, v12, v4, v0}, Lʼٴ/ⁱˊ;->ʾﾞ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lﹳʽ/ˊʻ;

    move-result-object v0

    goto :goto_c

    :goto_b
    sget-object v3, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const-string v4, "Got exception trying to get purchases try to reconnect"

    invoke-virtual {v2, v3, v12, v4, v0}, Lʼٴ/ⁱˊ;->ʾﾞ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lﹳʽ/ˊʻ;

    move-result-object v0

    :goto_c
    iget-object v2, v0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_14

    iget-object v3, v1, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    check-cast v3, Lʼٴ/ˉʿ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ﾞᴵ;

    invoke-interface {v3, v0, v2}, Lʼٴ/ˉʿ;->ʽ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    goto :goto_d

    :cond_14
    iget-object v2, v1, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ˉʿ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ﾞᴵ;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-interface {v2, v0, v3}, Lʼٴ/ˉʿ;->ʽ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    :goto_d
    return-object v16
.end method

.method private final ⁱˊ()Ljava/lang/Object;
    .locals 22

    .prologue
    move-object/from16 v1, p0

    iget-object v2, v1, Lʼٴ/ﹳᐧ;->ⁱˊ:Lʼٴ/ⁱˊ;

    iget-object v0, v1, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lʼٴ/ﾞʻ;

    iget-object v0, v1, Lʼٴ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ˉˆ;

    invoke-virtual {v2}, Lʼٴ/ⁱˊ;->ᵎʻ()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x7

    if-nez v4, :cond_0

    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v6, v0}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    new-instance v2, Lʼٴ/ʼᐧ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-direct {v2, v4}, Lʼٴ/ʼᐧ;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v0, v2}, Lʼٴ/ﾞʻ;->ﹳٴ(Lʼٴ/ﾞᴵ;Lʼٴ/ʼᐧ;)V

    return-object v5

    :cond_0
    iget-boolean v4, v2, Lʼٴ/ⁱˊ;->ʾᵎ:Z

    const/16 v7, 0x14

    if-nez v4, :cond_1

    const-string v0, "BillingClient"

    const-string v4, "Querying product details is not supported."

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lʼٴ/ˈٴ;->ˉˆ:Lʼٴ/ﾞᴵ;

    invoke-virtual {v2, v7, v6, v0}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    new-instance v2, Lʼٴ/ʼᐧ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-direct {v2, v4}, Lʼٴ/ʼᐧ;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v0, v2}, Lʼٴ/ﾞʻ;->ﹳٴ(Lʼٴ/ﾞᴵ;Lʼٴ/ʼᐧ;)V

    return-object v5

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/play_billing/יـ;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʼٴ/ˉˆ;

    iget-object v13, v8, Lʼٴ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    iget-object v0, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/יـ;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_10

    add-int/lit8 v11, v10, 0x14

    if-le v11, v8, :cond_2

    move v12, v8

    goto :goto_1

    :cond_2
    move v12, v11

    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v0, v10, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v15, v9

    :goto_2
    if-ge v15, v12, :cond_3

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lʼٴ/ˉˆ;

    iget-object v7, v7, Lʼٴ/ˉˆ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/16 v7, 0x14

    goto :goto_2

    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v12, "ITEM_ID_LIST"

    invoke-virtual {v7, v12, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v16, v14

    iget-object v14, v2, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    const-string v10, "playBillingLibraryVersion"

    invoke-virtual {v7, v10, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v12, v2, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v15, v2, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v15, :cond_4

    :try_start_2
    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const-string v4, "Service has been reset to null."

    const/16 v6, 0x6b

    invoke-virtual {v2, v0, v6, v4, v5}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    const/16 v9, 0x2b

    goto/16 :goto_c

    :catch_1
    move-exception v0

    const/16 v9, 0x2b

    goto/16 :goto_d

    :cond_4
    iget-boolean v12, v2, Lʼٴ/ⁱˊ;->ʼʼ:Z

    if-eqz v12, :cond_5

    iget-object v12, v2, Lʼٴ/ⁱˊ;->ˈٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    invoke-virtual {v2}, Lʼٴ/ⁱˊ;->יﹳ()V

    invoke-virtual {v2}, Lʼٴ/ⁱˊ;->יﹳ()V

    invoke-virtual {v2}, Lʼٴ/ⁱˊ;->יﹳ()V

    invoke-virtual {v2}, Lʼٴ/ⁱˊ;->יﹳ()V

    new-instance v12, Lcom/google/android/gms/internal/play_billing/ʾˊ;

    const/4 v10, 0x1

    invoke-direct {v12, v10}, Lcom/google/android/gms/internal/play_billing/ʾˊ;-><init>(I)V

    iget-boolean v9, v2, Lʼٴ/ⁱˊ;->ᵢˏ:Z

    if-eq v10, v9, :cond_6

    const/16 v9, 0x11

    goto :goto_3

    :cond_6
    const/16 v9, 0x14

    :goto_3
    iget-object v10, v2, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v15

    iget-object v15, v2, Lʼٴ/ⁱˊ;->ˆʾ:Ljava/lang/String;

    iget-object v5, v2, Lʼٴ/ⁱˊ;->ᵎⁱ:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v5, v17

    move-object/from16 v17, v12

    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/play_billing/ʾˊ;J)Landroid/os/Bundle;

    move-result-object v15

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ﹳٴ;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v14, v7

    move-object v12, v10

    move-object/from16 v7, v16

    move-object v10, v5

    move v5, v11

    move v11, v9

    const/16 v9, 0x2b

    :try_start_3
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ˈⁱ(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v9, :cond_7

    sget-object v0, Lʼٴ/ˈٴ;->ʼᐧ:Lʼٴ/ﾞᴵ;

    const/16 v4, 0x2c

    const-string v5, "queryProductDetailsAsync got empty product details response."

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v4, v5, v6}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto/16 :goto_e

    :cond_7
    const-string v10, "DETAILS_LIST"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x6

    if-nez v10, :cond_9

    const-string v0, "BillingClient"

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    const-string v4, "BillingClient"

    invoke-static {v4, v9}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_8

    invoke-static {v0, v4}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v4

    const-string v5, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    invoke-static {v0, v5}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x17

    const/4 v10, 0x0

    invoke-virtual {v2, v4, v5, v0, v10}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto/16 :goto_e

    :cond_8
    const/4 v10, 0x0

    invoke-static {v11, v4}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v0

    const/16 v4, 0x2d

    const-string v5, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    invoke-virtual {v2, v0, v4, v5, v10}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto/16 :goto_e

    :cond_9
    const/4 v10, 0x0

    const-string v12, "DETAILS_LIST"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v12, :cond_a

    sget-object v0, Lʼٴ/ˈٴ;->ʼᐧ:Lʼٴ/ﾞᴵ;

    const/16 v4, 0x2e

    const-string v5, "queryProductDetailsAsync got null response list"

    invoke-virtual {v2, v0, v4, v5, v10}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto/16 :goto_e

    :cond_a
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_b

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Ljava/lang/String;

    move-object/from16 v17, v0

    :try_start_4
    new-instance v0, Lʼٴ/ٴﹶ;

    invoke-direct {v0, v11}, Lʼٴ/ٴﹶ;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-virtual {v0}, Lʼٴ/ٴﹶ;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v1, "Got product details: "

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "BillingClient"

    invoke-static {v11, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "Error trying to decode SkuDetails."

    const/4 v4, 0x6

    invoke-static {v4, v1}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v1

    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    const/16 v5, 0x2f

    invoke-virtual {v2, v1, v5, v4, v0}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto/16 :goto_e

    :cond_b
    move-object/from16 v17, v0

    const-string v0, "UNFETCHED_PRODUCT_LIST"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_c

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Ljava/lang/String;

    new-instance v12, Lʼٴ/ᵔﹳ;

    invoke-direct {v12, v11}, Lʼٴ/ᵔﹳ;-><init>(Ljava/lang/String;)V

    const-string v11, "BillingClient"

    invoke-virtual {v12}, Lʼٴ/ᵔﹳ;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Got unfetchedProduct: "

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :cond_c
    move/from16 v20, v5

    goto/16 :goto_9

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v0, :cond_c

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lʼٴ/ˉˆ;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v12, :cond_f

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lʼٴ/ٴﹶ;

    move/from16 v19, v0

    iget-object v0, v11, Lʼٴ/ˉˆ;->ﹳٴ:Ljava/lang/String;

    move/from16 v20, v5

    iget-object v5, v15, Lʼٴ/ٴﹶ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v11, Lʼٴ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    iget-object v5, v15, Lʼٴ/ٴﹶ;->ˈ:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_8
    move/from16 v0, v19

    move/from16 v5, v20

    goto :goto_6

    :cond_e
    move/from16 v0, v19

    move/from16 v5, v20

    goto :goto_7

    :cond_f
    move/from16 v19, v0

    move/from16 v20, v5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "productId"

    iget-object v12, v11, Lʼٴ/ˉˆ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "type"

    iget-object v11, v11, Lʼٴ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "statusCode"

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v5, Lʼٴ/ᵔﹳ;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lʼٴ/ᵔﹳ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :goto_9
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v1, p0

    move-object/from16 v0, v17

    move/from16 v10, v20

    const/4 v5, 0x0

    const/16 v7, 0x14

    const/4 v9, 0x0

    goto/16 :goto_0

    :goto_a
    const-string v1, "Error trying to decode SkuDetails."

    const/4 v4, 0x6

    invoke-static {v4, v1}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v1

    const-string v4, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: "

    const/16 v5, 0x2f

    invoke-virtual {v2, v1, v5, v4, v0}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto :goto_e

    :catchall_0
    move-exception v0

    const/16 v9, 0x2b

    :goto_b
    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_b

    :goto_c
    sget-object v1, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    invoke-virtual {v2, v1, v9, v4, v0}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto :goto_e

    :goto_d
    sget-object v1, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    invoke-virtual {v2, v1, v9, v4, v0}, Lʼٴ/ⁱˊ;->ʾˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    goto :goto_e

    :cond_10
    const-string v0, ""

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v11, 0x0

    invoke-direct {v1, v11, v0, v4, v6}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, v1

    :goto_e
    iget v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    move-result-object v1

    new-instance v2, Lʼٴ/ʼᐧ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Lʼٴ/ʼᐧ;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v1, v2}, Lʼٴ/ﾞʻ;->ﹳٴ(Lʼٴ/ﾞᴵ;Lʼٴ/ʼᐧ;)V

    const/16 v21, 0x0

    return-object v21
.end method

.method private final ﹳٴ()Ljava/lang/Object;
    .locals 12

    .prologue
    iget-object v0, p0, Lʼٴ/ﹳᐧ;->ⁱˊ:Lʼٴ/ⁱˊ;

    iget-object v1, p0, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lar/tvplayer/core/data/api/parse/ˈ;

    iget-object v2, p0, Lʼٴ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    check-cast v2, Lﹳי/ʽ;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Lʼٴ/ⁱˊ;->ᵎʻ()Z

    move-result v5

    const/4 v6, 0x3

    if-nez v5, :cond_0

    sget-object v2, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6, v2}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    sget-boolean v0, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    return-object v4

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :cond_0
    iget-object v5, v2, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "BillingClient"

    const-string v5, "Please provide a valid purchase token."

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lʼٴ/ˈٴ;->ᵎﹶ:Lʼٴ/ﾞᴵ;

    const/16 v5, 0x1a

    invoke-virtual {v0, v5, v6, v2}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    sget-boolean v0, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    return-object v4

    :cond_1
    iget-boolean v5, v0, Lʼٴ/ⁱˊ;->ˏי:Z

    if-nez v5, :cond_2

    sget-object v2, Lʼٴ/ˈٴ;->ﹳٴ:Lʼٴ/ﾞᴵ;

    const/16 v5, 0x1b

    invoke-virtual {v0, v5, v6, v2}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    sget-boolean v0, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    return-object v4

    :cond_2
    iget-object v5, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    :try_start_2
    sget-object v2, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/16 v5, 0x6b

    invoke-virtual {v0, v1, v2, v5, v4}, Lʼٴ/ⁱˊ;->ـﹶ(Lar/tvplayer/core/data/api/parse/ˈ;Lʼٴ/ﾞᴵ;ILjava/lang/Exception;)V

    return-object v4

    :cond_3
    iget-object v5, v0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v7, v0, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    iget-object v8, v0, Lʼٴ/ⁱˊ;->ˆʾ:Ljava/lang/String;

    iget-object v9, v0, Lʼٴ/ⁱˊ;->ᵎⁱ:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget v11, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ:I

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static {v9, v10, v11, v7, v8}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ⁱˊ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    invoke-virtual {v6, v5, v2, v11}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ˋᵔ(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﹳٴ(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1

    const-string v2, "BillingClient"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lʼٴ/ˈٴ;->ﹳٴ(ILjava/lang/String;)Lʼٴ/ﾞᴵ;

    sget-boolean v0, Lar/tvplayer/core/domain/ʻٴ;->ﹳٴ:Z

    return-object v4

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v5, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    invoke-virtual {v0, v1, v5, v3, v2}, Lʼٴ/ⁱˊ;->ـﹶ(Lar/tvplayer/core/data/api/parse/ˈ;Lʼٴ/ﾞᴵ;ILjava/lang/Exception;)V

    goto :goto_2

    :goto_1
    sget-object v5, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    invoke-virtual {v0, v1, v5, v3, v2}, Lʼٴ/ⁱˊ;->ـﹶ(Lar/tvplayer/core/data/api/parse/ˈ;Lʼٴ/ﾞᴵ;ILjava/lang/Exception;)V

    :goto_2
    return-object v4
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lʼٴ/ﹳᐧ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼٴ/ﹳᐧ;->ⁱˊ:Lʼٴ/ⁱˊ;

    iget-object v1, p0, Lʼٴ/ﹳᐧ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lʼٴ/ﹳᐧ;->ˈ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x5

    :try_start_0
    iget-object v4, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, v0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    :try_start_2
    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/16 v1, 0x6b

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʽ(Lʼٴ/ﾞᴵ;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v5, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    invoke-virtual {v5, v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ˊˋ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v1, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    invoke-static {v0}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʽ(Lʼٴ/ﾞᴵ;I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_3

    :goto_2
    sget-object v1, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    invoke-static {v0}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʽ(Lʼٴ/ﾞᴵ;I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lʼٴ/ﹳᐧ;->ʽ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lʼٴ/ﹳᐧ;->ⁱˊ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0}, Lʼٴ/ﹳᐧ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
