.class public final synthetic Lʼٴ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʼٴ/ˏי;->ﹳٴ:I

    iput-object p2, p0, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ˏי;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Lʼٴ/ˏי;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method private final ﹳٴ()Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᵔˆ/ʽ;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᵔˆ/ʽ;

    iget-object v2, v1, Lᵔˆ/ʽ;->ᵎⁱ:Ljava/io/BufferedWriter;

    if-nez v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lᵔˆ/ʽ;->ﹶᐧ()V

    iget-object v1, p0, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᵔˆ/ʽ;

    invoke-virtual {v1}, Lᵔˆ/ʽ;->ˈٴ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᵔˆ/ʽ;

    invoke-virtual {v1}, Lᵔˆ/ʽ;->ᴵʼ()V

    iget-object v1, p0, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᵔˆ/ʽ;

    const/4 v2, 0x0

    iput v2, v1, Lᵔˆ/ʽ;->ᵎˊ:I

    :cond_1
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lʼٴ/ˏי;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʼـ;

    iget-object v2, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v0, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    iget-object v0, v0, Lﹶﾞ/ᵢי;->ˉٴ:Lﹶﾞ/ʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected call on client side"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ـﹶ;

    new-instance v2, Lcom/google/android/gms/internal/measurement/ˑˉ;

    iget-object v0, v0, Lﹶﾞ/ـﹶ;->ᵎˊ:Lᐧﹳ/ʽ;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/ˑˉ;-><init>(Lᐧﹳ/ʽ;)V

    return-object v2

    :pswitch_1
    invoke-direct {v1}, Lʼٴ/ˏי;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, v1, Lʼٴ/ˏי;->ⁱˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lʼٴ/ʽﹳ;

    iget-object v0, v2, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object v3, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    monitor-exit v3

    goto/16 :goto_1e

    :catchall_0
    move-exception v0

    goto/16 :goto_1f

    :cond_0
    iget v4, v0, Lʼٴ/ⁱˊ;->ᵔᵢ:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v7, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v9, "accountName"

    invoke-virtual {v3, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lʼٴ/ⁱˊ;->ʼˎ:Ljava/lang/String;

    iget-object v10, v0, Lʼٴ/ⁱˊ;->ˆʾ:Ljava/lang/String;

    iget-object v11, v0, Lʼٴ/ⁱˊ;->ᵎⁱ:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v3, v9, v10}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ⁱˊ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, v5

    :goto_1
    iget-object v9, v0, Lʼٴ/ⁱˊ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v0, v0, Lʼٴ/ⁱˊ;->ˉˆ:Lcom/google/android/gms/internal/play_billing/ʽ;

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_3

    iget-object v0, v2, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    invoke-virtual {v0, v8}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    iget v3, v2, Lʼٴ/ʽﹳ;->ˈٴ:I

    sget-object v4, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    const/16 v6, 0x6b

    invoke-virtual {v0, v6, v3, v4}, Lʼٴ/ⁱˊ;->ﹳﹳ(IILʼٴ/ﾞᴵ;)V

    invoke-virtual {v2, v4}, Lʼٴ/ʽﹳ;->ʽ(Lʼٴ/ﾞᴵ;)V

    goto/16 :goto_1e

    :cond_3
    iget-object v9, v2, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object v10, v9, Lʼٴ/ⁱˊ;->ˉʿ:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move v13, v6

    const/16 v12, 0x19

    :goto_2
    if-lt v12, v6, :cond_6

    if-nez v3, :cond_4

    :try_start_2
    const-string v13, "subs"

    move-object v14, v0

    check-cast v14, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔٴ()Landroid/os/Parcel;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v14, v15, v7}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˈʿ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    move v13, v14

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_19

    :cond_4
    const-string v13, "subs"

    move-object v14, v0

    check-cast v14, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    invoke-virtual {v14, v12, v10, v13, v3}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ˑٴ(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v13

    :goto_3
    if-nez v13, :cond_5

    const-string v14, "BillingClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "highestLevelSupportedForSubs: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    move v12, v8

    :goto_4
    if-lt v12, v6, :cond_7

    move v11, v7

    goto :goto_5

    :cond_7
    move v11, v8

    :goto_5
    iput-boolean v11, v9, Lʼٴ/ⁱˊ;->ᵔﹳ:Z

    const/16 v11, 0x9

    if-ge v12, v6, :cond_8

    const-string v12, "BillingClient"

    const-string v14, "In-app billing API does not support subscription on this device."

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    goto :goto_6

    :cond_8
    move v12, v7

    :goto_6
    move v14, v13

    const/16 v13, 0x19

    :goto_7
    if-lt v13, v6, :cond_b

    if-nez v3, :cond_9

    const-string v14, "inapp"

    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔٴ()Landroid/os/Parcel;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v7}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˈʿ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    goto :goto_8

    :cond_9
    const-string v8, "inapp"

    move-object v14, v0

    check-cast v14, Lcom/google/android/gms/internal/play_billing/ﹳٴ;

    invoke-virtual {v14, v13, v10, v8, v3}, Lcom/google/android/gms/internal/play_billing/ﹳٴ;->ˑٴ(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v8

    move v14, v8

    :goto_8
    if-nez v14, :cond_a

    iput v13, v9, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    const-string v0, "BillingClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHighestLevelSupportedForInApp: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_a
    add-int/lit8 v13, v13, -0x1

    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_9
    iget v0, v9, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    iput v0, v9, Lʼٴ/ⁱˊ;->ﹳᐧ:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_c

    move v3, v7

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ʽʽ:Z

    const/16 v3, 0x18

    if-lt v0, v3, :cond_d

    move v3, v7

    goto :goto_b

    :cond_d
    const/4 v3, 0x0

    :goto_b
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ᴵˊ:Z

    const/16 v3, 0x15

    if-lt v0, v3, :cond_e

    move v3, v7

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    :goto_c
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ʾˋ:Z

    const/16 v3, 0x14

    if-lt v0, v3, :cond_f

    move v3, v7

    goto :goto_d

    :cond_f
    const/4 v3, 0x0

    :goto_d
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ᵢˏ:Z

    const/16 v3, 0x13

    if-lt v0, v3, :cond_10

    move v3, v7

    goto :goto_e

    :cond_10
    const/4 v3, 0x0

    :goto_e
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ʼʼ:Z

    const/16 v3, 0x11

    if-lt v0, v3, :cond_11

    move v3, v7

    goto :goto_f

    :cond_11
    const/4 v3, 0x0

    :goto_f
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ʾᵎ:Z

    const/16 v3, 0x10

    if-lt v0, v3, :cond_12

    move v3, v7

    goto :goto_10

    :cond_12
    const/4 v3, 0x0

    :goto_10
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ـˆ:Z

    const/16 v3, 0xf

    if-lt v0, v3, :cond_13

    move v3, v7

    goto :goto_11

    :cond_13
    const/4 v3, 0x0

    :goto_11
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ʻٴ:Z

    const/16 v3, 0xe

    if-lt v0, v3, :cond_14

    move v3, v7

    goto :goto_12

    :cond_14
    const/4 v3, 0x0

    :goto_12
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ʽﹳ:Z

    if-lt v0, v11, :cond_15

    move v3, v7

    goto :goto_13

    :cond_15
    const/4 v3, 0x0

    :goto_13
    iput-boolean v3, v9, Lʼٴ/ⁱˊ;->ˏי:Z

    const/4 v3, 0x6

    if-lt v0, v3, :cond_16

    move v8, v7

    goto :goto_14

    :cond_16
    const/4 v8, 0x0

    :goto_14
    iput-boolean v8, v9, Lʼٴ/ⁱˊ;->יـ:Z

    if-ge v0, v6, :cond_17

    const-string v0, "BillingClient"

    const-string v6, "In-app billing API version 3 is not supported on this device."

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x24

    :cond_17
    invoke-static {v9, v14}, Lʼٴ/ⁱˊ;->ʽᵔ(Lʼٴ/ⁱˊ;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v14, :cond_18

    sget-object v0, Lʼٴ/ˈٴ;->ⁱˊ:Lʼٴ/ﾞᴵ;

    invoke-virtual {v2, v0, v12, v5, v4}, Lʼٴ/ʽﹳ;->ⁱˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lʼٴ/ʽﹳ;->ʽ(Lʼٴ/ﾞᴵ;)V

    goto/16 :goto_1e

    :cond_18
    :try_start_3
    invoke-virtual {v2, v4}, Lʼٴ/ʽﹳ;->ﹳٴ(Z)Ljava/lang/Long;

    move-result-object v0

    if-eqz v4, :cond_1b

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->יـ()Lcom/google/android/gms/internal/play_billing/ٴʿ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v6, v4, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;I)V

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ﹳᐧ()Lcom/google/android/gms/internal/play_billing/ˑﹶ;

    move-result-object v3

    iget v6, v2, Lʼٴ/ʽﹳ;->ˈٴ:I

    if-lez v6, :cond_19

    goto :goto_15

    :cond_19
    const/4 v7, 0x0

    :goto_15
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ˑﹳ(Z)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/play_billing/ˑﹶ;->ﾞᴵ(I)V

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v0, v3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ˎʼ;

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/ˎʼ;->ʼᐧ(Lcom/google/android/gms/internal/play_billing/ˎʼ;J)V

    goto :goto_16

    :catchall_1
    move-exception v0

    goto :goto_17

    :cond_1a
    :goto_16
    iget-object v0, v2, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v6, v4, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ˎʼ;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/ﾞˏ;->ᵔﹳ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;Lcom/google/android/gms/internal/play_billing/ˎʼ;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/ﾞˏ;

    invoke-virtual {v0, v3}, Lʼٴ/ⁱˊ;->ﹶᐧ(Lcom/google/android/gms/internal/play_billing/ﾞˏ;)V

    goto :goto_18

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/יʿ;->ʼᐧ()Lcom/google/android/gms/internal/play_billing/ˉʽ;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->יـ()Lcom/google/android/gms/internal/play_billing/ˊˊ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v6, v4, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/ˊﾞ;->ﹳᐧ(Lcom/google/android/gms/internal/play_billing/ˊﾞ;I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v6, v3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/יʿ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/ˊﾞ;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/play_billing/יʿ;->ᵔʾ(Lcom/google/android/gms/internal/play_billing/יʿ;Lcom/google/android/gms/internal/play_billing/ˊﾞ;)V

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ˈ()V

    iget-object v0, v3, Lcom/google/android/gms/internal/play_billing/ˑ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʼـ;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/יʿ;

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/play_billing/יʿ;->ˉˆ(Lcom/google/android/gms/internal/play_billing/יʿ;J)V

    :cond_1c
    iget-object v0, v2, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    iget-object v0, v0, Lʼٴ/ⁱˊ;->ᵔʾ:Lﹶﾞ/ⁱי;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/ˑ;->ﹳٴ()Lcom/google/android/gms/internal/play_billing/ʼـ;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/יʿ;

    invoke-virtual {v0, v3}, Lﹶﾞ/ⁱי;->ᵎˊ(Lcom/google/android/gms/internal/play_billing/יʿ;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_18

    :goto_17
    const-string v3, "BillingClient"

    const-string v4, "Unable to log."

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    sget-object v0, Lʼٴ/ˈٴ;->ʼˎ:Lʼٴ/ﾞᴵ;

    invoke-virtual {v2, v0}, Lʼٴ/ʽﹳ;->ʽ(Lʼٴ/ﾞᴵ;)V

    goto :goto_1e

    :goto_19
    const-string v3, "BillingClient"

    const-string v6, "Exception while checking if billing is supported; try to reconnect"

    invoke-static {v3, v6, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v3, v0, Landroid/os/DeadObjectException;

    const/16 v6, 0x2a

    if-eqz v3, :cond_1d

    const/16 v7, 0x5b

    goto :goto_1a

    :cond_1d
    instance-of v7, v0, Landroid/os/RemoteException;

    if-eqz v7, :cond_1e

    const/16 v7, 0x5a

    goto :goto_1a

    :cond_1e
    instance-of v7, v0, Ljava/lang/SecurityException;

    if-eqz v7, :cond_1f

    const/16 v7, 0x5c

    goto :goto_1a

    :cond_1f
    move v7, v6

    :goto_1a
    invoke-static {v7, v6}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-static {v0}, Lʼٴ/ᴵˊ;->ﹳٴ(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_20
    move-object v0, v5

    :goto_1b
    iget-object v6, v2, Lʼٴ/ʽﹳ;->ᴵᵔ:Lʼٴ/ⁱˊ;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lʼٴ/ⁱˊ;->ʻˋ(I)V

    if-eqz v3, :cond_21

    sget-object v6, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    goto :goto_1c

    :cond_21
    sget-object v6, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    :goto_1c
    invoke-virtual {v2, v6, v7, v0, v4}, Lʼٴ/ʽﹳ;->ⁱˊ(Lʼٴ/ﾞᴵ;ILjava/lang/String;Z)V

    if-eqz v3, :cond_22

    sget-object v0, Lʼٴ/ˈٴ;->ˆʾ:Lʼٴ/ﾞᴵ;

    goto :goto_1d

    :cond_22
    sget-object v0, Lʼٴ/ˈٴ;->ᵔᵢ:Lʼٴ/ﾞᴵ;

    :goto_1d
    invoke-virtual {v2, v0}, Lʼٴ/ʽﹳ;->ʽ(Lʼٴ/ﾞᴵ;)V

    :goto_1e
    return-object v5

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_1f
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
