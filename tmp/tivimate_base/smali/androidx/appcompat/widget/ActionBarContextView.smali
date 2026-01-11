.class public Landroidx/appcompat/widget/ActionBarContextView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public ʼˈ:Z

.field public ʽʽ:Landroidx/appcompat/widget/ActionMenuView;

.field public final ʾˋ:Lʾﾞ/ﹳٴ;

.field public ˆﾞ:Landroid/view/View;

.field public ˈʿ:Landroid/widget/TextView;

.field public ˈٴ:Lˉˆ/ٴﹶ;

.field public ˉٴ:Z

.field public ˊʻ:Lˋᵔ/ˋᵔ;

.field public final ˊˋ:I

.field public final ˋᵔ:I

.field public ˑٴ:Landroid/widget/TextView;

.field public final ـˏ:I

.field public ٴʼ:Ljava/lang/CharSequence;

.field public ٴᵢ:Z

.field public final ᴵˊ:Landroid/content/Context;

.field public ᴵᵔ:I

.field public ᵎˊ:Landroid/view/View;

.field public ᵎⁱ:Ljava/lang/CharSequence;

.field public ᵔי:Landroid/view/View;

.field public ᵔٴ:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const v0, 0x7f04001e

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lʾﾞ/ﹳٴ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lʾﾞ/ﹳٴ;->ʽ:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lʾﾞ/ﹳٴ;->ﹳٴ:Z

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʾˋ:Lʾﾞ/ﹳٴ;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f040004

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵˊ:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵˊ:Landroid/content/Context;

    :goto_0
    sget-object v1, Lᵎﹶ/ﹳٴ;->ˈ:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x5

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˋᵔ:I

    const/4 p1, 0x4

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˊˋ:I

    const/4 p1, 0x3

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵᵔ:I

    const/4 p1, 0x2

    const v0, 0x7f0e0005

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ـˏ:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static ᵎﹶ(Landroid/view/View;IIIZ)I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p2

    if-eqz p4, :cond_0

    sub-int p2, p1, v0

    add-int/2addr v1, p3

    invoke-virtual {p0, p2, p3, p1, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p2, p1, v0

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p4, :cond_1

    neg-int p0, v0

    return p0

    :cond_1
    return v0
.end method

.method public static synthetic ⁱˊ(Landroidx/appcompat/widget/ActionBarContextView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic ﹳٴ(Landroidx/appcompat/widget/ActionBarContextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static ﾞᴵ(Landroid/view/View;II)I
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˊʻ:Lˋᵔ/ˋᵔ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʾˋ:Lʾﾞ/ﹳٴ;

    iget v0, v0, Lʾﾞ/ﹳٴ;->ⁱˊ:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵᵔ:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴʼ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎⁱ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lᵎﹶ/ﹳٴ;->ﹳٴ:[I

    const v2, 0x7f040007

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    if-eqz p1, :cond_7

    iget-object v0, p1, Lˉˆ/ٴﹶ;->ᴵˊ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt v0, v3, :cond_6

    if-gt v1, v3, :cond_6

    const/16 v0, 0x2d0

    const/16 v3, 0x3c0

    if-le v1, v3, :cond_0

    if-gt v2, v0, :cond_6

    :cond_0
    if-le v1, v0, :cond_1

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1f4

    if-ge v1, v0, :cond_5

    const/16 v0, 0x1e0

    const/16 v3, 0x280

    if-le v1, v3, :cond_2

    if-gt v2, v0, :cond_5

    :cond_2
    if-le v1, v0, :cond_3

    if-le v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x168

    if-lt v1, v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x5

    :goto_2
    iput v0, p1, Lˉˆ/ٴﹶ;->ˑٴ:I

    iget-object p1, p1, Lˉˆ/ٴﹶ;->ʽʽ:Lᵔʾ/ˆʾ;

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lᵔʾ/ˆʾ;->ʼᐧ(Z)V

    :cond_7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ˑﹳ()Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    iget-object v0, v0, Lˉˆ/ٴﹶ;->ـˏ:Lˉˆ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lᵔʾ/יـ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    invoke-interface {v0}, Lᵔʾ/ʼʼ;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˉٴ:Z

    :cond_0
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˉٴ:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    iput-boolean v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˉٴ:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˉٴ:Z

    return v4
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .prologue
    sget-boolean p1, Lˉˆ/ˆˎ;->ﹳٴ:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sub-int v1, p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, v3, :cond_6

    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_2

    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_2
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    if-eqz p1, :cond_3

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    :cond_3
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_3
    if-eqz p1, :cond_4

    sub-int/2addr v1, v4

    goto :goto_4

    :cond_4
    add-int/2addr v1, v4

    :goto_4
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    invoke-static {v4, v1, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->ᵎﹶ(Landroid/view/View;IIIZ)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz p1, :cond_5

    sub-int/2addr v4, p3

    :goto_5
    move v1, v4

    goto :goto_6

    :cond_5
    add-int/2addr v4, p3

    goto :goto_5

    :cond_6
    :goto_6
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_7

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    if-nez v4, :cond_7

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-eq p3, v3, :cond_7

    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    invoke-static {p3, v1, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->ᵎﹶ(Landroid/view/View;IIIZ)I

    move-result p3

    add-int/2addr v1, p3

    :cond_7
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    if-eqz p3, :cond_8

    invoke-static {p3, v1, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->ᵎﹶ(Landroid/view/View;IIIZ)I

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    goto :goto_7

    :cond_9
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    :goto_7
    iget-object p3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʽʽ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p3, :cond_a

    xor-int/2addr p1, v0

    invoke-static {p3, p2, v2, p5, p1}, Landroidx/appcompat/widget/ActionBarContextView;->ᵎﹶ(Landroid/view/View;IIIZ)I

    :cond_a
    return-void
.end method

.method public final onMeasure(II)V
    .locals 10

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_11

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵᵔ:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int p2, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr p2, v3

    sub-int v3, v0, v2

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    if-eqz v6, :cond_1

    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->ﾞᴵ(Landroid/view/View;II)I

    move-result p2

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v6

    sub-int/2addr p2, v7

    :cond_1
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʽʽ:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_2

    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʽʽ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->ﾞᴵ(Landroid/view/View;II)I

    move-result p2

    :cond_2
    iget-object v6, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    if-nez v8, :cond_7

    iget-boolean v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʼˈ:Z

    if-eqz v8, :cond_6

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v8, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v5}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-gt v5, p2, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v7

    :goto_1
    if-eqz v6, :cond_4

    sub-int/2addr p2, v5

    :cond_4
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-static {v6, p2, v5}, Landroidx/appcompat/widget/ActionBarContextView;->ﾞᴵ(Landroid/view/View;II)I

    move-result p2

    :cond_7
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-eq v6, v8, :cond_8

    move v9, v1

    goto :goto_4

    :cond_8
    move v9, v4

    :goto_4
    if-ltz v6, :cond_9

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_9
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v8, :cond_a

    goto :goto_5

    :cond_a
    move v1, v4

    :goto_5
    if-ltz v5, :cond_b

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_b
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v4, p2, v1}, Landroid/view/View;->measure(II)V

    :cond_c
    iget p2, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵᵔ:I

    if-gtz p2, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move v0, v7

    :goto_6
    if-ge v7, p2, :cond_e

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    if-le v1, v0, :cond_d

    move v0, v1

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_f
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴᵢ:Z

    :cond_0
    iget-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴᵢ:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴᵢ:Z

    :cond_1
    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴᵢ:Z

    return v3
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵᵔ:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴʼ:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->ˈ()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->ˈ()V

    invoke-static {p0, p1}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʼˈ:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʼˈ:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->ᵔᵢ(I)V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ʼˎ(IJ)Lˋᵔ/ˋᵔ;
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˊʻ:Lˋᵔ/ˋᵔ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˋᵔ/ˋᵔ;->ⁱˊ()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʾˋ:Lʾﾞ/ﹳٴ;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lˋᵔ/ˋᵔ;->ﹳٴ(F)V

    invoke-virtual {v1, p2, p3}, Lˋᵔ/ˋᵔ;->ʽ(J)V

    iget-object p2, v0, Lʾﾞ/ﹳٴ;->ʽ:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v1, p2, Landroidx/appcompat/widget/ActionBarContextView;->ˊʻ:Lˋᵔ/ˋᵔ;

    iput p1, v0, Lʾﾞ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v1, v0}, Lˋᵔ/ˋᵔ;->ˈ(Lˋᵔ/ˊˋ;)V

    return-object v1

    :cond_2
    invoke-static {p0}, Lˋᵔ/ᵎˊ;->ﹳٴ(Landroid/view/View;)Lˋᵔ/ˋᵔ;

    move-result-object v2

    invoke-virtual {v2, v1}, Lˋᵔ/ˋᵔ;->ﹳٴ(F)V

    invoke-virtual {v2, p2, p3}, Lˋᵔ/ˋᵔ;->ʽ(J)V

    iget-object p2, v0, Lʾﾞ/ﹳٴ;->ʽ:Ljava/lang/Object;

    check-cast p2, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v2, p2, Landroidx/appcompat/widget/ActionBarContextView;->ˊʻ:Lˋᵔ/ˋᵔ;

    iput p1, v0, Lʾﾞ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v2, v0}, Lˋᵔ/ˋᵔ;->ˈ(Lˋᵔ/ˊˋ;)V

    return-object v2
.end method

.method public final ʽ(Lˉʿ/ﹳٴ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->ـˏ:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    const v2, 0x7f0b004d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔי:Landroid/view/View;

    new-instance v2, Landroidx/leanback/widget/ʼʼ;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Landroidx/leanback/widget/ʼʼ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lˉʿ/ﹳٴ;->ˑﹳ()Lᵔʾ/ˆʾ;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ˑﹳ()Z

    iget-object v0, v0, Lˉˆ/ٴﹶ;->ـˏ:Lˉˆ/ﾞᴵ;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lᵔʾ/יـ;->ⁱˊ()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lᵔʾ/יـ;->ˆʾ:Lᵔʾ/ﹳᐧ;

    invoke-interface {v0}, Lᵔʾ/ʼʼ;->dismiss()V

    :cond_2
    new-instance v0, Lˉˆ/ٴﹶ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lˉˆ/ٴﹶ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lˉˆ/ٴﹶ;->ᵔי:Z

    iput-boolean v2, v0, Lˉˆ/ٴﹶ;->ˆﾞ:Z

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᴵˊ:Landroid/content/Context;

    invoke-virtual {p1, v2, v3}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    iget-object v2, p1, Lˉˆ/ٴﹶ;->ˉٴ:Lᵔʾ/ـˆ;

    if-nez v2, :cond_3

    iget-object v3, p1, Lˉˆ/ٴﹶ;->ˈٴ:Landroid/view/LayoutInflater;

    iget v4, p1, Lˉˆ/ٴﹶ;->ˊʻ:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lᵔʾ/ـˆ;

    iput-object v1, p1, Lˉˆ/ٴﹶ;->ˉٴ:Lᵔʾ/ـˆ;

    iget-object v3, p1, Lˉˆ/ٴﹶ;->ʽʽ:Lᵔʾ/ˆʾ;

    invoke-interface {v1, v3}, Lᵔʾ/ـˆ;->ⁱˊ(Lᵔʾ/ˆʾ;)V

    invoke-virtual {p1}, Lˉˆ/ٴﹶ;->ˈ()V

    :cond_3
    iget-object v1, p1, Lˉˆ/ٴﹶ;->ˉٴ:Lᵔʾ/ـˆ;

    if-eq v2, v1, :cond_4

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Lˉˆ/ٴﹶ;)V

    :cond_4
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʽʽ:Landroidx/appcompat/widget/ActionMenuView;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʽʽ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final ˈ()V
    .locals 6

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈʿ:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˑٴ:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˋᵔ:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈʿ:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˊˋ:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˑٴ:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈʿ:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˑٴ:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴʼ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵎⁱ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ٴʼ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˑٴ:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔٴ:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final ˑﹳ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˆﾞ:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ʽʽ:Landroidx/appcompat/widget/ActionMenuView;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarContextView;->ᵔי:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final ᵔᵢ(I)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView;->ˊʻ:Lˋᵔ/ˋᵔ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lˋᵔ/ˋᵔ;->ⁱˊ()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method
