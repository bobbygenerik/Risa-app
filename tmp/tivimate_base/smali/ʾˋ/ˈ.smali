.class public final Lʾˋ/ˈ;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public ʻˋ:F

.field public ʻٴ:I

.field public ʻᵎ:I

.field public ʼʼ:I

.field public ʼˈ:F

.field public ʼˎ:I

.field public ʼᐧ:I

.field public ʽ:F

.field public ʽʽ:I

.field public ʽﹳ:I

.field public ʾˋ:I

.field public ʾᵎ:I

.field public ʿ:Ljava/lang/String;

.field public ʿᵢ:I

.field public ˆʾ:I

.field public ˆﾞ:I

.field public ˈ:Z

.field public ˈʿ:I

.field public ˈˏ:I

.field public ˈٴ:I

.field public ˈⁱ:I

.field public ˉʿ:I

.field public ˉˆ:I

.field public ˉـ:Z

.field public ˉٴ:F

.field public ˊʻ:F

.field public ˊˋ:F

.field public ˊᵔ:I

.field public ˋᵔ:I

.field public ˏי:I

.field public ˏᵢ:Z

.field public ˑʼ:I

.field public ˑٴ:I

.field public ˑﹳ:I

.field public יـ:I

.field public ـˆ:I

.field public ـˏ:I

.field public ـᵎ:Lʾᵎ/ˈ;

.field public ـﹶ:I

.field public ٴʼ:I

.field public ٴᵢ:Ljava/lang/String;

.field public ٴﹳ:I

.field public ٴﹶ:I

.field public ᐧᴵ:Z

.field public ᐧﾞ:Z

.field public ᴵʼ:Z

.field public ᴵˊ:I

.field public ᴵˑ:Z

.field public ᴵᵔ:F

.field public ᵎʻ:F

.field public ᵎˊ:I

.field public ᵎᵔ:Z

.field public ᵎⁱ:F

.field public ᵎﹶ:I

.field public ᵔʾ:I

.field public ᵔי:I

.field public ᵔٴ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:I

.field public ᵢˏ:I

.field public ⁱˊ:I

.field public ﹳـ:I

.field public ﹳٴ:I

.field public ﹳᐧ:F

.field public ﹳﹳ:I

.field public ﹶᐧ:I

.field public ﾞʻ:I

.field public ﾞᴵ:I


