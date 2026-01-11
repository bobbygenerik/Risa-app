.class public final Lˋˋ/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02cb\u02cb/\u1d54\u05d9;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:I

.field public ᴵˊ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lˋˋ/ᵔי;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iget p2, p0, Lˋˋ/ᵔי;->ʾˋ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˋˋ/ᵔי;->ᴵˊ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lˋˋ/ᵔי;->ʽʽ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
