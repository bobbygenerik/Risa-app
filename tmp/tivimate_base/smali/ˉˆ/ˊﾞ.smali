.class public final Lˉˆ/ˊﾞ;
.super Lᴵˑ/ⁱˊ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02c9\u02c6/\u02ca\uff9e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ʽʽ:I

.field public ˈٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽʽ/ˑﹳ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lʽʽ/ˑﹳ;-><init>(I)V

    sput-object v0, Lˉˆ/ˊﾞ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lᴵˑ/ⁱˊ;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lˉˆ/ˊﾞ;->ʽʽ:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lˉˆ/ˊﾞ;->ˈٴ:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lᴵˑ/ⁱˊ;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lˉˆ/ˊﾞ;->ʽʽ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˉˆ/ˊﾞ;->ˈٴ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
