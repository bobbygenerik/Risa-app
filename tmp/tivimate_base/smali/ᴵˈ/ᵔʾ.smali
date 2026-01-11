.class public abstract Lᴵˈ/ᵔʾ;
.super Lcom/google/android/gms/internal/play_billing/ˈ;
.source "SourceFile"

# interfaces
.implements Lٴﾞ/ᵔﹳ;


# instance fields
.field public final ˑﹳ:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/ˈ;-><init>(Ljava/lang/String;)V

    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lᴵˈ/ᵔʾ;->ˑﹳ:I

    return-void
.end method

.method public static ˆﾞ(Ljava/lang/String;)[B
    .locals 1

    .prologue
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Lٴﾞ/ᵔﹳ;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p1, Lٴﾞ/ᵔﹳ;

    invoke-interface {p1}, Lٴﾞ/ᵔﹳ;->ᵎﹶ()I

    move-result v1

    iget v2, p0, Lᴵˈ/ᵔʾ;->ˑﹳ:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lٴﾞ/ᵔﹳ;->ⁱˊ()Lʿᵎ/ﹳٴ;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lʿᵎ/ⁱˊ;->ᵔٴ(Lʿᵎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0}, Lᴵˈ/ᵔʾ;->ᵔٴ()[B

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v1, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    nop

    :cond_2
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lᴵˈ/ᵔʾ;->ˑﹳ:I

    return v0
.end method

.method public final ᵎﹶ()I
    .locals 1

    iget v0, p0, Lᴵˈ/ᵔʾ;->ˑﹳ:I

    return v0
.end method

.method public final ᵔי(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    iget p1, p0, Lᴵˈ/ᵔʾ;->ˑﹳ:I

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return p2

    :cond_1
    invoke-virtual {p0}, Lᴵˈ/ᵔʾ;->ⁱˊ()Lʿᵎ/ﹳٴ;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return p2
.end method

.method public abstract ᵔٴ()[B
.end method

.method public final ⁱˊ()Lʿᵎ/ﹳٴ;
    .locals 2

    invoke-virtual {p0}, Lᴵˈ/ᵔʾ;->ᵔٴ()[B

    move-result-object v0

    new-instance v1, Lʿᵎ/ⁱˊ;

    invoke-direct {v1, v0}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
