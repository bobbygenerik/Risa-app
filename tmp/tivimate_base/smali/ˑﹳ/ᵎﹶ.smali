.class public final Lˑﹳ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u02d1\ufe73/\u1d4e\ufe76;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Landroid/content/IntentSender;

.field public final ˈٴ:I

.field public final ᴵˊ:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋˋ/ᵎˊ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lˋˋ/ᵎˊ;-><init>(I)V

    sput-object v0, Lˑﹳ/ᵎﹶ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑﹳ/ᵎﹶ;->ʾˋ:Landroid/content/IntentSender;

    iput-object p2, p0, Lˑﹳ/ᵎﹶ;->ᴵˊ:Landroid/content/Intent;

    iput p3, p0, Lˑﹳ/ᵎﹶ;->ʽʽ:I

    iput p4, p0, Lˑﹳ/ᵎﹶ;->ˈٴ:I

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

    iget-object v0, p0, Lˑﹳ/ᵎﹶ;->ʾˋ:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lˑﹳ/ᵎﹶ;->ᴵˊ:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lˑﹳ/ᵎﹶ;->ʽʽ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lˑﹳ/ᵎﹶ;->ˈٴ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
