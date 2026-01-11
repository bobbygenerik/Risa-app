.class public final Lˈˆ/ˆʾ;
.super Lcom/google/android/gms/internal/measurement/ʾᵎ;
.source "SourceFile"


# virtual methods
.method public final ˋᵔ(Lʿᵎ/ⁱˊ;Ljava/lang/String;ILʿᵎ/ⁱˊ;)Lʿᵎ/ﹳٴ;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final ˑٴ(Lʿᵎ/ⁱˊ;Ljava/lang/String;ILʿᵎ/ⁱˊ;)Lʿᵎ/ﹳٴ;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p4}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lʿᵎ/ⁱˊ;->ˆﾞ(Landroid/os/IBinder;)Lʿᵎ/ﹳٴ;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
