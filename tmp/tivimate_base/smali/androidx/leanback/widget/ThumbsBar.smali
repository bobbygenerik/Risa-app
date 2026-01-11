.class public Landroidx/leanback/widget/ThumbsBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public final ʽʽ:I

.field public ʾˋ:I

.field public final ˈٴ:I

.field public ˊʻ:I

.field public ٴᵢ:Z

.field public final ᴵˊ:I

.field public final ᴵᵔ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->ʾˋ:I

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-boolean v0, p0, Landroidx/leanback/widget/ThumbsBar;->ٴᵢ:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07019f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->ᴵˊ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07019d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->ʽʽ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070195

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->ᴵᵔ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070194

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/ThumbsBar;->ˈٴ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07019e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->ˊʻ:I

    return-void
.end method


# virtual methods
.method public getHeroIndex()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    move-object p1, p0

    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3, p4, p5, v0, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p5

    add-int/lit8 p5, p2, -0x1

    :goto_0
    if-ltz p5, :cond_0

    iget v1, p1, Landroidx/leanback/widget/ThumbsBar;->ˊʻ:I

    sub-int/2addr p4, v1

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p3, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p3

    invoke-virtual {v1, v2, v3, p4, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p4, v1

    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    iget p4, p1, Landroidx/leanback/widget/ThumbsBar;->ʾˋ:I

    if-ge p2, p4, :cond_1

    iget p4, p1, Landroidx/leanback/widget/ThumbsBar;->ˊʻ:I

    add-int/2addr v0, p4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int p5, p3, p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    invoke-virtual {p4, v0, p5, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr v0, p4

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-boolean p2, p0, Landroidx/leanback/widget/ThumbsBar;->ٴᵢ:Z

    if-nez p2, :cond_2

    iget p2, p0, Landroidx/leanback/widget/ThumbsBar;->ˈٴ:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroidx/leanback/widget/ThumbsBar;->ᴵˊ:I

    iget v0, p0, Landroidx/leanback/widget/ThumbsBar;->ˊʻ:I

    add-int/2addr p2, v0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p2

    const/4 p2, 0x2

    if-ge p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Landroidx/leanback/widget/ThumbsBar;->ʾˋ:I

    if-eq p2, p1, :cond_2

    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->ʾˋ:I

    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->ﹳٴ()V

    :cond_2
    return-void
.end method

.method public setNumberOfThumbs(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/widget/ThumbsBar;->ٴᵢ:Z

    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->ʾˋ:I

    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->ﹳٴ()V

    return-void
.end method

.method public setThumbSpace(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ThumbsBar;->ˊʻ:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 7

    .prologue
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/ThumbsBar;->ʾˋ:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/ThumbsBar;->ʾˋ:I

    iget v2, p0, Landroidx/leanback/widget/ThumbsBar;->ʽʽ:I

    iget v3, p0, Landroidx/leanback/widget/ThumbsBar;->ᴵˊ:I

    if-ge v0, v1, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v0, v1, :cond_2

    iget v6, p0, Landroidx/leanback/widget/ThumbsBar;->ˈٴ:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v6, p0, Landroidx/leanback/widget/ThumbsBar;->ᴵᵔ:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_2
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
