.class public final Lcom/google/android/material/datepicker/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋᵔ/ˉˆ;
.implements Lʻˆ/ˈ;


# instance fields
.field public ʽʽ:I

.field public ʾˋ:I

.field public ˈٴ:I

.field public ᴵˊ:I

.field public ᴵᵔ:Ljava/lang/Object;


# virtual methods
.method public ʽ()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ﹳᐧ;

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    return v0

    :cond_0
    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v0

    return v0

    :cond_1
    iget v1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    iget v0, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public ˈ()J
    .locals 5

    .prologue
    iget v0, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    return-wide v3

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public ⁱˊ()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    return v0
.end method

.method public ﹳٴ()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public ﾞʻ(Landroid/view/View;Lˋᵔ/ᐧﹶ;)Lˋᵔ/ᐧﹶ;
    .locals 4

    .prologue
    iget-object p1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    const/16 v0, 0x207

    iget-object v1, p2, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v1, v0}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʾˋ:I

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    add-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v1, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    iget v2, v0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    iget v3, v0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/material/datepicker/ᵔʾ;->ˈٴ:I

    iget v0, v0, Lᵎⁱ/ⁱˊ;->ʽ:I

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
