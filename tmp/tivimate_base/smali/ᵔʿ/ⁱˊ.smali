.class public final Lᵔʿ/ⁱˊ;
.super Lᵔʿ/ﹳٴ;


# instance fields
.field public ʼˎ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:[I

.field public ﾞᴵ:I


# direct methods
.method public static ʼᐧ(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static ˉʿ(III)I
    .locals 0

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static ᵔʾ(III)I
    .locals 1

    or-int v0, p1, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static ᵔﹳ([BII)V
    .locals 2

    int-to-byte v0, p1

    aput-byte v0, p0, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, p0, p2

    return-void
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 4

    .prologue
    invoke-super {p0}, Lᵔʿ/ﹳٴ;->ʼˎ()V

    const v0, 0x67452301

    iput v0, p0, Lᵔʿ/ⁱˊ;->ˈ:I

    const v0, -0x10325477

    iput v0, p0, Lᵔʿ/ⁱˊ;->ˑﹳ:I

    const v0, -0x67452302

    iput v0, p0, Lᵔʿ/ⁱˊ;->ﾞᴵ:I

    const v0, 0x10325476

    iput v0, p0, Lᵔʿ/ⁱˊ;->ᵎﹶ:I

    const/4 v0, 0x0

    iput v0, p0, Lᵔʿ/ⁱˊ;->ʼˎ:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

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

    iget v0, p0, Lᵔʿ/ⁱˊ;->ˈ:I

    invoke-static {p2, v0, p1}, Lᵔʿ/ⁱˊ;->ᵔﹳ([BII)V

    iget v0, p0, Lᵔʿ/ⁱˊ;->ˑﹳ:I

    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v0, v1}, Lᵔʿ/ⁱˊ;->ᵔﹳ([BII)V

    iget v0, p0, Lᵔʿ/ⁱˊ;->ﾞᴵ:I

    add-int/lit8 v1, p1, 0x8

    invoke-static {p2, v0, v1}, Lᵔʿ/ⁱˊ;->ᵔﹳ([BII)V

    iget v0, p0, Lᵔʿ/ⁱˊ;->ᵎﹶ:I

    add-int/lit8 p1, p1, 0xc

    invoke-static {p2, v0, p1}, Lᵔʿ/ⁱˊ;->ᵔﹳ([BII)V

    invoke-virtual {p0}, Lᵔʿ/ⁱˊ;->ʼˎ()V

    const/16 p1, 0x10

    return p1
.end method

.method public final ˆʾ(Lᵔʿ/ﹳٴ;)V
    .locals 0

    check-cast p1, Lᵔʿ/ⁱˊ;

    invoke-virtual {p0, p1}, Lᵔʿ/ⁱˊ;->ˉˆ(Lᵔʿ/ⁱˊ;)V

    return-void
.end method

.method public final ˉˆ(Lᵔʿ/ⁱˊ;)V
    .locals 4

    invoke-virtual {p0, p1}, Lᵔʿ/ﹳٴ;->ⁱˊ(Lᵔʿ/ﹳٴ;)V

    iget v0, p1, Lᵔʿ/ⁱˊ;->ˈ:I

    iput v0, p0, Lᵔʿ/ⁱˊ;->ˈ:I

    iget v0, p1, Lᵔʿ/ⁱˊ;->ˑﹳ:I

    iput v0, p0, Lᵔʿ/ⁱˊ;->ˑﹳ:I

    iget v0, p1, Lᵔʿ/ⁱˊ;->ﾞᴵ:I

    iput v0, p0, Lᵔʿ/ⁱˊ;->ﾞᴵ:I

    iget v0, p1, Lᵔʿ/ⁱˊ;->ᵎﹶ:I

    iput v0, p0, Lᵔʿ/ⁱˊ;->ᵎﹶ:I

    iget-object v0, p1, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

    iget-object v1, p0, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lᵔʿ/ⁱˊ;->ʼˎ:I

    iput p1, p0, Lᵔʿ/ⁱˊ;->ʼˎ:I

    return-void
.end method

.method public final ˑﹳ()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final ᵎﹶ(J)V
    .locals 3

    .prologue
    iget v0, p0, Lᵔʿ/ⁱˊ;->ʼˎ:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lᵔʿ/ⁱˊ;->ﾞᴵ()V

    :cond_0
    iget-object v0, p0, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

    long-to-int v2, p1

    aput v2, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    const/16 p2, 0xf

    aput p1, v0, p2

    return-void
.end method

.method public final ᵔᵢ(I[B)V
    .locals 6

    .prologue
    iget-object v0, p0, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

    iget v1, p0, Lᵔʿ/ⁱˊ;->ʼˎ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lᵔʿ/ⁱˊ;->ʼˎ:I

    aget-byte v3, p2, p1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v3

    aput p1, v0, v1

    if-ne v2, v5, :cond_0

    invoke-virtual {p0}, Lᵔʿ/ⁱˊ;->ﾞᴵ()V

    :cond_0
    return-void
.end method

.method public final ﹳٴ()Lᵔʿ/ﹳٴ;
    .locals 2

    new-instance v0, Lᵔʿ/ⁱˊ;

    invoke-direct {v0, p0}, Lᵔʿ/ﹳٴ;-><init>(Lᵔʿ/ﹳٴ;)V

    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, v0, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

    invoke-virtual {v0, p0}, Lᵔʿ/ⁱˊ;->ˉˆ(Lᵔʿ/ⁱˊ;)V

    return-object v0
.end method

.method public final ﾞᴵ()V
    .locals 25

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lᵔʿ/ⁱˊ;->ˈ:I

    iget v2, v0, Lᵔʿ/ⁱˊ;->ˑﹳ:I

    iget v3, v0, Lᵔʿ/ⁱˊ;->ﾞᴵ:I

    iget v4, v0, Lᵔʿ/ⁱˊ;->ᵎﹶ:I

    invoke-static {v2, v3, v4}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v1, v0, Lᵔʿ/ⁱˊ;->ᵔᵢ:[I

    const/4 v6, 0x0

    aget v7, v1, v6

    add-int/2addr v5, v7

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v5

    invoke-static {v5, v2, v3}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v8

    add-int/2addr v8, v4

    const/4 v4, 0x1

    aget v9, v1, v4

    add-int/2addr v8, v9

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v8

    invoke-static {v8, v5, v2}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v10

    add-int/2addr v10, v3

    const/4 v3, 0x2

    aget v11, v1, v3

    add-int/2addr v10, v11

    const/16 v11, 0xb

    invoke-static {v10, v11}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v10

    invoke-static {v10, v8, v5}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v12

    add-int/2addr v12, v2

    aget v2, v1, v7

    add-int/2addr v12, v2

    const/16 v2, 0x13

    invoke-static {v12, v2}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v12

    invoke-static {v12, v10, v8}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v13

    add-int/2addr v13, v5

    const/4 v5, 0x4

    aget v14, v1, v5

    add-int/2addr v13, v14

    invoke-static {v13, v7}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v13

    invoke-static {v13, v12, v10}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v14

    add-int/2addr v14, v8

    const/4 v8, 0x5

    aget v15, v1, v8

    add-int/2addr v14, v15

    invoke-static {v14, v9}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v14

    invoke-static {v14, v13, v12}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v15

    add-int/2addr v15, v10

    const/4 v10, 0x6

    aget v16, v1, v10

    add-int v15, v15, v16

    invoke-static {v15, v11}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v15

    invoke-static {v15, v14, v13}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v12

    aget v12, v1, v9

    add-int v12, v16, v12

    invoke-static {v12, v2}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v12

    invoke-static {v12, v15, v14}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v13

    const/16 v13, 0x8

    aget v17, v1, v13

    move/from16 v18, v3

    add-int v3, v16, v17

    invoke-static {v3, v7}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v3

    invoke-static {v3, v12, v15}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v14

    const/16 v14, 0x9

    aget v17, v1, v14

    move/from16 v19, v4

    add-int v4, v16, v17

    invoke-static {v4, v9}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v4

    invoke-static {v4, v3, v12}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v15

    const/16 v15, 0xa

    aget v17, v1, v15

    move/from16 v20, v5

    add-int v5, v16, v17

    invoke-static {v5, v11}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v5

    invoke-static {v5, v4, v3}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v12

    aget v12, v1, v11

    add-int v12, v16, v12

    invoke-static {v12, v2}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v12

    invoke-static {v12, v5, v4}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v3

    const/16 v3, 0xc

    aget v17, v1, v3

    move/from16 v21, v3

    add-int v3, v16, v17

    invoke-static {v3, v7}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v3

    invoke-static {v3, v12, v5}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v4

    const/16 v4, 0xd

    aget v17, v1, v4

    move/from16 v22, v10

    add-int v10, v16, v17

    invoke-static {v10, v9}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v10

    invoke-static {v10, v3, v12}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v5

    const/16 v5, 0xe

    aget v17, v1, v5

    move/from16 v23, v5

    add-int v5, v16, v17

    invoke-static {v5, v11}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v5

    invoke-static {v5, v10, v3}, Lᵔʿ/ⁱˊ;->ˉʿ(III)I

    move-result v16

    add-int v16, v16, v12

    const/16 v12, 0xf

    aget v17, v1, v12

    move/from16 v24, v9

    add-int v9, v16, v17

    invoke-static {v9, v2}, Lᵔʿ/ⁱˊ;->ʼᐧ(II)I

    move-result v2

    invoke-static {v2, v5, v10}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v9

    add-int/2addr v9, v3

    aget v3, v1, v6

    move/from16 v16, v13

    const v13, 0x5a827999

    invoke-static {v9, v3, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v9

    add-int/2addr v9, v10

    aget v10, v1, v20

    invoke-static {v9, v10, v13, v8}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v16

    invoke-static {v10, v5, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v21

    invoke-static {v10, v2, v13, v4}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    invoke-static {v2, v5, v9}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v3

    aget v3, v1, v19

    invoke-static {v10, v3, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v9

    aget v9, v1, v8

    invoke-static {v10, v9, v13, v8}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v14

    invoke-static {v10, v5, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v4

    invoke-static {v10, v2, v13, v4}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    invoke-static {v2, v5, v9}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v3

    aget v3, v1, v18

    invoke-static {v10, v3, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v9

    aget v9, v1, v22

    invoke-static {v10, v9, v13, v8}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v15

    invoke-static {v10, v5, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v23

    invoke-static {v10, v2, v13, v4}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    invoke-static {v2, v5, v9}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v3

    aget v3, v1, v7

    invoke-static {v10, v3, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    invoke-static {v3, v2, v5}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v9

    aget v9, v1, v24

    invoke-static {v10, v9, v13, v8}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v9

    invoke-static {v9, v3, v2}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v5

    aget v5, v1, v11

    invoke-static {v10, v5, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    invoke-static {v5, v9, v3}, Lᵔʿ/ⁱˊ;->ᵔʾ(III)I

    move-result v10

    add-int/2addr v10, v2

    aget v2, v1, v12

    invoke-static {v10, v2, v13, v4}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    xor-int v10, v2, v5

    xor-int/2addr v10, v9

    add-int/2addr v3, v10

    aget v10, v1, v6

    const v13, 0x6ed9eba1

    invoke-static {v3, v10, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    xor-int v10, v3, v2

    xor-int/2addr v10, v5

    add-int/2addr v9, v10

    aget v10, v1, v16

    invoke-static {v9, v10, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v9

    xor-int v10, v9, v3

    xor-int/2addr v10, v2

    add-int/2addr v5, v10

    aget v10, v1, v20

    invoke-static {v5, v10, v13, v11}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    xor-int v10, v5, v9

    xor-int/2addr v10, v3

    add-int/2addr v2, v10

    aget v10, v1, v21

    invoke-static {v2, v10, v13, v12}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    xor-int v10, v2, v5

    xor-int/2addr v10, v9

    add-int/2addr v3, v10

    aget v10, v1, v18

    invoke-static {v3, v10, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    xor-int v10, v3, v2

    xor-int/2addr v10, v5

    add-int/2addr v9, v10

    aget v10, v1, v15

    invoke-static {v9, v10, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v9

    xor-int v10, v9, v3

    xor-int/2addr v10, v2

    add-int/2addr v5, v10

    aget v10, v1, v22

    invoke-static {v5, v10, v13, v11}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    xor-int v10, v5, v9

    xor-int/2addr v10, v3

    add-int/2addr v2, v10

    aget v10, v1, v23

    invoke-static {v2, v10, v13, v12}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    xor-int v10, v2, v5

    xor-int/2addr v10, v9

    add-int/2addr v3, v10

    aget v10, v1, v19

    invoke-static {v3, v10, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    xor-int v10, v3, v2

    xor-int/2addr v10, v5

    add-int/2addr v9, v10

    aget v10, v1, v14

    invoke-static {v9, v10, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v9

    xor-int v10, v9, v3

    xor-int/2addr v10, v2

    add-int/2addr v5, v10

    aget v8, v1, v8

    invoke-static {v5, v8, v13, v11}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    xor-int v8, v5, v9

    xor-int/2addr v8, v3

    add-int/2addr v2, v8

    aget v4, v1, v4

    invoke-static {v2, v4, v13, v12}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    xor-int v4, v2, v5

    xor-int/2addr v4, v9

    add-int/2addr v3, v4

    aget v4, v1, v7

    invoke-static {v3, v4, v13, v7}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v3

    xor-int v4, v3, v2

    xor-int/2addr v4, v5

    add-int/2addr v9, v4

    aget v4, v1, v11

    invoke-static {v9, v4, v13, v14}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v4

    xor-int v7, v4, v3

    xor-int/2addr v7, v2

    add-int/2addr v5, v7

    aget v7, v1, v24

    invoke-static {v5, v7, v13, v11}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v5

    xor-int v7, v5, v4

    xor-int/2addr v7, v3

    add-int/2addr v2, v7

    aget v7, v1, v12

    invoke-static {v2, v7, v13, v12}, Lᐧـ/ˈ;->ʼˎ(IIII)I

    move-result v2

    iget v7, v0, Lᵔʿ/ⁱˊ;->ˈ:I

    add-int/2addr v7, v3

    iput v7, v0, Lᵔʿ/ⁱˊ;->ˈ:I

    iget v3, v0, Lᵔʿ/ⁱˊ;->ˑﹳ:I

    add-int/2addr v3, v2

    iput v3, v0, Lᵔʿ/ⁱˊ;->ˑﹳ:I

    iget v2, v0, Lᵔʿ/ⁱˊ;->ﾞᴵ:I

    add-int/2addr v2, v5

    iput v2, v0, Lᵔʿ/ⁱˊ;->ﾞᴵ:I

    iget v2, v0, Lᵔʿ/ⁱˊ;->ᵎﹶ:I

    add-int/2addr v2, v4

    iput v2, v0, Lᵔʿ/ⁱˊ;->ᵎﹶ:I

    iput v6, v0, Lᵔʿ/ⁱˊ;->ʼˎ:I

    move v2, v6

    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_0

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
