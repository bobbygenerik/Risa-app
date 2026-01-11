.class public abstract Lʼʼ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lʼʼ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lʼʼ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʼʼ/ᵔᵢ;->ﹳٴ:Lʼʼ/ⁱˊ;

    return-void
.end method

.method public static ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V
    .locals 19

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-boolean v2, v1, Lʾᵎ/ˈ;->ᵔʾ:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v2, v1, Lʾᵎ/ˑﹳ;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lʼʼ/ᵔᵢ;->ﹳٴ(Lʾᵎ/ˈ;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lʼʼ/ⁱˊ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0, v2}, Lʾᵎ/ˑﹳ;->ˈⁱ(Lʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʼʼ/ⁱˊ;)V

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v4

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˈ()I

    move-result v5

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v6

    iget-object v7, v3, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    const/16 v9, 0x8

    if-eqz v7, :cond_d

    iget-boolean v3, v3, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v3, :cond_d

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʾᵎ/ʽ;

    iget-object v12, v7, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lʼʼ/ᵔᵢ;->ﹳٴ(Lʾᵎ/ˈ;)Z

    move-result v14

    iget-object v15, v12, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    const/16 v16, 0x0

    iget-object v8, v12, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v12}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v14, :cond_3

    new-instance v10, Lʼʼ/ⁱˊ;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v12, v0, v10}, Lʾᵎ/ˑﹳ;->ˈⁱ(Lʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʼʼ/ⁱˊ;)V

    :cond_3
    if-ne v7, v15, :cond_4

    iget-object v10, v8, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v10, :cond_4

    iget-boolean v10, v10, Lʾᵎ/ʽ;->ʽ:Z

    if-nez v10, :cond_5

    :cond_4
    if-ne v7, v8, :cond_6

    iget-object v10, v15, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v10, :cond_6

    iget-boolean v10, v10, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v10, :cond_6

    :cond_5
    const/4 v10, 0x1

    :goto_1
    const/16 v18, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :goto_2
    iget-object v11, v12, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v11, v11, v18

    if-ne v11, v2, :cond_9

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_7
    if-ne v11, v2, :cond_2

    iget v7, v12, Lʾᵎ/ˈ;->ʼʼ:I

    if-ltz v7, :cond_2

    iget v7, v12, Lʾᵎ/ˈ;->ʾᵎ:I

    if-ltz v7, :cond_2

    iget v7, v12, Lʾᵎ/ˈ;->ˊᵔ:I

    if-eq v7, v9, :cond_8

    iget v7, v12, Lʾᵎ/ˈ;->יـ:I

    if-nez v7, :cond_2

    iget v7, v12, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v7, v7, v16

    if-nez v7, :cond_2

    :cond_8
    invoke-virtual {v12}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, v12, Lʾᵎ/ˈ;->ˊʻ:Z

    if-nez v7, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v12}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v1, v0, v12}, Lʼʼ/ᵔᵢ;->ᵎﹶ(ILʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto :goto_0

    :cond_9
    :goto_3
    invoke-virtual {v12}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v11

    if-eqz v11, :cond_a

    goto/16 :goto_0

    :cond_a
    if-ne v7, v15, :cond_b

    iget-object v11, v8, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v11, :cond_b

    invoke-virtual {v15}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v12, v7, v8}, Lʾᵎ/ˈ;->ᵎˊ(II)V

    invoke-static {v13, v0, v12}, Lʼʼ/ᵔᵢ;->ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto/16 :goto_0

    :cond_b
    if-ne v7, v8, :cond_c

    iget-object v7, v15, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v7, :cond_c

    invoke-virtual {v8}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v12, v8, v7}, Lʾᵎ/ˈ;->ᵎˊ(II)V

    invoke-static {v13, v0, v12}, Lʼʼ/ᵔᵢ;->ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto/16 :goto_0

    :cond_c
    if-eqz v10, :cond_2

    invoke-virtual {v12}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v0, v12}, Lʼʼ/ᵔᵢ;->ﾞᴵ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x0

    const/16 v18, 0x1

    instance-of v3, v1, Lʾᵎ/ᵔᵢ;

    if-eqz v3, :cond_e

    :goto_4
    return-void

    :cond_e
    iget-object v3, v4, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    if-eqz v3, :cond_1a

    iget-boolean v4, v4, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v4, :cond_1a

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾᵎ/ʽ;

    iget-object v5, v4, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v5}, Lʼʼ/ᵔᵢ;->ﹳٴ(Lʾᵎ/ˈ;)Z

    move-result v8

    iget-object v10, v5, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v11, v5, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v12

    if-eqz v12, :cond_10

    if-eqz v8, :cond_10

    new-instance v12, Lʼʼ/ⁱˊ;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0, v12}, Lʾᵎ/ˑﹳ;->ˈⁱ(Lʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʼʼ/ⁱˊ;)V

    :cond_10
    if-ne v4, v10, :cond_11

    iget-object v12, v11, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v12, :cond_11

    iget-boolean v12, v12, Lʾᵎ/ʽ;->ʽ:Z

    if-nez v12, :cond_12

    :cond_11
    if-ne v4, v11, :cond_13

    iget-object v12, v10, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v12, :cond_13

    iget-boolean v12, v12, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v12, :cond_13

    :cond_12
    move/from16 v12, v18

    goto :goto_6

    :cond_13
    const/4 v12, 0x0

    :goto_6
    iget-object v13, v5, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v13, v13, v18

    if-ne v13, v2, :cond_16

    if-eqz v8, :cond_14

    goto :goto_7

    :cond_14
    if-ne v13, v2, :cond_f

    iget v4, v5, Lʾᵎ/ˈ;->ʼʼ:I

    if-ltz v4, :cond_f

    iget v4, v5, Lʾᵎ/ˈ;->ʾᵎ:I

    if-ltz v4, :cond_f

    iget v4, v5, Lʾᵎ/ˈ;->ˊᵔ:I

    if-eq v4, v9, :cond_15

    iget v4, v5, Lʾᵎ/ˈ;->יـ:I

    if-nez v4, :cond_f

    iget v4, v5, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v4, v4, v16

    if-nez v4, :cond_f

    :cond_15
    invoke-virtual {v5}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v5, Lʾᵎ/ˈ;->ˊʻ:Z

    if-nez v4, :cond_f

    if-eqz v12, :cond_f

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v1, v0, v5}, Lʼʼ/ᵔᵢ;->ᵎﹶ(ILʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto :goto_5

    :cond_16
    :goto_7
    invoke-virtual {v5}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_5

    :cond_17
    if-ne v4, v10, :cond_18

    iget-object v8, v11, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v8, :cond_18

    invoke-virtual {v10}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v4, v8}, Lʾᵎ/ˈ;->ᵎˊ(II)V

    invoke-static {v7, v0, v5}, Lʼʼ/ᵔᵢ;->ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto/16 :goto_5

    :cond_18
    if-ne v4, v11, :cond_19

    iget-object v4, v10, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v4, :cond_19

    invoke-virtual {v11}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v5, v8, v4}, Lʾᵎ/ˈ;->ᵎˊ(II)V

    invoke-static {v7, v0, v5}, Lʼʼ/ᵔᵢ;->ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto/16 :goto_5

    :cond_19
    if-eqz v12, :cond_f

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v7, v0, v5}, Lʼʼ/ᵔᵢ;->ﾞᴵ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    goto/16 :goto_5

    :cond_1a
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v3

    iget-object v4, v3, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    if-eqz v4, :cond_20

    iget-boolean v4, v3, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v4, :cond_20

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    iget-object v3, v3, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʾᵎ/ʽ;

    iget-object v6, v5, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    add-int/lit8 v11, p0, 0x1

    invoke-static {v6}, Lʼʼ/ᵔᵢ;->ﹳٴ(Lʾᵎ/ˈ;)Z

    move-result v7

    iget-object v8, v6, Lʾᵎ/ˈ;->ˆﾞ:Lʾᵎ/ʽ;

    invoke-virtual {v6}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v9

    if-eqz v9, :cond_1b

    if-eqz v7, :cond_1b

    new-instance v9, Lʼʼ/ⁱˊ;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, v0, v9}, Lʾᵎ/ˑﹳ;->ˈⁱ(Lʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʼʼ/ⁱˊ;)V

    :cond_1b
    iget-object v9, v6, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v9, v9, v18

    if-ne v9, v2, :cond_1c

    if-eqz v7, :cond_1f

    :cond_1c
    invoke-virtual {v6}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_8

    :cond_1d
    if-ne v5, v8, :cond_1f

    invoke-virtual {v5}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v5

    add-int/2addr v5, v4

    iget-boolean v7, v6, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-nez v7, :cond_1e

    goto :goto_9

    :cond_1e
    iget v7, v6, Lʾᵎ/ˈ;->ᵎᵔ:I

    sub-int v7, v5, v7

    iget v9, v6, Lʾᵎ/ˈ;->ˈⁱ:I

    add-int/2addr v9, v7

    iput v7, v6, Lʾᵎ/ˈ;->ʿᵢ:I

    iget-object v10, v6, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    invoke-virtual {v10, v7}, Lʾᵎ/ʽ;->ﾞʻ(I)V

    iget-object v7, v6, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v7, v9}, Lʾᵎ/ʽ;->ﾞʻ(I)V

    invoke-virtual {v8, v5}, Lʾᵎ/ʽ;->ﾞʻ(I)V

    move/from16 v5, v18

    iput-boolean v5, v6, Lʾᵎ/ˈ;->ﾞʻ:Z

    :goto_9
    :try_start_0
    invoke-static {v11, v0, v6}, Lʼʼ/ᵔᵢ;->ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    throw v0

    :cond_1f
    :goto_a
    const/16 v18, 0x1

    goto :goto_8

    :cond_20
    const/4 v5, 0x1

    iput-boolean v5, v1, Lʾᵎ/ˈ;->ᵔʾ:Z

    return-void
