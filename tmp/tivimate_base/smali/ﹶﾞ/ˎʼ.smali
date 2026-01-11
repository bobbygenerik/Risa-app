.class public final Lﹶﾞ/ˎʼ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\ufe76\uff9e/\u02ce\u02bc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Ljava/lang/String;

.field public final ᴵˊ:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳـ/ᵎﹶ;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lﹳـ/ᵎﹶ;-><init>(I)V

    sput-object v0, Lﹶﾞ/ˎʼ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˎʼ;->ʾˋ:Ljava/lang/String;

    iput-wide p2, p0, Lﹶﾞ/ˎʼ;->ᴵˊ:J

    iput p4, p0, Lﹶﾞ/ˎʼ;->ʽʽ:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, Lﹶﾞ/ˎʼ;->ʾˋ:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lﹶﾞ/ˎʼ;->ᴵˊ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget v0, p0, Lﹶﾞ/ˎʼ;->ʽʽ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    return-void
.end method
