.class public final Lˉⁱ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:[[S

.field public final ʼᐧ:Landroidx/leanback/widget/ʻٴ;

.field public final ʽ:Landroidx/leanback/widget/ﾞʻ;

.field public final ˆʾ:[[S

.field public final ˈ:[[S

.field public final ˉʿ:Lˑⁱ/ﹳٴ;

.field public final ˉˆ:Lʻˆ/ﾞᴵ;

.field public final ˑﹳ:[S

.field public final ٴﹶ:[[S

.field public final ᵎﹶ:[S

.field public final ᵔʾ:Lʻᴵ/ʻٴ;

.field public final ᵔᵢ:[S

.field public final ᵔﹳ:Landroidx/leanback/widget/ʻٴ;

.field public final ⁱˊ:[I

.field public final ﹳٴ:I

.field public final ﾞʻ:[S

.field public final ﾞᴵ:[S


# direct methods
.method public constructor <init>(Lˑⁱ/ﹳٴ;Lʻᴵ/ʻٴ;III)V
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, v0, Lˉⁱ/ﹳٴ;->ⁱˊ:[I

    new-instance v3, Landroidx/leanback/widget/ﾞʻ;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroidx/leanback/widget/ﾞʻ;-><init>(I)V

    iput-object v3, v0, Lˉⁱ/ﹳٴ;->ʽ:Landroidx/leanback/widget/ﾞʻ;

    const/4 v3, 0x2

    new-array v5, v3, [I

    const/4 v6, 0x1

    const/16 v7, 0x10

    aput v7, v5, v6

    const/4 v8, 0x0

    const/16 v9, 0xc

    aput v9, v5, v8

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    iput-object v5, v0, Lˉⁱ/ﹳٴ;->ˈ:[[S

    new-array v5, v9, [S

    iput-object v5, v0, Lˉⁱ/ﹳٴ;->ˑﹳ:[S

    new-array v5, v9, [S

    iput-object v5, v0, Lˉⁱ/ﹳٴ;->ﾞᴵ:[S

    new-array v5, v9, [S

    iput-object v5, v0, Lˉⁱ/ﹳٴ;->ᵎﹶ:[S

    new-array v5, v9, [S

    iput-object v5, v0, Lˉⁱ/ﹳٴ;->ᵔᵢ:[S

    new-array v5, v3, [I

    aput v7, v5, v6

    aput v9, v5, v8

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    iput-object v5, v0, Lˉⁱ/ﹳٴ;->ʼˎ:[[S

    new-array v5, v3, [I

    const/16 v9, 0x40

    aput v9, v5, v6

    aput v2, v5, v8

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    iput-object v5, v0, Lˉⁱ/ﹳٴ;->ˆʾ:[[S

    new-array v5, v3, [S

    new-array v9, v3, [S

    new-array v10, v2, [S

    new-array v11, v2, [S

    const/16 v12, 0x8

    new-array v13, v12, [S

    new-array v14, v12, [S

    new-array v15, v7, [S

    move/from16 v16, v2

    new-array v2, v7, [S

    move/from16 v17, v3

    const/16 v3, 0x20

    move/from16 v18, v4

    new-array v4, v3, [S

    new-array v3, v3, [S

    move/from16 v19, v6

    const/16 v6, 0xa

    new-array v6, v6, [[S

    aput-object v5, v6, v8

    aput-object v9, v6, v19

    aput-object v10, v6, v17

    const/4 v5, 0x3

    aput-object v11, v6, v5

    aput-object v13, v6, v16

    const/4 v5, 0x5

    aput-object v14, v6, v5

    aput-object v15, v6, v18

    const/4 v5, 0x7

    aput-object v2, v6, v5

    aput-object v4, v6, v12

    const/16 v2, 0x9

    aput-object v3, v6, v2

    iput-object v6, v0, Lˉⁱ/ﹳٴ;->ٴﹶ:[[S

    new-array v2, v7, [S

    iput-object v2, v0, Lˉⁱ/ﹳٴ;->ﾞʻ:[S

    shl-int v2, v19, p5

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lˉⁱ/ﹳٴ;->ﹳٴ:I

    new-instance v2, Landroidx/leanback/widget/ʻٴ;

    invoke-direct {v2, v0}, Landroidx/leanback/widget/ʻٴ;-><init>(Lˉⁱ/ﹳٴ;)V

    iput-object v2, v0, Lˉⁱ/ﹳٴ;->ʼᐧ:Landroidx/leanback/widget/ʻٴ;

    new-instance v2, Landroidx/leanback/widget/ʻٴ;

    invoke-direct {v2, v0}, Landroidx/leanback/widget/ʻٴ;-><init>(Lˉⁱ/ﹳٴ;)V

    iput-object v2, v0, Lˉⁱ/ﹳٴ;->ᵔﹳ:Landroidx/leanback/widget/ʻٴ;

    move-object/from16 v2, p1

    iput-object v2, v0, Lˉⁱ/ﹳٴ;->ˉʿ:Lˑⁱ/ﹳٴ;

    move-object/from16 v2, p2

    iput-object v2, v0, Lˉⁱ/ﹳٴ;->ᵔʾ:Lʻᴵ/ʻٴ;

    new-instance v2, Lʻˆ/ﾞᴵ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    iput v1, v2, Lʻˆ/ﾞᴵ;->ʾˋ:I

    shl-int v3, v19, p4

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    add-int v1, v1, p4

    shl-int v1, v19, v1

    new-array v1, v1, [Lﹶﾞ/ⁱי;

    iput-object v1, v2, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    :goto_0
    iget-object v1, v2, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [Lﹶﾞ/ⁱי;

    array-length v3, v1

    if-ge v8, v3, :cond_0

    new-instance v3, Lﹶﾞ/ⁱי;

    invoke-direct {v3, v2}, Lﹶﾞ/ⁱי;-><init>(Lʻˆ/ﾞᴵ;)V

    aput-object v3, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lˉⁱ/ﹳٴ;->ˉˆ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v0}, Lˉⁱ/ﹳٴ;->ⁱˊ()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ⁱˊ:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ʽ:Landroidx/leanback/widget/ﾞʻ;

    iput v1, v0, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ˈ:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v2, v2, v0

    invoke-static {v2}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ˑﹳ:[S

    invoke-static {v0}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ﾞᴵ:[S

    invoke-static {v0}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ᵎﹶ:[S

    invoke-static {v0}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ᵔᵢ:[S

    invoke-static {v0}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ʼˎ:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    invoke-static {v2}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ˆʾ:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-static {v2}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ٴﹶ:[[S

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    invoke-static {v2}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ﾞʻ:[S

    invoke-static {v0}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    :goto_4
    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ˉˆ:Lʻˆ/ﾞᴵ;

    iget-object v0, v0, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Lﹶﾞ/ⁱי;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v0, v0, v1

    iget-object v0, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, [S

    invoke-static {v0}, Lʻᴵ/ʻٴ;->ˆʾ([S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ʼᐧ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ʻٴ;->ˏי()V

    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ᵔﹳ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {v0}, Landroidx/leanback/widget/ʻٴ;->ˏי()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 15

    .prologue
    iget-object v0, p0, Lˉⁱ/ﹳٴ;->ˉʿ:Lˑⁱ/ﹳٴ;

    iget v1, v0, Lˑⁱ/ﹳٴ;->ᵎﹶ:I

    if-lez v1, :cond_0

    iget v2, v0, Lˑⁱ/ﹳٴ;->ᵔᵢ:I

    invoke-virtual {v0, v2, v1}, Lˑⁱ/ﹳٴ;->ﹳٴ(II)V

    :cond_0
    :goto_0
    iget v1, v0, Lˑⁱ/ﹳٴ;->ˈ:I

    iget v2, v0, Lˑⁱ/ﹳٴ;->ﾞᴵ:I

    iget-object v3, p0, Lˉⁱ/ﹳٴ;->ᵔʾ:Lʻᴵ/ʻٴ;

    if-ge v1, v2, :cond_18

    iget v2, p0, Lˉⁱ/ﹳٴ;->ﹳٴ:I

    and-int/2addr v1, v2

    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ˈ:[[S

    iget-object v4, p0, Lˉⁱ/ﹳٴ;->ʽ:Landroidx/leanback/widget/ﾞʻ;

    iget v5, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    aget-object v2, v2, v5

    invoke-virtual {v3, v2, v1}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v2

    const/16 v5, 0x9

    const/4 v6, 0x3

    const/4 v7, 0x7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v2, :cond_9

    iget-object v1, p0, Lˉⁱ/ﹳٴ;->ˉˆ:Lʻˆ/ﾞᴵ;

    iget-object v2, v1, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lˉⁱ/ﹳٴ;

    iget-object v2, v2, Lˉⁱ/ﹳٴ;->ˉʿ:Lˑⁱ/ﹳٴ;

    iget v3, v2, Lˑⁱ/ﹳٴ;->ˈ:I

    add-int/lit8 v4, v3, -0x1

    if-gtz v3, :cond_1

    iget v10, v2, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v4, v10

    :cond_1
    iget-object v2, v2, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    iget v4, v1, Lʻˆ/ﾞᴵ;->ʾˋ:I

    rsub-int/lit8 v10, v4, 0x8

    shr-int/2addr v2, v10

    iget v10, v1, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    and-int/2addr v3, v10

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v1, v1, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [Lﹶﾞ/ⁱי;

    aget-object v1, v1, v2

    iget-object v2, v1, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, [S

    iget-object v1, v1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʻˆ/ﾞᴵ;

    iget-object v1, v1, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉⁱ/ﹳٴ;

    iget-object v10, v1, Lˉⁱ/ﹳٴ;->ˉʿ:Lˑⁱ/ﹳٴ;

    iget-object v11, v1, Lˉⁱ/ﹳٴ;->ᵔʾ:Lʻᴵ/ʻٴ;

    iget-object v12, v1, Lˉⁱ/ﹳٴ;->ʽ:Landroidx/leanback/widget/ﾞʻ;

    iget v3, v12, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    const/16 v13, 0x100

    if-ge v3, v7, :cond_3

    :cond_2
    shl-int/lit8 v1, v8, 0x1

    invoke-virtual {v11, v2, v8}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v3

    or-int v8, v1, v3

    if-lt v8, v13, :cond_2

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lˉⁱ/ﹳٴ;->ⁱˊ:[I

    aget v1, v1, v9

    iget v3, v10, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int v4, v3, v1

    sub-int/2addr v4, v8

    if-lt v1, v3, :cond_4

    iget v1, v10, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v4, v1

    :cond_4
    iget-object v1, v10, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    move v4, v8

    move v3, v13

    :cond_5
    shl-int/2addr v1, v8

    and-int v7, v1, v3

    add-int v14, v3, v7

    add-int/2addr v14, v4

    invoke-virtual {v11, v2, v14}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v14

    shl-int/2addr v4, v8

    or-int/2addr v4, v14

    rsub-int/lit8 v14, v14, 0x0

    not-int v7, v7

    xor-int/2addr v7, v14

    and-int/2addr v3, v7

    if-lt v4, v13, :cond_5

    move v8, v4

    :goto_1
    int-to-byte v1, v8

    iget-object v2, v10, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    iget v3, v10, Lˑⁱ/ﹳٴ;->ˈ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v10, Lˑⁱ/ﹳٴ;->ˈ:I

    aput-byte v1, v2, v3

    iget v1, v10, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    if-ge v1, v4, :cond_6

    iput v4, v10, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    :cond_6
    iget v1, v12, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    if-gt v1, v6, :cond_7

    iput v9, v12, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    goto/16 :goto_0

    :cond_7
    if-gt v1, v5, :cond_8

    add-int/lit8 v1, v1, -0x3

    iput v1, v12, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v1, v1, -0x6

    iput v1, v12, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ˑﹳ:[S

    iget v10, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    invoke-virtual {v3, v2, v10}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v2

    const/4 v10, 0x2

    iget-object v11, p0, Lˉⁱ/ﹳٴ;->ⁱˊ:[I

    if-nez v2, :cond_11

    iget v2, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    if-ge v2, v7, :cond_a

    goto :goto_2

    :cond_a
    const/16 v7, 0xa

    :goto_2
    iput v7, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    aget v2, v11, v10

    aput v2, v11, v6

    aget v2, v11, v8

    aput v2, v11, v10

    aget v2, v11, v9

    aput v2, v11, v8

    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ʼᐧ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ʻٴ;->ٴﹶ(I)I

    move-result v2

    const/4 v1, 0x6

    if-ge v2, v1, :cond_b

    add-int/lit8 v6, v2, -0x2

    :cond_b
    iget-object v1, p0, Lˉⁱ/ﹳٴ;->ˆʾ:[[S

    aget-object v1, v1, v6

    invoke-virtual {v3, v1}, Lʻᴵ/ʻٴ;->ᵎﹶ([S)I

    move-result v1

    const/4 v4, 0x4

    if-ge v1, v4, :cond_c

    aput v1, v11, v9

    goto/16 :goto_9

    :cond_c
    shr-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v4, -0x1

    and-int/lit8 v6, v1, 0x1

    or-int/2addr v6, v10

    shl-int v12, v6, v5

    aput v12, v11, v9

    const/16 v5, 0xe

    if-ge v1, v5, :cond_e

    add-int/lit8 v1, v1, -0x4

    iget-object v4, p0, Lˉⁱ/ﹳٴ;->ٴﹶ:[[S

    aget-object v1, v4, v1

    move v4, v8

    move v5, v9

    move v6, v5

    :goto_3
    invoke-virtual {v3, v1, v4}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v7

    shl-int/2addr v4, v8

    or-int/2addr v4, v7

    add-int/lit8 v10, v6, 0x1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    array-length v6, v1

    if-lt v4, v6, :cond_d

    or-int v1, v12, v5

    aput v1, v11, v9

    goto/16 :goto_9

    :cond_d
    move v6, v10

    goto :goto_3

    :cond_e
    add-int/lit8 v4, v4, -0x5

    move v1, v9

    :cond_f
    invoke-virtual {v3}, Lʻᴵ/ʻٴ;->ٴﹶ()V

    iget v5, v3, Lʻᴵ/ʻٴ;->ʽ:I

    ushr-int/2addr v5, v8

    iput v5, v3, Lʻᴵ/ʻٴ;->ʽ:I

    iget v6, v3, Lʻᴵ/ʻٴ;->ˈ:I

    sub-int v7, v6, v5

    ushr-int/lit8 v7, v7, 0x1f

    add-int/lit8 v10, v7, -0x1

    and-int/2addr v5, v10

    sub-int/2addr v6, v5

    iput v6, v3, Lʻᴵ/ʻٴ;->ˈ:I

    shl-int/2addr v1, v8

    rsub-int/lit8 v5, v7, 0x1

    or-int/2addr v1, v5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_f

    shl-int/lit8 v1, v1, 0x4

    or-int v5, v12, v1

    aput v5, v11, v9

    move v1, v8

    move v4, v9

    move v6, v4

    :goto_4
    iget-object v7, p0, Lˉⁱ/ﹳٴ;->ﾞʻ:[S

    invoke-virtual {v3, v7, v1}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v10

    shl-int/2addr v1, v8

    or-int/2addr v1, v10

    add-int/lit8 v12, v6, 0x1

    shl-int v6, v10, v6

    or-int/2addr v4, v6

    array-length v6, v7

    if-lt v1, v6, :cond_10

    or-int v1, v5, v4

    aput v1, v11, v9

    goto :goto_9

    :cond_10
    move v6, v12

    goto :goto_4

    :cond_11
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ﾞᴵ:[S

    iget v12, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    invoke-virtual {v3, v2, v12}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v2

    const/16 v12, 0xb

    if-nez v2, :cond_13

    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ʼˎ:[[S

    iget v6, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    aget-object v2, v2, v6

    invoke-virtual {v3, v2, v1}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v2

    if-nez v2, :cond_16

    iget v1, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    if-ge v1, v7, :cond_12

    goto :goto_5

    :cond_12
    move v5, v12

    :goto_5
    iput v5, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    goto :goto_8

    :cond_13
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ᵎﹶ:[S

    iget v5, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    invoke-virtual {v3, v2, v5}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v2

    if-nez v2, :cond_14

    aget v2, v11, v8

    goto :goto_7

    :cond_14
    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ᵔᵢ:[S

    iget v5, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    invoke-virtual {v3, v2, v5}, Lʻᴵ/ʻٴ;->ﾞᴵ([SI)I

    move-result v2

    if-nez v2, :cond_15

    aget v2, v11, v10

    goto :goto_6

    :cond_15
    aget v2, v11, v6

    aget v3, v11, v10

    aput v3, v11, v6

    :goto_6
    aget v3, v11, v8

    aput v3, v11, v10

    :goto_7
    aget v3, v11, v9

    aput v3, v11, v8

    aput v2, v11, v9

    :cond_16
    iget v2, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    if-ge v2, v7, :cond_17

    const/16 v12, 0x8

    :cond_17
    iput v12, v4, Landroidx/leanback/widget/ﾞʻ;->ᴵˊ:I

    iget-object v2, p0, Lˉⁱ/ﹳٴ;->ᵔﹳ:Landroidx/leanback/widget/ʻٴ;

    invoke-virtual {v2, v1}, Landroidx/leanback/widget/ʻٴ;->ٴﹶ(I)I

    move-result v8

    :goto_8
    move v2, v8

    :goto_9
    aget v1, v11, v9

    invoke-virtual {v0, v1, v2}, Lˑⁱ/ﹳٴ;->ﹳٴ(II)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v3}, Lʻᴵ/ʻٴ;->ٴﹶ()V

    return-void
.end method
