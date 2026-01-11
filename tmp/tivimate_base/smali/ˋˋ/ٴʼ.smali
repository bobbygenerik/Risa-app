.class public final Lˋˋ/ٴʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:I

.field public ˆʾ:I

.field public ˈ:I

.field public ˑﹳ:I

.field public ٴﹶ:Ljava/util/List;

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public ⁱˊ:I

.field public ﹳٴ:Z

.field public ﾞʻ:Z

.field public ﾞᴵ:I


# virtual methods
.method public final ⁱˊ(Lˋˋ/ʻˋ;)Landroid/view/View;
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˋˋ/ʼـ;

    iget-object v1, v1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˋˋ/ˊᵔ;

    iget-object v3, v2, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v3}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lˋˋ/ٴʼ;->ˈ:I

    iget-object v2, v2, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v2}, Lˋˋ/ʼـ;->ˈ()I

    move-result v2

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, v1}, Lˋˋ/ٴʼ;->ﹳٴ(Landroid/view/View;)V

    return-object v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    iget v0, p0, Lˋˋ/ٴʼ;->ˈ:I

    invoke-virtual {p1, v0}, Lˋˋ/ʻˋ;->ˈ(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lˋˋ/ٴʼ;->ˈ:I

    iget v1, p0, Lˋˋ/ٴʼ;->ˑﹳ:I

    add-int/2addr v0, v1

    iput v0, p0, Lˋˋ/ٴʼ;->ˈ:I

    return-object p1
.end method

.method public final ﹳٴ(Landroid/view/View;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lˋˋ/ٴʼ;->ٴﹶ:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˋˋ/ʼـ;

    iget-object v4, v4, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lˋˋ/ˊᵔ;

    if-eq v4, p1, :cond_3

    iget-object v6, v5, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v5, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v5}, Lˋˋ/ʼـ;->ˈ()I

    move-result v5

    iget v6, p0, Lˋˋ/ٴʼ;->ˈ:I

    sub-int/2addr v5, v6

    iget v6, p0, Lˋˋ/ٴʼ;->ˑﹳ:I

    mul-int/2addr v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v5, v2, :cond_3

    move-object v1, v4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    const/4 p1, -0x1

    iput p1, p0, Lˋˋ/ٴʼ;->ˈ:I

    return-void

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lˋˋ/ˊᵔ;

    iget-object p1, p1, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ˈ()I

    move-result p1

    iput p1, p0, Lˋˋ/ٴʼ;->ˈ:I

    return-void
.end method
