.class public abstract Lʾᵎ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lʾᵎ/ˆʾ;->ﹳٴ:[Z

    return-void
.end method

.method public static final ʽ(II)Z
    .locals 0

    .prologue
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ⁱˊ(Lʾᵎ/ˑﹳ;Lʻٴ/ʽ;Lʾᵎ/ˈ;)V
    .locals 12

    .prologue
    const/4 v0, -0x1

    iput v0, p2, Lʾᵎ/ˈ;->ˉˆ:I

    iget-object v1, p2, Lʾᵎ/ˈ;->ˆﾞ:Lʾᵎ/ʽ;

    iget-object v2, p2, Lʾᵎ/ˈ;->ـᵎ:[I

    iget-object v3, p2, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v4, p2, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v5, p2, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v6, p2, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iput v0, p2, Lʾᵎ/ˈ;->ʼᐧ:I

    iget-object v0, p0, Lʾᵎ/ˈ;->ـᵎ:[I

    const/4 v7, 0x0

    aget v8, v0, v7

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eq v8, v9, :cond_0

    aget v7, v2, v7

    if-ne v7, v10, :cond_0

    iget v7, v6, Lʾᵎ/ʽ;->ᵎﹶ:I

    invoke-virtual {p0}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v8

    iget v11, v5, Lʾᵎ/ʽ;->ᵎﹶ:I

    sub-int/2addr v8, v11

    invoke-virtual {p1, v6}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v11

    iput-object v11, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {p1, v5}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v11

    iput-object v11, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {p1, v6, v7}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {p1, v5, v8}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    iput v9, p2, Lʾᵎ/ˈ;->ˉˆ:I

    iput v7, p2, Lʾᵎ/ˈ;->ʿ:I

    sub-int/2addr v8, v7

    iput v8, p2, Lʾᵎ/ˈ;->ﹳـ:I

    iget v5, p2, Lʾᵎ/ˈ;->ᐧﾞ:I

    if-ge v8, v5, :cond_0

    iput v5, p2, Lʾᵎ/ˈ;->ﹳـ:I

    :cond_0
    const/4 v5, 0x1

    aget v0, v0, v5

    if-eq v0, v9, :cond_3

    aget v0, v2, v5

    if-ne v0, v10, :cond_3

    iget v0, v4, Lʾᵎ/ʽ;->ᵎﹶ:I

    invoke-virtual {p0}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p0

    iget v2, v3, Lʾᵎ/ʽ;->ᵎﹶ:I

    sub-int/2addr p0, v2

    invoke-virtual {p1, v4}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v2

    iput-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {p1, v3}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v2

    iput-object v2, v3, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {p1, v2, v0}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    iget-object v2, v3, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {p1, v2, p0}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    iget v2, p2, Lʾᵎ/ˈ;->ᵎᵔ:I

    if-gtz v2, :cond_1

    iget v2, p2, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v1}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v2

    iput-object v2, v1, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v1, p2, Lʾᵎ/ˈ;->ᵎᵔ:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    :cond_2
    iput v9, p2, Lʾᵎ/ˈ;->ʼᐧ:I

    iput v0, p2, Lʾᵎ/ˈ;->ʿᵢ:I

    sub-int/2addr p0, v0

    iput p0, p2, Lʾᵎ/ˈ;->ˈⁱ:I

    iget p1, p2, Lʾᵎ/ˈ;->ᐧᴵ:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lʾᵎ/ˈ;->ˈⁱ:I

    :cond_3
    return-void
.end method

.method public static ﹳٴ(Lʾᵎ/ˑﹳ;Lʻٴ/ʽ;Ljava/util/ArrayList;I)V
    .locals 40

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    if-nez p3, :cond_0

    iget v2, v0, Lʾᵎ/ˑﹳ;->ʾﾞ:I

    iget-object v3, v0, Lʾᵎ/ˑﹳ;->ʻᴵ:[Lʾᵎ/ⁱˊ;

    const/4 v15, 0x0

    :goto_0
    move v13, v2

    move-object v14, v3

    goto :goto_1

    :cond_0
    iget v2, v0, Lʾᵎ/ˑﹳ;->ⁱˉ:I

    iget-object v3, v0, Lʾᵎ/ˑﹳ;->ᐧˎ:[Lʾᵎ/ⁱˊ;

    const/4 v15, 0x2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_71

    aget-object v3, v14, v2

    iget-boolean v4, v3, Lʾᵎ/ⁱˊ;->ᵔﹳ:Z

    iget-object v5, v3, Lʾᵎ/ⁱˊ;->ﹳٴ:Lʾᵎ/ˈ;

    iget-object v6, v5, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    const/4 v7, 0x3

    const/16 v16, 0x0

    const/16 v8, 0x8

    const/16 v17, 0x0

    if-nez v4, :cond_19

    iget v4, v3, Lʾᵎ/ⁱˊ;->ﾞʻ:I

    mul-int/lit8 v18, v4, 0x2

    move-object v12, v5

    move-object/from16 v21, v12

    const/16 v19, 0x0

    :goto_3
    if-nez v19, :cond_14

    const/16 v22, 0x1

    iget v9, v3, Lʾᵎ/ⁱˊ;->ʼˎ:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lʾᵎ/ⁱˊ;->ʼˎ:I

    iget-object v9, v12, Lʾᵎ/ˈ;->ˑʼ:[Lʾᵎ/ˈ;

    iget-object v11, v12, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aput-object v16, v9, v4

    iget-object v9, v12, Lʾᵎ/ˈ;->ʻˋ:[Lʾᵎ/ˈ;

    aput-object v16, v9, v4

    iget v9, v12, Lʾᵎ/ˈ;->ˊᵔ:I

    if-eq v9, v8, :cond_f

    invoke-virtual {v12, v4}, Lʾᵎ/ˈ;->ˆʾ(I)I

    aget-object v9, v11, v18

    invoke-virtual {v9}, Lʾᵎ/ʽ;->ˑﹳ()I

    add-int/lit8 v9, v18, 0x1

    aget-object v24, v11, v9

    invoke-virtual/range {v24 .. v24}, Lʾᵎ/ʽ;->ˑﹳ()I

    aget-object v24, v11, v18

    invoke-virtual/range {v24 .. v24}, Lʾᵎ/ʽ;->ˑﹳ()I

    aget-object v9, v11, v9

    invoke-virtual {v9}, Lʾᵎ/ʽ;->ˑﹳ()I

    iget-object v9, v3, Lʾᵎ/ⁱˊ;->ⁱˊ:Lʾᵎ/ˈ;

    if-nez v9, :cond_1

    iput-object v12, v3, Lʾᵎ/ⁱˊ;->ⁱˊ:Lʾᵎ/ˈ;

    :cond_1
    iput-object v12, v3, Lʾᵎ/ⁱˊ;->ˈ:Lʾᵎ/ˈ;

    iget-object v9, v12, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v9, v9, v4

    if-ne v9, v7, :cond_f

    iget-object v8, v12, Lʾᵎ/ˈ;->ˏי:[I

    aget v8, v8, v4

    if-eqz v8, :cond_3

    if-eq v8, v7, :cond_3

    const/4 v7, 0x2

    if-ne v8, v7, :cond_2

    goto :goto_4

    :cond_2
    move/from16 v26, v2

    move/from16 v27, v4

    goto :goto_7

    :cond_3
    :goto_4
    iget v7, v3, Lʾᵎ/ⁱˊ;->ˆʾ:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lʾᵎ/ⁱˊ;->ˆʾ:I

    iget-object v7, v12, Lʾᵎ/ˈ;->ﹳﹳ:[F

    aget v7, v7, v4

    cmpl-float v26, v7, v17

    if-lez v26, :cond_4

    move/from16 v26, v2

    iget v2, v3, Lʾᵎ/ⁱˊ;->ٴﹶ:F

    add-float/2addr v2, v7

    iput v2, v3, Lʾᵎ/ⁱˊ;->ٴﹶ:F

    goto :goto_5

    :cond_4
    move/from16 v26, v2

    :goto_5
    iget v2, v12, Lʾᵎ/ˈ;->ˊᵔ:I

    move/from16 v27, v4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_8

    const/4 v2, 0x3

    if-ne v9, v2, :cond_8

    if-eqz v8, :cond_5

    if-ne v8, v2, :cond_8

    :cond_5
    cmpg-float v2, v7, v17

    if-gez v2, :cond_6

    move/from16 v2, v22

    iput-boolean v2, v3, Lʾᵎ/ⁱˊ;->ᵔʾ:Z

    goto :goto_6

    :cond_6
    move/from16 v2, v22

    iput-boolean v2, v3, Lʾᵎ/ⁱˊ;->ˉˆ:Z

    :goto_6
    iget-object v2, v3, Lʾᵎ/ⁱˊ;->ᵔᵢ:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lʾᵎ/ⁱˊ;->ᵔᵢ:Ljava/util/ArrayList;

    :cond_7
    iget-object v2, v3, Lʾᵎ/ⁱˊ;->ᵔᵢ:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v2, v3, Lʾᵎ/ⁱˊ;->ﾞᴵ:Lʾᵎ/ˈ;

    if-nez v2, :cond_9

    iput-object v12, v3, Lʾᵎ/ⁱˊ;->ﾞᴵ:Lʾᵎ/ˈ;

    :cond_9
    iget-object v2, v3, Lʾᵎ/ⁱˊ;->ᵎﹶ:Lʾᵎ/ˈ;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lʾᵎ/ˈ;->ʻˋ:[Lʾᵎ/ˈ;

    aput-object v12, v2, v27

    :cond_a
    iput-object v12, v3, Lʾᵎ/ⁱˊ;->ᵎﹶ:Lʾᵎ/ˈ;

    :goto_7
    if-nez v27, :cond_c

    iget v2, v12, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    iget v2, v12, Lʾᵎ/ˈ;->ʽﹳ:I

    if-nez v2, :cond_e

    iget v2, v12, Lʾᵎ/ˈ;->ʻٴ:I

    goto :goto_8

    :cond_c
    iget v2, v12, Lʾᵎ/ˈ;->יـ:I

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    iget v2, v12, Lʾᵎ/ˈ;->ʾᵎ:I

    if-nez v2, :cond_e

    iget v2, v12, Lʾᵎ/ˈ;->ʼʼ:I

    :cond_e
    :goto_8
    move-object/from16 v2, v21

    goto :goto_9

    :cond_f
    move/from16 v26, v2

    move/from16 v27, v4

    goto :goto_8

    :goto_9
    if-eq v2, v12, :cond_10

    iget-object v2, v2, Lʾᵎ/ˈ;->ˑʼ:[Lʾᵎ/ˈ;

    aput-object v12, v2, v27

    :cond_10
    add-int/lit8 v2, v18, 0x1

    aget-object v2, v11, v2

    iget-object v2, v2, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget-object v4, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v4, v4, v18

    iget-object v4, v4, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    if-eq v4, v12, :cond_12

    :cond_11
    move-object/from16 v2, v16

    :cond_12
    if-eqz v2, :cond_13

    goto :goto_a

    :cond_13
    move-object v2, v12

    const/16 v19, 0x1

    :goto_a
    move-object/from16 v21, v12

    move/from16 v4, v27

    const/4 v7, 0x3

    const/16 v8, 0x8

    move-object v12, v2

    move/from16 v2, v26

    goto/16 :goto_3

    :cond_14
    move/from16 v26, v2

    move/from16 v27, v4

    iget-object v2, v3, Lʾᵎ/ⁱˊ;->ⁱˊ:Lʾᵎ/ˈ;

    if-eqz v2, :cond_15

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    :cond_15
    iget-object v2, v3, Lʾᵎ/ⁱˊ;->ˈ:Lʾᵎ/ˈ;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    add-int/lit8 v18, v18, 0x1

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    :cond_16
    iput-object v12, v3, Lʾᵎ/ⁱˊ;->ʽ:Lʾᵎ/ˈ;

    if-nez v27, :cond_17

    iget-boolean v2, v3, Lʾᵎ/ⁱˊ;->ˉʿ:Z

    if-eqz v2, :cond_17

    iput-object v12, v3, Lʾᵎ/ⁱˊ;->ˑﹳ:Lʾᵎ/ˈ;

    goto :goto_b

    :cond_17
    iput-object v5, v3, Lʾᵎ/ⁱˊ;->ˑﹳ:Lʾᵎ/ˈ;

    :goto_b
    iget-boolean v2, v3, Lʾᵎ/ⁱˊ;->ˉˆ:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v3, Lʾᵎ/ⁱˊ;->ᵔʾ:Z

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    :goto_c
    iput-boolean v2, v3, Lʾᵎ/ⁱˊ;->ʼᐧ:Z

    :goto_d
    const/4 v2, 0x1

    goto :goto_e

    :cond_19
    move/from16 v26, v2

    goto :goto_d

    :goto_e
    iput-boolean v2, v3, Lʾᵎ/ⁱˊ;->ᵔﹳ:Z

    if-eqz v10, :cond_1b

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_f

    :cond_1a
    move/from16 v17, v13

    const/16 v28, 0x2

    goto/16 :goto_48

    :cond_1b
    :goto_f
    iget-object v11, v3, Lʾᵎ/ⁱˊ;->ʽ:Lʾᵎ/ˈ;

    iget-object v12, v3, Lʾᵎ/ⁱˊ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v3, Lʾᵎ/ⁱˊ;->ˈ:Lʾᵎ/ˈ;

    iget-object v4, v3, Lʾᵎ/ⁱˊ;->ˑﹳ:Lʾᵎ/ˈ;

    iget v7, v3, Lʾᵎ/ⁱˊ;->ٴﹶ:F

    iget-object v8, v0, Lʾᵎ/ˈ;->ـᵎ:[I

    iget-object v9, v0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget v8, v8, p3

    move-object/from16 v18, v9

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1c

    const/4 v8, 0x1

    goto :goto_10

    :cond_1c
    const/4 v8, 0x0

    :goto_10
    if-nez p3, :cond_20

    iget v9, v4, Lʾᵎ/ˈ;->ˈˏ:I

    if-nez v9, :cond_1d

    const/16 v22, 0x1

    :goto_11
    move-object/from16 v19, v6

    const/4 v6, 0x1

    goto :goto_12

    :cond_1d
    const/16 v22, 0x0

    goto :goto_11

    :goto_12
    if-ne v9, v6, :cond_1e

    move/from16 v21, v6

    :goto_13
    const/4 v6, 0x2

    goto :goto_14

    :cond_1e
    const/16 v21, 0x0

    goto :goto_13

    :goto_14
    if-ne v9, v6, :cond_1f

    const/4 v9, 0x1

    goto :goto_15

    :cond_1f
    const/4 v9, 0x0

    :goto_15
    move-object v6, v5

    move/from16 v29, v7

    move/from16 v23, v21

    move/from16 v27, v22

    :goto_16
    const/16 v21, 0x0

    goto :goto_1c

    :cond_20
    move-object/from16 v19, v6

    move v6, v9

    iget v9, v4, Lʾᵎ/ˈ;->ﹶᐧ:I

    if-nez v9, :cond_21

    const/16 v23, 0x1

    :goto_17
    const/4 v6, 0x1

    goto :goto_18

    :cond_21
    const/16 v23, 0x0

    goto :goto_17

    :goto_18
    if-ne v9, v6, :cond_22

    const/16 v21, 0x1

    :goto_19
    const/4 v6, 0x2

    goto :goto_1a

    :cond_22
    const/16 v21, 0x0

    goto :goto_19

    :goto_1a
    if-ne v9, v6, :cond_23

    const/4 v9, 0x1

    goto :goto_1b

    :cond_23
    const/4 v9, 0x0

    :goto_1b
    move-object v6, v5

    move/from16 v29, v7

    move/from16 v27, v23

    move/from16 v23, v21

    goto :goto_16

    :goto_1c
    if-nez v21, :cond_31

    iget-object v7, v6, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    move-object/from16 v33, v7

    iget-object v7, v6, Lʾᵎ/ˈ;->ـᵎ:[I

    move-object/from16 v34, v7

    aget-object v7, v33, v15

    if-eqz v9, :cond_24

    const/16 v31, 0x1

    goto :goto_1d

    :cond_24
    const/16 v31, 0x4

    :goto_1d
    invoke-virtual {v7}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v35

    move/from16 v36, v8

    aget v8, v34, p3

    move/from16 v37, v9

    const/4 v9, 0x3

    if-ne v8, v9, :cond_25

    iget-object v8, v6, Lʾᵎ/ˈ;->ˏי:[I

    aget v8, v8, p3

    if-nez v8, :cond_25

    const/4 v8, 0x1

    goto :goto_1e

    :cond_25
    const/4 v8, 0x0

    :goto_1e
    iget-object v9, v7, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v9, :cond_26

    if-eq v6, v5, :cond_26

    invoke-virtual {v9}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v9

    add-int v35, v9, v35

    :cond_26
    move/from16 v9, v35

    if-eqz v37, :cond_27

    if-eq v6, v5, :cond_27

    if-eq v6, v12, :cond_27

    const/16 v31, 0x8

    :cond_27
    move-object/from16 v35, v5

    iget-object v5, v7, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v5, :cond_2b

    if-ne v6, v12, :cond_28

    move/from16 v38, v8

    iget-object v8, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v10, 0x6

    invoke-virtual {v1, v8, v5, v9, v10}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_1f

    :cond_28
    move/from16 v38, v8

    iget-object v8, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/16 v10, 0x8

    invoke-virtual {v1, v8, v5, v9, v10}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :goto_1f
    if-eqz v38, :cond_29

    if-nez v37, :cond_29

    const/16 v31, 0x5

    :cond_29
    if-ne v6, v12, :cond_2a

    if-eqz v37, :cond_2a

    iget-object v5, v6, Lʾᵎ/ˈ;->ʼˈ:[Z

    aget-boolean v5, v5, p3

    if-eqz v5, :cond_2a

    const/4 v5, 0x5

    goto :goto_20

    :cond_2a
    move/from16 v5, v31

    :goto_20
    iget-object v8, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v7, v7, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v8, v7, v9, v5}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_2b
    if-eqz v36, :cond_2d

    iget v5, v6, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v10, 0x8

    if-eq v5, v10, :cond_2c

    aget v5, v34, p3

    const/4 v9, 0x3

    if-ne v5, v9, :cond_2c

    add-int/lit8 v5, v15, 0x1

    aget-object v5, v33, v5

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    aget-object v7, v33, v15

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v1, v5, v7, v8, v9}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_21

    :cond_2c
    const/4 v8, 0x0

    :goto_21
    aget-object v5, v33, v15

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    aget-object v7, v18, v15

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/16 v10, 0x8

    invoke-virtual {v1, v5, v7, v8, v10}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_2d
    add-int/lit8 v5, v15, 0x1

    aget-object v5, v33, v5

    iget-object v5, v5, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v5, :cond_2e

    iget-object v5, v5, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    iget-object v7, v5, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v7, v7, v15

    iget-object v7, v7, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v7, :cond_2e

    iget-object v7, v7, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    if-eq v7, v6, :cond_2f

    :cond_2e
    move-object/from16 v5, v16

    :cond_2f
    if-eqz v5, :cond_30

    move-object v6, v5

    goto :goto_22

    :cond_30
    const/16 v21, 0x1

    :goto_22
    move-object/from16 v10, p2

    move-object/from16 v5, v35

    move/from16 v8, v36

    move/from16 v9, v37

    goto/16 :goto_1c

    :cond_31
    move/from16 v36, v8

    move/from16 v37, v9

    if-eqz v2, :cond_34

    iget-object v5, v11, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v5, :cond_34

    iget-object v5, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v5, v5, v6

    iget-object v7, v2, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v7, v7, p3

    const/4 v9, 0x3

    if-ne v7, v9, :cond_32

    iget-object v7, v2, Lʾᵎ/ˈ;->ˏי:[I

    aget v7, v7, p3

    if-nez v7, :cond_32

    if-nez v37, :cond_32

    iget-object v7, v5, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object v8, v7, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    if-ne v8, v0, :cond_32

    iget-object v8, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v5}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x5

    invoke-virtual {v1, v8, v7, v9, v10}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_23

    :cond_32
    const/4 v10, 0x5

    if-eqz v37, :cond_33

    iget-object v7, v5, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object v8, v7, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    if-ne v8, v0, :cond_33

    iget-object v8, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v5}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v9

    neg-int v9, v9

    const/4 v10, 0x4

    invoke-virtual {v1, v8, v7, v9, v10}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_33
    :goto_23
    iget-object v7, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v8, v11, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v6, v8, v6

    iget-object v6, v6, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v5}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v5

    neg-int v5, v5

    const/4 v10, 0x6

    invoke-virtual {v1, v7, v6, v5, v10}, Lʻٴ/ʽ;->ᵎﹶ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_34
    if-eqz v36, :cond_35

    add-int/lit8 v5, v15, 0x1

    aget-object v6, v18, v5

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v7, v11, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v5, v7, v5

    iget-object v7, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v5}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v5

    const/16 v10, 0x8

    invoke-virtual {v1, v6, v7, v5, v10}, Lʻٴ/ʽ;->ﾞᴵ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_35
    iget-object v5, v3, Lʾᵎ/ⁱˊ;->ᵔᵢ:Ljava/util/ArrayList;

    if-eqz v5, :cond_3f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3f

    iget-boolean v8, v3, Lʾᵎ/ⁱˊ;->ᵔʾ:Z

    if-eqz v8, :cond_36

    iget-boolean v8, v3, Lʾᵎ/ⁱˊ;->ʼᐧ:Z

    if-nez v8, :cond_36

    iget v8, v3, Lʾᵎ/ⁱˊ;->ˆʾ:I

    int-to-float v8, v8

    move/from16 v29, v8

    :cond_36
    move-object/from16 v9, v16

    move/from16 v10, v17

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v6, :cond_3f

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Lʾᵎ/ˈ;

    iget-object v0, v7, Lʾᵎ/ˈ;->ﹳﹳ:[F

    move-object/from16 v18, v0

    iget-object v0, v7, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget v18, v18, p3

    cmpg-float v21, v18, v17

    move-object/from16 v25, v0

    if-gez v21, :cond_38

    iget-boolean v0, v3, Lʾᵎ/ⁱˊ;->ʼᐧ:Z

    if-eqz v0, :cond_37

    add-int/lit8 v0, v15, 0x1

    aget-object v0, v25, v0

    iget-object v0, v0, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    aget-object v7, v25, v15

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    move-object/from16 v30, v5

    move/from16 v31, v6

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v1, v0, v7, v5, v6}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    move/from16 v20, v10

    move v10, v5

    goto :goto_25

    :cond_37
    const/high16 v18, 0x3f800000    # 1.0f

    :cond_38
    move-object/from16 v30, v5

    move/from16 v31, v6

    const/4 v6, 0x4

    cmpl-float v0, v18, v17

    if-nez v0, :cond_39

    add-int/lit8 v0, v15, 0x1

    aget-object v0, v25, v0

    iget-object v0, v0, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    aget-object v5, v25, v15

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    move/from16 v20, v10

    const/16 v7, 0x8

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v5, v10, v7}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :goto_25
    move/from16 v21, v8

    move/from16 v36, v17

    move/from16 v10, v20

    move/from16 v17, v13

    goto/16 :goto_2a

    :cond_39
    move/from16 v20, v10

    const/4 v10, 0x0

    if-eqz v9, :cond_3e

    iget-object v5, v9, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v9, v5, v15

    iget-object v9, v9, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    add-int/lit8 v33, v15, 0x1

    aget-object v5, v5, v33

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    aget-object v6, v25, v15

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    aget-object v10, v25, v33

    iget-object v10, v10, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    move/from16 v25, v0

    invoke-virtual {v1}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v0

    move-object/from16 v33, v7

    move/from16 v7, v17

    iput v7, v0, Lʻٴ/ⁱˊ;->ⁱˊ:F

    cmpl-float v17, v29, v7

    move/from16 v36, v7

    const/high16 v7, -0x40800000    # -1.0f

    if-eqz v17, :cond_3a

    cmpl-float v17, v20, v18

    if-nez v17, :cond_3b

    :cond_3a
    move/from16 v21, v8

    move/from16 v17, v13

    move v13, v7

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_27

    :cond_3b
    cmpl-float v17, v20, v36

    if-nez v17, :cond_3c

    iget-object v6, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9, v10}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v6, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v6, v5, v7}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    :goto_26
    move/from16 v21, v8

    move/from16 v17, v13

    goto :goto_28

    :cond_3c
    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v25, :cond_3d

    iget-object v5, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v5, v6, v7}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v5, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v10, v6}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    goto :goto_26

    :cond_3d
    div-float v17, v20, v29

    div-float v20, v18, v29

    move/from16 v21, v8

    div-float v8, v17, v20

    move/from16 v17, v13

    iget-object v13, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v13, v9, v7}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v7, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    const/high16 v13, -0x40800000    # -1.0f

    invoke-virtual {v7, v5, v13}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v5, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v5, v10, v8}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v5, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    neg-float v7, v8

    invoke-virtual {v5, v6, v7}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    goto :goto_28

    :goto_27
    iget-object v8, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v8, v9, v7}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v8, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v8, v5, v13}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v5, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v5, v10, v7}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    iget-object v5, v0, Lʻٴ/ⁱˊ;->ˈ:Lʻٴ/ﹳٴ;

    invoke-virtual {v5, v6, v13}, Lʻٴ/ﹳٴ;->ᵎﹶ(Lʻٴ/ᵔᵢ;F)V

    :goto_28
    invoke-virtual {v1, v0}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    goto :goto_29

    :cond_3e
    move-object/from16 v33, v7

    move/from16 v21, v8

    move/from16 v36, v17

    move/from16 v17, v13

    :goto_29
    move/from16 v10, v18

    move-object/from16 v9, v33

    :goto_2a
    add-int/lit8 v8, v21, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v13, v17

    move-object/from16 v5, v30

    move/from16 v6, v31

    move/from16 v17, v36

    goto/16 :goto_24

    :cond_3f
    move/from16 v17, v13

    if-eqz v12, :cond_40

    if-eq v12, v2, :cond_41

    if-eqz v37, :cond_40

    goto :goto_2b

    :cond_40
    move-object v0, v2

    const/16 v28, 0x2

    goto :goto_31

    :cond_41
    :goto_2b
    aget-object v0, v19, v15

    iget-object v3, v11, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    add-int/lit8 v5, v15, 0x1

    aget-object v3, v3, v5

    iget-object v0, v0, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_2c

    :cond_42
    move-object/from16 v0, v16

    :goto_2c
    iget-object v6, v3, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v6, :cond_43

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_2d

    :cond_43
    move-object/from16 v6, v16

    :goto_2d
    iget-object v7, v12, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v7, v7, v15

    if-eqz v2, :cond_44

    iget-object v3, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v3, v3, v5

    :cond_44
    if-eqz v0, :cond_46

    if-eqz v6, :cond_46

    if-nez p3, :cond_45

    iget v4, v4, Lʾᵎ/ˈ;->ˏᵢ:F

    :goto_2e
    move v5, v4

    goto :goto_2f

    :cond_45
    iget v4, v4, Lʾᵎ/ˈ;->ᴵʼ:F

    goto :goto_2e

    :goto_2f
    invoke-virtual {v7}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v8

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v3, v3, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v9, 0x7

    move-object/from16 v28, v3

    move-object v3, v0

    move-object v0, v2

    move-object v2, v7

    move-object/from16 v7, v28

    const/16 v28, 0x2

    invoke-virtual/range {v1 .. v9}, Lʻٴ/ʽ;->ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;IFLʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_30

    :cond_46
    move-object v0, v2

    const/16 v28, 0x2

    :cond_47
    :goto_30
    move-object/from16 v1, p1

    goto/16 :goto_45

    :goto_31
    if-eqz v27, :cond_59

    if-eqz v12, :cond_59

    iget v1, v3, Lʾᵎ/ⁱˊ;->ˆʾ:I

    if-lez v1, :cond_48

    iget v2, v3, Lʾᵎ/ⁱˊ;->ʼˎ:I

    if-ne v2, v1, :cond_48

    const/16 v22, 0x1

    goto :goto_32

    :cond_48
    const/16 v22, 0x0

    :goto_32
    move-object v10, v12

    move-object v13, v10

    :goto_33
    if-eqz v10, :cond_47

    iget-object v1, v10, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    iget-object v2, v10, Lʾᵎ/ˈ;->ˑʼ:[Lʾᵎ/ˈ;

    aget-object v2, v2, p3

    :goto_34
    if-eqz v2, :cond_49

    iget v3, v2, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4a

    iget-object v2, v2, Lʾᵎ/ˈ;->ˑʼ:[Lʾᵎ/ˈ;

    aget-object v2, v2, p3

    goto :goto_34

    :cond_49
    const/16 v4, 0x8

    :cond_4a
    if-nez v2, :cond_4c

    if-ne v10, v0, :cond_4b

    goto :goto_35

    :cond_4b
    move-object/from16 v18, v2

    move-object/from16 v20, v19

    const/16 v32, 0x5

    move-object/from16 v19, v13

    move v13, v4

    goto/16 :goto_3b

    :cond_4c
    :goto_35
    aget-object v3, v1, v15

    iget-object v5, v3, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v6, v3, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v6, :cond_4d

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_36

    :cond_4d
    move-object/from16 v6, v16

    :goto_36
    if-eq v13, v10, :cond_4e

    iget-object v6, v13, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_37

    :cond_4e
    if-ne v10, v12, :cond_50

    aget-object v6, v19, v15

    iget-object v6, v6, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v6, :cond_4f

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_37

    :cond_4f
    move-object/from16 v6, v16

    :cond_50
    :goto_37
    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v3

    add-int/lit8 v7, v15, 0x1

    aget-object v8, v1, v7

    invoke-virtual {v8}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v8

    if-eqz v2, :cond_51

    iget-object v9, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v9, v9, v15

    iget-object v4, v9, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_38

    :cond_51
    iget-object v4, v11, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v4, v4, v7

    iget-object v9, v4, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v9, :cond_52

    iget-object v4, v9, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_38

    :cond_52
    move-object/from16 v4, v16

    :goto_38
    aget-object v1, v1, v7

    iget-object v1, v1, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    if-eqz v9, :cond_53

    invoke-virtual {v9}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v9

    add-int/2addr v8, v9

    :cond_53
    iget-object v9, v13, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v9

    add-int/2addr v9, v3

    if-eqz v5, :cond_57

    if-eqz v6, :cond_57

    if-eqz v4, :cond_57

    if-eqz v1, :cond_57

    if-ne v10, v12, :cond_54

    iget-object v3, v12, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v9

    :cond_54
    if-ne v10, v0, :cond_55

    iget-object v3, v0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v8

    :cond_55
    move-object v3, v6

    move-object v6, v4

    move v4, v9

    if-eqz v22, :cond_56

    const/16 v9, 0x8

    :goto_39
    move-object v7, v2

    move-object v2, v5

    goto :goto_3a

    :cond_56
    const/4 v9, 0x5

    goto :goto_39

    :goto_3a
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v18, v7

    move-object/from16 v20, v19

    const/16 v32, 0x5

    move-object v7, v1

    move-object/from16 v19, v13

    const/16 v13, 0x8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lʻٴ/ʽ;->ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;IFLʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_3b

    :cond_57
    move-object/from16 v18, v2

    move-object/from16 v20, v19

    const/16 v32, 0x5

    move-object/from16 v19, v13

    const/16 v13, 0x8

    :goto_3b
    iget v1, v10, Lʾᵎ/ˈ;->ˊᵔ:I

    if-eq v1, v13, :cond_58

    move-object/from16 v19, v10

    :cond_58
    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v19, v20

    goto/16 :goto_33

    :cond_59
    move-object/from16 v20, v19

    const/16 v13, 0x8

    if-eqz v23, :cond_47

    if-eqz v12, :cond_47

    iget v1, v3, Lʾᵎ/ⁱˊ;->ˆʾ:I

    if-lez v1, :cond_5a

    iget v2, v3, Lʾᵎ/ⁱˊ;->ʼˎ:I

    if-ne v2, v1, :cond_5a

    const/16 v22, 0x1

    goto :goto_3c

    :cond_5a
    const/16 v22, 0x0

    :goto_3c
    move-object v1, v12

    move-object v10, v1

    :goto_3d
    if-eqz v10, :cond_65

    iget-object v2, v10, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    iget-object v3, v10, Lʾᵎ/ˈ;->ˑʼ:[Lʾᵎ/ˈ;

    aget-object v3, v3, p3

    :goto_3e
    if-eqz v3, :cond_5b

    iget v4, v3, Lʾᵎ/ˈ;->ˊᵔ:I

    if-ne v4, v13, :cond_5b

    iget-object v3, v3, Lʾᵎ/ˈ;->ˑʼ:[Lʾᵎ/ˈ;

    aget-object v3, v3, p3

    goto :goto_3e

    :cond_5b
    if-eq v10, v12, :cond_63

    if-eq v10, v0, :cond_63

    if-eqz v3, :cond_63

    if-ne v3, v0, :cond_5c

    move-object/from16 v3, v16

    :cond_5c
    aget-object v4, v2, v15

    move-object v5, v2

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v6, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    add-int/lit8 v7, v15, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v8

    if-eqz v3, :cond_5e

    iget-object v5, v3, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v5, v5, v15

    iget-object v9, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v13, v5, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v13, :cond_5d

    iget-object v13, v13, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_40

    :cond_5d
    move-object/from16 v13, v16

    goto :goto_40

    :cond_5e
    iget-object v9, v0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v9, v9, v15

    if-eqz v9, :cond_5f

    iget-object v13, v9, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_3f

    :cond_5f
    move-object/from16 v13, v16

    :goto_3f
    aget-object v5, v5, v7

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    move-object/from16 v39, v13

    move-object v13, v5

    move-object v5, v9

    move-object/from16 v9, v39

    :goto_40
    if-eqz v5, :cond_60

    invoke-virtual {v5}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v5

    add-int/2addr v8, v5

    :cond_60
    iget-object v5, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v5

    add-int/2addr v4, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v9

    if-eqz v22, :cond_61

    const/16 v9, 0x8

    goto :goto_41

    :cond_61
    const/4 v9, 0x4

    :goto_41
    if-eqz v2, :cond_62

    if-eqz v3, :cond_62

    if-eqz v6, :cond_62

    if-eqz v13, :cond_62

    move-object v7, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v18, v7

    move-object v7, v13

    const/16 v31, 0x4

    move-object v13, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lʻٴ/ʽ;->ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;IFLʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_42

    :cond_62
    move-object v13, v1

    move-object/from16 v18, v5

    const/16 v31, 0x4

    move-object/from16 v1, p1

    :goto_42
    move-object/from16 v3, v18

    goto :goto_43

    :cond_63
    move-object v13, v1

    const/16 v31, 0x4

    move-object/from16 v1, p1

    :goto_43
    iget v2, v10, Lʾᵎ/ˈ;->ˊᵔ:I

    const/16 v4, 0x8

    if-eq v2, v4, :cond_64

    move-object v13, v10

    :cond_64
    move-object v10, v3

    move-object v1, v13

    move v13, v4

    goto/16 :goto_3d

    :cond_65
    move-object/from16 v1, p1

    iget-object v2, v12, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v15

    aget-object v3, v20, v15

    iget-object v3, v3, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    iget-object v4, v0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    add-int/lit8 v5, v15, 0x1

    aget-object v10, v4, v5

    iget-object v4, v11, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v4, v4, v5

    iget-object v13, v4, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    const/4 v9, 0x5

    if-eqz v3, :cond_67

    if-eq v12, v0, :cond_66

    iget-object v4, v2, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v3, v3, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    invoke-virtual {v1, v4, v3, v2, v9}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    goto :goto_44

    :cond_66
    if-eqz v13, :cond_67

    move-object v4, v2

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v3, v3, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    iget-object v6, v10, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v7, v13, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v10}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v8

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lʻٴ/ʽ;->ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;IFLʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_67
    :goto_44
    if-eqz v13, :cond_68

    if-eq v12, v0, :cond_68

    iget-object v2, v10, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v3, v13, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v10}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v2, v3, v4, v9}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_68
    :goto_45
    if-nez v27, :cond_69

    if-eqz v23, :cond_70

    :cond_69
    if-eqz v12, :cond_70

    if-eq v12, v0, :cond_70

    iget-object v2, v12, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v3, v2, v15

    if-nez v0, :cond_6a

    move-object v0, v12

    :cond_6a
    iget-object v4, v0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    add-int/lit8 v5, v15, 0x1

    aget-object v6, v4, v5

    iget-object v7, v3, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v7, :cond_6b

    iget-object v7, v7, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_46

    :cond_6b
    move-object/from16 v7, v16

    :goto_46
    iget-object v8, v6, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v8, :cond_6c

    iget-object v8, v8, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    goto :goto_47

    :cond_6c
    move-object/from16 v8, v16

    :goto_47
    if-eq v11, v0, :cond_6e

    iget-object v8, v11, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v8, v8, v5

    iget-object v8, v8, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v8, :cond_6d

    iget-object v8, v8, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    move-object/from16 v16, v8

    :cond_6d
    move-object/from16 v8, v16

    :cond_6e
    if-ne v12, v0, :cond_6f

    aget-object v6, v2, v5

    :cond_6f
    if-eqz v7, :cond_70

    if-eqz v8, :cond_70

    move-object v0, v4

    invoke-virtual {v3}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v4

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v0

    iget-object v2, v3, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v3, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v9, 0x5

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v6, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v8

    move v8, v0

    invoke-virtual/range {v1 .. v9}, Lʻٴ/ʽ;->ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;IFLʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_70
    :goto_48
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v13, v17

    goto/16 :goto_2

    :cond_71
    return-void
.end method
