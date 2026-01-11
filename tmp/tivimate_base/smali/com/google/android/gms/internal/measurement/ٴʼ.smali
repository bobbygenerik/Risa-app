.class public final Lcom/google/android/gms/internal/measurement/ٴʼ;
.super Lcom/google/android/gms/internal/measurement/ʾᵎ;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ᵔי;


# virtual methods
.method public final beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final generateEventId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final getCurrentScreenName(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final getGmpAppId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final initialize(Lʿᵎ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ﹳـ;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p4, p3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p4, p6, p7}, Landroid/os/Parcel;->writeLong(J)V

    const/4 p1, 0x2

    invoke-virtual {p0, p4, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final logHealthData(ILjava/lang/String;Lʿᵎ/ﹳٴ;Lʿᵎ/ﹳٴ;Lʿᵎ/ﹳٴ;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const-string p2, "Error with data collection. Data lost."

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p2, 0x21

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onActivityCreatedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x35

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onActivityDestroyedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x36

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onActivityPausedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onActivityResumedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onActivitySaveInstanceStateByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Lcom/google/android/gms/internal/measurement/ᵔٴ;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x39

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onActivityStartedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x33

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final onActivityStoppedByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x34

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/ˊˋ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/ˑٴ;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x3a

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x32

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final setDataCollectionEnabled(Z)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final setMeasurementEnabled(ZJ)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ᵔי(Landroid/os/Parcel;I)V

    return-void
.end method
