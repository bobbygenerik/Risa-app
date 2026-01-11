.class public final Lcom/google/android/gms/internal/measurement/ˈⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ˈⁱ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˈⁱ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lˈˆ/ﾞᴵ;->ʿ(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-static {p1, v4}, Lˈˆ/ﾞᴵ;->ˊˋ(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v2}, Lˈˆ/ﾞᴵ;->ˆʾ(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-static {p1, v4}, Lˈˆ/ﾞᴵ;->ﾞʻ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p1, v4}, Lˈˆ/ﾞᴵ;->ˆﾞ(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-static {p1, v0}, Lˈˆ/ﾞᴵ;->ˉˆ(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    invoke-direct {p1, v3, v1, v2}, Lcom/google/android/gms/internal/measurement/ᴵˑ;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lˈˆ/ﾞᴵ;->ʿ(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v11, v1

    move-object v12, v11

    move v10, v2

    move-wide v6, v3

    move-wide v8, v6

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    invoke-static {p1, v1}, Lˈˆ/ﾞᴵ;->ˊˋ(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v1}, Lˈˆ/ﾞᴵ;->ﾞʻ(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_5
    invoke-static {p1, v1}, Lˈˆ/ﾞᴵ;->ᵔᵢ(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_6
    invoke-static {p1, v1}, Lˈˆ/ﾞᴵ;->ᵔי(Landroid/os/Parcel;I)Z

    move-result v1

    move v10, v1

    goto :goto_1

    :cond_7
    invoke-static {p1, v1}, Lˈˆ/ﾞᴵ;->ᵔٴ(Landroid/os/Parcel;I)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_1

    :cond_8
    invoke-static {p1, v1}, Lˈˆ/ﾞᴵ;->ᵔٴ(Landroid/os/Parcel;I)J

    move-result-wide v1

    move-wide v6, v1

    goto :goto_1

    :cond_9
    invoke-static {p1, v0}, Lˈˆ/ﾞᴵ;->ˉˆ(Landroid/os/Parcel;I)V

    new-instance v5, Lcom/google/android/gms/internal/measurement/ﹳـ;

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/measurement/ﹳـ;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˈⁱ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-array p1, p1, [Lcom/google/android/gms/internal/measurement/ᴵˑ;

    return-object p1

    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/internal/measurement/ﹳـ;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
