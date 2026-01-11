.class public final Lˉˆ/ᵔٴ;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02c9\u02c6/\u1d54\u0674;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ʾˋ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lʼⁱ/ﾞˊ;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lʼⁱ/ﾞˊ;-><init>(I)V

    sput-object v0, Lˉˆ/ᵔٴ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lˉˆ/ᵔٴ;->ʾˋ:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
