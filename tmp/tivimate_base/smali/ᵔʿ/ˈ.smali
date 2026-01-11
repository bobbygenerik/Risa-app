.class public final Lᵔʿ/ˈ;
.super Lᵔʿ/ﹳٴ;


# static fields
.field public static final ᵔʾ:[I


# instance fields
.field public ʼˎ:I

.field public ˆʾ:I

.field public ˈ:I

.field public ˉʿ:I

.field public ˑﹳ:I

.field public ٴﹶ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public ﾞʻ:[I

.field public ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lᵔʿ/ˈ;->ᵔʾ:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lᵔʿ/ﹳٴ;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lᵔʿ/ˈ;->ﾞʻ:[I

    invoke-virtual {p0}, Lᵔʿ/ˈ;->ʼˎ()V

    return-void
.end method

.method public static ʼᐧ(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static ˉʿ(III)I
    .locals 0

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static ˉˆ(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static ᵔʾ(III)I
    .locals 1

    and-int v0, p0, p1

    and-int/2addr p0, p2

    xor-int/2addr p0, v0

    and-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 4

    .prologue
    invoke-super {p0}, Lᵔʿ/ﹳٴ;->ʼˎ()V

    const v0, 0x6a09e667

    iput v0, p0, Lᵔʿ/ˈ;->ˈ:I

    const v0, -0x4498517b

    iput v0, p0, Lᵔʿ/ˈ;->ˑﹳ:I

    const v0, 0x3c6ef372

    iput v0, p0, Lᵔʿ/ˈ;->ﾞᴵ:I

    const v0, -0x5ab00ac6

    iput v0, p0, Lᵔʿ/ˈ;->ᵎﹶ:I

    const v0, 0x510e527f

    iput v0, p0, Lᵔʿ/ˈ;->ᵔᵢ:I

    const v0, -0x64fa9774

    iput v0, p0, Lᵔʿ/ˈ;->ʼˎ:I

    const v0, 0x1f83d9ab

    iput v0, p0, Lᵔʿ/ˈ;->ˆʾ:I

    const v0, 0x5be0cd19

    iput v0, p0, Lᵔʿ/ˈ;->ٴﹶ:I

    const/4 v0, 0x0

    iput v0, p0, Lᵔʿ/ˈ;->ˉʿ:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lᵔʿ/ˈ;->ﾞʻ:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ʽ(I[B)I
    .locals 2

    invoke-virtual {p0}, Lᵔʿ/ﹳٴ;->ˈ()V

    iget v0, p0, Lᵔʿ/ˈ;->ˈ:I

    invoke-static {p2, v0, p1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    iget v0, p0, Lᵔʿ/ˈ;->ˑﹳ:I

    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v0, v1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    iget v0, p0, Lᵔʿ/ˈ;->ﾞᴵ:I

    add-int/lit8 v1, p1, 0x8

    invoke-static {p2, v0, v1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    iget v0, p0, Lᵔʿ/ˈ;->ᵎﹶ:I

    add-int/lit8 v1, p1, 0xc

    invoke-static {p2, v0, v1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    iget v0, p0, Lᵔʿ/ˈ;->ᵔᵢ:I

    add-int/lit8 v1, p1, 0x10

    invoke-static {p2, v0, v1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    iget v0, p0, Lᵔʿ/ˈ;->ʼˎ:I

    add-int/lit8 v1, p1, 0x14

    invoke-static {p2, v0, v1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    iget v0, p0, Lᵔʿ/ˈ;->ˆʾ:I

    add-int/lit8 v1, p1, 0x18

    invoke-static {p2, v0, v1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    iget v0, p0, Lᵔʿ/ˈ;->ٴﹶ:I

    add-int/lit8 p1, p1, 0x1c

    invoke-static {p2, v0, p1}, Lﹳˋ/ٴﹶ;->ᵢˏ([BII)V

    invoke-virtual {p0}, Lᵔʿ/ˈ;->ʼˎ()V

    const/16 p1, 0x20

    return p1
.end method

.method public final ˆʾ(Lᵔʿ/ﹳٴ;)V
    .locals 0

    check-cast p1, Lᵔʿ/ˈ;

    invoke-virtual {p0, p1}, Lᵔʿ/ˈ;->ᵔﹳ(Lᵔʿ/ˈ;)V

    return-void
.end method

.method public final ˑﹳ()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final ᵎﹶ(J)V
    .locals 4

    .prologue
    iget v0, p0, Lᵔʿ/ˈ;->ˉʿ:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lᵔʿ/ˈ;->ﾞᴵ()V

    :cond_0
    iget-object v0, p0, Lᵔʿ/ˈ;->ﾞʻ:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    long-to-int p1, p1

    aput p1, v0, v1

    return-void
.end method

.method public final ᵔᵢ(I[B)V
    .locals 3

    .prologue
    aget-byte v0, p2, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iget-object p2, p0, Lᵔʿ/ˈ;->ﾞʻ:[I

    iget v0, p0, Lᵔʿ/ˈ;->ˉʿ:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lᵔʿ/ˈ;->ˉʿ:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lᵔʿ/ˈ;->ﾞᴵ()V

    :cond_0
    return-void
.end method

.method public final ᵔﹳ(Lᵔʿ/ˈ;)V
    .locals 4

    invoke-virtual {p0, p1}, Lᵔʿ/ﹳٴ;->ⁱˊ(Lᵔʿ/ﹳٴ;)V

    iget v0, p1, Lᵔʿ/ˈ;->ˈ:I

    iput v0, p0, Lᵔʿ/ˈ;->ˈ:I

    iget v0, p1, Lᵔʿ/ˈ;->ˑﹳ:I

    iput v0, p0, Lᵔʿ/ˈ;->ˑﹳ:I

    iget v0, p1, Lᵔʿ/ˈ;->ﾞᴵ:I

    iput v0, p0, Lᵔʿ/ˈ;->ﾞᴵ:I

    iget v0, p1, Lᵔʿ/ˈ;->ᵎﹶ:I

    iput v0, p0, Lᵔʿ/ˈ;->ᵎﹶ:I

    iget v0, p1, Lᵔʿ/ˈ;->ᵔᵢ:I

    iput v0, p0, Lᵔʿ/ˈ;->ᵔᵢ:I

    iget v0, p1, Lᵔʿ/ˈ;->ʼˎ:I

    iput v0, p0, Lᵔʿ/ˈ;->ʼˎ:I

    iget v0, p1, Lᵔʿ/ˈ;->ˆʾ:I

    iput v0, p0, Lᵔʿ/ˈ;->ˆʾ:I

    iget v0, p1, Lᵔʿ/ˈ;->ٴﹶ:I

    iput v0, p0, Lᵔʿ/ˈ;->ٴﹶ:I

    iget-object v0, p1, Lᵔʿ/ˈ;->ﾞʻ:[I

    iget-object v1, p0, Lᵔʿ/ˈ;->ﾞʻ:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lᵔʿ/ˈ;->ˉʿ:I

    iput p1, p0, Lᵔʿ/ˈ;->ˉʿ:I

    return-void
.end method

.method public final ﹳٴ()Lᵔʿ/ﹳٴ;
    .locals 2

    new-instance v0, Lᵔʿ/ˈ;

    invoke-direct {v0, p0}, Lᵔʿ/ﹳٴ;-><init>(Lᵔʿ/ﹳٴ;)V

    const/16 v1, 0x40

    new-array v1, v1, [I

    iput-object v1, v0, Lᵔʿ/ˈ;->ﾞʻ:[I

    invoke-virtual {v0, p0}, Lᵔʿ/ˈ;->ᵔﹳ(Lᵔʿ/ˈ;)V

    return-object v0
.end method

.method public final ﾞᴵ()V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lᵔʿ/ˈ;->ﾞʻ:[I

    const/16 v2, 0x10

    move v3, v2

    :goto_0
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    aget v4, v1, v4

    ushr-int/lit8 v5, v4, 0x11

    shl-int/lit8 v6, v4, 0xf

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v4, 0x13

    shl-int/lit8 v7, v4, 0xd

    or-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v4, v4, 0xa

    xor-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x7

    aget v5, v1, v5

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, -0xf

    aget v5, v1, v5

    ushr-int/lit8 v6, v5, 0x7

    shl-int/lit8 v7, v5, 0x19

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v5, 0x12

    shl-int/lit8 v8, v5, 0xe

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x10

    aget v5, v1, v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lᵔʿ/ˈ;->ˈ:I

    iget v4, v0, Lᵔʿ/ˈ;->ˑﹳ:I

    iget v5, v0, Lᵔʿ/ˈ;->ﾞᴵ:I

    iget v6, v0, Lᵔʿ/ˈ;->ᵎﹶ:I

    iget v7, v0, Lᵔʿ/ˈ;->ᵔᵢ:I

    iget v8, v0, Lᵔʿ/ˈ;->ʼˎ:I

    iget v9, v0, Lᵔʿ/ˈ;->ˆʾ:I

    iget v10, v0, Lᵔʿ/ˈ;->ٴﹶ:I

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :goto_1
    const/16 v14, 0x8

    if-ge v12, v14, :cond_1

    invoke-static {v7}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v15

    invoke-static {v7, v8, v9}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v15

    sget-object v15, Lᵔʿ/ˈ;->ᵔʾ:[I

    aget v17, v15, v13

    add-int v16, v16, v17

    aget v17, v1, v13

    add-int v16, v16, v17

    add-int v16, v16, v10

    add-int v6, v6, v16

    invoke-static {v3}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v10

    invoke-static {v3, v4, v5}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v17

    add-int v17, v17, v10

    add-int v10, v17, v16

    add-int/lit8 v16, v13, 0x1

    invoke-static {v6}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v17

    invoke-static {v6, v7, v8}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v1, v16

    add-int v18, v18, v16

    add-int v18, v18, v9

    add-int v5, v5, v18

    invoke-static {v10}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v9

    invoke-static {v10, v3, v4}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v16

    add-int v16, v16, v9

    add-int v9, v16, v18

    add-int/lit8 v16, v13, 0x2

    invoke-static {v5}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v17

    invoke-static {v5, v6, v7}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v1, v16

    add-int v18, v18, v16

    add-int v18, v18, v8

    add-int v4, v4, v18

    invoke-static {v9}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v8

    invoke-static {v9, v10, v3}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v16

    add-int v16, v16, v8

    add-int v8, v16, v18

    add-int/lit8 v16, v13, 0x3

    invoke-static {v4}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v17

    invoke-static {v4, v5, v6}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v1, v16

    add-int v18, v18, v16

    add-int v18, v18, v7

    add-int v3, v3, v18

    invoke-static {v8}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v7

    invoke-static {v8, v9, v10}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v16

    add-int v16, v16, v7

    add-int v7, v16, v18

    add-int/lit8 v16, v13, 0x4

    invoke-static {v3}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v17

    invoke-static {v3, v4, v5}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v1, v16

    add-int v18, v18, v16

    add-int v18, v18, v6

    add-int v10, v10, v18

    invoke-static {v7}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v6

    invoke-static {v7, v8, v9}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v16

    add-int v16, v16, v6

    add-int v6, v16, v18

    add-int/lit8 v16, v13, 0x5

    invoke-static {v10}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v17

    invoke-static {v10, v3, v4}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v1, v16

    add-int v18, v18, v16

    add-int v18, v18, v5

    add-int v9, v9, v18

    invoke-static {v6}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v5

    invoke-static {v6, v7, v8}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v16

    add-int v16, v16, v5

    add-int v5, v16, v18

    add-int/lit8 v16, v13, 0x6

    invoke-static {v9}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v17

    invoke-static {v9, v10, v3}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v1, v16

    add-int v18, v18, v16

    add-int v18, v18, v4

    add-int v8, v8, v18

    invoke-static {v5}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v4

    invoke-static {v5, v6, v7}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v16

    add-int v16, v16, v4

    add-int v4, v16, v18

    add-int/lit8 v16, v13, 0x7

    invoke-static {v8}, Lᵔʿ/ˈ;->ʼᐧ(I)I

    move-result v17

    invoke-static {v8, v9, v10}, Lᵔʿ/ˈ;->ˉʿ(III)I

    move-result v18

    add-int v18, v18, v17

    aget v15, v15, v16

    add-int v18, v18, v15

    aget v15, v1, v16

    add-int v18, v18, v15

    add-int v18, v18, v3

    add-int v7, v7, v18

    invoke-static {v4}, Lᵔʿ/ˈ;->ˉˆ(I)I

    move-result v3

    invoke-static {v4, v5, v6}, Lᵔʿ/ˈ;->ᵔʾ(III)I

    move-result v15

    add-int/2addr v15, v3

    add-int v3, v15, v18

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_1
    iget v12, v0, Lᵔʿ/ˈ;->ˈ:I

    add-int/2addr v12, v3

    iput v12, v0, Lᵔʿ/ˈ;->ˈ:I

    iget v3, v0, Lᵔʿ/ˈ;->ˑﹳ:I

    add-int/2addr v3, v4

    iput v3, v0, Lᵔʿ/ˈ;->ˑﹳ:I

    iget v3, v0, Lᵔʿ/ˈ;->ﾞᴵ:I

    add-int/2addr v3, v5

    iput v3, v0, Lᵔʿ/ˈ;->ﾞᴵ:I

    iget v3, v0, Lᵔʿ/ˈ;->ᵎﹶ:I

    add-int/2addr v3, v6

    iput v3, v0, Lᵔʿ/ˈ;->ᵎﹶ:I

    iget v3, v0, Lᵔʿ/ˈ;->ᵔᵢ:I

    add-int/2addr v3, v7

    iput v3, v0, Lᵔʿ/ˈ;->ᵔᵢ:I

    iget v3, v0, Lᵔʿ/ˈ;->ʼˎ:I

    add-int/2addr v3, v8

    iput v3, v0, Lᵔʿ/ˈ;->ʼˎ:I

    iget v3, v0, Lᵔʿ/ˈ;->ˆʾ:I

    add-int/2addr v3, v9

    iput v3, v0, Lᵔʿ/ˈ;->ˆʾ:I

    iget v3, v0, Lᵔʿ/ˈ;->ٴﹶ:I

    add-int/2addr v3, v10

    iput v3, v0, Lᵔʿ/ˈ;->ٴﹶ:I

    iput v11, v0, Lᵔʿ/ˈ;->ˉʿ:I

    move v3, v11

    :goto_2
    if-ge v3, v2, :cond_2

    aput v11, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