# virtual methods
.method public final resolveLayoutDirection(I)V
    .locals 10

    .prologue
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lʾˋ/ˈ;->ـﹶ:I

    iput v4, p0, Lʾˋ/ˈ;->ˈˏ:I

    iput v4, p0, Lʾˋ/ˈ;->ʻᵎ:I

    iput v4, p0, Lʾˋ/ˈ;->ˊᵔ:I

    iget v5, p0, Lʾˋ/ˈ;->ـˆ:I

    iput v5, p0, Lʾˋ/ˈ;->ﹶᐧ:I

    iget v5, p0, Lʾˋ/ˈ;->ʼʼ:I

    iput v5, p0, Lʾˋ/ˈ;->ﹳﹳ:I

    iget v5, p0, Lʾˋ/ˈ;->ᴵᵔ:F

    iput v5, p0, Lʾˋ/ˈ;->ʻˋ:F

    iget v6, p0, Lʾˋ/ˈ;->ﹳٴ:I

    iput v6, p0, Lʾˋ/ˈ;->ˑʼ:I

    iget v7, p0, Lʾˋ/ˈ;->ⁱˊ:I

    iput v7, p0, Lʾˋ/ˈ;->ٴﹳ:I

    iget v8, p0, Lʾˋ/ˈ;->ʽ:F

    iput v8, p0, Lʾˋ/ˈ;->ᵎʻ:F

    const/high16 v9, -0x80000000

    if-eqz p1, :cond_a

    iget p1, p0, Lʾˋ/ˈ;->יـ:I

    if-eq p1, v4, :cond_1

    iput p1, p0, Lʾˋ/ˈ;->ـﹶ:I

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    iget p1, p0, Lʾˋ/ˈ;->ˏי:I

    if-eq p1, v4, :cond_2

    iput p1, p0, Lʾˋ/ˈ;->ˈˏ:I

    goto :goto_1

    :cond_2
    :goto_2
    iget p1, p0, Lʾˋ/ˈ;->ʽﹳ:I

    if-eq p1, v4, :cond_3

    iput p1, p0, Lʾˋ/ˈ;->ˊᵔ:I

    move v2, v3

    :cond_3
    iget p1, p0, Lʾˋ/ˈ;->ʻٴ:I

    if-eq p1, v4, :cond_4

    iput p1, p0, Lʾˋ/ˈ;->ʻᵎ:I

    move v2, v3

    :cond_4
    iget p1, p0, Lʾˋ/ˈ;->ʾˋ:I

    if-eq p1, v9, :cond_5

    iput p1, p0, Lʾˋ/ˈ;->ﹳﹳ:I

    :cond_5
    iget p1, p0, Lʾˋ/ˈ;->ᴵˊ:I

    if-eq p1, v9, :cond_6

    iput p1, p0, Lʾˋ/ˈ;->ﹶᐧ:I

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_7

    sub-float v2, p1, v5

    iput v2, p0, Lʾˋ/ˈ;->ʻˋ:F

    :cond_7
    iget-boolean v2, p0, Lʾˋ/ˈ;->ˏᵢ:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lʾˋ/ˈ;->ˈⁱ:I

    if-ne v2, v3, :cond_10

    iget-boolean v2, p0, Lʾˋ/ˈ;->ˈ:Z

    if-eqz v2, :cond_10

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v8, v2

    if-eqz v3, :cond_8

    sub-float/2addr p1, v8

    iput p1, p0, Lʾˋ/ˈ;->ᵎʻ:F

    iput v4, p0, Lʾˋ/ˈ;->ˑʼ:I

    iput v4, p0, Lʾˋ/ˈ;->ٴﹳ:I

    goto :goto_3

    :cond_8
    if-eq v6, v4, :cond_9

    iput v6, p0, Lʾˋ/ˈ;->ٴﹳ:I

    iput v4, p0, Lʾˋ/ˈ;->ˑʼ:I

    iput v2, p0, Lʾˋ/ˈ;->ᵎʻ:F

    goto :goto_3

    :cond_9
    if-eq v7, v4, :cond_10

    iput v7, p0, Lʾˋ/ˈ;->ˑʼ:I

    iput v4, p0, Lʾˋ/ˈ;->ٴﹳ:I

    iput v2, p0, Lʾˋ/ˈ;->ᵎʻ:F

    goto :goto_3

    :cond_a
    iget p1, p0, Lʾˋ/ˈ;->יـ:I

    if-eq p1, v4, :cond_b

    iput p1, p0, Lʾˋ/ˈ;->ˊᵔ:I

    :cond_b
    iget p1, p0, Lʾˋ/ˈ;->ˏי:I

    if-eq p1, v4, :cond_c

    iput p1, p0, Lʾˋ/ˈ;->ʻᵎ:I

    :cond_c
    iget p1, p0, Lʾˋ/ˈ;->ʽﹳ:I

    if-eq p1, v4, :cond_d

    iput p1, p0, Lʾˋ/ˈ;->ـﹶ:I

    :cond_d
    iget p1, p0, Lʾˋ/ˈ;->ʻٴ:I

    if-eq p1, v4, :cond_e

    iput p1, p0, Lʾˋ/ˈ;->ˈˏ:I

    :cond_e
    iget p1, p0, Lʾˋ/ˈ;->ʾˋ:I

    if-eq p1, v9, :cond_f

    iput p1, p0, Lʾˋ/ˈ;->ﹶᐧ:I

    :cond_f
    iget p1, p0, Lʾˋ/ˈ;->ᴵˊ:I

    if-eq p1, v9, :cond_10

    iput p1, p0, Lʾˋ/ˈ;->ﹳﹳ:I

    :cond_10
    :goto_3
    iget p1, p0, Lʾˋ/ˈ;->ʽﹳ:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lʾˋ/ˈ;->ʻٴ:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lʾˋ/ˈ;->ˏי:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lʾˋ/ˈ;->יـ:I

    if-ne p1, v4, :cond_14

    iget p1, p0, Lʾˋ/ˈ;->ᵎﹶ:I

    if-eq p1, v4, :cond_11

    iput p1, p0, Lʾˋ/ˈ;->ـﹶ:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    :cond_11
    iget p1, p0, Lʾˋ/ˈ;->ᵔᵢ:I

    if-eq p1, v4, :cond_12

    iput p1, p0, Lʾˋ/ˈ;->ˈˏ:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_12
    :goto_4
    iget p1, p0, Lʾˋ/ˈ;->ˑﹳ:I

    if-eq p1, v4, :cond_13

    iput p1, p0, Lʾˋ/ˈ;->ʻᵎ:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-void

    :cond_13
    iget p1, p0, Lʾˋ/ˈ;->ﾞᴵ:I

    if-eq p1, v4, :cond_14

    iput p1, p0, Lʾˋ/ˈ;->ˊᵔ:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_14
    return-void
