.class public final Lٴﾞ/ﾞᴵ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u0674\uff9e/\uff9e\u1d35;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:Z

.field public final ʾˋ:Lٴﾞ/ٴﹶ;

.field public final ˈٴ:[I

.field public final ˊʻ:[I

.field public final ᴵˊ:Z

.field public final ᴵᵔ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lٴﾞ/ﾞᴵ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lٴﾞ/ٴﹶ;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴﾞ/ﾞᴵ;->ʾˋ:Lٴﾞ/ٴﹶ;

    iput-boolean p2, p0, Lٴﾞ/ﾞᴵ;->ᴵˊ:Z

    iput-boolean p3, p0, Lٴﾞ/ﾞᴵ;->ʽʽ:Z

    iput-object p4, p0, Lٴﾞ/ﾞᴵ;->ˈٴ:[I

    iput p5, p0, Lٴﾞ/ﾞᴵ;->ᴵᵔ:I

    iput-object p6, p0, Lٴﾞ/ﾞᴵ;->ˊʻ:[I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lٴﾞ/ﾞᴵ;->ʾˋ:Lٴﾞ/ٴﹶ;

    invoke-static {p1, v1, v2, p2}, Lˈˊ/ᵔʾ;->ٴʼ(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x2

    const/4 v1, 0x4

    invoke-static {p1, p2, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lٴﾞ/ﾞᴵ;->ᴵˊ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x3

    invoke-static {p1, p2, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lٴﾞ/ﾞᴵ;->ʽʽ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lٴﾞ/ﾞᴵ;->ˈٴ:[I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    :goto_0
    const/4 p2, 0x5

    invoke-static {p1, p2, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget p2, p0, Lٴﾞ/ﾞᴵ;->ᴵᵔ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lٴﾞ/ﾞᴵ;->ˊʻ:[I

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    invoke-static {p1, v1}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-static {p1, v1}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    :goto_1
    invoke-static {p1, v0}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    return-void
.end method
