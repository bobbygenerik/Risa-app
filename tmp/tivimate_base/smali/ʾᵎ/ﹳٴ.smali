.class public final Lʾᵎ/ﹳٴ;
.super Lʾᵎ/ʼˎ;
.source "SourceFile"


# instance fields
.field public ʼـ:Z

.field public ʾˊ:Z

.field public ˑ:I

.field public י:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Barrier] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʾᵎ/ˈ;->ـﹶ:Ljava/lang/String;

    const-string v2, " {"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lʾᵎ/ʼˎ;->ᐧﹶ:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lʾᵎ/ʼˎ;->ʽᵔ:[Lʾᵎ/ˈ;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-static {v0, v3}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lʾᵎ/ˈ;->ـﹶ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-static {v0, v1}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ʾˋ()Z
    .locals 1

    iget-boolean v0, p0, Lʾᵎ/ﹳٴ;->ʼـ:Z

    return v0
.end method

.method public final ـˏ()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Lʾᵎ/ʼˎ;->ᐧﹶ:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lʾᵎ/ʼˎ;->ʽᵔ:[Lʾᵎ/ˈ;

    aget-object v4, v4, v2

    iget-boolean v7, p0, Lʾᵎ/ﹳٴ;->ʾˊ:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lʾᵎ/ˈ;->ʽ()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    iget v7, p0, Lʾᵎ/ﹳٴ;->י:I

    if-eqz v7, :cond_1

    if-ne v7, v0, :cond_2

    :cond_1
    invoke-virtual {v4}, Lʾᵎ/ˈ;->ʾˋ()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_2
    iget v7, p0, Lʾᵎ/ﹳٴ;->י:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Lʾᵎ/ˈ;->ᴵˊ()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_13

    if-lez v4, :cond_13

    move v2, v1

    move v3, v2

    :goto_3
    iget v4, p0, Lʾᵎ/ʼˎ;->ᐧﹶ:I

    if-ge v1, v4, :cond_10

    iget-object v4, p0, Lʾᵎ/ʼˎ;->ʽᵔ:[Lʾᵎ/ˈ;

    aget-object v4, v4, v1

    iget-boolean v7, p0, Lʾᵎ/ﹳٴ;->ʾˊ:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lʾᵎ/ˈ;->ʽ()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v7, 0x5

    const/4 v8, 0x4

    if-nez v3, :cond_b

    iget v3, p0, Lʾᵎ/ﹳٴ;->י:I

    if-nez v3, :cond_7

    invoke-virtual {v4, v6}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v2

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    goto :goto_4

    :cond_7
    if-ne v3, v0, :cond_8

    invoke-virtual {v4, v8}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v2

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    goto :goto_4

    :cond_8
    if-ne v3, v6, :cond_9

    invoke-virtual {v4, v5}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v2

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    goto :goto_4

    :cond_9
    if-ne v3, v5, :cond_a

    invoke-virtual {v4, v7}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v2

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˈ()I

    move-result v2

    :cond_a
    :goto_4
    move v3, v0

    :cond_b
    iget v9, p0, Lʾᵎ/ﹳٴ;->י:I

    if-nez v9, :cond_c

    invoke-virtual {v4, v6}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v4

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_c
    if-ne v9, v0, :cond_d

    invoke-virtual {v4, v8}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v4

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_5

    :cond_d
    if-ne v9, v6, :cond_e

    invoke-virtual {v4, v5}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v4

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_e
    if-ne v9, v5, :cond_f

    invoke-virtual {v4, v7}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v4

    invoke-virtual {v4}, Lʾᵎ/ʽ;->ˈ()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_10
    iget v1, p0, Lʾᵎ/ﹳٴ;->ˑ:I

    add-int/2addr v2, v1

    iget v1, p0, Lʾᵎ/ﹳٴ;->י:I

    if-eqz v1, :cond_12

    if-ne v1, v0, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v2, v2}, Lʾᵎ/ˈ;->ᵎˊ(II)V

    goto :goto_7

    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Lʾᵎ/ˈ;->ٴʼ(II)V

    :goto_7
    iput-boolean v0, p0, Lʾᵎ/ﹳٴ;->ʼـ:Z

    return v0

    :cond_13
    return v1
.end method

.method public final ᴵˊ()Z
    .locals 1

    iget-boolean v0, p0, Lʾᵎ/ﹳٴ;->ʼـ:Z

    return v0
.end method

.method public final ⁱˊ(Lʻٴ/ʽ;Z)V
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    const/4 v3, 0x0

    iget-object v4, v0, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    aput-object v4, v2, v3

    const/4 v5, 0x2

    iget-object v6, v0, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    aput-object v6, v2, v5

    const/4 v7, 0x1

    iget-object v8, v0, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    aput-object v8, v2, v7

    const/4 v9, 0x3

    iget-object v10, v0, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    aput-object v10, v2, v9

    move v11, v3

    :goto_0
    array-length v12, v2

    if-ge v11, v12, :cond_0

    aget-object v12, v2, v11

    invoke-virtual {v1, v12}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v13

    iput-object v13, v12, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget v11, v0, Lʾᵎ/ﹳٴ;->י:I

    if-ltz v11, :cond_1e

    const/4 v12, 0x4

    if-ge v11, v12, :cond_1e

    aget-object v2, v2, v11

    iget-boolean v11, v0, Lʾᵎ/ﹳٴ;->ʼـ:Z

    if-nez v11, :cond_1

    invoke-virtual {v0}, Lʾᵎ/ﹳٴ;->ـˏ()Z

    :cond_1
    iget-boolean v11, v0, Lʾᵎ/ﹳٴ;->ʼـ:Z

    if-eqz v11, :cond_5

    iput-boolean v3, v0, Lʾᵎ/ﹳٴ;->ʼـ:Z

    iget v2, v0, Lʾᵎ/ﹳٴ;->י:I

    if-eqz v2, :cond_4

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    if-eq v2, v5, :cond_3

    if-ne v2, v9, :cond_1e

    :cond_3
    iget-object v2, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v3, v0, Lʾᵎ/ˈ;->ʿᵢ:I

    invoke-virtual {v1, v2, v3}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    iget-object v2, v10, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v3, v0, Lʾᵎ/ˈ;->ʿᵢ:I

    invoke-virtual {v1, v2, v3}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    return-void

    :cond_4
    :goto_1
    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v3, v0, Lʾᵎ/ˈ;->ʿ:I

    invoke-virtual {v1, v2, v3}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    iget-object v2, v8, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v3, v0, Lʾᵎ/ˈ;->ʿ:I

    invoke-virtual {v1, v2, v3}, Lʻٴ/ʽ;->ˈ(Lʻٴ/ᵔᵢ;I)V

    return-void

    :cond_5
    move v11, v3

    :goto_2
    iget v13, v0, Lʾᵎ/ʼˎ;->ᐧﹶ:I

    if-ge v11, v13, :cond_b

    iget-object v13, v0, Lʾᵎ/ʼˎ;->ʽᵔ:[Lʾᵎ/ˈ;

    aget-object v13, v13, v11

    iget-boolean v14, v0, Lʾᵎ/ﹳٴ;->ʾˊ:Z

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lʾᵎ/ˈ;->ʽ()Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_4

    :cond_6
    iget v14, v0, Lʾᵎ/ﹳٴ;->י:I

    if-eqz v14, :cond_7

    if-ne v14, v7, :cond_8

    :cond_7
    iget-object v15, v13, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v15, v15, v3

    if-ne v15, v9, :cond_8

    iget-object v15, v13, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget-object v15, v15, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v15, :cond_8

    iget-object v15, v13, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v15, v15, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v15, :cond_8

    :goto_3
    move v11, v7

    goto :goto_5

    :cond_8
    if-eq v14, v5, :cond_9

    if-ne v14, v9, :cond_a

    :cond_9
    iget-object v14, v13, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v14, v14, v7

    if-ne v14, v9, :cond_a

    iget-object v14, v13, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v14, v14, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v14, :cond_a

    iget-object v13, v13, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v13, v13, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v13, :cond_a

    goto :goto_3

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    move v11, v3

    :goto_5
    invoke-virtual {v4}, Lʾᵎ/ʽ;->ᵎﹶ()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v8}, Lʾᵎ/ʽ;->ᵎﹶ()Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_6

    :cond_c
    move v13, v3

    goto :goto_7

    :cond_d
    :goto_6
    move v13, v7

    :goto_7
    invoke-virtual {v6}, Lʾᵎ/ʽ;->ᵎﹶ()Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v10}, Lʾᵎ/ʽ;->ᵎﹶ()Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_8

    :cond_e
    move v14, v3

    goto :goto_9

    :cond_f
    :goto_8
    move v14, v7

    :goto_9
    if-nez v11, :cond_14

    iget v11, v0, Lʾᵎ/ﹳٴ;->י:I

    if-nez v11, :cond_10

    if-nez v13, :cond_13

    :cond_10
    if-ne v11, v5, :cond_11

    if-nez v14, :cond_13

    :cond_11
    if-ne v11, v7, :cond_12

    if-nez v13, :cond_13

    :cond_12
    if-ne v11, v9, :cond_14

    if-eqz v14, :cond_14

    :cond_13
    move v11, v7

    goto :goto_a

    :cond_14
    move v11, v3

    :goto_a
    if-nez v11, :cond_15

    move v11, v12

    goto :goto_b

    :cond_15
    const/4 v11, 0x5

    :goto_b
    move v13, v3

    :goto_c
    iget v14, v0, Lʾᵎ/ʼˎ;->ᐧﹶ:I

    if-ge v13, v14, :cond_1a

    iget-object v14, v0, Lʾᵎ/ʼˎ;->ʽᵔ:[Lʾᵎ/ˈ;

    aget-object v14, v14, v13

    iget-boolean v15, v0, Lʾᵎ/ﹳٴ;->ʾˊ:Z

    if-nez v15, :cond_16

    invoke-virtual {v14}, Lʾᵎ/ˈ;->ʽ()Z

    move-result v15

    if-nez v15, :cond_16

    goto :goto_10

    :cond_16
    iget-object v15, v14, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    iget v9, v0, Lʾᵎ/ﹳٴ;->י:I

    aget-object v9, v15, v9

    invoke-virtual {v1, v9}, Lʻٴ/ʽ;->ٴﹶ(Ljava/lang/Object;)Lʻٴ/ᵔᵢ;

    move-result-object v9

    iget-object v14, v14, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    iget v15, v0, Lʾᵎ/ﹳٴ;->י:I

    aget-object v14, v14, v15

    iput-object v9, v14, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v7, v14, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v7, :cond_17

    iget-object v7, v7, Lʾᵎ/ʽ;->ˈ:Lʾᵎ/ˈ;

    if-ne v7, v0, :cond_17

    iget v7, v14, Lʾᵎ/ʽ;->ᵎﹶ:I

    goto :goto_d

    :cond_17
    move v7, v3

    :goto_d
    if-eqz v15, :cond_19

    if-ne v15, v5, :cond_18

    goto :goto_e

    :cond_18
    iget-object v14, v2, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v15, v0, Lʾᵎ/ﹳٴ;->ˑ:I

    add-int/2addr v15, v7

    invoke-virtual {v1}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v5

    invoke-virtual {v1}, Lʻٴ/ʽ;->ˉʿ()Lʻٴ/ᵔᵢ;

    move-result-object v12

    iput v3, v12, Lʻٴ/ᵔᵢ;->ˈٴ:I

    invoke-virtual {v5, v14, v9, v12, v15}, Lʻٴ/ⁱˊ;->ⁱˊ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;I)V

    invoke-virtual {v1, v5}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    goto :goto_f

    :cond_19
    :goto_e
    iget-object v5, v2, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v12, v0, Lʾᵎ/ﹳٴ;->ˑ:I

    sub-int/2addr v12, v7

    invoke-virtual {v1}, Lʻٴ/ʽ;->ﾞʻ()Lʻٴ/ⁱˊ;

    move-result-object v14

    invoke-virtual {v1}, Lʻٴ/ʽ;->ˉʿ()Lʻٴ/ᵔᵢ;

    move-result-object v15

    iput v3, v15, Lʻٴ/ᵔᵢ;->ˈٴ:I

    invoke-virtual {v14, v5, v9, v15, v12}, Lʻٴ/ⁱˊ;->ʽ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;I)V

    invoke-virtual {v1, v14}, Lʻٴ/ʽ;->ʽ(Lʻٴ/ⁱˊ;)V

    :goto_f
    iget-object v5, v2, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget v12, v0, Lʾᵎ/ﹳٴ;->ˑ:I

    add-int/2addr v12, v7

    invoke-virtual {v1, v5, v9, v12, v11}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :goto_10
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x3

    const/4 v12, 0x4

    goto :goto_c

    :cond_1a
    iget v2, v0, Lʾᵎ/ﹳٴ;->י:I

    const/16 v5, 0x8

    if-nez v2, :cond_1b

    iget-object v2, v8, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v6, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v6, v3, v5}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v5, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v5, v5, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v3, v6}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v4, v4, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget-object v4, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v4, v3, v3}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    return-void

    :cond_1b
    const/4 v7, 0x1

    if-ne v2, v7, :cond_1c

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v6, v8, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v6, v3, v5}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v5, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v5, v5, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget-object v5, v5, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v5, v3, v6}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v4, v4, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v4, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v4, v3, v3}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    return-void

    :cond_1c
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    iget-object v2, v10, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v4, v3, v5}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v4, v4, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v4, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v3, v5}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v4, v4, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v4, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v4, v3, v3}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    return-void

    :cond_1d
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1e

    iget-object v2, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v10, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v4, v3, v5}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v4, v4, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v4, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v4, v3, v5}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    iget-object v2, v6, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    iget-object v4, v0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v4, v4, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v4, v4, Lʾᵎ/ʽ;->ʼˎ:Lʻٴ/ᵔᵢ;

    invoke-virtual {v1, v2, v4, v3, v3}, Lʻٴ/ʽ;->ˑﹳ(Lʻٴ/ᵔᵢ;Lʻٴ/ᵔᵢ;II)V

    :cond_1e
    return-void
.end method

.method public final ﹳـ()I
    .locals 3

    .prologue
    iget v0, p0, Lʾᵎ/ﹳٴ;->י:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
