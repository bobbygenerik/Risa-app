.class public final Lˑʼ/ـˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02d1\u02bc/\u0640\u02cf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ʾˋ:Ljava/lang/String;

.field public ᴵˊ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lˑʼ/ـˏ;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iget-object p2, p0, Lˑʼ/ـˏ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lˑʼ/ـˏ;->ᴵˊ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
