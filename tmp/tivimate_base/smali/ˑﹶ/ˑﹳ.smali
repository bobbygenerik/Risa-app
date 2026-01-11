.class public final Lˑﹶ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:[J


# instance fields
.field public ʽ:I

.field public ⁱˊ:I

.field public final ﹳٴ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lˑﹶ/ˑﹳ;->ˈ:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lˑﹶ/ˑﹳ;->ﹳٴ:[B

    return-void
.end method

.method public static ﹳٴ(IZ[B)J
    .locals 7

    .prologue
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    if-eqz p1, :cond_0

    add-int/lit8 p1, p0, -0x1

    sget-object v4, Lˑﹶ/ˑﹳ;->ˈ:[J

    aget-wide v5, v4, p1

    not-long v4, v5

    and-long/2addr v0, v4

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    aget-byte v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v4, v2

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public final ⁱˊ(Lˊﾞ/ʼᐧ;ZZI)J
    .locals 10

    .prologue
    iget v0, p0, Lˑﹶ/ˑﹳ;->ⁱˊ:I

    const/4 v1, 0x0

    iget-object v2, p0, Lˑﹶ/ˑﹳ;->ﹳٴ:[B

    const/4 v3, 0x1

    if-nez v0, :cond_4

    invoke-interface {p1, v2, v1, v3, p2}, Lˊﾞ/ʼᐧ;->ﾞᴵ([BIIZ)Z

    move-result p2

    if-nez p2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    aget-byte p2, v2, v1

    and-int/lit16 p2, p2, 0xff

    move v0, v1

    :goto_0
    const/16 v4, 0x8

    const/4 v5, -0x1

    if-ge v0, v4, :cond_2

    sget-object v4, Lˑﹶ/ˑﹳ;->ˈ:[J

    aget-wide v6, v4, v0

    int-to-long v8, p2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_1
    iput v0, p0, Lˑﹶ/ˑﹳ;->ʽ:I

    if-eq v0, v5, :cond_3

    iput v3, p0, Lˑﹶ/ˑﹳ;->ⁱˊ:I

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No valid varint length mask found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    iget p2, p0, Lˑﹶ/ˑﹳ;->ʽ:I

    if-le p2, p4, :cond_5

    iput v1, p0, Lˑﹶ/ˑﹳ;->ⁱˊ:I

    const-wide/16 p1, -0x2

    return-wide p1

    :cond_5
    if-eq p2, v3, :cond_6

    sub-int/2addr p2, v3

    invoke-interface {p1, v2, v3, p2}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    :cond_6
    iput v1, p0, Lˑﹶ/ˑﹳ;->ⁱˊ:I

    iget p1, p0, Lˑﹶ/ˑﹳ;->ʽ:I

    invoke-static {p1, p3, v2}, Lˑﹶ/ˑﹳ;->ﹳٴ(IZ[B)J

    move-result-wide p1

    return-wide p1
.end method
