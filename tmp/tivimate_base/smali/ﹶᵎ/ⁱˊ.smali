.class public final Lﹶᵎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:[I


# instance fields
.field public final ﹳٴ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lﹶᵎ/ⁱˊ;->ⁱˊ:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    move v4, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_2

    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lﹶᵎ/ⁱˊ;->ⁱˊ:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lﹶᵎ/ⁱˊ;->ﹳٴ:[I

    return-void
.end method


# virtual methods
.method public final ʽ(B)V
    .locals 5

    iget-object v0, p0, Lﹶᵎ/ⁱˊ;->ﹳٴ:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    ushr-int/lit8 v3, v2, 0x8

    xor-int/2addr p1, v2

    and-int/lit16 p1, p1, 0xff

    sget-object v2, Lﹶᵎ/ⁱˊ;->ⁱˊ:[I

    aget p1, v2, p1

    xor-int/2addr p1, v3

    aput p1, v0, v1

    const/4 v1, 0x1

    aget v3, v0, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v3, p1

    aput v3, v0, v1

    const p1, 0x8088405

    mul-int/2addr v3, p1

    add-int/2addr v3, v1

    aput v3, v0, v1

    const/4 p1, 0x2

    aget v1, v0, p1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    ushr-int/lit8 v4, v1, 0x8

    xor-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget v1, v2, v1

    xor-int/2addr v1, v4

    aput v1, v0, p1

    return-void
.end method

.method public final ⁱˊ([CZ)V
    .locals 4

    .prologue
    const v0, 0x12345678

    iget-object v1, p0, Lﹶᵎ/ⁱˊ;->ﹳٴ:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    const v3, 0x23456789

    aput v3, v1, v0

    const/4 v0, 0x2

    const v3, 0x34567890

    aput v3, v1, v0

    invoke-static {p1, p2}, Lᴵﾞ/ﹳٴ;->ﹳٴ([CZ)[B

    move-result-object p1

    array-length p2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lﹶᵎ/ⁱˊ;->ʽ(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ﹳٴ()B
    .locals 2

    iget-object v0, p0, Lﹶᵎ/ⁱˊ;->ﹳٴ:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    or-int/2addr v0, v1

    xor-int/lit8 v1, v0, 0x1

    mul-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    return v0
.end method
