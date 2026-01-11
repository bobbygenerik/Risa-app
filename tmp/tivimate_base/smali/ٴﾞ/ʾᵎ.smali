.class public final Lٴﾞ/ʾᵎ;
.super Lcom/google/android/gms/internal/play_billing/ˈ;
.source "SourceFile"


# instance fields
.field public ˑﹳ:Lٴﾞ/ˑﹳ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lٴﾞ/ˑﹳ;I)V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/ˈ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    iput p2, p0, Lٴﾞ/ʾᵎ;->ﾞᴵ:I

    return-void
.end method


# virtual methods
.method public final ᵔי(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "onPostInitComplete can be called only once per call to getRemoteService"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v5, Lٴﾞ/ᴵˊ;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lˎʽ/ﹳٴ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lٴﾞ/ᴵˊ;

    invoke-static {p2}, Lˎʽ/ﹳٴ;->ⁱˊ(Landroid/os/Parcel;)V

    iget-object p2, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    const-string v6, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {p2, v6}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object v5, p2, Lٴﾞ/ˑﹳ;->ʻٴ:Lٴﾞ/ᴵˊ;

    iget-object p2, v5, Lٴﾞ/ᴵˊ;->ʾˋ:Landroid/os/Bundle;

    iget-object v5, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    invoke-static {v5, v2}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    iget v5, p0, Lٴﾞ/ʾᵎ;->ﾞᴵ:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lٴﾞ/ᵢˏ;

    invoke-direct {v6, v2, p1, v4, p2}, Lٴﾞ/ᵢˏ;-><init>(Lٴﾞ/ˑﹳ;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, v2, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    invoke-virtual {p1, v3, v5, v1, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v0, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lˎʽ/ﹳٴ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p2}, Lˎʽ/ﹳٴ;->ⁱˊ(Landroid/os/Parcel;)V

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    nop

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lˎʽ/ﹳٴ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {p2}, Lˎʽ/ﹳٴ;->ⁱˊ(Landroid/os/Parcel;)V

    iget-object p2, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    invoke-static {p2, v2}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    iget v2, p0, Lٴﾞ/ʾᵎ;->ﾞᴵ:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lٴﾞ/ᵢˏ;

    invoke-direct {v6, p2, p1, v4, v5}, Lٴﾞ/ᵢˏ;-><init>(Lٴﾞ/ˑﹳ;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object p1, p2, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    invoke-virtual {p1, v3, v2, v1, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v0, p0, Lٴﾞ/ʾᵎ;->ˑﹳ:Lٴﾞ/ˑﹳ;

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3
.end method
