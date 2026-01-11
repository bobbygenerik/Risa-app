.class public Landroidx/appcompat/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lˉˆ/ﹶᐧ;
.implements Lˋᵔ/ˉʿ;
.implements Lˋᵔ/ᵔʾ;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnknownNullness"
    }
.end annotation


# static fields
.field public static final ˏᵢ:Lˋᵔ/ᐧﹶ;

.field public static final ᐧᴵ:[I

.field public static final ᴵʼ:Landroid/graphics/Rect;


# instance fields
.field public ʼˈ:Lˋᵔ/ᐧﹶ;

.field public ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

.field public ʾˋ:I

.field public final ʿ:Lˉˆ/ⁱˊ;

.field public final ʿᵢ:Lˉˆ/ⁱˊ;

.field public final ˆﾞ:Landroid/graphics/Rect;

.field public final ˈʿ:Landroid/graphics/Rect;

.field public ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

.field public ˈⁱ:Landroid/widget/OverScroller;

.field public final ˉـ:Landroidx/leanback/widget/ᵔٴ;

.field public ˉٴ:Z

.field public ˊʻ:Landroid/graphics/drawable/Drawable;

.field public ˊˋ:Lˋᵔ/ᐧﹶ;

.field public ˋᵔ:Lˋᵔ/ᐧﹶ;

.field public final ˑٴ:Landroid/graphics/Rect;

.field public ـˏ:Lˋᵔ/ᐧﹶ;

.field public ٴʼ:Z

.field public ٴᵢ:Z

.field public final ᐧﾞ:Lˉˆ/ˑﹳ;

.field public ᴵˊ:I

.field public ᴵˑ:Landroid/view/ViewPropertyAnimator;

.field public ᴵᵔ:Lˉˆ/ﹳﹳ;

.field public ᵎˊ:I

.field public final ᵎᵔ:Lʻʿ/ˉˆ;

.field public ᵎⁱ:Z

.field public ᵔי:I

.field public final ᵔٴ:Landroid/graphics/Rect;

.field public ﹳـ:Lˉˆ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v0, 0x7f040005

    const v1, 0x1010059

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᐧᴵ:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lˋᵔ/ʻᵎ;

    invoke-direct {v0}, Lˋᵔ/ʻᵎ;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    new-instance v0, Lˋᵔ/ᴵʼ;

    invoke-direct {v0}, Lˋᵔ/ᴵʼ;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    new-instance v0, Lˋᵔ/ˏᵢ;

    invoke-direct {v0}, Lˋᵔ/ˏᵢ;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    new-instance v0, Lˋᵔ/ᐧᴵ;

    invoke-direct {v0}, Lˋᵔ/ᐧᴵ;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lˋᵔ/ᵎᵔ;

    invoke-direct {v0}, Lˋᵔ/ᵎᵔ;-><init>()V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1, v2}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˋᵔ/ˊᵔ;->ᵎﹶ(Lᵎⁱ/ⁱˊ;)V

    invoke-virtual {v0}, Lˋᵔ/ˊᵔ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˏᵢ:Lˋᵔ/ᐧﹶ;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵʼ:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵˊ:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˆﾞ:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔٴ:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈʿ:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˑٴ:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    sget-object p2, Lˋᵔ/ᐧﹶ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˋᵔ:Lˋᵔ/ᐧﹶ;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊˋ:Lˋᵔ/ᐧﹶ;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ـˏ:Lˋᵔ/ᐧﹶ;

    new-instance p2, Landroidx/leanback/widget/ᵔٴ;

    const/4 v0, 0x5

    invoke-direct {p2, v0, p0}, Landroidx/leanback/widget/ᵔٴ;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˉـ:Landroidx/leanback/widget/ᵔٴ;

    new-instance p2, Lˉˆ/ⁱˊ;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lˉˆ/ⁱˊ;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;I)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿ:Lˉˆ/ⁱˊ;

    new-instance p2, Lˉˆ/ⁱˊ;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lˉˆ/ⁱˊ;-><init>(Landroidx/appcompat/widget/ActionBarOverlayLayout;I)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿᵢ:Lˉˆ/ⁱˊ;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˎ(Landroid/content/Context;)V

    new-instance p2, Lʻʿ/ˉˆ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎᵔ:Lʻʿ/ˉˆ;

    new-instance p2, Lˉˆ/ˑﹳ;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᐧﾞ:Lˉˆ/ˑﹳ;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static ᵎﹶ(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lˉˆ/ˈ;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_1

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v0, v2

    :cond_1
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_2

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v0, v2

    :cond_2
    if-eqz p2, :cond_3

    iget p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eq p2, p1, :cond_3

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return v2

    :cond_3
    return v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lˉˆ/ˈ;

    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊʻ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊʻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊʻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊʻ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lˉˆ/ˈ;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lˉˆ/ˈ;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lˉˆ/ˈ;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎᵔ:Lʻʿ/ˉˆ;

    iget v1, v0, Lʻʿ/ˉˆ;->ﹳٴ:I

    iget v0, v0, Lʻʿ/ˉˆ;->ⁱˊ:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v0, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    invoke-static {p0, p1}, Lˋᵔ/ᐧﹶ;->ᵎﹶ(Landroid/view/View;Landroid/view/WindowInsets;)Lˋᵔ/ᐧﹶ;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ⁱˊ()I

    move-result v1

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v2

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ʽ()I

    move-result v3

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ﹳٴ()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎﹶ(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˆﾞ:Landroid/graphics/Rect;

    invoke-static {p0, p1, v1}, Lˋᵔ/ʽʽ;->ⁱˊ(Landroid/view/View;Lˋᵔ/ᐧﹶ;Landroid/graphics/Rect;)Lˋᵔ/ᐧﹶ;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {p1, v2, v3, v4, v5}, Lˋᵔ/ᵎʻ;->ˉʿ(IIII)Lˋᵔ/ᐧﹶ;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˋᵔ:Lˋᵔ/ᐧﹶ;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊˋ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v3, v2}, Lˋᵔ/ᐧﹶ;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˋᵔ:Lˋᵔ/ᐧﹶ;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊˋ:Lˋᵔ/ᐧﹶ;

    move v0, v3

    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔٴ:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ﹳٴ()Lˋᵔ/ᐧﹶ;

    move-result-object p1

    iget-object p1, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ʽ()Lˋᵔ/ᐧﹶ;

    move-result-object p1

    iget-object p1, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object p1

    invoke-virtual {p1}, Lˋᵔ/ᐧﹶ;->ﾞᴵ()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˎ(Landroid/content/Context;)V

    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_1

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˉˆ/ˈ;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, p3

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-virtual {p5, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 12

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object p1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lˉˆ/ˈ;

    iget-object p2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v3, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    sget-object v5, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    if-eqz v5, :cond_1

    iget v7, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʾˋ:I

    iget-boolean v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˉٴ:Z

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v8}, Landroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    iget v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʾˋ:I

    add-int/2addr v7, v8

    goto :goto_1

    :cond_1
    iget-object v7, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    iget-object v7, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v1

    :cond_3
    :goto_1
    iget-object v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˆﾞ:Landroid/graphics/Rect;

    iget-object v9, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈʿ:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˋᵔ:Lˋᵔ/ᐧﹶ;

    iput-object v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    iget-boolean v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴᵢ:Z

    if-nez v8, :cond_4

    if-nez v5, :cond_4

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᐧﾞ:Lˉˆ/ˑﹳ;

    sget-object v8, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˏᵢ:Lˋᵔ/ᐧﹶ;

    iget-object v10, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˑٴ:Landroid/graphics/Rect;

    invoke-static {v5, v8, v10}, Lˋᵔ/ʽʽ;->ⁱˊ(Landroid/view/View;Lˋᵔ/ᐧﹶ;Landroid/graphics/Rect;)Lˋᵔ/ᐧﹶ;

    sget-object v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵʼ:Landroid/graphics/Rect;

    invoke-virtual {v10, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v9, Landroid/graphics/Rect;->top:I

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    iget-object v5, v5, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v5, v1, v7, v1, v1}, Lˋᵔ/ᵎʻ;->ˉʿ(IIII)Lˋᵔ/ᐧﹶ;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    goto :goto_3

    :cond_4
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1}, Lˋᵔ/ᐧﹶ;->ⁱˊ()I

    move-result v1

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v5}, Lˋᵔ/ᐧﹶ;->ˈ()I

    move-result v5

    add-int/2addr v5, v7

    iget-object v7, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v7}, Lˋᵔ/ᐧﹶ;->ʽ()I

    move-result v7

    iget-object v8, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v8}, Lˋᵔ/ᐧﹶ;->ﹳٴ()I

    move-result v8

    invoke-static {v1, v5, v7, v8}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object v1

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x22

    if-lt v7, v8, :cond_5

    new-instance v7, Lˋᵔ/ʻᵎ;

    invoke-direct {v7, v5}, Lˋᵔ/ʻᵎ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_2

    :cond_5
    const/16 v8, 0x1f

    if-lt v7, v8, :cond_6

    new-instance v7, Lˋᵔ/ᴵʼ;

    invoke-direct {v7, v5}, Lˋᵔ/ᴵʼ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_2

    :cond_6
    const/16 v8, 0x1e

    if-lt v7, v8, :cond_7

    new-instance v7, Lˋᵔ/ˏᵢ;

    invoke-direct {v7, v5}, Lˋᵔ/ˏᵢ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_2

    :cond_7
    const/16 v8, 0x1d

    if-lt v7, v8, :cond_8

    new-instance v7, Lˋᵔ/ᐧᴵ;

    invoke-direct {v7, v5}, Lˋᵔ/ᐧᴵ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_2

    :cond_8
    new-instance v7, Lˋᵔ/ᵎᵔ;

    invoke-direct {v7, v5}, Lˋᵔ/ᵎᵔ;-><init>(Lˋᵔ/ᐧﹶ;)V

    :goto_2
    invoke-virtual {v7, v1}, Lˋᵔ/ˊᵔ;->ᵎﹶ(Lᵎⁱ/ⁱˊ;)V

    invoke-virtual {v7}, Lˋᵔ/ˊᵔ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    :goto_3
    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-static {v1, v9, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎﹶ(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ـˏ:Lˋᵔ/ᐧﹶ;

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    invoke-virtual {v1, v5}, Lˋᵔ/ᐧﹶ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʼˈ:Lˋᵔ/ᐧﹶ;

    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ـˏ:Lˋᵔ/ᐧﹶ;

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-static {v5, v1}, Lˋᵔ/ᵎˊ;->ⁱˊ(Landroid/view/View;Lˋᵔ/ᐧﹶ;)V

    :cond_9
    iget-object v7, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v0

    move v8, v2

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˉˆ/ˈ;

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v5, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v1

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v3, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v5, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, p2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    shl-int/lit8 v1, v1, 0x10

    invoke-static {p1, v4, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎⁱ:Z

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈⁱ:Landroid/widget/OverScroller;

    float-to-int v4, p3

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈⁱ:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p1

    iget-object p2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿᵢ:Lˉˆ/ⁱˊ;

    invoke-virtual {p1}, Lˉˆ/ⁱˊ;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿ:Lˉˆ/ⁱˊ;

    invoke-virtual {p1}, Lˉˆ/ⁱˊ;->run()V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴʼ:Z

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎˊ:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎˊ:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .prologue
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎᵔ:Lʻʿ/ˉˆ;

    iput p3, p1, Lʻʿ/ˉˆ;->ﹳٴ:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎˊ:I

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﹳـ:Lˉˆ/ʽ;

    if-eqz p1, :cond_0

    check-cast p1, Lᵔᵢ/ᵎⁱ;

    iget-object p2, p1, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lˉʿ/ˆʾ;->ﹳٴ()V

    const/4 p2, 0x0

    iput-object p2, p1, Lᵔᵢ/ᵎⁱ;->ʼʼ:Lˉʿ/ˆʾ;

    :cond_0
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .prologue
    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎⁱ:Z

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 3

    .prologue
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎⁱ:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴʼ:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎˊ:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const-wide/16 v1, 0x258

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿ:Lˉˆ/ⁱˊ;

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿᵢ:Lˉˆ/ⁱˊ;

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onWindowSystemUiVisibilityChanged(I)V
    .locals 6

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔי:I

    xor-int/2addr v0, p1

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔי:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v4, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﹳـ:Lˉˆ/ʽ;

    if-eqz v4, :cond_4

    xor-int/lit8 v5, p1, 0x1

    check-cast v4, Lᵔᵢ/ᵎⁱ;

    iput-boolean v5, v4, Lᵔᵢ/ᵎⁱ;->ʽﹳ:Z

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean p1, v4, Lᵔᵢ/ᵎⁱ;->ʻٴ:Z

    if-nez p1, :cond_4

    iput-boolean v3, v4, Lᵔᵢ/ᵎⁱ;->ʻٴ:Z

    invoke-virtual {v4, v3}, Lᵔᵢ/ᵎⁱ;->ᴵʼ(Z)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-boolean p1, v4, Lᵔᵢ/ᵎⁱ;->ʻٴ:Z

    if-eqz p1, :cond_4

    iput-boolean v2, v4, Lᵔᵢ/ᵎⁱ;->ʻٴ:Z

    invoke-virtual {v4, v3}, Lᵔᵢ/ᵎⁱ;->ᴵʼ(Z)V

    :cond_4
    :goto_3
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﹳـ:Lˉˆ/ʽ;

    if-eqz p1, :cond_5

    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    iput p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵˊ:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﹳـ:Lˉˆ/ʽ;

    if-eqz v0, :cond_0

    check-cast v0, Lᵔᵢ/ᵎⁱ;

    iput p1, v0, Lᵔᵢ/ᵎⁱ;->ˏי:I

    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setActionBarVisibilityCallback(Lˉˆ/ʽ;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﹳـ:Lˉˆ/ʽ;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ﹳـ:Lˉˆ/ʽ;

    iget v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵˊ:I

    check-cast p1, Lᵔᵢ/ᵎⁱ;

    iput v0, p1, Lᵔᵢ/ᵎⁱ;->ˏי:I

    iget p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔי:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    sget-object p1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lˋᵔ/ʾˋ;->ʽ(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˉٴ:Z

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎⁱ:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵎⁱ:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᵔᵢ()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lˉˆ/ˏⁱ;->ˈ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lˉˆ/ˏⁱ;->ʽ()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iput-object p1, v0, Lˉˆ/ˏⁱ;->ˈ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lˉˆ/ˏⁱ;->ʽ()V

    return-void
.end method

.method public setLogo(I)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lᴵˋ/ˊʻ;->ﹳᐧ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Lˉˆ/ˏⁱ;->ˑﹳ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lˉˆ/ˏⁱ;->ʽ()V

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴᵢ:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iput-object p1, v0, Lˉˆ/ˏⁱ;->ٴﹶ:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-boolean v1, v0, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iput-object p1, v0, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    iget v2, v0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, v0, Lˉˆ/ˏⁱ;->ᵎﹶ:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lˋᵔ/ᵎˊ;->ᵔʾ(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ʼˎ(Landroid/content/Context;)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᐧᴵ:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʾˋ:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˊʻ:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈⁱ:Landroid/widget/OverScroller;

    return-void
.end method

.method public final ʽ(Landroid/view/View;II[II)V
    .locals 0

    return-void
.end method

.method public final ˆʾ(I)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    const/4 v0, 0x2

    const-string v1, "Progress display unsupported"

    const-string v2, "ToolbarWidgetWrapper"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    nop

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast p1, Lˉˆ/ˏⁱ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    nop

    return-void
.end method

.method public final ˈ(Landroid/view/View;IIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˑﹳ(Landroid/view/View;IIIII)V

    return-void
.end method

.method public final ˑﹳ(Landroid/view/View;IIIII)V
    .locals 0

    .prologue
    if-nez p6, :cond_0

    invoke-virtual/range {p0 .. p5}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final ٴﹶ()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    if-nez v0, :cond_2

    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʽʽ:Landroidx/appcompat/widget/ContentFrameLayout;

    const v0, 0x7f0b003d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ˈٴ:Landroidx/appcompat/widget/ActionBarContainer;

    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lˉˆ/ﹳﹳ;

    if-eqz v1, :cond_0

    check-cast v0, Lˉˆ/ﹳﹳ;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lˉˆ/ﹳﹳ;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final ᵔᵢ()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿ:Lˉˆ/ⁱˊ;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ʿᵢ:Lˉˆ/ⁱˊ;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵˑ:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final ⁱˊ(Landroid/view/View;I)V
    .locals 0

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final ﹳٴ(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .prologue
    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final ﾞʻ(Landroid/view/Menu;Lᵔʾ/ˏי;)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴﹶ()V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵᵔ:Lˉˆ/ﹳﹳ;

    check-cast v0, Lˉˆ/ˏⁱ;

    iget-object v1, v0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, v0, Lˉˆ/ˏⁱ;->ˉʿ:Lˉˆ/ٴﹶ;

    if-nez v2, :cond_0

    new-instance v2, Lˉˆ/ٴﹶ;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lˉˆ/ٴﹶ;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lˉˆ/ˏⁱ;->ˉʿ:Lˉˆ/ٴﹶ;

    :cond_0
    iget-object v0, v0, Lˉˆ/ˏⁱ;->ˉʿ:Lˉˆ/ٴﹶ;

    iput-object p2, v0, Lˉˆ/ٴﹶ;->ᴵᵔ:Lᵔʾ/ˏי;

    check-cast p1, Lᵔʾ/ˆʾ;

    if-nez p1, :cond_1

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->ﾞᴵ()V

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p2, p2, Landroidx/appcompat/widget/ActionMenuView;->ˑٴ:Lᵔʾ/ˆʾ;

    if-ne p2, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, v1, Landroidx/appcompat/widget/Toolbar;->ﹳﹳ:Lˉˆ/ٴﹶ;

    invoke-virtual {p2, v2}, Lᵔʾ/ˆʾ;->ﹳᐧ(Lᵔʾ/ʽﹳ;)V

    iget-object v2, v1, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    invoke-virtual {p2, v2}, Lᵔʾ/ˆʾ;->ﹳᐧ(Lᵔʾ/ʽﹳ;)V

    :cond_3
    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    if-nez p2, :cond_4

    new-instance p2, Lˉˆ/ٴʿ;

    invoke-direct {p2, v1}, Lˉˆ/ٴʿ;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p2, v1, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, v0, Lˉˆ/ٴﹶ;->ˋᵔ:Z

    if-eqz p1, :cond_5

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    iget-object p2, v1, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    iget-object v2, v1, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    invoke-virtual {p1, p2, v2}, Lᵔʾ/ˆʾ;->ⁱˊ(Lᵔʾ/ʽﹳ;Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lˉˆ/ٴﹶ;->ʼˎ(Landroid/content/Context;Lᵔʾ/ˆʾ;)V

    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    iget-object v2, v1, Landroidx/appcompat/widget/Toolbar;->ٴʼ:Landroid/content/Context;

    invoke-virtual {p1, v2, p2}, Lˉˆ/ٴʿ;->ʼˎ(Landroid/content/Context;Lᵔʾ/ˆʾ;)V

    invoke-virtual {v0}, Lˉˆ/ٴﹶ;->ˈ()V

    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->ʻˋ:Lˉˆ/ٴʿ;

    invoke-virtual {p1}, Lˉˆ/ٴʿ;->ˈ()V

    :goto_1
    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    iget p2, v1, Landroidx/appcompat/widget/Toolbar;->ᵎˊ:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object p1, v1, Landroidx/appcompat/widget/Toolbar;->ʾˋ:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Lˉˆ/ٴﹶ;)V

    iput-object v0, v1, Landroidx/appcompat/widget/Toolbar;->ﹳﹳ:Lˉˆ/ٴﹶ;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->ˏי()V

    return-void
.end method

.method public final ﾞᴵ(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .prologue
    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