.end method

.method public static ʽ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V
    .locals 19

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v1, Lʾᵎ/ˈ;->ˉʿ:Z

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v3, v1, Lʾᵎ/ˑﹳ;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lʼʼ/ᵔᵢ;->ﹳٴ(Lʾᵎ/ˈ;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lʼʼ/ⁱˊ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v0, v3}, Lʾᵎ/ˑﹳ;->ˈⁱ(Lʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʼʼ/ⁱˊ;)V

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v4

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˈ()I

    move-result v5

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v6

    iget-object v7, v3, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    const/4 v10, 0x3

    if-eqz v7, :cond_d

    iget-boolean v3, v3, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v3, :cond_d

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʾᵎ/ʽ;

    iget-object v13, v7, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    add-int/lit8 v14, p0, 0x1

    invoke-static {v13}, Lʼʼ/ᵔᵢ;->ﹳٴ(Lʾᵎ/ˈ;)Z

    move-result v15

    const/16 v16, 0x0

    iget-object v8, v13, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    const/16 v17, 0x0

    iget-object v11, v13, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    invoke-virtual {v13}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz v15, :cond_3

    const/16 v18, 0x1

    new-instance v12, Lʼʼ/ⁱˊ;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static {v13, v0, v12}, Lʾᵎ/ˑﹳ;->ˈⁱ(Lʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʼʼ/ⁱˊ;)V

    goto :goto_1

    :cond_3
    const/16 v18, 0x1

    :goto_1
    if-ne v7, v8, :cond_4

    iget-object v12, v11, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v12, :cond_4

    iget-boolean v12, v12, Lʾᵎ/ʽ;->ʽ:Z

    if-nez v12, :cond_5

    :cond_4
    if-ne v7, v11, :cond_6

    iget-object v12, v8, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v12, :cond_6

    iget-boolean v12, v12, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v12, :cond_6

    :cond_5
    move/from16 v12, v18

    goto :goto_2

    :cond_6
    move/from16 v12, v17

    :goto_2
    iget-object v9, v13, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v9, v9, v17

    if-ne v9, v10, :cond_9

    if-eqz v15, :cond_7

    goto :goto_3

    :cond_7
    if-ne v9, v10, :cond_2

    iget v7, v13, Lʾᵎ/ˈ;->ʻٴ:I

    if-ltz v7, :cond_2

    iget v7, v13, Lʾᵎ/ˈ;->ʽﹳ:I

    if-ltz v7, :cond_2

    iget v7, v13, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_8

    iget v7, v13, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-nez v7, :cond_2

    iget v7, v13, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v7, v7, v16

    if-nez v7, :cond_2

    :cond_8
    invoke-virtual {v13}, Lʾᵎ/ˈ;->ʾᵎ()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, v13, Lʾᵎ/ˈ;->ˊʻ:Z

    if-nez v7, :cond_2

    if-eqz v12, :cond_2

    invoke-virtual {v13}, Lʾᵎ/ˈ;->ʾᵎ()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v14, v1, v0, v13, v2}, Lʼʼ/ᵔᵢ;->ˑﹳ(ILʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto/16 :goto_0

    :cond_9
    :goto_3
    invoke-virtual {v13}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v9

    if-eqz v9, :cond_a

    goto/16 :goto_0

    :cond_a
    if-ne v7, v8, :cond_b

    iget-object v9, v11, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v9, :cond_b

    invoke-virtual {v8}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v13}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v13, v7, v8}, Lʾᵎ/ˈ;->ٴʼ(II)V

    invoke-static {v14, v0, v13, v2}, Lʼʼ/ᵔᵢ;->ʽ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto/16 :goto_0

    :cond_b
    if-ne v7, v11, :cond_c

    iget-object v7, v8, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v7, :cond_c

    invoke-virtual {v11}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v13}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v13, v8, v7}, Lʾᵎ/ˈ;->ٴʼ(II)V

    invoke-static {v14, v0, v13, v2}, Lʼʼ/ᵔᵢ;->ʽ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto/16 :goto_0

    :cond_c
    if-eqz v12, :cond_2

    invoke-virtual {v13}, Lʾᵎ/ˈ;->ʾᵎ()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v14, v0, v13, v2}, Lʼʼ/ᵔᵢ;->ˈ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    instance-of v3, v1, Lʾᵎ/ᵔᵢ;

    if-eqz v3, :cond_e

    :goto_4
    return-void

    :cond_e
    iget-object v3, v4, Lʾᵎ/ʽ;->ﹳٴ:Ljava/util/HashSet;

    if-eqz v3, :cond_1b

    iget-boolean v4, v4, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v4, :cond_1b

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾᵎ/ʽ;

    iget-object v5, v4, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    add-int/lit8 v12, p0, 0x1

    invoke-static {v5}, Lʼʼ/ᵔᵢ;->ﹳٴ(Lʾᵎ/ˈ;)Z

    move-result v7

    iget-object v8, v5, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget-object v9, v5, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v7, :cond_10

    new-instance v11, Lʼʼ/ⁱˊ;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, v0, v11}, Lʾᵎ/ˑﹳ;->ˈⁱ(Lʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʼʼ/ⁱˊ;)V

    :cond_10
    if-ne v4, v8, :cond_11

    iget-object v11, v9, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v11, :cond_11

    iget-boolean v11, v11, Lʾᵎ/ʽ;->ʽ:Z

    if-nez v11, :cond_12

    :cond_11
    if-ne v4, v9, :cond_13

    iget-object v11, v8, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v11, :cond_13

    iget-boolean v11, v11, Lʾᵎ/ʽ;->ʽ:Z

    if-eqz v11, :cond_13

    :cond_12
    move/from16 v11, v18

    goto :goto_6

    :cond_13
    move/from16 v11, v17

    :goto_6
    iget-object v13, v5, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v13, v13, v17

    if-ne v13, v10, :cond_14

    if-eqz v7, :cond_15

    :cond_14
    const/16 v7, 0x8

    goto :goto_7

    :cond_15
    if-ne v13, v10, :cond_17

    iget v4, v5, Lʾᵎ/ˈ;->ʻٴ:I

    if-ltz v4, :cond_17

    iget v4, v5, Lʾᵎ/ˈ;->ʽﹳ:I

    if-ltz v4, :cond_17

    iget v4, v5, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v7, 0x8

    if-eq v4, v7, :cond_16

    iget v4, v5, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-nez v4, :cond_f

    iget v4, v5, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v4, v4, v16

    if-nez v4, :cond_f

    :cond_16
    invoke-virtual {v5}, Lʾᵎ/ˈ;->ʾᵎ()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, v5, Lʾᵎ/ˈ;->ˊʻ:Z

    if-nez v4, :cond_f

    if-eqz v11, :cond_f

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ʾᵎ()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v12, v1, v0, v5, v2}, Lʼʼ/ᵔᵢ;->ˑﹳ(ILʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto :goto_5

    :cond_17
    const/16 v7, 0x8

    goto :goto_5

    :goto_7
    invoke-virtual {v5}, Lʾᵎ/ˈ;->ᵢˏ()Z

    move-result v13

    if-eqz v13, :cond_18

    goto/16 :goto_5

    :cond_18
    if-ne v4, v8, :cond_19

    iget-object v13, v9, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v13, :cond_19

    invoke-virtual {v8}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v5, v4, v8}, Lʾᵎ/ˈ;->ٴʼ(II)V

    invoke-static {v12, v0, v5, v2}, Lʼʼ/ᵔᵢ;->ʽ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto/16 :goto_5

    :cond_19
    if-ne v4, v9, :cond_1a

    iget-object v4, v8, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v4, :cond_1a

    invoke-virtual {v9}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v5, v8, v4}, Lʾᵎ/ˈ;->ٴʼ(II)V

    invoke-static {v12, v0, v5, v2}, Lʼʼ/ᵔᵢ;->ʽ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto/16 :goto_5

    :cond_1a
    if-eqz v11, :cond_f

    invoke-virtual {v5}, Lʾᵎ/ˈ;->ʾᵎ()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {v12, v0, v5, v2}, Lʼʼ/ᵔᵢ;->ˈ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    goto/16 :goto_5

    :cond_1b
    move/from16 v0, v18

    iput-boolean v0, v1, Lʾᵎ/ˈ;->ˉʿ:Z

    return-void
