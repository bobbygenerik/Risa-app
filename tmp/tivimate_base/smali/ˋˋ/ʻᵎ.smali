.class public abstract Lˋˋ/ʻᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Z

.field public final ʽ:Lﹶﾞ/ⁱי;

.field public ˆʾ:I

.field public final ˈ:Lﹶﾞ/ⁱי;

.field public ˉʿ:I

.field public ˉˆ:I

.field public ˑﹳ:Lˋˋ/ˆﾞ;

.field public ٴﹶ:Z

.field public ᵎﹶ:Z

.field public ᵔʾ:I

.field public final ᵔᵢ:Z

.field public ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

.field public ﹳٴ:Lcom/parse/ʽˑ;

.field public ﾞʻ:I

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˊⁱ/ˑﹳ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lˉˆ/ʿ;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lﹶﾞ/ⁱי;

    invoke-direct {v2, v0}, Lﹶﾞ/ⁱי;-><init>(Lˋˋ/ᵎʿ;)V

    iput-object v2, p0, Lˋˋ/ʻᵎ;->ʽ:Lﹶﾞ/ⁱי;

    new-instance v0, Lﹶﾞ/ⁱי;

    invoke-direct {v0, v1}, Lﹶﾞ/ⁱי;-><init>(Lˋˋ/ᵎʿ;)V

    iput-object v0, p0, Lˋˋ/ʻᵎ;->ˈ:Lﹶﾞ/ⁱי;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˋˋ/ʻᵎ;->ﾞᴵ:Z

    iput-boolean v0, p0, Lˋˋ/ʻᵎ;->ᵎﹶ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˋˋ/ʻᵎ;->ᵔᵢ:Z

    iput-boolean v0, p0, Lˋˋ/ʻᵎ;->ʼˎ:Z

    return-void
.end method

