.class public final Lﹶᵔ/ﹳٴ;
.super Lᴵˑ/ⁱˊ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\ufe76\u1d54/\ufe73\u0674;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:I

.field public final ˈٴ:I

.field public final ˊʻ:Z

.field public final ٴᵢ:Z

.field public final ᴵᵔ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽʽ/ˑﹳ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lʽʽ/ˑﹳ;-><init>(I)V

    sput-object v0, Lﹶᵔ/ﹳٴ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    invoke-direct {p0, p1, p2}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lﹶᵔ/ﹳٴ;->ʽʽ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lﹶᵔ/ﹳٴ;->ˈٴ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lﹶᵔ/ﹳٴ;->ᴵᵔ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lﹶᵔ/ﹳٴ;->ˊʻ:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lﹶᵔ/ﹳٴ;->ٴᵢ:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 1

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-direct {p0, v0}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    iput v0, p0, Lﹶᵔ/ﹳٴ;->ʽʽ:I

    iget v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˑﹳ:I

    iput v0, p0, Lﹶᵔ/ﹳٴ;->ˈٴ:I

    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ⁱˊ:Z

    iput-boolean v0, p0, Lﹶᵔ/ﹳٴ;->ᴵᵔ:Z

    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵎⁱ:Z

    iput-boolean v0, p0, Lﹶᵔ/ﹳٴ;->ˊʻ:Z

    iget-boolean p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ٴʼ:Z

    iput-boolean p1, p0, Lﹶᵔ/ﹳٴ;->ٴᵢ:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lᴵˑ/ⁱˊ;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lﹶᵔ/ﹳٴ;->ʽʽ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lﹶᵔ/ﹳٴ;->ˈٴ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lﹶᵔ/ﹳٴ;->ᴵᵔ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lﹶᵔ/ﹳٴ;->ˊʻ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lﹶᵔ/ﹳٴ;->ٴᵢ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
