.class public final Lﹶﾞ/יⁱ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\ufe76\uff9e/\u05d9\u2071;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:Ljava/lang/String;

.field public final ʾˋ:J

.field public final ˈٴ:Landroid/os/Bundle;

.field public final ˊʻ:J

.field public ٴᵢ:Ljava/lang/String;

.field public ᴵˊ:[B

.field public final ᴵᵔ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳـ/ᵎﹶ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lﹳـ/ᵎﹶ;-><init>(I)V

    sput-object v0, Lﹶﾞ/יⁱ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lﹶﾞ/יⁱ;->ʾˋ:J

    iput-object p3, p0, Lﹶﾞ/יⁱ;->ᴵˊ:[B

    iput-object p4, p0, Lﹶﾞ/יⁱ;->ʽʽ:Ljava/lang/String;

    iput-object p5, p0, Lﹶﾞ/יⁱ;->ˈٴ:Landroid/os/Bundle;

    iput p6, p0, Lﹶﾞ/יⁱ;->ᴵᵔ:I

    iput-wide p7, p0, Lﹶﾞ/יⁱ;->ˊʻ:J

    iput-object p9, p0, Lﹶﾞ/יⁱ;->ٴᵢ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lﹶﾞ/יⁱ;->ʾˋ:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lﹶﾞ/יⁱ;->ᴵˊ:[B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {p1, v2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v0, 0x3

    iget-object v2, p0, Lﹶﾞ/יⁱ;->ʽʽ:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Lﹶﾞ/יⁱ;->ˈٴ:Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0}, Lˈˊ/ᵔʾ;->ˉٴ(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-static {p1, v0, v2}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget v0, p0, Lﹶﾞ/יⁱ;->ᴵᵔ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lﹶﾞ/יⁱ;->ˊʻ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x7

    iget-object v1, p0, Lﹶﾞ/יⁱ;->ٴᵢ:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    return-void
.end method