.end method

.method public static ˈ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V
    .locals 6

    .prologue
    iget v0, p2, Lʾᵎ/ˈ;->ˏᵢ:F

    iget-object v1, p2, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget-object v2, v1, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    iget-object v3, p2, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v4, v3, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p2}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    :goto_1
    float-to-int v0, v0

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v0, v3

    goto :goto_1

    :goto_2
    add-int/2addr v0, v2

    add-int v3, v0, v1

    if-le v2, v4, :cond_3

    sub-int v3, v0, v1

    :cond_3
    invoke-virtual {p2, v0, v3}, Lʾᵎ/ˈ;->ٴʼ(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2, p3}, Lʼʼ/ᵔᵢ;->ʽ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    return-void
.end method

.method public static ˑﹳ(ILʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V
    .locals 7

    .prologue
    iget v0, p3, Lʾᵎ/ˈ;->ˏᵢ:F

    iget-object v1, p3, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget-object v2, v1, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v3, v2, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˈ()I

    move-result v3

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v2

    iget v4, p3, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lʾᵎ/ˈ;->ﹳᐧ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, Lʾᵎ/ˑﹳ;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result p1

    :goto_0
    iget v2, p3, Lʾᵎ/ˈ;->ˏᵢ:F

    mul-float/2addr v2, v6

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, Lʾᵎ/ˈ;->ʽﹳ:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, Lʾᵎ/ˈ;->ʻٴ:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, Lʾᵎ/ˈ;->ٴʼ(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p3, p4}, Lʼʼ/ᵔᵢ;->ʽ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;Z)V

    :cond_4
    return-void
