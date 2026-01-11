.class public Lʻᐧ/ﾞʻ;
.super Landroid/view/AbsSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02bb\u1427/\uff9e\u02bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/media/ﹳٴ;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/support/v4/media/ﹳٴ;-><init>(I)V

    sput-object v0, Lʻᐧ/ﾞʻ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
