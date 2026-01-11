.class public final Lˋˋ/ʻᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02cb\u02cb/\u02bb\u1d35;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ʽʽ:I

.field public ʾˋ:I

.field public ˈٴ:[I

.field public ˉٴ:Z

.field public ˊʻ:[I

.field public ٴʼ:Z

.field public ٴᵢ:Ljava/util/ArrayList;

.field public ᴵˊ:I

.field public ᴵᵔ:I

.field public ᵎⁱ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lˋˋ/ʻᴵ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    iget p2, p0, Lˋˋ/ʻᴵ;->ʾˋ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˋˋ/ʻᴵ;->ᴵˊ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˋˋ/ʻᴵ;->ʽʽ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˋˋ/ʻᴵ;->ʽʽ:I

    if-lez p2, :cond_0

    iget-object p2, p0, Lˋˋ/ʻᴵ;->ˈٴ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_0
    iget p2, p0, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˋˋ/ʻᴵ;->ᴵᵔ:I

    if-lez p2, :cond_1

    iget-object p2, p0, Lˋˋ/ʻᴵ;->ˊʻ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    :cond_1
    iget-boolean p2, p0, Lˋˋ/ʻᴵ;->ˉٴ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˋˋ/ʻᴵ;->ᵎⁱ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˋˋ/ʻᴵ;->ٴʼ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lˋˋ/ʻᴵ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