.method public static ʼʼ(ZIIII)I
    .locals 4

    .prologue
    sub-int/2addr p1, p3

    const/4 p3, 0x0

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p0, :cond_2

    if-ltz p4, :cond_0

    :goto_0
    move p2, v3

    goto :goto_2

    :cond_0
    if-ne p4, v1, :cond_1

    if-eq p2, v2, :cond_4

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_4

    :cond_1
    move p2, p3

    move p4, p2

    goto :goto_2

    :cond_2
    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    if-ne p4, v1, :cond_5

    :cond_4
    move p4, p1

    goto :goto_2

    :cond_5
    if-ne p4, v0, :cond_1

    if-eq p2, v2, :cond_7

    if-ne p2, v3, :cond_6

    goto :goto_1

    :cond_6
    move p4, p1

    move p2, p3

    goto :goto_2

    :cond_7
    :goto_1
    move p4, p1

    move p2, v2

    :goto_2
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static ˆﾞ(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lˋˋ/ˊᵔ;

    iget-object p0, p0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ˈ()I

    move-result p0

    return p0
.end method

.method public static ˈٴ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v0, v0, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static ـˏ(III)Z
    .locals 3

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static ᴵᵔ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v0, v0, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v0

    return p0
.end method

.method public static ᵔٴ(Landroid/content/Context;Landroid/util/AttributeSet;II)Lˋˋ/ᴵʼ;
    .locals 2

    new-instance v0, Lˋˋ/ᴵʼ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lˈʻ/ﹳٴ;->ﹳٴ:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, v0, Lˋˋ/ᴵʼ;->ﹳٴ:I

    const/16 p3, 0xa

    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v0, Lˋˋ/ᴵʼ;->ⁱˊ:I

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v0, Lˋˋ/ᴵʼ;->ʽ:Z

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lˋˋ/ᴵʼ;->ˈ:Z

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static ᵔᵢ(III)I
    .locals 2

    .prologue
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static ﹳـ(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, v0, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p4, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public final ʻʿ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lˋˋ/ʻᵎ;->ـᵢ(II)V

    return-void
.end method

.method public ʻˋ(II)V
    .locals 0

    return-void
.end method

.method public ʻٴ(Landroid/view/ViewGroup$LayoutParams;)Lˋˋ/ˊᵔ;
    .locals 1

    .prologue
    instance-of v0, p1, Lˋˋ/ˊᵔ;

    if-eqz v0, :cond_0

    new-instance v0, Lˋˋ/ˊᵔ;

    check-cast p1, Lˋˋ/ˊᵔ;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Lˋˋ/ˊᵔ;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lˋˋ/ˊᵔ;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lˋˋ/ˊᵔ;

    invoke-direct {v0, p1}, Lˋˋ/ˊᵔ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public ʻᴵ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v1

    iget v2, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v5, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v5

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p3, v3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v2, v6

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    filled-new-array {v2, v1}, [I

    move-result-object p2

    aget p3, p2, v0

    aget p2, p2, v7

    if-eqz p5, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v2

    iget v3, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->ٴʼ:Landroid/graphics/Rect;

    invoke-virtual {p0, p5, v5}, Lˋˋ/ʻᵎ;->ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p3

    if-ge p5, v3, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    if-le p5, v1, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p2

    if-ge p5, v4, :cond_6

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p2

    if-gt p5, v2, :cond_5

    goto :goto_3

    :cond_5
    if-nez p3, :cond_7

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    return v0

    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return v7

    :cond_8
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->ʻˋ(II)V

    return v7
.end method

.method public ʻᵎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ﾞᴵ()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lˋˋ/ʻᵎ;->ˆﾞ(Landroid/view/View;)I

    move-result p3

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    const/4 v0, 0x1

    invoke-static {p2, p1, v0, p3, v0}, Lʾﹶ/ʽ;->ˈ(ZIIII)Lʾﹶ/ʽ;

    move-result-object p1

    invoke-virtual {p4, p1}, Lˊˋ/ᵔᵢ;->ﾞʻ(Lʾﹶ/ʽ;)V

    return-void
.end method

.method public ʼˈ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ʼˎ(IILˋˋ/ᐧﹶ;Lˋˋ/ʽʽ;)V
    .locals 0

    return-void
.end method

.method public ʼـ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget p1, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    iget v0, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    :cond_1
    const/16 v1, 0x2000

    const/16 v2, 0x1000

    const/4 v3, 0x1

    if-eq p3, v2, :cond_5

    if-eq p3, v1, :cond_2

    move p1, p2

    move v0, p1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v4

    sub-int/2addr p1, v4

    neg-int p1, p1

    goto :goto_0

    :cond_3
    move p1, p2

    :goto_0
    iget-object v4, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v5}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v4

    sub-int/2addr v0, v4

    neg-int v0, v0

    goto :goto_2

    :cond_4
    move v0, p2

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_1

    :cond_6
    move p1, p2

    :goto_1
    iget-object v4, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v4

    sub-int/2addr v0, v4

    :goto_2
    if-nez p1, :cond_7

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p4, :cond_9

    const-string v6, "androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT"

    invoke-virtual {p4, v6, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p4

    cmpg-float v6, p4, v4

    if-gez v6, :cond_a

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    move p4, v5

    :cond_a
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_e

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-nez p4, :cond_b

    :goto_3
    return p2

    :cond_b
    if-eq p3, v2, :cond_d

    if-eq p3, v1, :cond_c

    return v3

    :cond_c
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->ᵎʻ(I)V

    return v3

    :cond_d
    invoke-virtual {p4}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->ᵎʻ(I)V

    return v3

    :cond_e
    invoke-static {v5, p4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_f

    invoke-static {v4, p4}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-eqz p2, :cond_f

    int-to-float p2, v0

    mul-float/2addr p2, p4

    float-to-int v0, p2

    int-to-float p1, p1

    mul-float/2addr p1, p4

    float-to-int p1, p1

    :cond_f
    iget-object p2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹳ(IIZ)V

    return v3
.end method

.method public ʼᐧ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ʼᵢ(Landroid/view/View;IILˋˋ/ˊᵔ;)Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˋˋ/ʻᵎ;->ᵔᵢ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lˋˋ/ʻᵎ;->ـˏ(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lˋˋ/ʻᵎ;->ـˏ(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ʽ(Ljava/lang/String;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ٴﹶ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ʽʽ(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lˋˋ/ˊᵔ;

    iget-object p1, p1, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final ʽˑ(Landroid/view/View;IILˋˋ/ˊᵔ;)Z
    .locals 2

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lˋˋ/ʻᵎ;->ᵔᵢ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lˋˋ/ʻᵎ;->ـˏ(III)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lˋˋ/ʻᵎ;->ـˏ(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ʽᵔ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .prologue
    iget-object p2, p0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-eqz p2, :cond_0

    iget-boolean p2, p2, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->ˊˋ()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ʽⁱ(Landroid/view/View;Lˋˋ/ʻˋ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    iget-object v1, v0, Lcom/parse/ʽˑ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ﹳـ;

    iget v2, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    iput v3, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    iput-object p1, v0, Lcom/parse/ʽˑ;->ˊʻ:Ljava/lang/Object;

    iget-object v3, v1, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_0

    :goto_0
    iput v4, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    iput-object v2, v0, Lcom/parse/ʽˑ;->ˊʻ:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v5, v0, Lcom/parse/ʽˑ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Lʿʽ/ʽ;

    invoke-virtual {v5, v3}, Lʿʽ/ʽ;->ˆﾞ(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, p1}, Lcom/parse/ʽˑ;->ˊˋ(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Lˋˋ/ﹳـ;->ʽ(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    invoke-virtual {p2, p1}, Lˋˋ/ʻˋ;->ʼˎ(Landroid/view/View;)V

    return-void

    :goto_3
    iput v4, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    iput-object v2, v0, Lcom/parse/ʽˑ;->ˊʻ:Ljava/lang/Object;

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ʽﹳ(Landroid/content/Context;Landroid/util/AttributeSet;)Lˋˋ/ˊᵔ;
    .locals 1

    new-instance v0, Lˋˋ/ˊᵔ;

    invoke-direct {v0, p1, p2}, Lˋˋ/ˊᵔ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public ʾˊ(I)V
    .locals 0

    return-void
.end method

.method public ʾˋ(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lˋˋ/ˊᵔ;

    iget-object p1, p1, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final ʾᵎ()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ʽˑ;->ˉٴ()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʾﾞ(ILˋˋ/ʻˋ;)V
    .locals 1

    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ⁱˉ(I)V

    invoke-virtual {p2, v0}, Lˋˋ/ʻˋ;->ʼˎ(Landroid/view/View;)V

    return-void
.end method

.method public ʿ(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract ʿـ(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
.end method

.method public ʿᵢ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public ˆʾ(ILˋˋ/ʽʽ;)V
    .locals 0

    return-void
.end method

.method public final ˈ(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˈʿ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 0

    .prologue
    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ﾞᴵ()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {p1}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public ˈˏ()V
    .locals 0

    return-void
.end method

.method public ˈـ()Z
    .locals 1

    instance-of v0, p0, Landroidx/leanback/widget/GridLayoutManager;

    return v0
.end method

.method public ˈⁱ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v1}, Lcom/parse/ʽˑ;->ˉٴ()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v3, v2}, Lcom/parse/ʽˑ;->ٴᵢ(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ˉʿ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ˉˆ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ˉـ(Lˋˋ/ᴵˑ;)V
    .locals 0

    return-void
.end method

.method public final ˉٴ()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ˊʻ(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lˋˋ/ˊᵔ;

    iget-object p1, p1, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    return v0
.end method

.method public ˊˋ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ˊᵔ(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public ˋˊ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˋᵔ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ˎᐧ(Lˋˋ/ʻˋ;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v1

    invoke-virtual {v1}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lˋˋ/ʻᵎ;->ʾﾞ(ILˋˋ/ʻˋ;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract ˏי()Lˋˋ/ˊᵔ;
.end method

.method public ˏᵢ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Lˊˋ/ᵔᵢ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Lˊˋ/ᵔᵢ;->ﹳٴ(I)V

    invoke-virtual {p3, v3}, Lˊˋ/ᵔᵢ;->ᵔﹳ(Z)V

    invoke-virtual {p3, v2, v3}, Lˊˋ/ᵔᵢ;->ʼˎ(IZ)V

    :cond_1
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Lˊˋ/ᵔᵢ;->ﹳٴ(I)V

    invoke-virtual {p3, v3}, Lˊˋ/ᵔᵢ;->ᵔﹳ(Z)V

    invoke-virtual {p3, v2, v3}, Lˊˋ/ᵔᵢ;->ʼˎ(IZ)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lˋˋ/ʻᵎ;->ˈʿ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lˋˋ/ʻᵎ;->ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    iget-object p2, p3, Lˊˋ/ᵔᵢ;->ﹳٴ:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public ˑ(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, v1, v0, p1, p2}, Lˋˋ/ʻᵎ;->ʼـ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public ˑʼ(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lˋˋ/ʻᵎ;->ʻˋ(II)V

    return-void
.end method

.method public final ˑٴ(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v0, v0, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵔי:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public abstract ˑﹳ()Z
.end method

.method public י()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract יˉ(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method

.method public יـ(I)Landroid/view/View;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lˋˋ/ʼـ;->ˈ()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    iget-boolean v4, v4, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final יﹳ(Lˋˋ/ʻˋ;)V
    .locals 7

    .prologue
    iget-object v0, p1, Lˋˋ/ʻˋ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˋˋ/ʼـ;

    iget-object v3, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v4

    invoke-virtual {v4}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lˋˋ/ʼـ;->ʼᐧ(Z)V

    invoke-virtual {v4}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    iget-object v6, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, Lˋˋ/ᐧᴵ;->ˑﹳ(Lˋˋ/ʼـ;)V

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lˋˋ/ʼـ;->ʼᐧ(Z)V

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    iput-boolean v5, v3, Lˋˋ/ʼـ;->ˈʿ:Z

    iget v4, v3, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v4, v4, -0x21

    iput v4, v3, Lˋˋ/ʼـ;->ٴʼ:I

    invoke-virtual {p1, v3}, Lˋˋ/ʻˋ;->ˆʾ(Lˋˋ/ʼـ;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p1, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v1, :cond_5

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public final ـˆ(I)Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/parse/ʽˑ;->ٴᵢ(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ـˊ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public ـᵎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;II)V
    .locals 0

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->ᵔﹳ(II)V

    return-void
.end method

.method public final ـᵢ(II)V
    .locals 1

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ﾞˏ:Z

    if-nez p1, :cond_0

    iput v0, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lˋˋ/ʻᵎ;->ˉʿ:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ﾞˏ:Z

    if-nez p1, :cond_1

    iput v0, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    :cond_1
    return-void
.end method

.method public ـﹶ(II)V
    .locals 0

    return-void
.end method

.method public final ٴʼ()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ٴᴵ(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result p1

    add-int/2addr p1, v1

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lˋˋ/ʻᵎ;->ᵔᵢ(III)I

    move-result p1

    iget-object p3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public ٴᵢ(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lˋˋ/ˊᵔ;

    iget-object p1, p1, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public abstract ٴﹳ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)V
.end method

.method public ٴﹶ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ᐧˎ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lˋˋ/ʻᵎ;->ʻᴵ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public ᐧᴵ(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public ᐧﹶ(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public ᐧﾞ(Landroid/view/View;ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᴵʼ(Landroid/view/View;Lˊˋ/ᵔᵢ;)V
    .locals 2

    .prologue
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    iget-object v0, v0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v1, v1, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, v1, v0, p1, p2}, Lˋˋ/ʻᵎ;->ʻᵎ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;Landroid/view/View;Lˊˋ/ᵔᵢ;)V

    :cond_0
    return-void
.end method

.method public ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    iget-object v1, v0, Lˋˋ/ˊᵔ;->ⁱˊ:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p2, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public ᴵˑ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v1}, Lcom/parse/ʽˑ;->ˉٴ()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v3, v2}, Lcom/parse/ʽˑ;->ٴᵢ(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract ᵎʻ(Lˋˋ/ᐧﹶ;)V
.end method

.method public final ᵎʿ(Lˋˋ/ʻˋ;ILandroid/view/View;)V
    .locals 2

    .prologue
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ignoring view "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerView"

    nop

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    iget-boolean v1, v1, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lˋˋ/ʻᵎ;->ⁱˉ(I)V

    invoke-virtual {p1, v0}, Lˋˋ/ʻˋ;->ˆʾ(Lˋˋ/ʼـ;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    iget-object v1, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {v1, p2}, Lcom/parse/ʽˑ;->ᵢˏ(I)V

    invoke-virtual {p1, p3}, Lˋˋ/ʻˋ;->ٴﹶ(Landroid/view/View;)V

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ:Lﹳʽ/ˊʻ;

    invoke-virtual {p1, v0}, Lﹳʽ/ˊʻ;->ˈٴ(Lˋˋ/ʼـ;)V

    return-void
.end method

.method public final ᵎˊ()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᵎᵔ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final ᵎⁱ()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ᵎﹶ(Lˋˋ/ˊᵔ;)Z
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public ᵔʾ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ᵔי()I
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵔﹳ(Lˋˋ/ʻˋ;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lˋˋ/ʻᵎ;->ᵎʿ(Lˋˋ/ʻˋ;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ᵢˏ(Lˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
    .locals 0

    .prologue
    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ˑﹳ()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {p1}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ⁱˉ(I)V
    .locals 6

    .prologue
    invoke-virtual {p0, p1}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    iget-object v1, v0, Lcom/parse/ʽˑ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ﹳـ;

    iget v2, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/parse/ʽˑ;->ᵎⁱ(I)I

    move-result p1

    iget-object v5, v1, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :goto_0
    iput v4, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    iput-object v2, v0, Lcom/parse/ʽˑ;->ˊʻ:Ljava/lang/Object;

    return-void

    :cond_0
    :try_start_1
    iput v3, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    iput-object v5, v0, Lcom/parse/ʽˑ;->ˊʻ:Ljava/lang/Object;

    iget-object v3, v0, Lcom/parse/ʽˑ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lʿʽ/ʽ;

    invoke-virtual {v3, p1}, Lʿʽ/ʽ;->ˆﾞ(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v5}, Lcom/parse/ʽˑ;->ˊˋ(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v1, p1}, Lˋˋ/ﹳـ;->ʽ(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iput v4, v0, Lcom/parse/ʽˑ;->ᴵˊ:I

    iput-object v2, v0, Lcom/parse/ʽˑ;->ˊʻ:Ljava/lang/Object;

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public final ⁱˊ(ILandroid/view/View;Z)V
    .locals 9

    .prologue
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ:Lﹳʽ/ˊʻ;

    invoke-virtual {p3, v0}, Lﹳʽ/ˊʻ;->ˈٴ(Lˋˋ/ʼـ;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ:Lﹳʽ/ˊʻ;

    iget-object p3, p3, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast p3, Lיـ/ﹳᐧ;

    invoke-virtual {p3, v0}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˋˋ/ʿـ;

    if-nez v2, :cond_2

    invoke-static {}, Lˋˋ/ʿـ;->ﹳٴ()Lˋˋ/ʿـ;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p3, v2, Lˋˋ/ʿـ;->ﹳٴ:I

    or-int/2addr p3, v1

    iput p3, v2, Lˋˋ/ʿـ;->ﹳٴ:I

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lˋˋ/ˊᵔ;

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ﹳᐧ()Z

    move-result v2

    const-string v3, "RecyclerView"

    const/4 v4, 0x0

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ٴﹶ()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v5, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x1

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {v2, p2}, Lcom/parse/ʽˑ;->ˆﾞ(Landroid/view/View;)I

    move-result v2

    if-ne p1, v6, :cond_4

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {p1}, Lcom/parse/ʽˑ;->ˉٴ()I

    move-result p1

    :cond_4
    if-eq v2, v6, :cond_8

    if-eq v2, p1, :cond_d

    iget-object p2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {p2, v2}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p2, v2}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    iget-object v6, p2, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {v6, v2}, Lcom/parse/ʽˑ;->ᵢˏ(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lˋˋ/ˊᵔ;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v6

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p2, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ:Lﹳʽ/ˊʻ;

    iget-object v7, v7, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lיـ/ﹳᐧ;

    invoke-virtual {v7, v6}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˋˋ/ʿـ;

    if-nez v8, :cond_5

    invoke-static {}, Lˋˋ/ʿـ;->ﹳٴ()Lˋˋ/ʿـ;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v7, v8, Lˋˋ/ʿـ;->ﹳٴ:I

    or-int/2addr v1, v7

    iput v1, v8, Lˋˋ/ʿـ;->ﹳٴ:I

    goto :goto_2

    :cond_6
    iget-object v1, p2, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ:Lﹳʽ/ˊʻ;

    invoke-virtual {v1, v6}, Lﹳʽ/ˊʻ;->ˈٴ(Lˋˋ/ʼـ;)V

    :goto_2
    iget-object p2, p2, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v1

    invoke-virtual {p2, v5, p1, v2, v1}, Lcom/parse/ʽˑ;->ﾞᴵ(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2, p3}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget-object v2, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {v2, p1, p2, v4}, Lcom/parse/ʽˑ;->ˈ(ILandroid/view/View;Z)V

    iput-boolean v1, p3, Lˋˋ/ˊᵔ;->ʽ:Z

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-eqz p1, :cond_d

    iget-boolean v1, p1, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz v1, :cond_d

    iget-object v1, p1, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lˋˋ/ʼـ;->ˈ()I

    move-result v6

    :cond_a
    iget v1, p1, Lˋˋ/ˆﾞ;->ﹳٴ:I

    if-ne v6, v1, :cond_d

    iput-object p2, p1, Lˋˋ/ˆﾞ;->ﾞᴵ:Landroid/view/View;

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz p1, :cond_d

    const-string p1, "smooth scroll target view has been attached"

    nop

    goto :goto_5

    :cond_b
    :goto_3
    invoke-virtual {v0}, Lˋˋ/ʼـ;->ٴﹶ()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    invoke-virtual {v1, v0}, Lˋˋ/ʻˋ;->ˉʿ(Lˋˋ/ʼـ;)V

    goto :goto_4

    :cond_c
    iget v1, v0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Lˋˋ/ʼـ;->ٴʼ:I

    :goto_4
    iget-object v1, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p2, p1, v2, v4}, Lcom/parse/ʽˑ;->ﾞᴵ(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_d
    :goto_5
    iget-boolean p1, p3, Lˋˋ/ˊᵔ;->ˈ:Z

    if-eqz p1, :cond_f

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "consuming pending invalidate on child "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_e
    iget-object p1, v0, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v4, p3, Lˋˋ/ˊᵔ;->ˈ:Z

    :cond_f
    return-void
.end method

.method public abstract ⁱי(ILˋˋ/ʻˋ;Lˋˋ/ᐧﹶ;)I
.end method

.method public final ⁱᴵ(II)V
    .locals 8

    .prologue
    invoke-virtual {p0}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->ᵔﹳ(II)V

    return-void

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_5

    invoke-virtual {p0, v5}, Lˋˋ/ʻᵎ;->ـˆ(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->ٴʼ:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v7}, Lˋˋ/ʻᵎ;->ᴵˊ(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v1, :cond_2

    move v1, v6

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v4, :cond_3

    move v4, v6

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v2, :cond_4

    move v2, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ٴʼ:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ٴʼ:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lˋˋ/ʻᵎ;->ٴᴵ(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public final ﹳᐧ(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->ˈٴ(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    iget-object v0, v0, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public abstract ﹳⁱ(I)V
.end method

.method public ﹳﹳ(II)V
    .locals 0

    return-void
.end method

.method public final ﹶ(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˋˋ/ʻᵎ;->ʼˎ:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lˋˋ/ʻᵎ;->ʼˎ:Z

    const/4 p1, 0x0

    iput p1, p0, Lˋˋ/ʻᵎ;->ˆʾ:I

    iget-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    invoke-virtual {p1}, Lˋˋ/ʻˋ;->ᵔʾ()V

    :cond_0
    return-void
.end method

.method public final ﹶˎ(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    const/4 p1, 0x0

    iput p1, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    iput p1, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    iput-object v0, p0, Lˋˋ/ʻᵎ;->ﹳٴ:Lcom/parse/ʽˑ;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lˋˋ/ʻᵎ;->ˉˆ:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lˋˋ/ʻᵎ;->ﾞʻ:I

    iput p1, p0, Lˋˋ/ʻᵎ;->ˉʿ:I

    return-void
.end method

.method public ﹶᐧ(II)V
    .locals 0

    return-void
.end method

.method public ﾞʻ(Lˋˋ/ᐧﹶ;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ﾞˋ(Lˋˋ/ˆﾞ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    iget-boolean v1, v0, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lˋˋ/ˆﾞ;->ˆʾ()V

    :cond_0
    iput-object p1, p0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    iget-object v0, p0, Lˋˋ/ʻᵎ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᐧˎ:Lˋˋ/ˑ;

    iget-object v2, v1, Lˋˋ/ˑ;->ٴᵢ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v1, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-boolean v1, p1, Lˋˋ/ˆﾞ;->ᵔᵢ:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was started more than once. Each instance of"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    nop

    :cond_1
    iput-object v0, p1, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p0, p1, Lˋˋ/ˆﾞ;->ʽ:Lˋˋ/ʻᵎ;

    iget v1, p1, Lˋˋ/ˆﾞ;->ﹳٴ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    iput v1, v2, Lˋˋ/ᐧﹶ;->ﹳٴ:I

    const/4 v2, 0x1

    iput-boolean v2, p1, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    iput-boolean v2, p1, Lˋˋ/ˆﾞ;->ˈ:Z

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v0, v1}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lˋˋ/ˆﾞ;->ﾞᴵ:Landroid/view/View;

    iget-object v0, p1, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᐧˎ:Lˋˋ/ˑ;

    invoke-virtual {v0}, Lˋˋ/ˑ;->ⁱˊ()V

    iput-boolean v2, p1, Lˋˋ/ˆﾞ;->ᵔᵢ:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract ﾞᴵ()Z
.end method
