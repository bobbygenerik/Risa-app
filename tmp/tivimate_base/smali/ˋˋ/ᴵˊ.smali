.class public final Lˋˋ/ᴵˊ;
.super Lˋˋ/ˏᵢ;
.source "SourceFile"


# static fields
.field public static final ʽʽ:[I

.field public static final ˈٴ:[I


# instance fields
.field public ʻٴ:I

.field public final ʼʼ:[I

.field public final ʼˎ:I

.field public ʼᐧ:F

.field public final ʽ:Landroid/graphics/drawable/StateListDrawable;

.field public ʽﹳ:Z

.field public ʾˋ:I

.field public final ʾᵎ:[I

.field public final ˆʾ:I

.field public final ˈ:Landroid/graphics/drawable/Drawable;

.field public ˉʿ:F

.field public ˉˆ:I

.field public ˏי:Z

.field public final ˑﹳ:I

.field public final יـ:Landroidx/recyclerview/widget/RecyclerView;

.field public ـˆ:I

.field public ٴﹶ:I

.field public final ᴵˊ:Landroidx/leanback/widget/ᵔʾ;

.field public final ᵎﹶ:Landroid/graphics/drawable/StateListDrawable;

.field public ᵔʾ:I

.field public final ᵔᵢ:Landroid/graphics/drawable/Drawable;

.field public ᵔﹳ:I

.field public final ᵢˏ:Landroid/animation/ValueAnimator;

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public ﹳᐧ:I

.field public ﾞʻ:I

.field public final ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lˋˋ/ᴵˊ;->ʽʽ:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lˋˋ/ᴵˊ;->ˈٴ:[I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ᴵˊ;->ᵔﹳ:I

    iput v0, p0, Lˋˋ/ᴵˊ;->ﹳᐧ:I

    iput-boolean v0, p0, Lˋˋ/ᴵˊ;->ˏי:Z

    iput-boolean v0, p0, Lˋˋ/ᴵˊ;->ʽﹳ:Z

    iput v0, p0, Lˋˋ/ᴵˊ;->ʻٴ:I

    iput v0, p0, Lˋˋ/ᴵˊ;->ـˆ:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lˋˋ/ᴵˊ;->ʾᵎ:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lˋˋ/ᴵˊ;->ʼʼ:[I

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lˋˋ/ᴵˊ;->ᵢˏ:Landroid/animation/ValueAnimator;

    iput v0, p0, Lˋˋ/ᴵˊ;->ʾˋ:I

    new-instance v3, Landroidx/leanback/widget/ᵔʾ;

    const/16 v4, 0x14

    invoke-direct {v3, v4, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Lˋˋ/ᴵˊ;->ᴵˊ:Landroidx/leanback/widget/ᵔʾ;

    new-instance v4, Lʼⁱ/ـʻ;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0}, Lʼⁱ/ـʻ;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lˋˋ/ᴵˊ;->ʽ:Landroid/graphics/drawable/StateListDrawable;

    iput-object p3, p0, Lˋˋ/ᴵˊ;->ˈ:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lˋˋ/ᴵˊ;->ᵎﹶ:Landroid/graphics/drawable/StateListDrawable;

    iput-object p5, p0, Lˋˋ/ᴵˊ;->ᵔᵢ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {p6, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lˋˋ/ᴵˊ;->ˑﹳ:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {p6, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lˋˋ/ᴵˊ;->ﾞᴵ:I

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lˋˋ/ᴵˊ;->ʼˎ:I

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lˋˋ/ᴵˊ;->ˆʾ:I

    iput p7, p0, Lˋˋ/ᴵˊ;->ﹳٴ:I

    iput p8, p0, Lˋˋ/ᴵˊ;->ⁱˊ:I

    const/16 p4, 0xff

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance p2, Lʿˋ/ʻٴ;

    invoke-direct {p2, p0}, Lʿˋ/ʻٴ;-><init>(Lˋˋ/ᴵˊ;)V

    invoke-virtual {v2, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lʽˊ/ᵢˏ;

    invoke-direct {p2, v5, p0}, Lʽˊ/ᵢˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_6

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->ˋᵔ:Ljava/util/ArrayList;

    iget-object p4, p2, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    if-eqz p4, :cond_1

    const-string p5, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {p4, p5}, Lˋˋ/ʻᵎ;->ʽ(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getOverScrollMode()I

    move-result p3

    if-ne p3, v1, :cond_2

    move v0, v5

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->ـˏ()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iget-object p2, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->ʼˈ:Lˋˋ/ᴵˊ;

    if-ne p3, p0, :cond_4

    const/4 p3, 0x0

    iput-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->ʼˈ:Lˋˋ/ᴵˊ;

    :cond_4
    iget-object p2, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->ﹳⁱ:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object p2, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iput-object p1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->ʼˎ(Lˋˋ/ˏᵢ;)V

    iget-object p1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->ˆʾ(Lˋˋ/ˈˏ;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static ﾞᴵ(FF[IIII)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    aget p2, p2, v1

    sub-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    sub-int/2addr p3, p5

    int-to-float p0, p3

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr p4, p0

    if-ge p4, p3, :cond_1

    if-ltz p4, :cond_1

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final ʽ(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .prologue
    iget p2, p0, Lˋˋ/ᴵˊ;->ᵔﹳ:I

    iget-object v0, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    iget p2, p0, Lˋˋ/ᴵˊ;->ﹳᐧ:I

    iget-object v0, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget p2, p0, Lˋˋ/ᴵˊ;->ʾˋ:I

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lˋˋ/ᴵˊ;->ˏי:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget p2, p0, Lˋˋ/ᴵˊ;->ᵔﹳ:I

    iget v2, p0, Lˋˋ/ᴵˊ;->ˑﹳ:I

    sub-int/2addr p2, v2

    iget v3, p0, Lˋˋ/ᴵˊ;->ﾞʻ:I

    iget v4, p0, Lˋˋ/ᴵˊ;->ٴﹶ:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p0, Lˋˋ/ᴵˊ;->ʽ:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v4, p0, Lˋˋ/ᴵˊ;->ﾞᴵ:I

    iget v6, p0, Lˋˋ/ᴵˊ;->ﹳᐧ:I

    iget-object v7, p0, Lˋˋ/ᴵˊ;->ˈ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1, v1, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float p2, v2

    int-to-float v4, v3

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int p2, v2

    int-to-float p2, p2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    int-to-float v2, p2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p2, p2

    int-to-float p2, p2

    neg-int v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_0
    iget-boolean p2, p0, Lˋˋ/ᴵˊ;->ʽﹳ:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lˋˋ/ᴵˊ;->ﹳᐧ:I

    iget v2, p0, Lˋˋ/ᴵˊ;->ʼˎ:I

    sub-int/2addr p2, v2

    iget v3, p0, Lˋˋ/ᴵˊ;->ˉˆ:I

    iget v4, p0, Lˋˋ/ᴵˊ;->ᵔʾ:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget-object v5, p0, Lˋˋ/ᴵˊ;->ᵎﹶ:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v5, v1, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v2, p0, Lˋˋ/ᴵˊ;->ᵔﹳ:I

    iget v4, p0, Lˋˋ/ᴵˊ;->ˆʾ:I

    iget-object v6, p0, Lˋˋ/ᴵˊ;->ᵔᵢ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v3

    int-to-float v0, v0

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lˋˋ/ᴵˊ;->ᵔﹳ:I

    iget-object p1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lˋˋ/ᴵˊ;->ﹳᐧ:I

    invoke-virtual {p0, v1}, Lˋˋ/ᴵˊ;->ᵎﹶ(I)V

    return-void
.end method

.method public final ˈ(FF)Z
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ᴵˊ;->ﹳᐧ:I

    iget v1, p0, Lˋˋ/ᴵˊ;->ʼˎ:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lˋˋ/ᴵˊ;->ˉˆ:I

    iget v0, p0, Lˋˋ/ᴵˊ;->ᵔʾ:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float p2, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˑﹳ(FF)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lˋˋ/ᴵˊ;->ˑﹳ:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    int-to-float v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lˋˋ/ᴵˊ;->ᵔﹳ:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    :goto_0
    iget p1, p0, Lˋˋ/ᴵˊ;->ﾞʻ:I

    iget v0, p0, Lˋˋ/ᴵˊ;->ٴﹶ:I

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p1, v0

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵎﹶ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ᴵˊ;->ᴵˊ:Landroidx/leanback/widget/ᵔʾ;

    iget-object v1, p0, Lˋˋ/ᴵˊ;->ʽ:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget v3, p0, Lˋˋ/ᴵˊ;->ʻٴ:I

    if-eq v3, v2, :cond_0

    sget-object v3, Lˋˋ/ᴵˊ;->ʽʽ:[I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v3, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    if-nez p1, :cond_1

    iget-object v3, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lˋˋ/ᴵˊ;->ᵔᵢ()V

    :goto_0
    iget v3, p0, Lˋˋ/ᴵˊ;->ʻٴ:I

    if-ne v3, v2, :cond_2

    if-eq p1, v2, :cond_2

    sget-object v2, Lˋˋ/ᴵˊ;->ˈٴ:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x4b0

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lˋˋ/ᴵˊ;->יـ:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x5dc

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    iput p1, p0, Lˋˋ/ᴵˊ;->ʻٴ:I

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 5

    .prologue
    iget v0, p0, Lˋˋ/ᴵˊ;->ʾˋ:I

    iget-object v1, p0, Lˋˋ/ᴵˊ;->ᵢˏ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lˋˋ/ᴵˊ;->ʾˋ:I

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v0

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
