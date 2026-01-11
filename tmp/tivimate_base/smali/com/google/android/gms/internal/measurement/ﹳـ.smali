.class public final Lcom/google/android/gms/internal/measurement/ﹳـ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/measurement/\ufe73\u0640;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:Z

.field public final ʾˋ:J

.field public final ˈٴ:Landroid/os/Bundle;

.field public final ᴵˊ:J

.field public final ᴵᵔ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈⁱ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˈⁱ;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ﹳـ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʾˋ:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵˊ:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʽʽ:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ˈٴ:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵᵔ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʾˋ:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵˊ:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x4

    const/4 v2, 0x3

    invoke-static {p1, v2, v0}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʽʽ:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ˈٴ:Landroid/os/Bundle;

    invoke-static {p1, v0, v2}, Lˈˊ/ᵔʾ;->ˉٴ(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵᵔ:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    return-void
.end method
