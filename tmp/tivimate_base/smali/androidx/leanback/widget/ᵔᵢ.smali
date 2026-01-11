.class public abstract Landroidx/leanback/widget/ᵔᵢ;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public ʽʾ:Z

.field public ʿʽ:I

.field public ˆˑ:Z

.field public ˆﹳ:I

.field public ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

.field public ˎـ:Lˋˋ/ᐧᴵ;

.field public ᵢʻ:Landroidx/leanback/widget/ʽ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ʽʾ:Z

    iput-boolean p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆˑ:Z

    const/4 p2, 0x4

    iput p2, p0, Landroidx/leanback/widget/ᵔᵢ;->ʿʽ:I

    new-instance p2, Landroidx/leanback/widget/GridLayoutManager;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/GridLayoutManager;-><init>(Landroidx/leanback/widget/ᵔᵢ;)V

    iput-object p2, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/ᵔᵢ;->setLayoutManager(Lˋˋ/ʻᵎ;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    const/high16 p2, 0x40000

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lˋˋ/ᐧᴵ;

    move-result-object p1

    check-cast p1, Lʿי/ـᵎ;

    iput-boolean v0, p1, Lʿי/ـᵎ;->ᵎﹶ:Z

    new-instance p1, Landroidx/leanback/widget/ﹳٴ;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/ﹳٴ;-><init>(Landroidx/leanback/widget/ᵔᵢ;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ᵢʻ:Landroidx/leanback/widget/ʽ;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/leanback/widget/ʽ;->ˑﹳ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final focusSearch(I)Landroid/view/View;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge p2, v0, :cond_1

    :goto_0
    return p2

    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ge p2, v1, :cond_2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    :cond_2
    return v0
.end method

.method public getExtraLayoutSpace()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ˋᵔ:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ˋᵔ:I

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ʿʽ:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    iget-object v0, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʼˈ;

    iget v0, v0, Landroidx/leanback/widget/ـˏ;->ⁱˊ:I

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    iget-object v0, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʼˈ;

    iget v0, v0, Landroidx/leanback/widget/ـˏ;->ʽ:F

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    iget-object v0, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʼˈ;

    iget v0, v0, Landroidx/leanback/widget/ـˏ;->ﹳٴ:I

    return v0
.end method

.method public getOnUnhandledKeyListener()Landroidx/leanback/widget/ﾞᴵ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget v0, v0, Landroidx/leanback/widget/יﹳ;->ᴵˊ:I

    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iget v0, v0, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    return v0
.end method

.method public getSmoothScrollByBehavior()Landroidx/leanback/widget/ᵎﹶ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSmoothScrollMaxPendingMoves()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵔﹳ:I

    return v0
.end method

.method public final getSmoothScrollSpeedFactor()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼᐧ:F

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊˋ:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊˋ:I

    return v0
.end method

.method public getWindowAlignment()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iget v0, v0, Landroidx/leanback/widget/ʽⁱ;->ﾞᴵ:I

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iget v0, v0, Landroidx/leanback/widget/ʽⁱ;->ᵎﹶ:I

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iget v0, v0, Landroidx/leanback/widget/ʽⁱ;->ᵔᵢ:F

    return v0
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆˑ:Z

    return v0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p2, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz p1, :cond_2

    iget p1, p2, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    :goto_0
    invoke-virtual {p2, p1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    if-eq v3, v1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v3

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2

    move v5, v1

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x1

    move v5, v4

    :goto_0
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v6, v6, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v6, Landroidx/leanback/widget/ʽⁱ;

    iget v7, v6, Landroidx/leanback/widget/ʽⁱ;->ˆʾ:I

    iget v8, v6, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    sub-int/2addr v8, v7

    iget v6, v6, Landroidx/leanback/widget/ʽⁱ;->ٴﹶ:I

    sub-int/2addr v8, v6

    add-int/2addr v8, v7

    :goto_1
    if-eq v3, v4, :cond_4

    invoke-virtual {v0, v3}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9, v6}, Lʼﾞ/ᵎⁱ;->ᵎﹶ(Landroid/view/View;)I

    move-result v9

    if-lt v9, v7, :cond_3

    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->ˏי:Lʼﾞ/ᵎⁱ;

    invoke-virtual {v9, v6}, Lʼﾞ/ᵎⁱ;->ˈ(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_3

    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v1

    :cond_3
    add-int/2addr v3, v5

    goto :goto_1

    :cond_4
    :goto_2
    return v2
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 6

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz v0, :cond_4

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-ne p1, v3, :cond_0

    const/high16 v1, 0x40000

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_0

    const/high16 v1, 0x80000

    :goto_0
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v5, 0xc0000

    and-int/2addr v5, v4

    if-ne v5, v1, :cond_2

    goto :goto_1

    :cond_2
    const v5, -0xc0001

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    if-ne p1, v3, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, v0, Landroidx/leanback/widget/ʽⁱ;->ﾞʻ:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    or-int/2addr v1, v2

    iput v1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_2

    iget p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    xor-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    :cond_2
    return-void
.end method

.method public final removeViewAt(I)V
    .locals 2

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-eqz v0, :cond_1

    iget p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    xor-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆﹳ:I

    :cond_1
    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ʽʾ:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ʽʾ:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lˋˋ/ᐧᴵ;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˎـ:Lˋˋ/ᐧᴵ;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lˋˋ/ᐧᴵ;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˎـ:Lˋˋ/ᐧᴵ;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lˋˋ/ᐧᴵ;)V

    :cond_1
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎˊ:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎˊ:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-ltz v1, :cond_1

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᐧᴵ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtraLayoutSpace must >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 1

    .prologue
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scrollStrategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 3

    .prologue
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const v2, -0x8001

    and-int/2addr v1, v2

    if-eqz p1, :cond_1

    const p1, 0x8000

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v1

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ﹳـ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˆˑ:Z

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ᵔᵢ;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v1, :cond_0

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˋᵔ:I

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼˈ:I

    goto :goto_0

    :cond_0
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˋᵔ:I

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ʿʽ:I

    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    iget-object v1, v1, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    iput p1, v1, Landroidx/leanback/widget/ـˏ;->ⁱˊ:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->יⁱ()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    iget-object v1, v1, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ـˏ;->ﹳٴ(F)V

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->יⁱ()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    iget-object v1, v1, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    iput-boolean p1, v1, Landroidx/leanback/widget/ـˏ;->ˈ:Z

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->יⁱ()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎᵔ:Lcom/parse/ٴʼ;

    iget-object v1, v1, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʼˈ;

    iput p1, v1, Landroidx/leanback/widget/ـˏ;->ﹳٴ:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->יⁱ()V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ᵔᵢ;->setItemSpacing(I)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˋᵔ:I

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊˋ:I

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼˈ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v2, v1, 0x200

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_2

    and-int/lit16 v1, v1, -0x201

    if-eqz p1, :cond_1

    const/16 v3, 0x200

    :cond_1
    or-int p1, v1, v3

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :cond_2
    return-void
.end method

.method public setLayoutManager(Lˋˋ/ʻᵎ;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lˋˋ/ʻᵎ;)V

    iget-object p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    if-eqz p1, :cond_0

    iput-object v0, p1, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    iput-object v0, p1, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    :cond_0
    iput-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    return-void

    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/leanback/widget/GridLayoutManager;

    iput-object v1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput-object p0, v1, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    iput-object v0, v1, Landroidx/leanback/widget/GridLayoutManager;->ˉـ:Landroidx/leanback/widget/ˉʿ;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lˋˋ/ʻᵎ;)V

    return-void
.end method

.method public setOnChildLaidOutListener(Landroidx/leanback/widget/ᴵˑ;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnChildSelectedListener(Landroidx/leanback/widget/ˉـ;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ReferencesDeprecated"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput-object p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˈٴ:Landroidx/leanback/widget/ˉـ;

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/ʿ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnKeyInterceptListener(Landroidx/leanback/widget/ʽ;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ᵔᵢ;->ᵢʻ:Landroidx/leanback/widget/ʽ;

    return-void
.end method

.method public setOnMotionInterceptListener(Landroidx/leanback/widget/ˈ;)V
    .locals 0

    return-void
.end method

.method public setOnTouchInterceptListener(Landroidx/leanback/widget/ˑﹳ;)V
    .locals 0

    return-void
.end method

.method public setOnUnhandledKeyListener(Landroidx/leanback/widget/ﾞᴵ;)V
    .locals 0

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v2, 0x10000

    and-int v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eq v3, p1, :cond_2

    const v3, -0x10001

    and-int/2addr v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    or-int/2addr v1, v2

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ـˊ()V

    :cond_2
    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iput p1, v0, Landroidx/leanback/widget/יﹳ;->ᴵˊ:I

    invoke-virtual {v0}, Landroidx/leanback/widget/יﹳ;->ˈ()V

    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ᴵʼ:Landroidx/leanback/widget/יﹳ;

    iput p1, v0, Landroidx/leanback/widget/יﹳ;->ʾˋ:I

    invoke-virtual {v0}, Landroidx/leanback/widget/יﹳ;->ˈ()V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 6

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v2, 0x20000

    and-int v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eq v3, p1, :cond_2

    const v3, -0x20001

    and-int/2addr v1, v3

    if-eqz p1, :cond_1

    move v4, v2

    :cond_1
    or-int p1, v1, v4

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿ:I

    if-nez p1, :cond_2

    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ٴᵢ:I

    invoke-virtual {v0, p1, v1, v5}, Landroidx/leanback/widget/GridLayoutManager;->יʿ(IIZ)V

    :cond_2
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->ˏʻ(IZ)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->ˏʻ(IZ)V

    return-void
.end method

.method public final setSmoothScrollByBehavior(Landroidx/leanback/widget/ᵎﹶ;)V
    .locals 0

    return-void
.end method

.method public final setSmoothScrollMaxPendingMoves(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵔﹳ:I

    return-void
.end method

.method public final setSmoothScrollSpeedFactor(F)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼᐧ:F

    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ᵔᵢ;->setVerticalSpacing(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊˋ:I

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼˈ:I

    goto :goto_0

    :cond_0
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˊˋ:I

    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iput p1, v0, Landroidx/leanback/widget/ʽⁱ;->ﾞᴵ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    iput p1, v0, Landroidx/leanback/widget/ʽⁱ;->ᵎﹶ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    :cond_1
    iput p1, v0, Landroidx/leanback/widget/ʽⁱ;->ᵔᵢ:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    if-eqz p1, :cond_0

    iget p1, v0, Landroidx/leanback/widget/ʽⁱ;->ˑﹳ:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, v0, Landroidx/leanback/widget/ʽⁱ;->ˑﹳ:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, v0, Landroidx/leanback/widget/ʽⁱ;->ˑﹳ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v0, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/ʽⁱ;

    if-eqz p1, :cond_0

    iget p1, v0, Landroidx/leanback/widget/ʽⁱ;->ˑﹳ:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, v0, Landroidx/leanback/widget/ʽⁱ;->ˑﹳ:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, v0, Landroidx/leanback/widget/ʽⁱ;->ˑﹳ:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final ʻˋ(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹳ(IIZ)V

    return-void
.end method

.method public final ʼـ(ILandroidx/leanback/widget/ˎᐧ;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ᵎⁱ(IZ)Lˋˋ/ʼـ;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroidx/leanback/widget/ˎᐧ;->ﹳٴ(Lˋˋ/ʼـ;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/leanback/widget/ⁱˊ;

    move-object v1, p0

    check-cast v1, Landroidx/leanback/widget/VerticalGridView;

    invoke-direct {v0, v1, p1, p2}, Landroidx/leanback/widget/ⁱˊ;-><init>(Landroidx/leanback/widget/VerticalGridView;ILandroidx/leanback/widget/ˎᐧ;)V

    iget-object p2, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, p2, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p2, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    :cond_2
    iget-object p2, p2, Landroidx/leanback/widget/GridLayoutManager;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ᵔᵢ;->setSelectedPosition(I)V

    return-void
.end method

.method public final ˑ(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    sget-object v0, Landroidx/leanback/widget/ᐧᴵ;->ﹳٴ:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v3, v2, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v3, v3, -0x1801

    if-eqz p2, :cond_0

    const/16 p2, 0x800

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    or-int/2addr p2, v3

    if-eqz v1, :cond_1

    const/16 v1, 0x1000

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    or-int/2addr p2, v1

    iput p2, v2, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/4 p2, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iget-object v3, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v4, v3, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit16 v4, v4, -0x6001

    if-eqz p2, :cond_2

    const/16 p2, 0x2000

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    or-int/2addr p2, v4

    if-eqz v2, :cond_3

    const/16 v2, 0x4000

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    or-int/2addr p2, v2

    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iget v2, v3, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-ne v2, v1, :cond_4

    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->ˊˋ:I

    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->ʼˈ:I

    goto :goto_4

    :cond_4
    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->ˊˋ:I

    iput p2, v3, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    :goto_4
    iget-object p2, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget v2, p2, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    if-nez v2, :cond_5

    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->ˋᵔ:I

    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->ʼˈ:I

    goto :goto_5

    :cond_5
    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->ˋᵔ:I

    iput v1, p2, Landroidx/leanback/widget/GridLayoutManager;->ـˏ:I

    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/ᵔᵢ;->setGravity(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final ˑʼ(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹳ(IIZ)V

    return-void
.end method

.method public final ᵎʻ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->ˏʻ(IZ)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵎʻ(I)V

    return-void
.end method

.method public final ﹶᐧ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/ᵔᵢ;->ˊﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->ˏʻ(IZ)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ(I)V

    return-void
.end method
