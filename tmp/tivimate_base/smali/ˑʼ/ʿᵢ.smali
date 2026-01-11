.class public final Lˑʼ/ʿᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02d1\u02bc/\u02bf\u1d62;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ʽʽ:[Lˑʼ/ⁱˊ;

.field public ʾˋ:Ljava/util/ArrayList;

.field public ˈٴ:I

.field public ˉٴ:Ljava/util/ArrayList;

.field public ˊʻ:Ljava/util/ArrayList;

.field public ٴᵢ:Ljava/util/ArrayList;

.field public ᴵˊ:Ljava/util/ArrayList;

.field public ᴵᵔ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lˑʼ/ʿᵢ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lˑʼ/ʿᵢ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lˑʼ/ʿᵢ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lˑʼ/ʿᵢ;->ʽʽ:[Lˑʼ/ⁱˊ;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget p2, p0, Lˑʼ/ʿᵢ;->ˈٴ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lˑʼ/ʿᵢ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lˑʼ/ʿᵢ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lˑʼ/ʿᵢ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lˑʼ/ʿᵢ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
