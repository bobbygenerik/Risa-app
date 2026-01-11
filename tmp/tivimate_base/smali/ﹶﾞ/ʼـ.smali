.class public final Lﹶﾞ/ʼـ;
.super Lcom/google/android/gms/internal/measurement/ʼʼ;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ˉٴ;


# instance fields
.field public final ˈ:Lﹶﾞ/ᵢי;

.field public ˑﹳ:Ljava/lang/Boolean;

.field public ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵢי;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ʼʼ;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p1, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    const/4 p1, 0x0

    iput-object p1, p0, Lﹶﾞ/ʼـ;->ﾞᴵ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ʻٴ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʼˈ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v0, Lﹶﾞ/ʽᵔ;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ʽᵔ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˈ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ʼʼ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lﹶﾞ/ʼـ;->ᵔי(Ljava/lang/String;Z)V

    iget-object v1, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    new-instance v2, Lﹶﾞ/י;

    const/4 v7, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lﹶﾞ/י;-><init>(Lﹶﾞ/ʼـ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lﹶﾞ/ʻˋ;->ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p3, "Failed to get conditional user properties as"

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final ʼˎ(Ljava/lang/String;Ljava/lang/String;Lﹶﾞ/ʻᐧ;)Ljava/util/List;
    .locals 7

    .prologue
    invoke-virtual {p0, p3}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v2, p3, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object p3, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {p3}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v6

    new-instance v0, Lﹶﾞ/י;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lﹶﾞ/י;-><init>(Lﹶﾞ/ʼـ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lﹶﾞ/ʻˋ;->ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p1, p3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final ʽ(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 10

    .prologue
    iget-object v2, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v4

    :pswitch_1
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "com.google.android.gms.measurement.internal.ITriggerUrisCallback"

    invoke-interface {v6, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v8

    instance-of v9, v8, Lﹶﾞ/ٴʼ;

    if-eqz v9, :cond_1

    move-object v3, v8

    check-cast v3, Lﹶﾞ/ٴʼ;

    goto :goto_0

    :cond_1
    new-instance v8, Lﹶﾞ/ᵎⁱ;

    invoke-direct {v8, v6, v3, v4}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object v3, v8

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v5, v3}, Lﹶﾞ/ʼـ;->ˉˆ(Lﹶﾞ/ʻᐧ;Landroid/os/Bundle;Lﹶﾞ/ٴʼ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_2
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    sget-object v3, Lﹶﾞ/ˈ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ˈ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3}, Lﹶﾞ/ʼـ;->ʾˋ(Lﹶﾞ/ʻᐧ;Lﹶﾞ/ˈ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_3
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    sget-object v5, Lﹶﾞ/ʽᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ʽᐧ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "com.google.android.gms.measurement.internal.IUploadBatchesCallback"

    invoke-interface {v6, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v8

    instance-of v9, v8, Lﹶﾞ/ᵔי;

    if-eqz v9, :cond_3

    move-object v3, v8

    check-cast v3, Lﹶﾞ/ᵔי;

    goto :goto_1

    :cond_3
    new-instance v8, Lﹶﾞ/ᵎˊ;

    invoke-direct {v8, v6, v3, v4}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object v3, v8

    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v5, v3}, Lﹶﾞ/ʼـ;->ʾᵎ(Lﹶﾞ/ʻᐧ;Lﹶﾞ/ʽᐧ;Lﹶﾞ/ᵔי;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_4
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ٴᵢ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_5
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ﾞʻ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_6
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ʻٴ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_7
    sget-object v5, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ʻᐧ;

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v6}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v5}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v8, v5, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v8}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v0

    sget-object v9, Lﹶﾞ/ᴵᵔ;->ˋـ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v3, v9}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    const-string v3, "Failed to get trigger URIs. appId"

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    new-instance v9, Lﹶﾞ/ʾˊ;

    invoke-direct {v9, p0, v5, v6, v4}, Lﹶﾞ/ʾˊ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v9}, Lﹶﾞ/ʻˋ;->ˎʾ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object v0

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v8}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    new-instance v4, Lﹶﾞ/ʾˊ;

    invoke-direct {v4, p0, v5, v6, v7}, Lﹶﾞ/ʾˊ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v4}, Lﹶﾞ/ʻˋ;->ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    :goto_3
    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v8}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_a

    :pswitch_8
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ᵎˊ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʼˎ;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v0, :cond_5

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v7}, Lﹶﾞ/ʼˎ;->writeToParcel(Landroid/os/Parcel;I)V

    return v7

    :pswitch_9
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ᵔʾ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_a
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3}, Lﹶﾞ/ʼـ;->ᵢˏ(Landroid/os/Bundle;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_b
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ᴵᵔ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3, v4}, Lﹶﾞ/ʼـ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v7

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3, v4}, Lﹶﾞ/ʼـ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Lﹶﾞ/ʻᐧ;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v7

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v4, v7

    :cond_6
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3, v5, v4}, Lﹶﾞ/ʼـ;->ˆʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v7

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    move v4, v7

    :cond_7
    sget-object v5, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3, v4, v5}, Lﹶﾞ/ʼـ;->יـ(Ljava/lang/String;Ljava/lang/String;ZLﹶﾞ/ʻᐧ;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v7

    :pswitch_10
    sget-object v2, Lﹶﾞ/ˑﹳ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ˑﹳ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v2, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v2, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v0, v2, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lﹶﾞ/ʼـ;->ᵔי(Ljava/lang/String;Z)V

    new-instance v0, Lﹶﾞ/ˑﹳ;

    invoke-direct {v0, v2}, Lﹶﾞ/ˑﹳ;-><init>(Lﹶﾞ/ˑﹳ;)V

    new-instance v2, Lˋˋ/ˈ;

    const/16 v3, 0x1d

    invoke-direct {v2, p0, v3, v0}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_11
    sget-object v2, Lﹶﾞ/ˑﹳ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ˑﹳ;

    sget-object v3, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3}, Lﹶﾞ/ʼـ;->ᴵˊ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_12
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ٴﹶ(Lﹶﾞ/ʻᐧ;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lﹶﾞ/ʼـ;->ˏי(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_14
    sget-object v2, Lﹶﾞ/ˏי;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ˏי;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v3, v2}, Lﹶﾞ/ʼـ;->ـˆ(Ljava/lang/String;Lﹶﾞ/ˏי;)[B

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v7

    :pswitch_15
    sget-object v5, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lﹶﾞ/ʻᐧ;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_5

    :cond_8
    move v6, v4

    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v5}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v5}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    new-instance v8, Lﹶﾞ/ـᵎ;

    invoke-direct {v8, p0, v5, v4}, Lﹶﾞ/ـᵎ;-><init>(Lﹶﾞ/ʼـ;Ljava/lang/Object;I)V

    invoke-virtual {v0, v8}, Lﹶﾞ/ʻˋ;->ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object v0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lﹶﾞ/יי;

    if-nez v6, :cond_a

    iget-object v9, v8, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    invoke-static {v9}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_8

    :cond_a
    :goto_7
    new-instance v9, Lﹶﾞ/ʿˎ;

    invoke-direct {v9, v8}, Lﹶﾞ/ʿˎ;-><init>(Lﹶﾞ/יי;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_6

    :cond_b
    move-object v3, v4

    goto :goto_9

    :goto_8
    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v5}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    const-string v5, "Failed to get user properties. appId"

    invoke-virtual {v2, v4, v0, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :goto_a
    return v7

    :pswitch_16
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ˉʿ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_17
    sget-object v2, Lﹶﾞ/ˏי;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ˏי;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {v3}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v7}, Lﹶﾞ/ʼـ;->ᵔי(Ljava/lang/String;Z)V

    new-instance v0, Lʼٴ/ـˆ;

    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_18
    sget-object v2, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lﹶﾞ/ʼـ;->ʽʽ(Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_19
    sget-object v2, Lﹶﾞ/ʿˎ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ʿˎ;

    sget-object v3, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3}, Lﹶﾞ/ʼـ;->ٴʼ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_1a
    sget-object v2, Lﹶﾞ/ˏי;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ˏי;

    sget-object v3, Lﹶﾞ/ʻᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lﹶﾞ/ʻᐧ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2, v3}, Lﹶﾞ/ʼـ;->ˊʻ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ʽʽ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    new-instance v0, Lﹶﾞ/ʽᵔ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ʽᵔ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ʾˋ(Lﹶﾞ/ʻᐧ;Lﹶﾞ/ˈ;)V
    .locals 2

    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    new-instance v0, Lʼٴ/ـˆ;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, p2, v1}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ʾᵎ(Lﹶﾞ/ʻᐧ;Lﹶﾞ/ʽᐧ;Lﹶﾞ/ᵔי;)V
    .locals 6

    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v2, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object p1, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {p1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object p1

    new-instance v0, Lʿי/ˎᐧ;

    const/4 v5, 0x4

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lʿי/ˎᐧ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˆʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lﹶﾞ/ʼـ;->ᵔי(Ljava/lang/String;Z)V

    iget-object v1, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    new-instance v2, Lﹶﾞ/י;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lﹶﾞ/י;-><init>(Lﹶﾞ/ʼـ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lﹶﾞ/ʻˋ;->ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lﹶﾞ/יי;

    if-nez p4, :cond_1

    iget-object v0, p3, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    invoke-static {v0}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v0, Lﹶﾞ/ʿˎ;

    invoke-direct {v0, p3}, Lﹶﾞ/ʿˎ;-><init>(Lﹶﾞ/יי;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :goto_3
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p3

    const-string p4, "Failed to get user properties as. appId"

    invoke-virtual {p2, p3, p1, p4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final ˆﾞ(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ﾞˋ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˈ(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->ﾞˋ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lﹶﾞ/ʻˋ;->ﹳᵢ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˉʿ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    new-instance v0, Lﹶﾞ/ʽᵔ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ʽᵔ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˉˆ(Lﹶﾞ/ʻᐧ;Landroid/os/Bundle;Lﹶﾞ/ٴʼ;)V
    .locals 7

    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v5, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v5}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v6

    new-instance v0, Lﹶﾞ/ˑ;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lﹶﾞ/ˑ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;Landroid/os/Bundle;Lﹶﾞ/ٴʼ;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˊʻ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V
    .locals 6

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    new-instance v0, Lʼٴ/ـˆ;

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˏי(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lﹶﾞ/ᐧﹶ;

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v5, p1

    move-object v4, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v7}, Lﹶﾞ/ᐧﹶ;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˑﹳ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lﹶﾞ/ʼـ;->ᵔי(Ljava/lang/String;Z)V

    iget-object v0, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳﹳ()Lﹶﾞ/ᵢﹳ;

    move-result-object v0

    iget-object p1, p1, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lﹶﾞ/ᵢﹳ;->ʼᵢ(Ljava/lang/String;)Z

    return-void
.end method

.method public final יـ(Ljava/lang/String;Ljava/lang/String;ZLﹶﾞ/ʻᐧ;)Ljava/util/List;
    .locals 7

    .prologue
    invoke-virtual {p0, p4}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v2, p4, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object p4, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {p4}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v6

    new-instance v0, Lﹶﾞ/י;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lﹶﾞ/י;-><init>(Lﹶﾞ/ʼـ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lﹶﾞ/ʻˋ;->ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹶﾞ/יי;

    if-nez p3, :cond_1

    iget-object v1, v0, Lﹶﾞ/יי;->ʽ:Ljava/lang/String;

    invoke-static {v1}, Lﹶﾞ/ᵢﹳ;->ᵢʻ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_2
    new-instance v1, Lﹶﾞ/ʿˎ;

    invoke-direct {v1, v0}, Lﹶﾞ/ʿˎ;-><init>(Lﹶﾞ/יי;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :goto_3
    invoke-virtual {p4}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    invoke-virtual {p2, p3, p1, p4}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public final ـˆ(Ljava/lang/String;Lﹶﾞ/ˏי;)[B
    .locals 11

    .prologue
    invoke-static {p1}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lﹶﾞ/ʼـ;->ᵔי(Ljava/lang/String;Z)V

    iget-object v0, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    iget-object v2, v0, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    iget-object v4, p2, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Log and bundle. event"

    invoke-virtual {v1, v3, v5}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    new-instance v3, Lʼٴ/ˏי;

    invoke-direct {v3, p0, p2, p1}, Lʼٴ/ˏי;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ˏי;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lﹶﾞ/ʻˋ;->ˎʾ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p2

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Log and bundle returned null. appId"

    invoke-static {p1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    new-array p2, p2, [B

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v7, v4}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v3, v7, v8, v5}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {p1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p1

    iget-object v1, v2, Lﹶﾞ/ᵎʻ;->ٴʼ:Lﹶﾞ/ˑٴ;

    invoke-virtual {v1, v4}, Lﹶﾞ/ˑٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to log and bundle. appId, event, error"

    invoke-virtual {v0, v2, p1, v1, p2}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ٴʼ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V
    .locals 6

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    new-instance v0, Lʼٴ/ـˆ;

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ٴᵢ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    new-instance v0, Lﹶﾞ/ʽᵔ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ʽᵔ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ٴﹶ(Lﹶﾞ/ʻᐧ;)Ljava/lang/String;
    .locals 5

    .prologue
    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v0, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v1

    new-instance v2, Lﹶﾞ/ـᵎ;

    invoke-direct {v2, v0, p1}, Lﹶﾞ/ـᵎ;-><init>(Lﹶﾞ/ᵢי;Lﹶﾞ/ʻᐧ;)V

    invoke-virtual {v1, v2}, Lﹶﾞ/ʻˋ;->ˈـ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    iget-object p1, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {p1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v0, p1, v1, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᴵˊ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V
    .locals 7

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    new-instance v3, Lﹶﾞ/ˑﹳ;

    invoke-direct {v3, p1}, Lﹶﾞ/ˑﹳ;-><init>(Lﹶﾞ/ˑﹳ;)V

    iget-object p1, p2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    iput-object p1, v3, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    new-instance v1, Lʼٴ/ـˆ;

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {p0, v1}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᴵᵔ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lﹶﾞ/ʼـ;->ᵔי(Ljava/lang/String;Z)V

    new-instance v0, Lﹶﾞ/ʽᵔ;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ʽᵔ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᵎˊ(Lﹶﾞ/ʻᐧ;)Lﹶﾞ/ʼˎ;
    .locals 5

    .prologue
    invoke-virtual {p0, p1}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v1, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    new-instance v3, Lﹶﾞ/ـᵎ;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lﹶﾞ/ـᵎ;-><init>(Lﹶﾞ/ʼـ;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lﹶﾞ/ʻˋ;->ˎʾ(Ljava/util/concurrent/Callable;)Lﹶﾞ/ﹶᐧ;

    move-result-object p1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {p1, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﹶﾞ/ʼˎ;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    invoke-virtual {v1}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v0}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v0

    const-string v2, "Failed to get consent. appId"

    invoke-virtual {v1, v0, p1, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lﹶﾞ/ʼˎ;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lﹶﾞ/ʼˎ;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final ᵔʾ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʼˈ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v0, Lﹶﾞ/ʽᵔ;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ʽᵔ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˈ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᵔי(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const-string v0, "Unknown calling package name \'"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    if-nez v1, :cond_7

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lﹶﾞ/ʼـ;->ˑﹳ:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v1, p0, Lﹶﾞ/ʼـ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    iget-object p2, v2, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p2, v3}, Lᵎᴵ/ⁱˊ;->ⁱˊ(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, v2, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {p2}, Lᴵˈ/ᵔᵢ;->ⁱˊ(Landroid/content/Context;)Lᴵˈ/ᵔᵢ;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p2, v3}, Lᴵˈ/ᵔᵢ;->ʽ(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lﹶﾞ/ʼـ;->ˑﹳ:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lﹶﾞ/ʼـ;->ˑﹳ:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lﹶﾞ/ʼـ;->ﾞᴵ:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, v2, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    sget v3, Lᴵˈ/ᵎﹶ;->ˑﹳ:I

    invoke-static {v1, p2, p1}, Lᵎᴵ/ⁱˊ;->ˈ(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Lﹶﾞ/ʼـ;->ﾞᴵ:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lﹶﾞ/ʼـ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {p1}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    invoke-virtual {v0, p1, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    throw p2

    :cond_7
    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object p1

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵢˏ(Landroid/os/Bundle;Lﹶﾞ/ʻᐧ;)V
    .locals 6

    invoke-virtual {p0, p2}, Lﹶﾞ/ʼـ;->ˑﹳ(Lﹶﾞ/ʻᐧ;)V

    iget-object v3, p2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v3}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v0, Lʿי/ˎᐧ;

    const/4 v5, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lʿי/ˎᐧ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˆﾞ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ﾞʻ(Lﹶﾞ/ʻᐧ;)V
    .locals 2

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iget-object v0, p1, Lﹶﾞ/ʻᐧ;->ʼˈ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    new-instance v0, Lﹶﾞ/ʽᵔ;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lﹶﾞ/ʽᵔ;-><init>(Lﹶﾞ/ʼـ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {p0, v0}, Lﹶﾞ/ʼـ;->ˈ(Ljava/lang/Runnable;)V

    return-void
.end method
