.class public abstract Lˋˋ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʻٴ/ˑﹳ;

.field public static ⁱˊ:Ljava/util/concurrent/ExecutorService;

.field public static final ﹳٴ:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˋˋ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    new-instance v0, Lʻٴ/ˑﹳ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lʻٴ/ˑﹳ;-><init>(I)V

    sput-object v0, Lˋˋ/ⁱˊ;->ʽ:Lʻٴ/ˑﹳ;

    return-void
.end method

.method public static ˑﹳ(Lˋˋ/ⁱˊ;)Lˋˋ/ʾᵎ;
    .locals 22

    .prologue
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lˋˋ/ⁱˊ;->ﾞʻ()I

    move-result v1

    invoke-virtual {v0}, Lˋˋ/ⁱˊ;->ٴﹶ()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lˋˋ/ᵢˏ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput v6, v5, Lˋˋ/ᵢˏ;->ﹳٴ:I

    iput v1, v5, Lˋˋ/ᵢˏ;->ⁱˊ:I

    iput v6, v5, Lˋˋ/ᵢˏ;->ʽ:I

    iput v2, v5, Lˋˋ/ᵢˏ;->ˈ:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    new-array v5, v1, [I

    div-int/lit8 v7, v1, 0x2

    new-array v1, v1, [I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˋˋ/ᵢˏ;

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ⁱˊ()I

    move-result v10

    if-lt v10, v2, :cond_15

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ﹳٴ()I

    move-result v10

    if-ge v10, v2, :cond_0

    goto/16 :goto_15

    :cond_0
    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ⁱˊ()I

    move-result v10

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ﹳٴ()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v2

    div-int/lit8 v12, v12, 0x2

    iget v10, v9, Lˋˋ/ᵢˏ;->ﹳٴ:I

    add-int v13, v2, v7

    aput v10, v5, v13

    iget v10, v9, Lˋˋ/ᵢˏ;->ⁱˊ:I

    aput v10, v1, v13

    move v10, v6

    :goto_1
    if-ge v10, v12, :cond_15

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ⁱˊ()I

    move-result v13

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ﹳٴ()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    rem-int/lit8 v13, v13, 0x2

    if-ne v13, v2, :cond_1

    move v13, v2

    goto :goto_2

    :cond_1
    move v13, v6

    :goto_2
    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ⁱˊ()I

    move-result v14

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ﹳٴ()I

    move-result v15

    sub-int/2addr v14, v15

    neg-int v15, v10

    move v11, v15

    :goto_3
    if-gt v11, v10, :cond_9

    if-eq v11, v15, :cond_3

    if-eq v11, v10, :cond_2

    add-int/lit8 v16, v11, 0x1

    add-int v16, v16, v7

    aget v2, v5, v16

    add-int/lit8 v16, v11, -0x1

    add-int v16, v16, v7

    aget v6, v5, v16

    if-le v2, v6, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v2, v11, -0x1

    add-int/2addr v2, v7

    aget v2, v5, v2

    add-int/lit8 v6, v2, 0x1

    :goto_4
    move/from16 v16, v7

    goto :goto_6

    :cond_3
    :goto_5
    add-int/lit8 v2, v11, 0x1

    add-int/2addr v2, v7

    aget v2, v5, v2

    move v6, v2

    goto :goto_4

    :goto_6
    iget v7, v9, Lˋˋ/ᵢˏ;->ʽ:I

    move/from16 v18, v7

    iget v7, v9, Lˋˋ/ᵢˏ;->ﹳٴ:I

    sub-int v7, v6, v7

    add-int v7, v7, v18

    sub-int/2addr v7, v11

    if-eqz v10, :cond_5

    if-eq v6, v2, :cond_4

    goto :goto_7

    :cond_4
    add-int/lit8 v18, v7, -0x1

    move/from16 v21, v18

    move/from16 v18, v6

    move/from16 v6, v21

    goto :goto_8

    :cond_5
    :goto_7
    move/from16 v18, v6

    move v6, v7

    :goto_8
    move/from16 v19, v11

    move v11, v7

    move/from16 v7, v18

    move/from16 v18, v19

    move/from16 v19, v12

    :goto_9
    iget v12, v9, Lˋˋ/ᵢˏ;->ⁱˊ:I

    if-ge v7, v12, :cond_6

    iget v12, v9, Lˋˋ/ᵢˏ;->ˈ:I

    if-ge v11, v12, :cond_6

    invoke-virtual {v0, v7, v11}, Lˋˋ/ⁱˊ;->ʽ(II)Z

    move-result v12

    if-eqz v12, :cond_6

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_6
    add-int v12, v18, v16

    aput v7, v5, v12

    if-eqz v13, :cond_8

    sub-int v12, v14, v18

    move/from16 v20, v13

    add-int/lit8 v13, v15, 0x1

    if-lt v12, v13, :cond_7

    add-int/lit8 v13, v10, -0x1

    if-gt v12, v13, :cond_7

    add-int v12, v12, v16

    aget v12, v1, v12

    if-gt v12, v7, :cond_7

    new-instance v12, Lˋˋ/ʾˋ;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput v2, v12, Lˋˋ/ʾˋ;->ﹳٴ:I

    iput v6, v12, Lˋˋ/ʾˋ;->ⁱˊ:I

    iput v7, v12, Lˋˋ/ʾˋ;->ʽ:I

    iput v11, v12, Lˋˋ/ʾˋ;->ˈ:I

    const/4 v2, 0x0

    iput-boolean v2, v12, Lˋˋ/ʾˋ;->ˑﹳ:Z

    goto :goto_c

    :cond_7
    :goto_a
    const/4 v2, 0x0

    goto :goto_b

    :cond_8
    move/from16 v20, v13

    goto :goto_a

    :goto_b
    add-int/lit8 v11, v18, 0x2

    move v6, v2

    move/from16 v7, v16

    move/from16 v12, v19

    move/from16 v13, v20

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_9
    move v2, v6

    move/from16 v16, v7

    move/from16 v19, v12

    const/4 v12, 0x0

    :goto_c
    if-eqz v12, :cond_a

    move-object v11, v12

    goto/16 :goto_16

    :cond_a
    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ⁱˊ()I

    move-result v6

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ﹳٴ()I

    move-result v7

    sub-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_d

    :cond_b
    move v6, v2

    :goto_d
    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ⁱˊ()I

    move-result v7

    invoke-virtual {v9}, Lˋˋ/ᵢˏ;->ﹳٴ()I

    move-result v11

    sub-int/2addr v7, v11

    move v11, v15

    :goto_e
    if-gt v11, v10, :cond_13

    if-eq v11, v15, :cond_d

    if-eq v11, v10, :cond_c

    add-int/lit8 v12, v11, 0x1

    add-int v12, v12, v16

    aget v12, v1, v12

    add-int/lit8 v13, v11, -0x1

    add-int v13, v13, v16

    aget v13, v1, v13

    if-ge v12, v13, :cond_c

    goto :goto_f

    :cond_c
    add-int/lit8 v12, v11, -0x1

    add-int v12, v12, v16

    aget v12, v1, v12

    add-int/lit8 v13, v12, -0x1

    goto :goto_10

    :cond_d
    :goto_f
    add-int/lit8 v12, v11, 0x1

    add-int v12, v12, v16

    aget v12, v1, v12

    move v13, v12

    :goto_10
    iget v14, v9, Lˋˋ/ᵢˏ;->ˈ:I

    iget v2, v9, Lˋˋ/ᵢˏ;->ⁱˊ:I

    sub-int/2addr v2, v13

    sub-int/2addr v2, v11

    sub-int/2addr v14, v2

    if-eqz v10, :cond_f

    if-eq v13, v12, :cond_e

    goto :goto_11

    :cond_e
    add-int/lit8 v2, v14, 0x1

    goto :goto_12

    :cond_f
    :goto_11
    move v2, v14

    :goto_12
    move/from16 v18, v6

    :goto_13
    iget v6, v9, Lˋˋ/ᵢˏ;->ﹳٴ:I

    if-le v13, v6, :cond_10

    iget v6, v9, Lˋˋ/ᵢˏ;->ʽ:I

    if-le v14, v6, :cond_10

    add-int/lit8 v6, v13, -0x1

    move/from16 v20, v7

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v0, v6, v7}, Lˋˋ/ⁱˊ;->ʽ(II)Z

    move-result v6

    if-eqz v6, :cond_11

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v14, v14, -0x1

    move/from16 v7, v20

    goto :goto_13

    :cond_10
    move/from16 v20, v7

    :cond_11
    add-int v7, v11, v16

    aput v13, v1, v7

    if-eqz v18, :cond_12

    sub-int v7, v20, v11

    if-lt v7, v15, :cond_12

    if-gt v7, v10, :cond_12

    add-int v7, v7, v16

    aget v6, v5, v7

    if-lt v6, v13, :cond_12

    new-instance v6, Lˋˋ/ʾˋ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v13, v6, Lˋˋ/ʾˋ;->ﹳٴ:I

    iput v14, v6, Lˋˋ/ʾˋ;->ⁱˊ:I

    iput v12, v6, Lˋˋ/ʾˋ;->ʽ:I

    iput v2, v6, Lˋˋ/ʾˋ;->ˈ:I

    const/4 v2, 0x1

    iput-boolean v2, v6, Lˋˋ/ʾˋ;->ˑﹳ:Z

    goto :goto_14

    :cond_12
    add-int/lit8 v11, v11, 0x2

    move/from16 v6, v18

    move/from16 v7, v20

    const/4 v2, 0x0

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_14

    move-object v11, v6

    goto :goto_16

    :cond_14
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v16

    move/from16 v12, v19

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_15
    :goto_15
    move/from16 v16, v7

    const/4 v11, 0x0

    :goto_16
    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Lˋˋ/ʾˋ;->ﹳٴ()I

    move-result v2

    if-lez v2, :cond_19

    iget v2, v11, Lˋˋ/ʾˋ;->ˈ:I

    iget v6, v11, Lˋˋ/ʾˋ;->ⁱˊ:I

    sub-int/2addr v2, v6

    iget v7, v11, Lˋˋ/ʾˋ;->ʽ:I

    iget v10, v11, Lˋˋ/ʾˋ;->ﹳٴ:I

    sub-int/2addr v7, v10

    if-eq v2, v7, :cond_18

    iget-boolean v12, v11, Lˋˋ/ʾˋ;->ˑﹳ:Z

    if-eqz v12, :cond_16

    new-instance v2, Lˋˋ/ـˆ;

    invoke-virtual {v11}, Lˋˋ/ʾˋ;->ﹳٴ()I

    move-result v7

    invoke-direct {v2, v10, v6, v7}, Lˋˋ/ـˆ;-><init>(III)V

    goto :goto_17

    :cond_16
    if-le v2, v7, :cond_17

    new-instance v2, Lˋˋ/ـˆ;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11}, Lˋˋ/ʾˋ;->ﹳٴ()I

    move-result v7

    invoke-direct {v2, v10, v6, v7}, Lˋˋ/ـˆ;-><init>(III)V

    goto :goto_17

    :cond_17
    new-instance v2, Lˋˋ/ـˆ;

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11}, Lˋˋ/ʾˋ;->ﹳٴ()I

    move-result v7

    invoke-direct {v2, v10, v6, v7}, Lˋˋ/ـˆ;-><init>(III)V

    goto :goto_17

    :cond_18
    new-instance v2, Lˋˋ/ـˆ;

    invoke-direct {v2, v10, v6, v7}, Lˋˋ/ـˆ;-><init>(III)V

    :goto_17
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lˋˋ/ᵢˏ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v17, 0x1

    goto :goto_18

    :cond_1a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˋˋ/ᵢˏ;

    :goto_18
    iget v6, v9, Lˋˋ/ᵢˏ;->ﹳٴ:I

    iput v6, v2, Lˋˋ/ᵢˏ;->ﹳٴ:I

    iget v6, v9, Lˋˋ/ᵢˏ;->ʽ:I

    iput v6, v2, Lˋˋ/ᵢˏ;->ʽ:I

    iget v6, v11, Lˋˋ/ʾˋ;->ﹳٴ:I

    iput v6, v2, Lˋˋ/ᵢˏ;->ⁱˊ:I

    iget v6, v11, Lˋˋ/ʾˋ;->ⁱˊ:I

    iput v6, v2, Lˋˋ/ᵢˏ;->ˈ:I

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v9, Lˋˋ/ᵢˏ;->ⁱˊ:I

    iput v2, v9, Lˋˋ/ᵢˏ;->ⁱˊ:I

    iget v2, v9, Lˋˋ/ᵢˏ;->ˈ:I

    iput v2, v9, Lˋˋ/ᵢˏ;->ˈ:I

    iget v2, v11, Lˋˋ/ʾˋ;->ʽ:I

    iput v2, v9, Lˋˋ/ᵢˏ;->ﹳٴ:I

    iget v2, v11, Lˋˋ/ʾˋ;->ˈ:I

    iput v2, v9, Lˋˋ/ᵢˏ;->ʽ:I

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_1b
    const/16 v17, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_19
    move/from16 v7, v16

    move/from16 v2, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_1c
    sget-object v2, Lˋˋ/ⁱˊ;->ʽ:Lʻٴ/ˑﹳ;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lˋˋ/ʾᵎ;

    invoke-direct {v2, v0, v3, v5, v1}, Lˋˋ/ʾᵎ;-><init>(Lˋˋ/ⁱˊ;Ljava/util/ArrayList;[I[I)V

    return-object v2
.end method

.method public static ᵎﹶ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;ZZ)I
    .locals 3

    .prologue
    invoke-virtual {p4}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p4

    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p4

    invoke-static {p3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v1

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {p2}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v1

    invoke-static {p3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_2

    return p0

    :cond_2
    invoke-virtual {p1, p3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p5

    sub-int/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p2}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p5

    invoke-static {p3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float/2addr p0, p4

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ˉʿ()I

    move-result p3

    invoke-virtual {p1, p2}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static ᵔᵢ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I
    .locals 0

    .prologue
    invoke-virtual {p4}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-virtual {p0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p1, p2}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p4, p1

    invoke-static {p2}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p1

    invoke-static {p3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-virtual {p0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p2, p0

    float-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ﾞᴵ(Lˋˋ/ᐧﹶ;Lʼﾞ/ᵎⁱ;Landroid/view/View;Landroid/view/View;Lˋˋ/ʻᵎ;Z)I
    .locals 0

    .prologue
    invoke-virtual {p4}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    invoke-static {p2}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p0

    invoke-static {p3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p1, p3}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1, p2}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Lʼﾞ/ᵎⁱ;->ᵔʾ()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract ʼˎ(II)Ljava/lang/Object;
.end method

.method public abstract ʽ(II)Z
.end method

.method public ˆʾ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract ˈ(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract ٴﹶ()I
.end method

.method public abstract ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract ﹳٴ(II)Z
.end method

.method public abstract ﾞʻ()I
.end method
