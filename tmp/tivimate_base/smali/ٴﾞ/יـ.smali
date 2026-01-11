.class public final Lٴﾞ/יـ;
.super Lcom/google/android/gms/internal/measurement/ʾᵎ;
.source "SourceFile"

# interfaces
.implements Lٴﾞ/ʽﹳ;


# virtual methods
.method public final ˑٴ()Z
    .locals 2

    .prologue
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lˎʽ/ﹳٴ;->ﹳٴ:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
