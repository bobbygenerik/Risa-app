.class public final Lﹶﾞ/ـʻ;
.super Lcom/google/android/gms/internal/measurement/ʼʼ;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ᵔי;


# instance fields
.field public final synthetic ˈ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic ˑﹳ:Lﹶﾞ/ʿʽ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ʿʽ;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p2, p0, Lﹶﾞ/ـʻ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lﹶﾞ/ـʻ;->ˑﹳ:Lﹶﾞ/ʿʽ;

    const-string p1, "com.google.android.gms.measurement.internal.IUploadBatchesCallback"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼʼ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ʽ(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .prologue
    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    sget-object p1, Lﹶﾞ/ⁱʾ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lﹶﾞ/ⁱʾ;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lﹶﾞ/ـʻ;->ᵔᵢ(Lﹶﾞ/ⁱʾ;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵔᵢ(Lﹶﾞ/ⁱʾ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶﾞ/ـʻ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹶﾞ/ـʻ;->ˑﹳ:Lﹶﾞ/ʿʽ;

    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "[sgtm] Got upload batches from service. count"

    iget-object v3, p1, Lﹶﾞ/ⁱʾ;->ʾˋ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
