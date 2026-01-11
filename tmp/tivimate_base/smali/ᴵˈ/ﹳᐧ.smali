.class public final Lᴵˈ/ﹳᐧ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u1d35\u02c8/\ufe73\u1427;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Z

.field public final ˈٴ:I

.field public final ᴵˊ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵˈ/ٴﹶ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lᴵˈ/ٴﹶ;-><init>(I)V

    sput-object v0, Lᴵˈ/ﹳᐧ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lᴵˈ/ﹳᐧ;->ʾˋ:Z

    iput-object p3, p0, Lᴵˈ/ﹳᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-static {p1}, Landroid/support/v4/media/session/ⁱˊ;->ʾᵎ(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lᴵˈ/ﹳᐧ;->ʽʽ:I

    invoke-static {p2}, Lﹳٴ/ﹳٴ;->ʿ(I)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lᴵˈ/ﹳᐧ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lᴵˈ/ﹳᐧ;->ʾˋ:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object v2, p0, Lᴵˈ/ﹳᐧ;->ᴵˊ:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget v0, p0, Lᴵˈ/ﹳᐧ;->ʽʽ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget v0, p0, Lᴵˈ/ﹳᐧ;->ˈٴ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    return-void
.end method
