.class public final Lיי/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:Lˆˑ/ﹳٴ;

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ˆʾ:Lˊﾞ/ᵔﹳ;

.field public final ˈ:Lיי/ʼʼ;

.field public ˑﹳ:Z

.field public ٴﹶ:Z

.field public ᵎﹶ:Z

.field public ᵔᵢ:J

.field public final ⁱˊ:Landroid/util/SparseArray;

.field public final ﹳٴ:Lᐧˎ/ـˆ;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lᐧˎ/ـˆ;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lᐧˎ/ـˆ;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lיי/ʾˋ;->ﹳٴ:Lᐧˎ/ـˆ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lיי/ʾˋ;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lיי/ʾˋ;->ⁱˊ:Landroid/util/SparseArray;

    new-instance v0, Lיי/ʼʼ;

    invoke-direct {v0}, Lיי/ʼʼ;-><init>()V

    iput-object v0, p0, Lיי/ʾˋ;->ˈ:Lיי/ʼʼ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 0

    iput-object p1, p0, Lיי/ʾˋ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 26

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lיי/ʾˋ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v13

    const-wide/16 v18, -0x1

    cmp-long v3, v13, v18

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v7, 0x1ba

    iget-object v8, v0, Lיי/ʾˋ;->ˈ:Lיי/ʼʼ;

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_a

    iget-boolean v12, v8, Lיי/ʼʼ;->ʽ:Z

    if-nez v12, :cond_a

    iget-object v3, v8, Lיי/ʼʼ;->ﹳٴ:Lᐧˎ/ـˆ;

    iget-object v12, v8, Lיי/ʼʼ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    iget-boolean v13, v8, Lיי/ʼʼ;->ˑﹳ:Z

    const-wide/16 v14, 0x4e20

    if-nez v13, :cond_3

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    int-to-long v14, v13

    sub-long/2addr v3, v14

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v14

    cmp-long v14, v14, v3

    if-eqz v14, :cond_0

    iput-wide v3, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    return v10

    :cond_0
    invoke-virtual {v12, v13}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-object v2, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v11, v13}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    iget v1, v12, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v2, v12, Lᐧˎ/ﹳᐧ;->ʽ:I

    sub-int/2addr v2, v9

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v3, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v2, v3}, Lיי/ʼʼ;->ⁱˊ(I[B)I

    move-result v3

    if-ne v3, v7, :cond_1

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {v12, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-static {v12}, Lיי/ʼʼ;->ʽ(Lᐧˎ/ﹳᐧ;)J

    move-result-wide v3

    cmp-long v9, v3, v5

    if-eqz v9, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-wide v5, v8, Lיי/ʼʼ;->ᵎﹶ:J

    iput-boolean v10, v8, Lיי/ʼʼ;->ˑﹳ:Z

    return v11

    :cond_3
    move-wide/from16 v20, v5

    const/16 v16, 0x3

    iget-wide v4, v8, Lיי/ʼʼ;->ᵎﹶ:J

    cmp-long v4, v4, v20

    if-nez v4, :cond_4

    invoke-virtual {v8, v1}, Lיי/ʼʼ;->ﹳٴ(Lˊﾞ/ʼᐧ;)V

    return v11

    :cond_4
    iget-boolean v4, v8, Lיי/ʼʼ;->ˈ:Z

    if-nez v4, :cond_8

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v4

    int-to-long v13, v11

    cmp-long v4, v4, v13

    if-eqz v4, :cond_5

    iput-wide v13, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    return v10

    :cond_5
    invoke-virtual {v12, v3}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-object v2, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v11, v3}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    iget v1, v12, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v2, v12, Lᐧˎ/ﹳᐧ;->ʽ:I

    :goto_2
    add-int/lit8 v3, v2, -0x3

    if-ge v1, v3, :cond_7

    iget-object v3, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v1, v3}, Lיי/ʼʼ;->ⁱˊ(I[B)I

    move-result v3

    if-ne v3, v7, :cond_6

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v12, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-static {v12}, Lיי/ʼʼ;->ʽ(Lᐧˎ/ﹳᐧ;)J

    move-result-wide v3

    cmp-long v5, v3, v20

    if-eqz v5, :cond_6

    move-wide v5, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move-wide/from16 v5, v20

    :goto_3
    iput-wide v5, v8, Lיי/ʼʼ;->ﾞᴵ:J

    iput-boolean v10, v8, Lיי/ʼʼ;->ˈ:Z

    return v11

    :cond_8
    iget-wide v4, v8, Lיי/ʼʼ;->ﾞᴵ:J

    cmp-long v2, v4, v20

    if-nez v2, :cond_9

    invoke-virtual {v8, v1}, Lיי/ʼʼ;->ﹳٴ(Lˊﾞ/ʼᐧ;)V

    return v11

    :cond_9
    invoke-virtual {v3, v4, v5}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v4

    iget-wide v6, v8, Lיי/ʼʼ;->ᵎﹶ:J

    invoke-virtual {v3, v6, v7}, Lᐧˎ/ـˆ;->ʽ(J)J

    move-result-wide v2

    sub-long/2addr v2, v4

    iput-wide v2, v8, Lיי/ʼʼ;->ᵔᵢ:J

    invoke-virtual {v8, v1}, Lיי/ʼʼ;->ﹳٴ(Lˊﾞ/ʼᐧ;)V

    return v11

    :cond_a
    move-wide/from16 v20, v5

    const/16 v16, 0x3

    iget-boolean v4, v0, Lיי/ʾˋ;->ٴﹶ:Z

    if-nez v4, :cond_c

    iput-boolean v10, v0, Lיי/ʾˋ;->ٴﹶ:Z

    iget-wide v4, v8, Lיי/ʼʼ;->ᵔᵢ:J

    cmp-long v6, v4, v20

    if-eqz v6, :cond_b

    move-wide v5, v4

    new-instance v4, Lˆˑ/ﹳٴ;

    iget-object v8, v8, Lיי/ʼʼ;->ﹳٴ:Lᐧˎ/ـˆ;

    move-wide/from16 v20, v5

    new-instance v5, Lˋⁱ/ﾞᴵ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lﹳʽ/ˊʻ;

    invoke-direct {v6, v8}, Lﹳʽ/ˊʻ;-><init>(Lᐧˎ/ـˆ;)V

    const-wide/16 v22, 0x1

    add-long v22, v20, v22

    move/from16 v8, v16

    const-wide/16 v15, 0xbc

    const/16 v17, 0x3e8

    move/from16 v24, v11

    const-wide/16 v11, 0x0

    move/from16 v25, v3

    move v3, v9

    move-wide/from16 v7, v20

    move-wide/from16 v9, v22

    invoke-direct/range {v4 .. v17}, Lˆˑ/ﹳٴ;-><init>(Lˊﾞ/ᵎﹶ;Lˊﾞ/ʼˎ;JJJJJI)V

    iput-object v4, v0, Lיי/ʾˋ;->ʼˎ:Lˆˑ/ﹳٴ;

    iget-object v5, v0, Lיי/ʾˋ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    iget-object v4, v4, Lˆˑ/ﹳٴ;->ﹳٴ:Lˊﾞ/ˑﹳ;

    invoke-interface {v5, v4}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    goto :goto_4

    :cond_b
    move/from16 v25, v3

    move-wide v5, v4

    move v3, v9

    iget-object v4, v0, Lיי/ʾˋ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    new-instance v7, Lˊﾞ/יـ;

    invoke-direct {v7, v5, v6}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v4, v7}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    goto :goto_4

    :cond_c
    move/from16 v25, v3

    move v3, v9

    :goto_4
    iget-object v4, v0, Lיי/ʾˋ;->ʼˎ:Lˆˑ/ﹳٴ;

    if-eqz v4, :cond_d

    iget-object v5, v4, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    if-eqz v5, :cond_d

    invoke-virtual {v4, v1, v2}, Lˆˑ/ﹳٴ;->ⁱˊ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result v1

    return v1

    :cond_d
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    if-eqz v25, :cond_e

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v4

    sub-long/2addr v13, v4

    goto :goto_5

    :cond_e
    move-wide/from16 v13, v18

    :goto_5
    cmp-long v2, v13, v18

    if-eqz v2, :cond_f

    const-wide/16 v4, 0x4

    cmp-long v2, v13, v4

    if-gez v2, :cond_f

    goto :goto_6

    :cond_f
    iget-object v2, v0, Lיי/ʾˋ;->ʽ:Lᐧˎ/ﹳᐧ;

    iget-object v4, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v3, v5}, Lˊﾞ/ʼᐧ;->ʻٴ([BIIZ)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v4

    const/16 v7, 0x1b9

    if-ne v4, v7, :cond_11

    :goto_6
    const/4 v1, -0x1

    return v1

    :cond_11
    const/16 v7, 0x1ba

    if-ne v4, v7, :cond_12

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v4, 0xa

    invoke-interface {v1, v3, v6, v4}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    return v6

    :cond_12
    const/16 v7, 0x1bb

    const/4 v8, 0x2

    const/4 v9, 0x6

    if-ne v4, v7, :cond_13

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v3, v6, v8}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v2

    add-int/2addr v2, v9

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    return v6

    :cond_13
    and-int/lit16 v7, v4, -0x100

    const/16 v10, 0x8

    shr-int/2addr v7, v10

    if-eq v7, v5, :cond_14

    invoke-interface {v1, v5}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    return v6

    :cond_14
    and-int/lit16 v7, v4, 0xff

    iget-object v11, v0, Lיי/ʾˋ;->ⁱˊ:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lיי/ᵢˏ;

    iget-boolean v13, v0, Lיי/ʾˋ;->ˑﹳ:Z

    if-nez v13, :cond_1a

    if-nez v12, :cond_18

    const/16 v13, 0xbd

    const-string v14, "video/mp2p"

    if-ne v7, v13, :cond_15

    new-instance v4, Lיי/ⁱˊ;

    invoke-direct {v4, v14}, Lיי/ⁱˊ;-><init>(Ljava/lang/String;)V

    iput-boolean v5, v0, Lיי/ʾˋ;->ﾞᴵ:Z

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Lיי/ʾˋ;->ᵔᵢ:J

    goto :goto_7

    :cond_15
    and-int/lit16 v13, v4, 0xe0

    const/16 v15, 0xc0

    const/4 v3, 0x0

    if-ne v13, v15, :cond_16

    new-instance v4, Lיי/ʽﹳ;

    invoke-direct {v4, v6, v3, v14}, Lיי/ʽﹳ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, v0, Lיי/ʾˋ;->ﾞᴵ:Z

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Lיי/ʾˋ;->ᵔᵢ:J

    goto :goto_7

    :cond_16
    and-int/lit16 v4, v4, 0xf0

    const/16 v13, 0xe0

    if-ne v4, v13, :cond_17

    new-instance v4, Lיי/ٴﹶ;

    invoke-direct {v4, v3, v14}, Lיי/ٴﹶ;-><init>(Lˑי/ʽ;Ljava/lang/String;)V

    iput-boolean v5, v0, Lיי/ʾˋ;->ᵎﹶ:Z

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Lיי/ʾˋ;->ᵔᵢ:J

    goto :goto_7

    :cond_17
    move-object v4, v3

    :goto_7
    if-eqz v4, :cond_18

    new-instance v3, Lיי/ٴᵢ;

    const/16 v12, 0x100

    invoke-direct {v3, v7, v12}, Lיי/ٴᵢ;-><init>(II)V

    iget-object v12, v0, Lיי/ʾˋ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v4, v12, v3}, Lיי/ʼˎ;->ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V

    new-instance v12, Lיי/ᵢˏ;

    iget-object v3, v0, Lיי/ʾˋ;->ﹳٴ:Lᐧˎ/ـˆ;

    invoke-direct {v12, v4, v3}, Lיי/ᵢˏ;-><init>(Lיי/ʼˎ;Lᐧˎ/ـˆ;)V

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_18
    iget-boolean v3, v0, Lיי/ʾˋ;->ﾞᴵ:Z

    if-eqz v3, :cond_19

    iget-boolean v3, v0, Lיי/ʾˋ;->ᵎﹶ:Z

    if-eqz v3, :cond_19

    iget-wide v3, v0, Lיי/ʾˋ;->ᵔᵢ:J

    const-wide/16 v13, 0x2000

    add-long/2addr v3, v13

    goto :goto_8

    :cond_19
    const-wide/32 v3, 0x100000

    :goto_8
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v13

    cmp-long v3, v13, v3

    if-lez v3, :cond_1a

    iput-boolean v5, v0, Lיי/ʾˋ;->ˑﹳ:Z

    iget-object v3, v0, Lיי/ʾˋ;->ˆʾ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v3}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    :cond_1a
    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v3, v6, v8}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v3

    add-int/2addr v3, v9

    if-nez v12, :cond_1b

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    return v6

    :cond_1b
    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v4, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v4, v6, v3}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    invoke-virtual {v2, v9}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    iget-object v1, v12, Lיי/ᵢˏ;->ﹳٴ:Lיי/ʼˎ;

    iget-object v3, v12, Lיי/ᵢˏ;->ʽ:Lʻᴵ/ʻٴ;

    iget-object v4, v3, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    const/4 v8, 0x3

    invoke-virtual {v2, v4, v6, v8}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    invoke-virtual {v3, v6}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    invoke-virtual {v3, v10}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v3}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v4

    iput-boolean v4, v12, Lיי/ᵢˏ;->ˈ:Z

    invoke-virtual {v3}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v4

    iput-boolean v4, v12, Lיי/ᵢˏ;->ˑﹳ:Z

    invoke-virtual {v3, v9}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v3, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v4

    iget-object v7, v3, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-virtual {v2, v7, v6, v4}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    invoke-virtual {v3, v6}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    iget-object v4, v12, Lיי/ᵢˏ;->ⁱˊ:Lᐧˎ/ـˆ;

    const-wide/16 v7, 0x0

    iput-wide v7, v12, Lיי/ᵢˏ;->ᵎﹶ:J

    iget-boolean v7, v12, Lיי/ᵢˏ;->ˈ:Z

    if-eqz v7, :cond_1d

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    int-to-long v7, v7

    const/16 v9, 0x1e

    shl-long/2addr v7, v9

    invoke-virtual {v3, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/16 v10, 0xf

    invoke-virtual {v3, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v11

    shl-int/2addr v11, v10

    int-to-long v13, v11

    or-long/2addr v7, v13

    invoke-virtual {v3, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v3, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v11

    int-to-long v13, v11

    or-long/2addr v7, v13

    invoke-virtual {v3, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    iget-boolean v11, v12, Lיי/ᵢˏ;->ﾞᴵ:Z

    if-nez v11, :cond_1c

    iget-boolean v11, v12, Lיי/ᵢˏ;->ˑﹳ:Z

    if-eqz v11, :cond_1c

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v11

    int-to-long v13, v11

    shl-long/2addr v13, v9

    invoke-virtual {v3, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v3, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v9

    shl-int/2addr v9, v10

    move-wide/from16 p1, v7

    int-to-long v6, v9

    or-long/2addr v6, v13

    invoke-virtual {v3, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v3, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    invoke-virtual {v3, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v4, v6, v7}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    iput-boolean v5, v12, Lיי/ᵢˏ;->ﾞᴵ:Z

    move-wide/from16 v5, p1

    goto :goto_9

    :cond_1c
    move-wide v5, v7

    :goto_9
    invoke-virtual {v4, v5, v6}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v3

    iput-wide v3, v12, Lיי/ᵢˏ;->ᵎﹶ:J

    :cond_1d
    iget-wide v3, v12, Lיי/ᵢˏ;->ᵎﹶ:J

    const/4 v7, 0x4

    invoke-interface {v1, v7, v3, v4}, Lיי/ʼˎ;->ˑﹳ(IJ)V

    invoke-interface {v1, v2}, Lיי/ʼˎ;->ʽ(Lᐧˎ/ﹳᐧ;)V

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lיי/ʼˎ;->ˈ(Z)V

    iget-object v1, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    return v6
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 6

    .prologue
    iget-object p1, p0, Lיי/ʾˋ;->ﹳٴ:Lᐧˎ/ـˆ;

    invoke-virtual {p1}, Lᐧˎ/ـˆ;->ˑﹳ()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lᐧˎ/ـˆ;->ˈ()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p2, v4, v2

    if-eqz p2, :cond_1

    cmp-long p2, v4, p3

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move p2, v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1, p3, p4}, Lᐧˎ/ـˆ;->ᵎﹶ(J)V

    :cond_3
    iget-object p1, p0, Lיי/ʾˋ;->ʼˎ:Lˆˑ/ﹳٴ;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p3, p4}, Lˆˑ/ﹳٴ;->ˈ(J)V

    :cond_4
    move p1, v1

    :goto_2
    iget-object p2, p0, Lיי/ʾˋ;->ⁱˊ:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_5

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lיי/ᵢˏ;

    iput-boolean v1, p2, Lיי/ᵢˏ;->ﾞᴵ:Z

    iget-object p2, p2, Lיי/ᵢˏ;->ﹳٴ:Lיי/ʼˎ;

    invoke-interface {p2}, Lיי/ʼˎ;->ⁱˊ()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 9

    .prologue
    const/16 v0, 0xe

    new-array v1, v0, [B

    check-cast p1, Lˊﾞ/ﾞʻ;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    goto :goto_0

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0, v2}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    invoke-virtual {p1, v1, v2, v5, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    return v3

    :cond_6
    :goto_0
    return v2
.end method
