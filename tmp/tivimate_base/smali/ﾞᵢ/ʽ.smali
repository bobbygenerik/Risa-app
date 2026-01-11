.class public final Lﾞᵢ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞᵢ/ⁱˊ;


# static fields
.field public static final ʽ:[Z

.field public static final ˈ:[I


# instance fields
.field public ⁱˊ:I

.field public ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x8

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lﾞᵢ/ʽ;->ʽ:[Z

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lﾞᵢ/ʽ;->ˈ:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method


# virtual methods
.method public final ﹳٴ([BII)I
    .locals 9

    .prologue
    add-int/lit8 v0, p2, -0x1

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x5

    move v1, p2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, p3, :cond_9

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xfe

    const/16 v5, 0xe8

    if-eq v4, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    sub-int v0, v1, v0

    and-int/lit8 v4, v0, -0x4

    const/16 v5, 0xff

    sget-object v6, Lﾞᵢ/ʽ;->ˈ:[I

    if-eqz v4, :cond_1

    iput v2, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v2, v0

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    if-eqz v0, :cond_3

    sget-object v2, Lﾞᵢ/ʽ;->ʽ:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x4

    aget v4, v6, v0

    sub-int/2addr v2, v4

    aget-byte v2, p1, v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v3

    iput v0, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v4, v1, 0x4

    aget-byte v0, p1, v4

    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    if-ne v0, v5, :cond_4

    goto :goto_3

    :cond_4
    iget v0, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    shl-int/2addr v0, v3

    or-int/2addr v0, v3

    iput v0, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    :goto_2
    move v0, v1

    goto :goto_6

    :cond_5
    :goto_3
    add-int/lit8 v7, v1, 0x1

    invoke-static {v7, p1}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﾞʻ(I[B)I

    move-result v0

    :goto_4
    iget v2, p0, Lﾞᵢ/ʽ;->ﹳٴ:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    sub-int/2addr v0, v2

    iget v2, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    aget v2, v6, v2

    mul-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v8, v2, 0x18

    ushr-int v8, v0, v8

    int-to-byte v8, v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_8

    if-ne v8, v5, :cond_7

    goto :goto_7

    :cond_7
    :goto_5
    shl-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x7

    invoke-static {p1, v7, v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﹳᐧ([BII)V

    move v0, v1

    move v1, v4

    :goto_6
    add-int/2addr v1, v3

    goto :goto_0

    :cond_8
    :goto_7
    rsub-int/lit8 v2, v2, 0x20

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    xor-int/2addr v0, v2

    goto :goto_4

    :cond_9
    sub-int p1, v1, v0

    and-int/lit8 p3, p1, -0x4

    if-eqz p3, :cond_a

    goto :goto_8

    :cond_a
    iget p3, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    sub-int/2addr p1, v3

    shl-int v2, p3, p1

    :goto_8
    iput v2, p0, Lﾞᵢ/ʽ;->ⁱˊ:I

    sub-int/2addr v1, p2

    iget p1, p0, Lﾞᵢ/ʽ;->ﹳٴ:I

    add-int/2addr p1, v1

    iput p1, p0, Lﾞᵢ/ʽ;->ﹳٴ:I

    return v1
.end method
