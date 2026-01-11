.class public final Lᴵˈ/ˈ;
.super Lᵎˆ/ﹳٴ;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "L\u1d35\u02c8/\u02c8;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:Ljava/lang/String;

.field public final ᴵˊ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵˈ/ٴﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᴵˈ/ٴﹶ;-><init>(I)V

    sput-object v0, Lᴵˈ/ˈ;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CLIENT_TELEMETRY"

    iput-object v0, p0, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lᴵˈ/ˈ;->ʽʽ:J

    const/4 v0, -0x1

    iput v0, p0, Lᴵˈ/ˈ;->ᴵˊ:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    iput p4, p0, Lᴵˈ/ˈ;->ᴵˊ:I

    iput-wide p1, p0, Lᴵˈ/ˈ;->ʽʽ:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    instance-of v0, p1, Lᴵˈ/ˈ;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lᴵˈ/ˈ;

    iget-object v0, p1, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    iget-object v2, p0, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v2

    invoke-virtual {p1}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 4

    invoke-virtual {p0}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lˑʼ/ᵎˊ;

    invoke-direct {v0, p0}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lˑʼ/ᵎˊ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lˑʼ/ᵎˊ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ᵔٴ(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, Lᴵˈ/ˈ;->ʾˋ:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lˈˊ/ᵔʾ;->ᵎˊ(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    iget v0, p0, Lᴵˈ/ˈ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lᴵˈ/ˈ;->ﹳٴ()J

    move-result-wide v0

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-static {p1, v3, v2}, Lˈˊ/ᵔʾ;->ˊˋ(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {p1, p2}, Lˈˊ/ᵔʾ;->ˑٴ(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final ﹳٴ()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lᴵˈ/ˈ;->ʽʽ:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lᴵˈ/ˈ;->ᴵˊ:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    return-wide v2
.end method
