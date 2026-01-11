.class public final Lʽⁱ/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02bd\u2071/\u02c8\u02bf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:I

.field public final ᴵˊ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽⁱ/ﾞʻ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lʽⁱ/ﾞʻ;-><init>(I)V

    sput-object v0, Lʽⁱ/ˈʿ;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lʽⁱ/ˈʿ;->ʾˋ:I

    iput v0, p0, Lʽⁱ/ˈʿ;->ᴵˊ:I

    iput v0, p0, Lʽⁱ/ˈʿ;->ʽʽ:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lʽⁱ/ˈʿ;->ʾˋ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lʽⁱ/ˈʿ;->ᴵˊ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lʽⁱ/ˈʿ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    check-cast p1, Lʽⁱ/ˈʿ;

    iget v0, p0, Lʽⁱ/ˈʿ;->ʾˋ:I

    iget v1, p1, Lʽⁱ/ˈʿ;->ʾˋ:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lʽⁱ/ˈʿ;->ᴵˊ:I

    iget v1, p1, Lʽⁱ/ˈʿ;->ᴵˊ:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lʽⁱ/ˈʿ;->ʽʽ:I

    iget p1, p1, Lʽⁱ/ˈʿ;->ʽʽ:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lʽⁱ/ˈʿ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽⁱ/ˈʿ;

    iget v2, p0, Lʽⁱ/ˈʿ;->ʾˋ:I

    iget v3, p1, Lʽⁱ/ˈʿ;->ʾˋ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lʽⁱ/ˈʿ;->ᴵˊ:I

    iget v3, p1, Lʽⁱ/ˈʿ;->ᴵˊ:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lʽⁱ/ˈʿ;->ʽʽ:I

    iget p1, p1, Lʽⁱ/ˈʿ;->ʽʽ:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lʽⁱ/ˈʿ;->ʾˋ:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ˈʿ;->ᴵˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lʽⁱ/ˈʿ;->ʽʽ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lʽⁱ/ˈʿ;->ʾˋ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lʽⁱ/ˈʿ;->ᴵˊ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽⁱ/ˈʿ;->ʽʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lʽⁱ/ˈʿ;->ʾˋ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lʽⁱ/ˈʿ;->ᴵˊ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lʽⁱ/ˈʿ;->ʽʽ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
