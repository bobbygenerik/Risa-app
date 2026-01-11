.class public final Lﹶﾞ/ˈ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\ufe76\uff9e/\u02c8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:J

.field public final ᴵˊ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳـ/ᵎﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﹳـ/ᵎﹶ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ˈ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lﹶﾞ/ˈ;->ʾˋ:J

    iput p1, p0, Lﹶﾞ/ˈ;->ᴵˊ:I

    iput-wide p4, p0, Lﹶﾞ/ˈ;->ʽʽ:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lﹶﾞ/ˈ;->ʾˋ:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x4

    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget v0, p0, Lﹶﾞ/ˈ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lﹶﾞ/ˈ;->ʽʽ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    return-void
.end method
