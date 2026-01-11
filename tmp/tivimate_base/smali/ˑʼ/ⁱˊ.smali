.class public final Lˑʼ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02d1\u02bc/\u2071\u02ca;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:[I

.field public final ʾˋ:[I

.field public final ˆﾞ:Ljava/util/ArrayList;

.field public final ˈٴ:[I

.field public final ˉٴ:I

.field public final ˊʻ:Ljava/lang/String;

.field public final ٴʼ:I

.field public final ٴᵢ:I

.field public final ᴵˊ:Ljava/util/ArrayList;

.field public final ᴵᵔ:I

.field public final ᵎˊ:Ljava/lang/CharSequence;

.field public final ᵎⁱ:Ljava/lang/CharSequence;

.field public final ᵔי:Ljava/util/ArrayList;

.field public final ᵔٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lˑʼ/ⁱˊ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ʾˋ:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ʽʽ:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ˈٴ:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lˑʼ/ⁱˊ;->ᴵᵔ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ˊʻ:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lˑʼ/ⁱˊ;->ٴᵢ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lˑʼ/ⁱˊ;->ˉٴ:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Lˑʼ/ⁱˊ;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lˑʼ/ⁱˊ;->ٴʼ:I

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ᵎˊ:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ᵔי:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ˆﾞ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lˑʼ/ⁱˊ;->ᵔٴ:Z

    return-void
.end method

.method public constructor <init>(Lˑʼ/ﹳٴ;)V
    .locals 8

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Lˑʼ/ⁱˊ;->ʾˋ:[I

    iget-boolean v1, p1, Lˑʼ/ﹳٴ;->ᵎﹶ:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lˑʼ/ⁱˊ;->ᴵˊ:Ljava/util/ArrayList;

    new-array v1, v0, [I

    iput-object v1, p0, Lˑʼ/ⁱˊ;->ʽʽ:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lˑʼ/ⁱˊ;->ˈٴ:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ʻᵎ;

    iget-object v4, p0, Lˑʼ/ⁱˊ;->ʾˋ:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Lˑʼ/ʻᵎ;->ﹳٴ:I

    aput v6, v4, v2

    iget-object v4, p0, Lˑʼ/ⁱˊ;->ᴵˊ:Ljava/util/ArrayList;

    iget-object v6, v3, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v6, :cond_0

    iget-object v6, v6, Lˑʼ/ᴵᵔ;->ᴵᵔ:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lˑʼ/ⁱˊ;->ʾˋ:[I

    add-int/lit8 v6, v2, 0x2

    iget-boolean v7, v3, Lˑʼ/ʻᵎ;->ʽ:Z

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x3

    iget v7, v3, Lˑʼ/ʻᵎ;->ˈ:I

    aput v7, v4, v6

    add-int/lit8 v6, v2, 0x4

    iget v7, v3, Lˑʼ/ʻᵎ;->ˑﹳ:I

    aput v7, v4, v5

    add-int/lit8 v5, v2, 0x5

    iget v7, v3, Lˑʼ/ʻᵎ;->ﾞᴵ:I

    aput v7, v4, v6

    add-int/lit8 v2, v2, 0x6

    iget v6, v3, Lˑʼ/ʻᵎ;->ᵎﹶ:I

    aput v6, v4, v5

    iget-object v4, p0, Lˑʼ/ⁱˊ;->ʽʽ:[I

    iget-object v5, v3, Lˑʼ/ʻᵎ;->ᵔᵢ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Lˑʼ/ⁱˊ;->ˈٴ:[I

    iget-object v3, v3, Lˑʼ/ʻᵎ;->ʼˎ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lˑʼ/ﹳٴ;->ﾞᴵ:I

    iput v0, p0, Lˑʼ/ⁱˊ;->ᴵᵔ:I

    iget-object v0, p1, Lˑʼ/ﹳٴ;->ʼˎ:Ljava/lang/String;

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ˊʻ:Ljava/lang/String;

    iget v0, p1, Lˑʼ/ﹳٴ;->ˏי:I

    iput v0, p0, Lˑʼ/ⁱˊ;->ٴᵢ:I

    iget v0, p1, Lˑʼ/ﹳٴ;->ˆʾ:I

    iput v0, p0, Lˑʼ/ⁱˊ;->ˉٴ:I

    iget-object v0, p1, Lˑʼ/ﹳٴ;->ٴﹶ:Ljava/lang/CharSequence;

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ᵎⁱ:Ljava/lang/CharSequence;

    iget v0, p1, Lˑʼ/ﹳٴ;->ﾞʻ:I

    iput v0, p0, Lˑʼ/ⁱˊ;->ٴʼ:I

    iget-object v0, p1, Lˑʼ/ﹳٴ;->ˉʿ:Ljava/lang/CharSequence;

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ᵎˊ:Ljava/lang/CharSequence;

    iget-object v0, p1, Lˑʼ/ﹳٴ;->ᵔʾ:Ljava/util/ArrayList;

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ᵔי:Ljava/util/ArrayList;

    iget-object v0, p1, Lˑʼ/ﹳٴ;->ˉˆ:Ljava/util/ArrayList;

    iput-object v0, p0, Lˑʼ/ⁱˊ;->ˆﾞ:Ljava/util/ArrayList;

    iget-boolean p1, p1, Lˑʼ/ﹳٴ;->ʼᐧ:Z

    iput-boolean p1, p0, Lˑʼ/ⁱˊ;->ᵔٴ:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ʾˋ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ᴵˊ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ʽʽ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ˈٴ:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Lˑʼ/ⁱˊ;->ᴵᵔ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ˊʻ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lˑʼ/ⁱˊ;->ٴᵢ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˑʼ/ⁱˊ;->ˉٴ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ᵎⁱ:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget p2, p0, Lˑʼ/ⁱˊ;->ٴʼ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ᵎˊ:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ᵔי:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lˑʼ/ⁱˊ;->ˆﾞ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean p2, p0, Lˑʼ/ⁱˊ;->ᵔٴ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
