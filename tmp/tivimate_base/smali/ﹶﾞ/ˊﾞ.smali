.class public final Lﹶﾞ/ˊﾞ;
.super Lcom/google/android/gms/internal/measurement/ʼʼ;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ٴʼ;


# instance fields
.field public final synthetic ˈ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lﹶﾞ/ʿʽ;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p2, p0, Lﹶﾞ/ˊﾞ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    const-string p1, "com.google.android.gms.measurement.internal.ITriggerUrisCallback"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ʼʼ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ʽ(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    .prologue
    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    sget-object p1, Lﹶﾞ/ˎʼ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    invoke-virtual {p0, p1}, Lﹶﾞ/ˊﾞ;->ˈٴ(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˈٴ(Ljava/util/List;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶﾞ/ˊﾞ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
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
