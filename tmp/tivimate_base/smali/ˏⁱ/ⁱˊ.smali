.class public final Lˏⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:[Lˏⁱ/ˑﹳ;

.field public ʼᐧ:Z

.field public final ʽ:Z

.field public ˆʾ:J

.field public final ˈ:Lˋⁱ/ﾞᴵ;

.field public ˉʿ:J

.field public ˉˆ:I

.field public ˑﹳ:I

.field public ٴﹶ:Lˏⁱ/ˑﹳ;

.field public ᵎﹶ:Lˏⁱ/ʽ;

.field public ᵔʾ:J

.field public ᵔᵢ:J

.field public final ⁱˊ:Lʻᴵ/ˆʾ;

.field public final ﹳٴ:Lᐧˎ/ﹳᐧ;

.field public ﾞʻ:I

.field public ﾞᴵ:Lˊﾞ/ᵔﹳ;


# direct methods
.method public constructor <init>(ILˋⁱ/ﾞᴵ;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˏⁱ/ⁱˊ;->ˈ:Lˋⁱ/ﾞᴵ;

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lˏⁱ/ⁱˊ;->ʽ:Z

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lˏⁱ/ⁱˊ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lʻᴵ/ˆʾ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˏⁱ/ⁱˊ;->ⁱˊ:Lʻᴵ/ˆʾ;

    new-instance p1, Lٴﾞ/ˆʾ;

    const/16 p2, 0x11

    invoke-direct {p1, p2}, Lٴﾞ/ˆʾ;-><init>(I)V

    iput-object p1, p0, Lˏⁱ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-array p1, v0, [Lˏⁱ/ˑﹳ;

    iput-object p1, p0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lˏⁱ/ⁱˊ;->ˉʿ:J

    iput-wide p1, p0, Lˏⁱ/ⁱˊ;->ᵔʾ:J

    const/4 p1, -0x1

    iput p1, p0, Lˏⁱ/ⁱˊ;->ﾞʻ:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˏⁱ/ⁱˊ;->ᵔᵢ:J

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    iget-boolean v0, p0, Lˏⁱ/ⁱˊ;->ʽ:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/ʼˎ;

    iget-object v1, p0, Lˏⁱ/ⁱˊ;->ˈ:Lˋⁱ/ﾞᴵ;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/ʼˎ;-><init>(Lˊﾞ/ᵔﹳ;Lʽᐧ/ˆʾ;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lˏⁱ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 23

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v7

    iget-wide v9, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    cmp-long v2, v9, v7

    if-ltz v2, :cond_0

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v7

    cmp-long v2, v9, v11

    if-lez v2, :cond_1

    :cond_0
    move-object/from16 v2, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v9, v7

    long-to-int v2, v9

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    goto :goto_1

    :goto_0
    iput-wide v9, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v6

    :goto_2
    iput-wide v4, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    if-eqz v2, :cond_3

    return v3

    :cond_3
    iget v2, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    const/4 v8, 0x6

    const/16 v10, 0x10

    const v11, 0x69766f6d

    const/4 v12, 0x2

    const/4 v13, 0x4

    const v14, 0x5453494c

    const/16 v15, 0x8

    const-wide/16 v16, 0x8

    move-wide/from16 v18, v4

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 p2, 0x3

    iget-object v9, v0, Lˏⁱ/ⁱˊ;->ⁱˊ:Lʻᴵ/ˆʾ;

    iget-object v7, v0, Lˏⁱ/ⁱˊ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_0
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v8

    iget-wide v12, v0, Lˏⁱ/ⁱˊ;->ᵔʾ:J

    cmp-long v2, v8, v12

    if-ltz v2, :cond_4

    const/4 v1, -0x1

    return v1

    :cond_4
    iget-object v2, v0, Lˏⁱ/ⁱˊ;->ٴﹶ:Lˏⁱ/ˑﹳ;

    if-eqz v2, :cond_a

    iget v5, v2, Lˏⁱ/ˑﹳ;->ᵔᵢ:I

    iget-object v7, v2, Lˏⁱ/ˑﹳ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-interface {v7, v1, v5, v6}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result v1

    sub-int/2addr v5, v1

    iput v5, v2, Lˏⁱ/ˑﹳ;->ᵔᵢ:I

    if-nez v5, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v6

    :goto_3
    if-eqz v1, :cond_8

    iget v5, v2, Lˏⁱ/ˑﹳ;->ᵎﹶ:I

    if-lez v5, :cond_7

    iget-object v7, v2, Lˏⁱ/ˑﹳ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    iget v5, v2, Lˏⁱ/ˑﹳ;->ʼˎ:I

    iget-wide v8, v2, Lˏⁱ/ˑﹳ;->ˑﹳ:J

    int-to-long v10, v5

    mul-long/2addr v8, v10

    iget v10, v2, Lˏⁱ/ˑﹳ;->ﾞᴵ:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    iget-object v10, v2, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    invoke-static {v10, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_6

    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v6

    :goto_4
    iget v11, v2, Lˏⁱ/ˑﹳ;->ᵎﹶ:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    :cond_7
    iget v5, v2, Lˏⁱ/ˑﹳ;->ʼˎ:I

    add-int/2addr v5, v3

    iput v5, v2, Lˏⁱ/ˑﹳ;->ʼˎ:I

    :cond_8
    if-eqz v1, :cond_9

    iput-object v4, v0, Lˏⁱ/ⁱˊ;->ٴﹶ:Lˏⁱ/ˑﹳ;

    :cond_9
    return v6

    :cond_a
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    and-long/2addr v8, v12

    cmp-long v2, v8, v12

    if-nez v2, :cond_b

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :cond_b
    iget-object v2, v7, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v6, v5}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v7, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v2

    if-ne v2, v14, :cond_d

    invoke-virtual {v7, v15}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v2

    if-ne v2, v11, :cond_c

    move v15, v5

    :cond_c
    invoke-interface {v1, v15}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    return v6

    :cond_d
    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v3

    const v5, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v5, :cond_e

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return v6

    :cond_e
    invoke-interface {v1, v15}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-object v5, v0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    array-length v7, v5

    move v8, v6

    :goto_5
    if-ge v8, v7, :cond_11

    aget-object v9, v5, v8

    iget v10, v9, Lˏⁱ/ˑﹳ;->ʽ:I

    if-eq v10, v2, :cond_10

    iget v10, v9, Lˏⁱ/ˑﹳ;->ˈ:I

    if-ne v10, v2, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    move-object v4, v9

    :cond_11
    if-nez v4, :cond_12

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return v6

    :cond_12
    iput v3, v4, Lˏⁱ/ˑﹳ;->ᵎﹶ:I

    iput v3, v4, Lˏⁱ/ˑﹳ;->ᵔᵢ:I

    iput-object v4, v0, Lˏⁱ/ⁱˊ;->ٴﹶ:Lˏⁱ/ˑﹳ;

    return v6

    :pswitch_1
    new-instance v2, Lᐧˎ/ﹳᐧ;

    iget v5, v0, Lˏⁱ/ⁱˊ;->ˉˆ:I

    invoke-direct {v2, v5}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v5, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v7, v0, Lˏⁱ/ⁱˊ;->ˉˆ:I

    invoke-interface {v1, v5, v6, v7}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    const-wide/16 v20, 0x0

    if-ge v1, v10, :cond_13

    goto :goto_8

    :cond_13
    iget v1, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-virtual {v2, v15}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v5

    int-to-long v14, v5

    iget-wide v4, v0, Lˏⁱ/ⁱˊ;->ˉʿ:J

    cmp-long v7, v14, v4

    if-lez v7, :cond_14

    goto :goto_7

    :cond_14
    add-long v20, v4, v16

    :goto_7
    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_8
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    if-lt v1, v10, :cond_1d

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v1

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v4

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v5

    int-to-long v14, v5

    add-long v14, v14, v20

    invoke-virtual {v2, v13}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    iget-object v5, v0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    array-length v7, v5

    move v9, v6

    :goto_9
    if-ge v9, v7, :cond_16

    aget-object v11, v5, v9

    iget v13, v11, Lˏⁱ/ˑﹳ;->ʽ:I

    if-eq v13, v1, :cond_17

    iget v13, v11, Lˏⁱ/ˑﹳ;->ˈ:I

    if-ne v13, v1, :cond_15

    goto :goto_a

    :cond_15
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_9

    :cond_16
    const/4 v11, 0x0

    :cond_17
    :goto_a
    if-nez v11, :cond_18

    :goto_b
    const/4 v13, 0x4

    goto :goto_8

    :cond_18
    and-int/lit8 v1, v4, 0x10

    if-ne v1, v10, :cond_19

    move v1, v3

    goto :goto_c

    :cond_19
    move v1, v6

    :goto_c
    iget-wide v4, v11, Lˏⁱ/ˑﹳ;->ﾞʻ:J

    cmp-long v4, v4, v18

    if-nez v4, :cond_1a

    iput-wide v14, v11, Lˏⁱ/ˑﹳ;->ﾞʻ:J

    :cond_1a
    if-eqz v1, :cond_1c

    iget v1, v11, Lˏⁱ/ˑﹳ;->ٴﹶ:I

    iget-object v4, v11, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    array-length v4, v4

    if-ne v1, v4, :cond_1b

    iget-object v1, v11, Lˏⁱ/ˑﹳ;->ˉʿ:[J

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v12

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v11, Lˏⁱ/ˑﹳ;->ˉʿ:[J

    iget-object v1, v11, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v12

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v11, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    :cond_1b
    iget-object v1, v11, Lˏⁱ/ˑﹳ;->ˉʿ:[J

    iget v4, v11, Lˏⁱ/ˑﹳ;->ٴﹶ:I

    aput-wide v14, v1, v4

    iget-object v1, v11, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    iget v5, v11, Lˏⁱ/ˑﹳ;->ˆʾ:I

    aput v5, v1, v4

    add-int/2addr v4, v3

    iput v4, v11, Lˏⁱ/ˑﹳ;->ٴﹶ:I

    :cond_1c
    iget v1, v11, Lˏⁱ/ˑﹳ;->ˆʾ:I

    add-int/2addr v1, v3

    iput v1, v11, Lˏⁱ/ˑﹳ;->ˆʾ:I

    goto :goto_b

    :cond_1d
    iget-object v1, v0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    array-length v2, v1

    move v4, v6

    :goto_d
    if-ge v4, v2, :cond_1f

    aget-object v5, v1, v4

    iget-object v7, v5, Lˏⁱ/ˑﹳ;->ˉʿ:[J

    iget v9, v5, Lˏⁱ/ˑﹳ;->ٴﹶ:I

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iput-object v7, v5, Lˏⁱ/ˑﹳ;->ˉʿ:[J

    iget-object v7, v5, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    iget v9, v5, Lˏⁱ/ˑﹳ;->ٴﹶ:I

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    iput-object v7, v5, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    iget v7, v5, Lˏⁱ/ˑﹳ;->ʽ:I

    const/high16 v9, 0x62770000

    and-int/2addr v7, v9

    if-ne v7, v9, :cond_1e

    iget-object v7, v5, Lˏⁱ/ˑﹳ;->ﹳٴ:Lˏⁱ/ˈ;

    iget v7, v7, Lˏⁱ/ˈ;->ﾞᴵ:I

    if-eqz v7, :cond_1e

    iget v7, v5, Lˏⁱ/ˑﹳ;->ٴﹶ:I

    if-lez v7, :cond_1e

    iput v7, v5, Lˏⁱ/ˑﹳ;->ﾞᴵ:I

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1f
    iput-boolean v3, v0, Lˏⁱ/ⁱˊ;->ʼᐧ:Z

    iget-object v1, v0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    array-length v1, v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lˏⁱ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v2, Lˊﾞ/יـ;

    iget-wide v3, v0, Lˏⁱ/ⁱˊ;->ᵔᵢ:J

    invoke-direct {v2, v3, v4}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v1, v2}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    goto :goto_e

    :cond_20
    iget-object v1, v0, Lˏⁱ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v2, Lˊﾞ/יـ;

    iget-wide v3, v0, Lˏⁱ/ⁱˊ;->ᵔᵢ:J

    invoke-direct {v2, v0, v3, v4, v12}, Lˊﾞ/יـ;-><init>(Ljava/lang/Object;JI)V

    invoke-interface {v1, v2}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    :goto_e
    iput v8, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    iget-wide v1, v0, Lˏⁱ/ⁱˊ;->ˉʿ:J

    iput-wide v1, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return v6

    :pswitch_2
    iget-object v2, v7, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v6, v15}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v7, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v2

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v3

    const v4, 0x31786469

    if-ne v2, v4, :cond_21

    const/4 v1, 0x5

    iput v1, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    iput v3, v0, Lˏⁱ/ⁱˊ;->ˉˆ:I

    return v6

    :cond_21
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return v6

    :pswitch_3
    iget-wide v12, v0, Lˏⁱ/ⁱˊ;->ˉʿ:J

    cmp-long v2, v12, v18

    if-eqz v2, :cond_22

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v12

    iget-wide v3, v0, Lˏⁱ/ⁱˊ;->ˉʿ:J

    cmp-long v12, v12, v3

    if-eqz v12, :cond_22

    iput-wide v3, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return v6

    :cond_22
    iget-object v3, v7, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v3, v6, v5}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    invoke-virtual {v7, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v3

    iput v3, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v3

    iput v3, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    iput v6, v9, Lʻᴵ/ˆʾ;->ʽ:I

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v3

    iget v4, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    const v7, 0x46464952

    if-ne v4, v7, :cond_23

    invoke-interface {v1, v5}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    return v6

    :cond_23
    if-ne v4, v14, :cond_27

    if-eq v3, v11, :cond_24

    goto :goto_f

    :cond_24
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v3

    iput-wide v3, v0, Lˏⁱ/ⁱˊ;->ˉʿ:J

    iget v5, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    int-to-long v11, v5

    add-long/2addr v3, v11

    add-long v3, v3, v16

    iput-wide v3, v0, Lˏⁱ/ⁱˊ;->ᵔʾ:J

    iget-boolean v3, v0, Lˏⁱ/ⁱˊ;->ʼᐧ:Z

    if-nez v3, :cond_26

    iget-object v3, v0, Lˏⁱ/ⁱˊ;->ᵎﹶ:Lˏⁱ/ʽ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Lˏⁱ/ʽ;->ⁱˊ:I

    and-int/2addr v3, v10

    if-ne v3, v10, :cond_25

    const/4 v3, 0x4

    iput v3, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    iget-wide v1, v0, Lˏⁱ/ⁱˊ;->ᵔʾ:J

    iput-wide v1, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return v6

    :cond_25
    iget-object v3, v0, Lˏⁱ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v4, Lˊﾞ/יـ;

    iget-wide v9, v0, Lˏⁱ/ⁱˊ;->ᵔᵢ:J

    invoke-direct {v4, v9, v10}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v3, v4}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lˏⁱ/ⁱˊ;->ʼᐧ:Z

    :cond_26
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    iput v8, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    return v6

    :cond_27
    :goto_f
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v1

    iget v3, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    return v6

    :pswitch_4
    iget v3, v0, Lˏⁱ/ⁱˊ;->ﾞʻ:I

    const/16 v22, 0x4

    add-int/lit8 v3, v3, -0x4

    new-instance v4, Lᐧˎ/ﹳᐧ;

    invoke-direct {v4, v3}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v5, v4, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v5, v6, v3}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    const v1, 0x6c726468

    invoke-static {v1, v4}, Lˏⁱ/ﾞᴵ;->ʽ(ILᐧˎ/ﹳᐧ;)Lˏⁱ/ﾞᴵ;

    move-result-object v3

    iget v4, v3, Lˏⁱ/ﾞᴵ;->ⁱˊ:I

    if-ne v4, v1, :cond_32

    const-class v1, Lˏⁱ/ʽ;

    invoke-virtual {v3, v1}, Lˏⁱ/ﾞᴵ;->ⁱˊ(Ljava/lang/Class;)Lˏⁱ/ﹳٴ;

    move-result-object v1

    check-cast v1, Lˏⁱ/ʽ;

    if-eqz v1, :cond_31

    iput-object v1, v0, Lˏⁱ/ⁱˊ;->ᵎﹶ:Lˏⁱ/ʽ;

    iget v4, v1, Lˏⁱ/ʽ;->ʽ:I

    int-to-long v4, v4

    iget v1, v1, Lˏⁱ/ʽ;->ﹳٴ:I

    int-to-long v7, v1

    mul-long/2addr v4, v7

    iput-wide v4, v0, Lˏⁱ/ⁱˊ;->ᵔᵢ:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v3, Lˏⁱ/ﾞᴵ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v3, v6}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object v3

    move v4, v6

    :cond_28
    :goto_10
    invoke-virtual {v3}, Lʼʻ/ٴᵢ;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v3}, Lʼʻ/ٴᵢ;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˏⁱ/ﹳٴ;

    invoke-interface {v5}, Lˏⁱ/ﹳٴ;->ﹳٴ()I

    move-result v7

    const v8, 0x6c727473

    if-ne v7, v8, :cond_28

    check-cast v5, Lˏⁱ/ﾞᴵ;

    add-int/lit8 v7, v4, 0x1

    const-class v8, Lˏⁱ/ˈ;

    invoke-virtual {v5, v8}, Lˏⁱ/ﾞᴵ;->ⁱˊ(Ljava/lang/Class;)Lˏⁱ/ﹳٴ;

    move-result-object v8

    check-cast v8, Lˏⁱ/ˈ;

    const-class v9, Lˏⁱ/ᵎﹶ;

    invoke-virtual {v5, v9}, Lˏⁱ/ﾞᴵ;->ⁱˊ(Ljava/lang/Class;)Lˏⁱ/ﹳٴ;

    move-result-object v9

    check-cast v9, Lˏⁱ/ᵎﹶ;

    const-string v10, "AviExtractor"

    if-nez v8, :cond_2a

    const-string v4, "Missing Stream Header"

    invoke-static {v10, v4}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_11
    const/4 v9, 0x0

    goto :goto_12

    :cond_2a
    if-nez v9, :cond_2b

    const-string v4, "Missing Stream Format"

    invoke-static {v10, v4}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_2b
    iget v10, v8, Lˏⁱ/ˈ;->ˈ:I

    int-to-long v13, v10

    iget v10, v8, Lˏⁱ/ˈ;->ⁱˊ:I

    int-to-long v10, v10

    const-wide/32 v15, 0xf4240

    mul-long/2addr v15, v10

    iget v10, v8, Lˏⁱ/ˈ;->ʽ:I

    int-to-long v10, v10

    sget-object v17, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v17, v10

    invoke-static/range {v13 .. v19}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    iget-object v9, v9, Lˏⁱ/ᵎﹶ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v9}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    iget v14, v8, Lˏⁱ/ˈ;->ˑﹳ:I

    if-eqz v14, :cond_2c

    iput v14, v13, Lʽⁱ/ᵔﹳ;->ᵔʾ:I

    :cond_2c
    const-class v14, Lˏⁱ/ᵔᵢ;

    invoke-virtual {v5, v14}, Lˏⁱ/ﾞᴵ;->ⁱˊ(Ljava/lang/Class;)Lˏⁱ/ﹳٴ;

    move-result-object v5

    check-cast v5, Lˏⁱ/ᵔᵢ;

    if-eqz v5, :cond_2d

    iget-object v5, v5, Lˏⁱ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iput-object v5, v13, Lʽⁱ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    :cond_2d
    iget-object v5, v9, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x1

    if-eq v5, v2, :cond_2e

    if-ne v5, v12, :cond_29

    :cond_2e
    iget-object v9, v0, Lˏⁱ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v9, v4, v5}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v5

    invoke-static {v13, v5}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iget-wide v13, v0, Lˏⁱ/ⁱˊ;->ᵔᵢ:J

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v0, Lˏⁱ/ⁱˊ;->ᵔᵢ:J

    new-instance v9, Lˏⁱ/ˑﹳ;

    invoke-direct {v9, v4, v8, v5}, Lˏⁱ/ˑﹳ;-><init>(ILˏⁱ/ˈ;Lˊﾞ/ٴᵢ;)V

    :goto_12
    if-eqz v9, :cond_2f

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    move v4, v7

    goto/16 :goto_10

    :cond_30
    new-array v2, v6, [Lˏⁱ/ˑﹳ;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lˏⁱ/ˑﹳ;

    iput-object v1, v0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    iget-object v1, v0, Lˏⁱ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    move/from16 v1, p2

    iput v1, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    return v6

    :cond_31
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_32
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected header list type "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :pswitch_5
    iget-object v2, v7, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v6, v5}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v7, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v1

    iput v1, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v1

    iput v1, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    iput v6, v9, Lʻᴵ/ˆʾ;->ʽ:I

    iget v1, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    if-ne v1, v14, :cond_34

    invoke-virtual {v7}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v1

    iput v1, v9, Lʻᴵ/ˆʾ;->ʽ:I

    const v2, 0x6c726468

    if-ne v1, v2, :cond_33

    iget v1, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    iput v1, v0, Lˏⁱ/ⁱˊ;->ﾞʻ:I

    iput v12, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    return v6

    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hdrl expected, found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Lʻᴵ/ˆʾ;->ʽ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_34
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LIST expected, found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :pswitch_6
    move-object v3, v4

    invoke-virtual/range {p0 .. p1}, Lˏⁱ/ⁱˊ;->ﾞᴵ(Lˊﾞ/ʼᐧ;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1, v5}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    const/4 v2, 0x1

    iput v2, v0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    return v6

    :cond_35
    const-string v1, "AVI Header List not found"

    invoke-static {v3, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 5

    .prologue
    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lˏⁱ/ⁱˊ;->ˆʾ:J

    const/4 p3, 0x0

    iput-object p3, p0, Lˏⁱ/ⁱˊ;->ٴﹶ:Lˏⁱ/ˑﹳ;

    iget-object p3, p0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    iget v3, v2, Lˏⁱ/ˑﹳ;->ٴﹶ:I

    if-nez v3, :cond_0

    iput v0, v2, Lˏⁱ/ˑﹳ;->ʼˎ:I

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lˏⁱ/ˑﹳ;->ˉʿ:[J

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result v3

    iget-object v4, v2, Lˏⁱ/ˑﹳ;->ᵔʾ:[I

    aget v3, v4, v3

    iput v3, v2, Lˏⁱ/ˑﹳ;->ʼˎ:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_3

    iget-object p1, p0, Lˏⁱ/ⁱˊ;->ʼˎ:[Lˏⁱ/ˑﹳ;

    array-length p1, p1

    if-nez p1, :cond_2

    iput v0, p0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    return-void

    :cond_2
    const/4 p1, 0x3

    iput p1, p0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    return-void

    :cond_3
    const/4 p1, 0x6

    iput p1, p0, Lˏⁱ/ⁱˊ;->ˑﹳ:I

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˏⁱ/ⁱˊ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v0, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result p1

    const v1, 0x46464952

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v3
.end method
