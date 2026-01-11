.class public final Lʾᵎ/ᵎﹶ;
.super Lʾᵎ/ʼˎ;
.source "SourceFile"


# instance fields
.field public ʻʿ:I

.field public ʻᴵ:Lʾˋ/ˑﹳ;

.field public ʼـ:I

.field public ʼᵢ:I

.field public ʽˑ:F

.field public ʽⁱ:Z

.field public ʾˊ:I

.field public ʾﾞ:I

.field public ʿـ:I

.field public ˈـ:I

.field public ˋˊ:I

.field public ˋـ:[I

.field public ˎʾ:I

.field public ˎˉ:Ljava/util/ArrayList;

.field public ˎᐧ:I

.field public ˑ:I

.field public ˑˆ:I

.field public י:I

.field public יˉ:I

.field public יﹳ:I

.field public ـˊ:I

.field public ـᵢ:F

.field public ٴᴵ:F

.field public ᐧˎ:Lʼʼ/ⁱˊ;

.field public ᵎʿ:I

.field public ᵔⁱ:I

.field public ᵢˋ:[Lʾᵎ/ˈ;

.field public ⁱˉ:I

.field public ⁱי:I

.field public ⁱᴵ:F

.field public ﹳᵢ:[Lʾᵎ/ˈ;

.field public ﹳⁱ:I

.field public ﹶ:F

.field public ﹶʽ:[Lʾᵎ/ˈ;

.field public ﹶˎ:F

.field public ﾞˋ:I


# virtual methods
.method public final ʼˈ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lʾᵎ/ʼˎ;->ᐧﹶ:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lʾᵎ/ʼˎ;->ʽᵔ:[Lʾᵎ/ˈ;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lʾᵎ/ˈ;->ˊʻ:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ˈⁱ(IIIILʾᵎ/ˈ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʾᵎ/ᵎﹶ;->ᐧˎ:Lʼʼ/ⁱˊ;

    :goto_0
    iget-object v1, p0, Lʾᵎ/ᵎﹶ;->ʻᴵ:Lʾˋ/ˑﹳ;

    if-nez v1, :cond_0

    iget-object v2, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v2, :cond_0

    check-cast v2, Lʾᵎ/ˑﹳ;

    iget-object v1, v2, Lʾᵎ/ˑﹳ;->ˑ:Lʾˋ/ˑﹳ;

    iput-object v1, p0, Lʾᵎ/ᵎﹶ;->ʻᴵ:Lʾˋ/ˑﹳ;

    goto :goto_0

    :cond_0
    iput p1, v0, Lʼʼ/ⁱˊ;->ﹳٴ:I

    iput p3, v0, Lʼʼ/ⁱˊ;->ⁱˊ:I

    iput p2, v0, Lʼʼ/ⁱˊ;->ʽ:I

    iput p4, v0, Lʼʼ/ⁱˊ;->ˈ:I

    invoke-virtual {v1, p5, v0}, Lʾˋ/ˑﹳ;->ⁱˊ(Lʾᵎ/ˈ;Lʼʼ/ⁱˊ;)V

    iget p1, v0, Lʼʼ/ⁱˊ;->ˑﹳ:I

    invoke-virtual {p5, p1}, Lʾᵎ/ˈ;->ˈʿ(I)V

    iget p1, v0, Lʼʼ/ⁱˊ;->ﾞᴵ:I

    invoke-virtual {p5, p1}, Lʾᵎ/ˈ;->ᵔי(I)V

    iget-boolean p1, v0, Lʼʼ/ⁱˊ;->ᵔᵢ:Z

    iput-boolean p1, p5, Lʾᵎ/ˈ;->ᴵᵔ:Z

    iget p1, v0, Lʼʼ/ⁱˊ;->ᵎﹶ:I

    invoke-virtual {p5, p1}, Lʾᵎ/ˈ;->ᵎⁱ(I)V

    return-void
.end method

.method public final ـˏ(Lʾᵎ/ˈ;I)I
    .locals 10

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lʾᵎ/ˈ;->ـᵎ:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget v3, p1, Lʾᵎ/ˈ;->יـ:I

    if-nez v3, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    iget v3, p1, Lʾᵎ/ˈ;->ᵢˏ:F

    int-to-float p2, p2

    mul-float/2addr v3, p2

    float-to-int v8, v3

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p2

    if-eq v8, p2, :cond_2

    iput-boolean v2, p1, Lʾᵎ/ˈ;->ᵎﹶ:Z

    aget v5, v1, v0

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result v6

    const/4 v7, 0x1

    move-object v4, p0

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lʾᵎ/ᵎﹶ;->ˈⁱ(IIIILʾᵎ/ˈ;)V

    :cond_2
    return v8

    :cond_3
    move-object v9, p1

    if-ne v3, v2, :cond_4

    invoke-virtual {v9}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p1

    return p1

    :cond_4
    if-ne v3, v4, :cond_6

    invoke-virtual {v9}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result p1

    int-to-float p1, p1

    iget p2, v9, Lʾᵎ/ˈ;->ᴵˑ:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    move-object v9, p1

    :cond_6
    invoke-virtual {v9}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p1

    return p1
.end method

.method public final ⁱˊ(Lʻٴ/ʽ;Z)V
    .locals 11

    .prologue
    iget-object v0, p0, Lʾᵎ/ᵎﹶ;->ˎˉ:Ljava/util/ArrayList;

    invoke-super {p0, p1, p2}, Lʾᵎ/ˈ;->ⁱˊ(Lʻٴ/ʽ;Z)V

    iget-object p1, p0, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    check-cast p1, Lʾᵎ/ˑﹳ;

    iget-boolean p1, p1, Lʾᵎ/ˑﹳ;->ʼـ:Z

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget v2, p0, Lʾᵎ/ᵎﹶ;->ˈـ:I

    if-eqz v2, :cond_1b

    if-eq v2, v1, :cond_19

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p2

    :goto_1
    if-ge v3, v2, :cond_1c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾᵎ/ﾞᴵ;

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, p2

    :goto_2
    invoke-virtual {v4, v3, p1, v5}, Lʾᵎ/ﾞᴵ;->ⁱˊ(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lʾᵎ/ᵎﹶ;->ˋـ:[I

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lʾᵎ/ᵎﹶ;->ᵢˋ:[Lʾᵎ/ˈ;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lʾᵎ/ᵎﹶ;->ﹳᵢ:[Lʾᵎ/ˈ;

    if-nez v0, :cond_4

    goto/16 :goto_e

    :cond_4
    move v0, p2

    :goto_3
    iget v2, p0, Lʾᵎ/ᵎﹶ;->ᵔⁱ:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lʾᵎ/ᵎﹶ;->ﹶʽ:[Lʾᵎ/ˈ;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lʾᵎ/ˈ;->ˈٴ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lʾᵎ/ᵎﹶ;->ˋـ:[I

    aget v2, v0, p2

    aget v0, v0, v1

    iget v3, p0, Lʾᵎ/ᵎﹶ;->ﹶ:F

    const/4 v4, 0x0

    move v5, p2

    :goto_4
    const/16 v6, 0x8

    if-ge v5, v2, :cond_c

    if-eqz p1, :cond_6

    sub-int v3, v2, v5

    sub-int/2addr v3, v1

    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lʾᵎ/ᵎﹶ;->ﹶ:F

    sub-float/2addr v7, v8

    goto :goto_5

    :cond_6
    move v7, v3

    move v3, v5

    :goto_5
    iget-object v8, p0, Lʾᵎ/ᵎﹶ;->ᵢˋ:[Lʾᵎ/ˈ;

    aget-object v3, v8, v3

    if-eqz v3, :cond_b

    iget-object v8, v3, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget v9, v3, Lʾᵎ/ˈ;->ˊᵔ:I

    if-ne v9, v6, :cond_7

    goto :goto_6

    :cond_7
    if-nez v5, :cond_8

    iget-object v6, p0, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget v9, p0, Lʾᵎ/ᵎﹶ;->ˎᐧ:I

    invoke-virtual {v3, v8, v6, v9}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    iget v6, p0, Lʾᵎ/ᵎﹶ;->ـˊ:I

    iput v6, v3, Lʾᵎ/ˈ;->ˈˏ:I

    iput v7, v3, Lʾᵎ/ˈ;->ˏᵢ:F

    :cond_8
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_9

    iget-object v6, v3, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v9, p0, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget v10, p0, Lʾᵎ/ᵎﹶ;->יﹳ:I

    invoke-virtual {v3, v6, v9, v10}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    :cond_9
    if-lez v5, :cond_a

    if-eqz v4, :cond_a

    iget-object v6, v4, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget v9, p0, Lʾᵎ/ᵎﹶ;->ˋˊ:I

    invoke-virtual {v3, v8, v6, v9}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    invoke-virtual {v4, v6, v8, p2}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    :cond_a
    move-object v4, v3

    :cond_b
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_4

    :cond_c
    move p1, p2

    :goto_7
    if-ge p1, v0, :cond_12

    iget-object v3, p0, Lʾᵎ/ᵎﹶ;->ﹳᵢ:[Lʾᵎ/ˈ;

    aget-object v3, v3, p1

    if-eqz v3, :cond_11

    iget-object v5, v3, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget v7, v3, Lʾᵎ/ˈ;->ˊᵔ:I

    if-ne v7, v6, :cond_d

    goto :goto_8

    :cond_d
    if-nez p1, :cond_e

    iget-object v7, p0, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget v8, p0, Lʾᵎ/ᵎﹶ;->י:I

    invoke-virtual {v3, v5, v7, v8}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    iget v7, p0, Lʾᵎ/ᵎﹶ;->ᵎʿ:I

    iput v7, v3, Lʾᵎ/ˈ;->ﹶᐧ:I

    iget v7, p0, Lʾᵎ/ᵎﹶ;->ـᵢ:F

    iput v7, v3, Lʾᵎ/ˈ;->ᴵʼ:F

    :cond_e
    add-int/lit8 v7, v0, -0x1

    if-ne p1, v7, :cond_f

    iget-object v7, v3, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v8, p0, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget v9, p0, Lʾᵎ/ᵎﹶ;->ʾˊ:I

    invoke-virtual {v3, v7, v8, v9}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    :cond_f
    if-lez p1, :cond_10

    if-eqz v4, :cond_10

    iget-object v7, v4, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget v8, p0, Lʾᵎ/ᵎﹶ;->ʼᵢ:I

    invoke-virtual {v3, v5, v7, v8}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    invoke-virtual {v4, v7, v5, p2}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    :cond_10
    move-object v4, v3

    :cond_11
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    move p1, p2

    :goto_9
    if-ge p1, v2, :cond_1c

    move v3, p2

    :goto_a
    if-ge v3, v0, :cond_18

    mul-int v4, v3, v2

    add-int/2addr v4, p1

    iget v5, p0, Lʾᵎ/ᵎﹶ;->ˑˆ:I

    if-ne v5, v1, :cond_13

    mul-int v4, p1, v0

    add-int/2addr v4, v3

    :cond_13
    iget-object v5, p0, Lʾᵎ/ᵎﹶ;->ﹶʽ:[Lʾᵎ/ˈ;

    array-length v7, v5

    if-lt v4, v7, :cond_14

    goto :goto_b

    :cond_14
    aget-object v4, v5, v4

    if-eqz v4, :cond_17

    iget v5, v4, Lʾᵎ/ˈ;->ˊᵔ:I

    if-ne v5, v6, :cond_15

    goto :goto_b

    :cond_15
    iget-object v5, p0, Lʾᵎ/ᵎﹶ;->ᵢˋ:[Lʾᵎ/ˈ;

    aget-object v5, v5, p1

    iget-object v7, p0, Lʾᵎ/ᵎﹶ;->ﹳᵢ:[Lʾᵎ/ˈ;

    aget-object v7, v7, v3

    if-eq v4, v5, :cond_16

    iget-object v8, v4, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    iget-object v9, v5, Lʾᵎ/ˈ;->ᵎⁱ:Lʾᵎ/ʽ;

    invoke-virtual {v4, v8, v9, p2}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    iget-object v8, v4, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    iget-object v5, v5, Lʾᵎ/ˈ;->ᵎˊ:Lʾᵎ/ʽ;

    invoke-virtual {v4, v8, v5, p2}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    :cond_16
    if-eq v4, v7, :cond_17

    iget-object v5, v4, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object v8, v7, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    invoke-virtual {v4, v5, v8, p2}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    iget-object v5, v4, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    iget-object v7, v7, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v4, v5, v7, p2}, Lʾᵎ/ˈ;->ﾞᴵ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    :cond_17
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p2

    :goto_c
    if-ge v3, v2, :cond_1c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾᵎ/ﾞᴵ;

    add-int/lit8 v5, v2, -0x1

    if-ne v3, v5, :cond_1a

    move v5, v1

    goto :goto_d

    :cond_1a
    move v5, p2

    :goto_d
    invoke-virtual {v4, v3, p1, v5}, Lʾᵎ/ﾞᴵ;->ⁱˊ(IZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾᵎ/ﾞᴵ;

    invoke-virtual {v0, p2, p1, v1}, Lʾᵎ/ﾞᴵ;->ⁱˊ(IZZ)V

    :cond_1c
    :goto_e
    iput-boolean p2, p0, Lʾᵎ/ᵎﹶ;->ʽⁱ:Z

    return-void
.end method

.method public final ﹳـ(Lʾᵎ/ˈ;I)I
    .locals 11

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v2, v1, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget v2, p1, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    const/4 v4, 0x1

    if-ne v2, v0, :cond_3

    iget v0, p1, Lʾᵎ/ˈ;->ـˆ:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int v7, v0

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result p2

    if-eq v7, p2, :cond_2

    iput-boolean v4, p1, Lʾᵎ/ˈ;->ᵎﹶ:Z

    aget v8, v1, v4

    invoke-virtual {p1}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v9

    const/4 v6, 0x1

    move-object v5, p0

    move-object v10, p1

    invoke-virtual/range {v5 .. v10}, Lʾᵎ/ᵎﹶ;->ˈⁱ(IIIILʾᵎ/ˈ;)V

    :cond_2
    return v7

    :cond_3
    move-object v10, p1

    if-ne v2, v4, :cond_4

    invoke-virtual {v10}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result p1

    return p1

    :cond_4
    if-ne v2, v3, :cond_6

    invoke-virtual {v10}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result p1

    int-to-float p1, p1

    iget p2, v10, Lʾᵎ/ˈ;->ᴵˑ:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_5
    move-object v10, p1

    :cond_6
    invoke-virtual {v10}, Lʾᵎ/ˈ;->ᵔﹳ()I

    move-result p1

    return p1
.end method
