.class public final Lcom/google/android/material/datepicker/ᵔﹳ;
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
            "Lcom/google/android/material/datepicker/\u1d54\ufe73;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:I

.field public final ʾˋ:Ljava/util/Calendar;

.field public final ˈٴ:I

.field public final ˊʻ:J

.field public ٴᵢ:Ljava/lang/String;

.field public final ᴵˊ:I

.field public final ᴵᵔ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/media/ﹳٴ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/support/v4/media/ﹳٴ;-><init>(I)V

    sput-object v0, Lcom/google/android/material/datepicker/ᵔﹳ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Lcom/google/android/material/datepicker/ʼʼ;->ﹳٴ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵˊ:I

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ˈٴ:I

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵᵔ:I

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ˊʻ:J

    return-void
.end method

.method public static ⁱˊ(J)Lcom/google/android/material/datepicker/ᵔﹳ;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/ʼʼ;->ʽ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance p0, Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/ᵔﹳ;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public static ﹳٴ(II)Lcom/google/android/material/datepicker/ᵔﹳ;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/ʼʼ;->ʽ(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p0, Lcom/google/android/material/datepicker/ᵔﹳ;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/ᵔﹳ;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/material/datepicker/ᵔﹳ;

    iget-object v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
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
    instance-of v1, p1, Lcom/google/android/material/datepicker/ᵔﹳ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/ᵔﹳ;

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵˊ:I

    iget v3, p1, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵˊ:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    iget p1, p1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵˊ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵˊ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public final ʽ()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ٴᵢ:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵢי;->ٴﹶ(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ٴᵢ:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ٴᵢ:Ljava/lang/String;

    return-object v0
.end method

.method public final ˈ(Lcom/google/android/material/datepicker/ᵔﹳ;)I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʾˋ:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ʽʽ:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵˊ:I

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔﹳ;->ᴵˊ:I

    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Gregorian calendars are supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
