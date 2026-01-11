.class public final Lˏʻ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʽ:Z

.field public ⁱˊ:Lˏʻ/ᵔᵢ;

.field public ﹳٴ:Lˊﾞ/ᵔﹳ;


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 0

    iput-object p1, p0, Lˏʻ/ˈ;->ﹳٴ:Lˊﾞ/ᵔﹳ;

    return-void
.end method

.method public final ʽ(Lˊﾞ/ʼᐧ;)Z
    .locals 8

    .prologue
    new-instance v0, Landroidx/leanback/widget/ـˆ;

    invoke-direct {v0}, Landroidx/leanback/widget/ـˆ;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/ـˆ;->ˈ(Lˊﾞ/ʼᐧ;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v0, v0, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lᐧˎ/ﹳᐧ;

    invoke-direct {v2, v0}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v4, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {p1, v4, v3, v0}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Lˏʻ/ʽ;

    invoke-direct {p1}, Lˏʻ/ᵔᵢ;-><init>()V

    iput-object p1, p0, Lˏʻ/ˈ;->ⁱˊ:Lˏʻ/ᵔᵢ;

    return v1

    :cond_1
    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, Lˊﾞ/ﹳٴ;->ʾˋ(ILᐧˎ/ﹳᐧ;Z)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    new-instance p1, Lˏʻ/ʼˎ;

    invoke-direct {p1}, Lˏʻ/ᵔᵢ;-><init>()V

    iput-object p1, p0, Lˏʻ/ˈ;->ⁱˊ:Lˏʻ/ᵔᵢ;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    sget-object p1, Lˏʻ/ᵎﹶ;->ˉˆ:[B

    invoke-static {v2, p1}, Lˏʻ/ᵎﹶ;->ˑﹳ(Lᐧˎ/ﹳᐧ;[B)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lˏʻ/ᵎﹶ;

    invoke-direct {p1}, Lˏʻ/ᵔᵢ;-><init>()V

    iput-object p1, p0, Lˏʻ/ˈ;->ⁱˊ:Lˏʻ/ᵔᵢ;

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v3
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 20

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lˏʻ/ˈ;->ﹳٴ:Lˊﾞ/ᵔﹳ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v2, v0, Lˏʻ/ˈ;->ⁱˊ:Lˏʻ/ᵔᵢ;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Lˏʻ/ˈ;->ʽ(Lˊﾞ/ʼᐧ;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to determine bitstream type"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    iget-boolean v2, v0, Lˏʻ/ˈ;->ʽ:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Lˏʻ/ˈ;->ﹳٴ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v2, v3, v4}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v2

    iget-object v5, v0, Lˏʻ/ˈ;->ﹳٴ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v5}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    iget-object v5, v0, Lˏʻ/ˈ;->ⁱˊ:Lˏʻ/ᵔᵢ;

    iget-object v6, v0, Lˏʻ/ˈ;->ﹳٴ:Lˊﾞ/ᵔﹳ;

    iput-object v6, v5, Lˏʻ/ᵔᵢ;->ʽ:Lˊﾞ/ᵔﹳ;

    iput-object v2, v5, Lˏʻ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v5, v4}, Lˏʻ/ᵔᵢ;->ˈ(Z)V

    iput-boolean v4, v0, Lˏʻ/ˈ;->ʽ:Z

    :cond_2
    iget-object v8, v0, Lˏʻ/ˈ;->ⁱˊ:Lˏʻ/ᵔᵢ;

    iget-object v2, v8, Lˏʻ/ᵔᵢ;->ﹳٴ:Lˏʻ/ˑﹳ;

    iget-object v5, v8, Lˏʻ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    sget-object v5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget v5, v8, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    const-wide/16 v6, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v5, :cond_c

    if-eq v5, v4, :cond_b

    if-eq v5, v11, :cond_4

    if-ne v5, v10, :cond_3

    return v9

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_4
    iget-object v5, v8, Lˏʻ/ᵔᵢ;->ˈ:Lˏʻ/ﾞᴵ;

    invoke-interface {v5, v1}, Lˏʻ/ﾞᴵ;->ٴﹶ(Lˊﾞ/ʼᐧ;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-ltz v5, :cond_5

    move-object/from16 v5, p2

    iput-wide v11, v5, Lʽⁱ/ˏי;->ﹳٴ:J

    return v4

    :cond_5
    cmp-long v5, v11, v6

    if-gez v5, :cond_6

    const-wide/16 v15, 0x2

    add-long/2addr v11, v15

    neg-long v11, v11

    invoke-virtual {v8, v11, v12}, Lˏʻ/ᵔᵢ;->ﹳٴ(J)V

    :cond_6
    iget-boolean v5, v8, Lˏʻ/ᵔᵢ;->ﾞʻ:Z

    if-nez v5, :cond_7

    iget-object v5, v8, Lˏʻ/ᵔᵢ;->ˈ:Lˏʻ/ﾞᴵ;

    invoke-interface {v5}, Lˏʻ/ﾞᴵ;->ʽ()Lˊﾞ/ʾˋ;

    move-result-object v5

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v11, v8, Lˏʻ/ᵔᵢ;->ʽ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v11, v5}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iget-object v11, v8, Lˏʻ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-interface {v5}, Lˊﾞ/ʾˋ;->ˉʿ()J

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v4, v8, Lˏʻ/ᵔᵢ;->ﾞʻ:Z

    :cond_7
    iget-wide v4, v8, Lˏʻ/ᵔᵢ;->ٴﹶ:J

    cmp-long v4, v4, v13

    if-gtz v4, :cond_9

    invoke-virtual {v2, v1}, Lˏʻ/ˑﹳ;->ⁱˊ(Lˊﾞ/ʼᐧ;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    iput v10, v8, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    return v9

    :cond_9
    :goto_1
    iput-wide v13, v8, Lˏʻ/ᵔᵢ;->ٴﹶ:J

    iget-object v1, v2, Lˏʻ/ˑﹳ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v8, v1}, Lˏʻ/ᵔᵢ;->ⁱˊ(Lᐧˎ/ﹳᐧ;)J

    move-result-wide v4

    cmp-long v2, v4, v13

    if-ltz v2, :cond_a

    iget-wide v9, v8, Lˏʻ/ᵔᵢ;->ᵎﹶ:J

    add-long v11, v9, v4

    iget-wide v13, v8, Lˏʻ/ᵔᵢ;->ˑﹳ:J

    cmp-long v2, v11, v13

    if-ltz v2, :cond_a

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    iget v2, v8, Lˏʻ/ᵔᵢ;->ʼˎ:I

    int-to-long v11, v2

    div-long v14, v9, v11

    iget-object v2, v8, Lˏʻ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    iget v9, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-interface {v2, v9, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v13, v8, Lˏʻ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    iget v1, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    move/from16 v17, v1

    invoke-interface/range {v13 .. v19}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput-wide v6, v8, Lˏʻ/ᵔᵢ;->ˑﹳ:J

    :cond_a
    iget-wide v1, v8, Lˏʻ/ᵔᵢ;->ᵎﹶ:J

    add-long/2addr v1, v4

    iput-wide v1, v8, Lˏʻ/ᵔᵢ;->ᵎﹶ:J

    return v3

    :cond_b
    iget-wide v4, v8, Lˏʻ/ᵔᵢ;->ﾞᴵ:J

    long-to-int v2, v4

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    iput v11, v8, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    return v3

    :cond_c
    :goto_2
    invoke-virtual {v2, v1}, Lˏʻ/ˑﹳ;->ⁱˊ(Lˊﾞ/ʼᐧ;)Z

    move-result v5

    iget-object v12, v2, Lˏʻ/ˑﹳ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    if-nez v5, :cond_d

    iput v10, v8, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    return v9

    :cond_d
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v13

    move-wide v15, v6

    iget-wide v6, v8, Lˏʻ/ᵔᵢ;->ﾞᴵ:J

    sub-long/2addr v13, v6

    iput-wide v13, v8, Lˏʻ/ᵔᵢ;->ٴﹶ:J

    iget-object v5, v8, Lˏʻ/ᵔᵢ;->ˆʾ:Lﹶﾞ/ⁱי;

    invoke-virtual {v8, v12, v6, v7, v5}, Lˏʻ/ᵔᵢ;->ʽ(Lᐧˎ/ﹳᐧ;JLﹶﾞ/ⁱי;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v5

    iput-wide v5, v8, Lˏʻ/ᵔᵢ;->ﾞᴵ:J

    move-wide v6, v15

    goto :goto_2

    :cond_e
    iget-object v5, v8, Lˏʻ/ᵔᵢ;->ˆʾ:Lﹶﾞ/ⁱי;

    iget-object v5, v5, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lʽⁱ/ﹳᐧ;

    iget v6, v5, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iput v6, v8, Lˏʻ/ᵔᵢ;->ʼˎ:I

    iget-boolean v6, v8, Lˏʻ/ᵔᵢ;->ˉʿ:Z

    if-nez v6, :cond_f

    iget-object v6, v8, Lˏʻ/ᵔᵢ;->ⁱˊ:Lˊﾞ/ٴᵢ;

    invoke-interface {v6, v5}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    iput-boolean v4, v8, Lˏʻ/ᵔᵢ;->ˉʿ:Z

    :cond_f
    iget-object v5, v8, Lˏʻ/ᵔᵢ;->ˆʾ:Lﹶﾞ/ⁱי;

    iget-object v5, v5, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lʻˆ/ʽ;

    if-eqz v5, :cond_10

    iput-object v5, v8, Lˏʻ/ᵔᵢ;->ˈ:Lˏʻ/ﾞᴵ;

    :goto_3
    move v2, v11

    move-object v1, v12

    goto :goto_5

    :cond_10
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v5

    cmp-long v5, v5, v15

    if-nez v5, :cond_11

    new-instance v1, Lٴﾞ/ˆʾ;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lٴﾞ/ˆʾ;-><init>(I)V

    iput-object v1, v8, Lˏʻ/ᵔᵢ;->ˈ:Lˏʻ/ﾞᴵ;

    goto :goto_3

    :cond_11
    iget-object v2, v2, Lˏʻ/ˑﹳ;->ﹳٴ:Landroidx/leanback/widget/ـˆ;

    iget v5, v2, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_12

    move/from16 v17, v4

    goto :goto_4

    :cond_12
    move/from16 v17, v3

    :goto_4
    new-instance v7, Lˏʻ/ⁱˊ;

    iget-wide v9, v8, Lˏʻ/ᵔᵢ;->ﾞᴵ:J

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v4

    iget v1, v2, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iget v6, v2, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    add-int/2addr v1, v6

    int-to-long v13, v1

    iget-wide v1, v2, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    move-wide v15, v1

    move v2, v11

    move-object v1, v12

    move-wide v11, v4

    invoke-direct/range {v7 .. v17}, Lˏʻ/ⁱˊ;-><init>(Lˏʻ/ᵔᵢ;JJJJZ)V

    iput-object v7, v8, Lˏʻ/ᵔᵢ;->ˈ:Lˏʻ/ﾞᴵ;

    :goto_5
    iput v2, v8, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    iget-object v2, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v4, v2

    const v5, 0xfe01

    if-ne v4, v5, :cond_13

    return v3

    :cond_13
    iget v4, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iget v4, v1, Lᐧˎ/ﹳᐧ;->ʽ:I

    invoke-virtual {v1, v4, v2}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    return v3
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
    iget-object v0, p0, Lˏʻ/ˈ;->ⁱˊ:Lˏʻ/ᵔᵢ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lˏʻ/ᵔᵢ;->ﹳٴ:Lˏʻ/ˑﹳ;

    iget-object v2, v1, Lˏʻ/ˑﹳ;->ﹳٴ:Landroidx/leanback/widget/ـˆ;

    const/4 v3, 0x0

    iput v3, v2, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    iput v3, v2, Landroidx/leanback/widget/ـˆ;->ʽ:I

    iput v3, v2, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iput v3, v2, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    iget-object v2, v1, Lˏʻ/ˑﹳ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    const/4 v2, -0x1

    iput v2, v1, Lˏʻ/ˑﹳ;->ʽ:I

    iput-boolean v3, v1, Lˏʻ/ˑﹳ;->ˑﹳ:Z

    cmp-long p1, p1, v4

    if-nez p1, :cond_0

    iget-boolean p1, v0, Lˏʻ/ᵔᵢ;->ﾞʻ:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lˏʻ/ᵔᵢ;->ˈ(Z)V

    return-void

    :cond_0
    iget p1, v0, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    if-eqz p1, :cond_1

    iget p1, v0, Lˏʻ/ᵔᵢ;->ʼˎ:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    iput-wide p1, v0, Lˏʻ/ᵔᵢ;->ˑﹳ:J

    iget-object p3, v0, Lˏʻ/ᵔᵢ;->ˈ:Lˏʻ/ﾞᴵ;

    sget-object p4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lˏʻ/ﾞᴵ;->ᵔʾ(J)V

    const/4 p1, 0x2

    iput p1, v0, Lˏʻ/ᵔᵢ;->ᵔᵢ:I

    :cond_1
    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 0

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lˏʻ/ˈ;->ʽ(Lˊﾞ/ʼᐧ;)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