.end method

.method public static ᵎﹶ(ILʾᵎ/ˈ;Lʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V
    .locals 7

    .prologue
    iget v0, p3, Lʾᵎ/ˈ;->ᴵʼ:F

    iget-object v1, p3, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v2, v1, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p3, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v3, v2, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˈ()I

    move-result v3

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    sub-int/2addr v3, v2

    if-lt v3, v1, :cond_4

    invoke-virtual {p3}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v2

    iget v4, p3, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lʾᵎ/ˈ;->יـ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v2, p1, Lʾᵎ/ˑﹳ;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p1

    :goto_0
    mul-float v2, v0, v6

    int-to-float p1, p1

    mul-float/2addr v2, p1

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v2, v3, v1

    :cond_2
    :goto_1
    iget p1, p3, Lʾᵎ/ˈ;->ʾᵎ:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p3, Lʾᵎ/ˈ;->ʼʼ:I

    if-lez p1, :cond_3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    int-to-float p1, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    invoke-virtual {p3, v1, v2}, Lʾᵎ/ˈ;->ᵎˊ(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p3}, Lʼʼ/ᵔᵢ;->ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    :cond_4
    return-void
.end method

.method public static ᵔᵢ(IIII)Z
    .locals 4

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_3

    if-ne p3, v0, :cond_2

    if-eq p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-nez p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v3

    :cond_5
    :goto_4
    return v2
.end method

.method public static ⁱˊ(Lʾᵎ/ˈ;ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)Lʼʼ/ᵔʾ;
    .locals 7

    .prologue
    if-nez p1, :cond_0

    iget v0, p0, Lʾᵎ/ˈ;->ٴﹳ:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lʾᵎ/ˈ;->ᵎʻ:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-eqz p3, :cond_1

    iget v3, p3, Lʼʼ/ᵔʾ;->ⁱˊ:I

    if-eq v0, v3, :cond_4

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʼʼ/ᵔʾ;

    iget v5, v4, Lʼʼ/ᵔʾ;->ⁱˊ:I

    if-ne v5, v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1, v4}, Lʼʼ/ᵔʾ;->ʽ(ILʼʼ/ᵔʾ;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object p3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_5

    return-object p3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    if-nez p3, :cond_c

    instance-of v3, p0, Lʾᵎ/ʼˎ;

    if-eqz v3, :cond_a

    move-object v3, p0

    check-cast v3, Lʾᵎ/ʼˎ;

    move v4, v1

    :goto_3
    iget v5, v3, Lʾᵎ/ʼˎ;->ᐧﹶ:I

    if-ge v4, v5, :cond_8

    iget-object v5, v3, Lʾᵎ/ʼˎ;->ʽᵔ:[Lʾᵎ/ˈ;

    aget-object v5, v5, v4

    if-nez p1, :cond_6

    iget v6, v5, Lʾᵎ/ˈ;->ٴﹳ:I

    if-eq v6, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p1, v0, :cond_7

    iget v6, v5, Lʾᵎ/ˈ;->ᵎʻ:I

    if-eq v6, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v6, v2

    :goto_4
    if-eq v6, v2, :cond_a

    move v3, v1

    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʼʼ/ᵔʾ;

    iget v5, v4, Lʼʼ/ᵔʾ;->ⁱˊ:I

    if-ne v5, v6, :cond_9

    move-object p3, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez p3, :cond_b

    new-instance p3, Lʼʼ/ᵔʾ;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p3, Lʼʼ/ᵔʾ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-object v3, p3, Lʼʼ/ᵔʾ;->ˈ:Ljava/util/ArrayList;

    iput v2, p3, Lʼʼ/ᵔʾ;->ˑﹳ:I

    sget v2, Lʼʼ/ᵔʾ;->ﾞᴵ:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lʼʼ/ᵔʾ;->ﾞᴵ:I

    iput v2, p3, Lʼʼ/ᵔʾ;->ⁱˊ:I

    iput p1, p3, Lʼʼ/ᵔʾ;->ʽ:I

    :cond_b
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget v2, p3, Lʼʼ/ᵔʾ;->ⁱˊ:I

    iget-object v3, p3, Lʼʼ/ᵔʾ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    return-object p3

    :cond_d
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v3, p0, Lʾᵎ/ᵔᵢ;

    if-eqz v3, :cond_f

    move-object v3, p0

    check-cast v3, Lʾᵎ/ᵔᵢ;

    iget-object v4, v3, Lʾᵎ/ᵔᵢ;->ʾˊ:Lʾᵎ/ʽ;

    iget v3, v3, Lʾᵎ/ᵔᵢ;->ˑ:I

    if-nez v3, :cond_e

    move v1, v0

    :cond_e
    invoke-virtual {v4, v1, p2, p3}, Lʾᵎ/ʽ;->ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V

    :cond_f
    if-nez p1, :cond_10

    iput v2, p0, Lʾᵎ/ˈ;->ٴﹳ:I

    iget-object v0, p0, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lʾᵎ/ʽ;->ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V

    iget-object v0, p0, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lʾᵎ/ʽ;->ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V

    goto :goto_7

    :cond_10
    iput v2, p0, Lʾᵎ/ˈ;->ᵎʻ:I

    iget-object v0, p0, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lʾᵎ/ʽ;->ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V

    iget-object v0, p0, Lʾᵎ/ˈ;->ˆﾞ:Lʾᵎ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lʾᵎ/ʽ;->ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V

    iget-object v0, p0, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lʾᵎ/ʽ;->ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V

    :goto_7
    iget-object p0, p0, Lʾᵎ/ˈ;->ˑٴ:Lʾᵎ/ʽ;

    invoke-virtual {p0, p1, p2, p3}, Lʾᵎ/ʽ;->ʽ(ILjava/util/ArrayList;Lʼʼ/ᵔʾ;)V

    return-object p3
.end method

.method public static ﹳٴ(Lʾᵎ/ˈ;)Z
    .locals 8

    .prologue
    iget-object v0, p0, Lʾᵎ/ˈ;->ـᵎ:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget-object v4, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v4, :cond_0

    check-cast v4, Lʾᵎ/ˑﹳ;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v5, v4, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v5, v5, v1

    :cond_1
    if-eqz v4, :cond_2

    iget-object v4, v4, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v4, v4, v3

    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Lʾᵎ/ˈ;->ʾˋ()Z

    move-result v7

    if-nez v7, :cond_5

    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_3

    iget v7, p0, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-nez v7, :cond_3

    iget v7, p0, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v7, v7, v6

    if-nez v7, :cond_3

    invoke-virtual {p0, v1}, Lʾᵎ/ˈ;->ˏי(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    if-ne v2, v4, :cond_4

    iget v2, p0, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lʾᵎ/ˈ;->ʽﹳ(II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v3

    :goto_2
    if-eq v0, v3, :cond_8

    invoke-virtual {p0}, Lʾᵎ/ˈ;->ᴵˊ()Z

    move-result v7

    if-nez v7, :cond_8

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_6

    iget v5, p0, Lʾᵎ/ˈ;->יـ:I

    if-nez v5, :cond_6

    iget v5, p0, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    invoke-virtual {p0, v3}, Lʾᵎ/ˈ;->ˏי(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_6
    if-ne v0, v4, :cond_7

    iget v0, p0, Lʾᵎ/ˈ;->יـ:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lʾᵎ/ˈ;->ʽﹳ(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v0, v3

    :goto_4
    iget p0, p0, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float p0, p0, v6

    if-lez p0, :cond_9

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    :cond_a
    :goto_5
    return v3

    :cond_b
    return v1
.end method

.method public static ﾞᴵ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V
    .locals 6

    .prologue
    iget v0, p2, Lʾᵎ/ˈ;->ᴵʼ:F

    iget-object v1, p2, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v2, v1, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    iget-object v3, p2, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v4, v3, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v3

    sub-int v3, v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v2, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v3

    :goto_0
    invoke-virtual {p2}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v1

    sub-int v3, v4, v2

    sub-int/2addr v3, v1

    if-le v2, v4, :cond_1

    sub-int v3, v2, v4

    sub-int/2addr v3, v1

    :cond_1
    if-lez v3, :cond_2

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    :goto_1
    float-to-int v0, v0

    goto :goto_2

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v0, v3

    goto :goto_1

    :goto_2
    add-int v3, v2, v0

    add-int v5, v3, v1

    if-le v2, v4, :cond_3

    sub-int v3, v2, v0

    sub-int v5, v3, v1

    :cond_3
    invoke-virtual {p2, v3, v5}, Lʾᵎ/ˈ;->ᵎˊ(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1, p2}, Lʼʼ/ᵔᵢ;->ʼˎ(ILʾˋ/ˑﹳ;Lʾᵎ/ˈ;)V

    return-void
.end method
