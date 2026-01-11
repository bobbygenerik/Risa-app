.class public abstract Lcom/google/android/gms/internal/measurement/ᵎˊ;
.super Lcom/google/android/gms/internal/measurement/ʼʼ;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ᵔי;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/ᵔי;
    .locals 3

    .prologue
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/ᵔי;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔי;

    return-object v1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/ٴʼ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public final ʽ(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 9

    .prologue
    const-string v2, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v4, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback"

    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/ˑٴ;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˑٴ;

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˈʿ;

    invoke-direct {v5, v2, v4, v3}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/ˑٴ;)V

    goto/16 :goto_18

    :pswitch_2
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Lcom/google/android/gms/internal/measurement/ᵔٴ;J)V

    goto/16 :goto_18

    :pswitch_3
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V

    goto/16 :goto_18

    :pswitch_4
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V

    goto/16 :goto_18

    :pswitch_5
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V

    goto/16 :goto_18

    :pswitch_6
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;J)V

    goto/16 :goto_18

    :pswitch_7
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V

    goto/16 :goto_18

    :pswitch_8
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V

    goto/16 :goto_18

    :pswitch_9
    sget-object v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    move-object v1, v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_18

    :pswitch_a
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->setSgtmDebugInfo(Landroid/content/Intent;)V

    goto/16 :goto_18

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_5

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getSessionId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_c
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_18

    :pswitch_d
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_18

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/ᵔי;->clearMeasurementEnabled(J)V

    goto/16 :goto_18

    :pswitch_f
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_18

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_7

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_11
    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v3, v8

    :cond_8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->setDataCollectionEnabled(Z)V

    goto/16 :goto_18

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_a

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_4

    :cond_a
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->getTestFlag(Lcom/google/android/gms/internal/measurement/ᵔٴ;I)V

    goto/16 :goto_18

    :pswitch_13
    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_18

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ˊˋ;

    if-eqz v3, :cond_c

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊˋ;

    goto :goto_5

    :cond_c
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˋᵔ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˋᵔ;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/ˊˋ;)V

    goto/16 :goto_18

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ˊˋ;

    if-eqz v3, :cond_e

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊˋ;

    goto :goto_6

    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˋᵔ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˋᵔ;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/ˊˋ;)V

    goto/16 :goto_18

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ˊˋ;

    if-eqz v3, :cond_10

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˊˋ;

    goto :goto_7

    :cond_10
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˋᵔ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˋᵔ;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/ˊˋ;)V

    goto/16 :goto_18

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v5

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->logHealthData(ILjava/lang/String;Lʿᵎ/ﹳٴ;Lʿᵎ/ﹳٴ;Lʿᵎ/ﹳٴ;)V

    goto/16 :goto_18

    :pswitch_18
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v4, :cond_12

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_8

    :cond_12
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/ᵔٴ;J)V

    goto/16 :goto_18

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_9

    :cond_13
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v4, :cond_14

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_9

    :cond_14
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v5, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivitySaveInstanceState(Lʿᵎ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔٴ;J)V

    goto/16 :goto_18

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityResumed(Lʿᵎ/ﹳٴ;J)V

    goto/16 :goto_18

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityPaused(Lʿᵎ/ﹳٴ;J)V

    goto/16 :goto_18

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityDestroyed(Lʿᵎ/ﹳٴ;J)V

    goto/16 :goto_18

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityCreated(Lʿᵎ/ﹳٴ;Landroid/os/Bundle;J)V

    goto/16 :goto_18

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityStopped(Lʿᵎ/ﹳٴ;J)V

    goto/16 :goto_18

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->onActivityStarted(Lʿᵎ/ﹳٴ;J)V

    goto/16 :goto_18

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_18

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_18

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_a

    :cond_15
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_16

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_a

    :cond_16
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->generateEventId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_b

    :cond_17
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_18

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_b

    :cond_18
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_b
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getGmpAppId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_19

    goto :goto_c

    :cond_19
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_1a

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_c

    :cond_1a
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_c
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_d

    :cond_1b
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_1c

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_d

    :cond_1c
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_d
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_e

    :cond_1d
    const-string v2, "com.google.android.gms.measurement.api.internal.IStringProvider"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ـˏ;

    if-eqz v5, :cond_1e

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/ـˏ;

    goto :goto_e

    :cond_1e
    new-instance v5, Lcom/google/android/gms/internal/measurement/ʼˈ;

    invoke-direct {v5, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/ـˏ;)V

    goto/16 :goto_18

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_20

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_f

    :cond_20
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_f
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_21

    goto :goto_10

    :cond_21
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v3, :cond_22

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_10

    :cond_22
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_10
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->setCurrentScreen(Lʿᵎ/ﹳٴ;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_18

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/ᵔי;->setSessionTimeoutDuration(J)V

    goto/16 :goto_18

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/ᵔי;->setMinimumSessionDuration(J)V

    goto/16 :goto_18

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/ᵔי;->resetAnalyticsData(J)V

    goto/16 :goto_18

    :pswitch_2d
    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    move v3, v8

    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/ᵔי;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_18

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_11

    :cond_24
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v5, :cond_25

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_11

    :cond_25
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_11
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_18

    :pswitch_30
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_18

    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_18

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_26

    goto :goto_12

    :cond_26
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v4, :cond_27

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_12

    :cond_27
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_12
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_28

    move v3, v8

    :cond_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_29

    goto :goto_13

    :cond_29
    invoke-interface {v7, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v5, :cond_2a

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_13

    :cond_2a
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    :goto_13
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto/16 :goto_18

    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    move v3, v8

    :cond_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v0, v4

    move v4, v3

    move-object v3, v0

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/ᵔי;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lʿᵎ/ﹳٴ;ZJ)V

    goto/16 :goto_18

    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2c

    :goto_14
    move-object v4, v5

    goto :goto_15

    :cond_2c
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    if-eqz v5, :cond_2d

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    goto :goto_14

    :cond_2d
    new-instance v5, Lcom/google/android/gms/internal/measurement/ˆﾞ;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/measurement/ˆﾞ;-><init>(Landroid/os/IBinder;)V

    goto :goto_14

    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/ᵔי;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/ᵔٴ;J)V

    goto :goto_18

    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    move v4, v8

    goto :goto_16

    :cond_2e
    move v4, v3

    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f

    move v5, v8

    goto :goto_17

    :cond_2f
    move v5, v3

    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v3, v0

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/ᵔי;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_18

    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/ﹳـ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ﹳـ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-interface {p0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/ᵔי;->initialize(Lʿᵎ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ﹳـ;J)V

    :goto_18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
