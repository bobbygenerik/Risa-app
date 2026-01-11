.class public final Lcom/google/android/gms/internal/measurement/ˈˏ;
.super Lcom/google/android/gms/internal/measurement/ʼʼ;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ˊˋ;


# instance fields
.field public final ˈ:Lᐧﹳ/ⁱˊ;


# direct methods
.method public constructor <init>(Lᐧﹳ/ⁱˊ;)V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ʼʼ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˈˏ;->ˈ:Lᐧﹳ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final ʽ(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/ˈˏ;->ˈ:Lᐧﹳ/ⁱˊ;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ˈ(Landroid/os/Parcel;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/ˈˏ;->ʽﹳ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

.method public final ʽﹳ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈˏ;->ˈ:Lᐧﹳ/ⁱˊ;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lﹶﾞ/ـˊ;->ﹳٴ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ﾞᴵ()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈˏ;->ˈ:Lᐧﹳ/ⁱˊ;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