.end method

.method public final ﹳٴ()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lʾˋ/ˈ;->ˏᵢ:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lʾˋ/ˈ;->ᵎᵔ:Z

    iput-boolean v1, p0, Lʾˋ/ˈ;->ᐧﾞ:Z

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v4, p0, Lʾˋ/ˈ;->ᴵˑ:Z

    if-eqz v4, :cond_0

    iput-boolean v0, p0, Lʾˋ/ˈ;->ᵎᵔ:Z

    iget v4, p0, Lʾˋ/ˈ;->ᵔי:I

    if-nez v4, :cond_0

    iput v1, p0, Lʾˋ/ˈ;->ᵔי:I

    :cond_0
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v3, :cond_1

    iget-boolean v5, p0, Lʾˋ/ˈ;->ˉـ:Z

    if-eqz v5, :cond_1

    iput-boolean v0, p0, Lʾˋ/ˈ;->ᐧﾞ:Z

    iget v5, p0, Lʾˋ/ˈ;->ˆﾞ:I

    if-nez v5, :cond_1

    iput v1, p0, Lʾˋ/ˈ;->ˆﾞ:I

    :cond_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_3

    :cond_2
    iput-boolean v0, p0, Lʾˋ/ˈ;->ᵎᵔ:Z

    if-nez v2, :cond_3

    iget v2, p0, Lʾˋ/ˈ;->ᵔי:I

    if-ne v2, v1, :cond_3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v1, p0, Lʾˋ/ˈ;->ᴵˑ:Z

    :cond_3
    if-eqz v4, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    iput-boolean v0, p0, Lʾˋ/ˈ;->ᐧﾞ:Z

    if-nez v4, :cond_5

    iget v0, p0, Lʾˋ/ˈ;->ˆﾞ:I

    if-ne v0, v1, :cond_5

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v1, p0, Lʾˋ/ˈ;->ˉـ:Z

    :cond_5
    iget v0, p0, Lʾˋ/ˈ;->ʽ:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_7

    iget v0, p0, Lʾˋ/ˈ;->ﹳٴ:I

    if-ne v0, v5, :cond_7

    iget v0, p0, Lʾˋ/ˈ;->ⁱˊ:I

    if-eq v0, v5, :cond_6

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    :goto_0
    iput-boolean v1, p0, Lʾˋ/ˈ;->ˏᵢ:Z

    iput-boolean v1, p0, Lʾˋ/ˈ;->ᵎᵔ:Z

    iput-boolean v1, p0, Lʾˋ/ˈ;->ᐧﾞ:Z

    iget-object v0, p0, Lʾˋ/ˈ;->ـᵎ:Lʾᵎ/ˈ;

    instance-of v0, v0, Lʾᵎ/ᵔᵢ;

    if-nez v0, :cond_8

    new-instance v0, Lʾᵎ/ᵔᵢ;

    invoke-direct {v0}, Lʾᵎ/ᵔᵢ;-><init>()V

    iput-object v0, p0, Lʾˋ/ˈ;->ـᵎ:Lʾᵎ/ˈ;

    :cond_8
    iget-object v0, p0, Lʾˋ/ˈ;->ـᵎ:Lʾᵎ/ˈ;

    check-cast v0, Lʾᵎ/ᵔᵢ;

    iget v1, p0, Lʾˋ/ˈ;->ˈⁱ:I

    invoke-virtual {v0, v1}, Lʾᵎ/ᵔᵢ;->ʼˈ(I)V

    return-void
.end method
