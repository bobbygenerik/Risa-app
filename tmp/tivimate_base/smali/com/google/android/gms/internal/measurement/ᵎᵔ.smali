.class public final Lcom/google/android/gms/internal/measurement/ᵎᵔ;
.super Lcom/google/android/gms/internal/measurement/ـﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉٴ:Ljava/lang/Object;

.field public final synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ٴᵢ:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/ᵎⁱ;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ٴᵢ:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ﹳﹳ;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ٴᵢ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method


# virtual methods
.method public ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()V
    .locals 17

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ٴᵢ:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ﹳٴ(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    iget-wide v4, v1, Lcom/google/android/gms/internal/measurement/ـﹶ;->ᴵˊ:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Lcom/google/android/gms/internal/measurement/ᵔٴ;J)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.google.app_measurement.screen_service"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/os/Bundle;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ﹳﹳ;->ʾˋ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ٴᵢ:Ljava/lang/Object;

    check-cast v3, Landroid/app/Activity;

    iget-wide v4, v1, Lcom/google/android/gms/internal/measurement/ـﹶ;->ᴵˊ:J

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ﹳٴ(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-result-object v3

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;J)V

    return-void

    :pswitch_1
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ٴᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void

    :pswitch_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ٴᵢ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {v4}, Lﹶﾞ/ʻᴵ;->ﹳٴ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lﹶﾞ/ʻᴵ;->ﹳٴ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_1
    const-string v6, "google_analytics_force_disable_updates"

    const-string v7, "bool"

    invoke-virtual {v5, v6, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    if-nez v0, :cond_3

    :catch_1
    move-object v5, v6

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/measurement/ʻˋ;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "com.google.android.gms.measurement.dynamite"

    if-eqz v0, :cond_6

    :try_start_3
    sget-object v0, Lˈˆ/ˈ;->ʽ:Lﹳˋ/ʼˎ;

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_6
    sget-object v0, Lˈˆ/ˈ;->ⁱˊ:Lᵎˉ/ⁱˊ;

    :goto_4
    invoke-static {v4, v0, v8}, Lˈˆ/ˈ;->ʽ(Landroid/content/Context;Lˈˆ/ʽ;Ljava/lang/String;)Lˈˆ/ˈ;

    move-result-object v0

    const-string v9, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {v0, v9}, Lˈˆ/ˈ;->ⁱˊ(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ᵎˊ;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/ᵔי;

    move-result-object v6
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :goto_5
    :try_start_4
    invoke-virtual {v7, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ⁱˊ(Ljava/lang/Exception;ZZ)V

    :goto_6
    iput-object v6, v7, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    if-nez v0, :cond_7

    const-string v0, "FA"

    const-string v4, "Failed to connect to measurement client."

    nop

    goto :goto_9

    :cond_7
    invoke-static {v4, v8}, Lˈˆ/ˈ;->ﹳٴ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v4, v8, v2}, Lˈˆ/ˈ;->ˈ(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-ge v6, v0, :cond_9

    :cond_8
    move v14, v3

    goto :goto_7

    :cond_9
    move v14, v2

    :goto_7
    new-instance v9, Lcom/google/android/gms/internal/measurement/ﹳـ;

    int-to-long v12, v8

    iget-object v0, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˉٴ:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    invoke-static {v4}, Lﹶﾞ/ʻᴵ;->ﹳٴ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-wide/32 v10, 0x2078d

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/measurement/ﹳـ;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v5, Lʿᵎ/ⁱˊ;

    invoke-direct {v5, v4}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʾˋ:J

    invoke-interface {v0, v5, v9, v6, v7}, Lcom/google/android/gms/internal/measurement/ᵔי;->initialize(Lʿᵎ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ﹳـ;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :goto_8
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ᵎᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ʻˋ;

    invoke-virtual {v4, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ⁱˊ(Ljava/lang/Exception;ZZ)V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
