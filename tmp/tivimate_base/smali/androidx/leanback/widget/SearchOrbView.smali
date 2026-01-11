.class public Landroidx/leanback/widget/SearchOrbView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic ʼˈ:I


# instance fields
.field public final ʽʽ:Landroid/view/View;

.field public ʾˋ:Landroid/view/View$OnClickListener;

.field public ˆﾞ:Z

.field public final ˈʿ:Landroid/animation/ArgbEvaluator;

.field public final ˈٴ:Landroid/widget/ImageView;

.field public final ˉٴ:I

.field public ˊʻ:Landroidx/leanback/widget/ˑʼ;

.field public final ˊˋ:Landroidx/leanback/widget/ʻˋ;

.field public ˋᵔ:Landroid/animation/ValueAnimator;

.field public final ˑٴ:Landroidx/leanback/widget/ʻˋ;

.field public final ٴʼ:F

.field public final ٴᵢ:F

.field public final ᴵˊ:Landroid/view/View;

.field public ᴵᵔ:Landroid/graphics/drawable/Drawable;

.field public final ᵎˊ:F

.field public final ᵎⁱ:I

.field public ᵔי:Landroid/animation/ValueAnimator;

.field public ᵔٴ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040547

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˈʿ:Landroid/animation/ArgbEvaluator;

    new-instance v0, Landroidx/leanback/widget/ʻˋ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ʻˋ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˑٴ:Landroidx/leanback/widget/ʻˋ;

    new-instance v0, Landroidx/leanback/widget/ʻˋ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/leanback/widget/ʻˋ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˊˋ:Landroidx/leanback/widget/ʻˋ;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->getLayoutResourceId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ᴵˊ:Landroid/view/View;

    const v2, 0x7f0b0342

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroidx/leanback/widget/SearchOrbView;->ʽʽ:Landroid/view/View;

    const v2, 0x7f0b01f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ˈٴ:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a0007

    invoke-virtual {v2, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Landroidx/leanback/widget/SearchOrbView;->ٴᵢ:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0030

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroidx/leanback/widget/SearchOrbView;->ˉٴ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0031

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroidx/leanback/widget/SearchOrbView;->ᵎⁱ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701cb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/leanback/widget/SearchOrbView;->ᵎˊ:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroidx/leanback/widget/SearchOrbView;->ٴʼ:F

    sget-object v7, Lـᵎ/ﹳٴ;->ᵎﹶ:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v7, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move v10, p3

    invoke-static/range {v5 .. v10}, Lˋᵔ/ᵎˊ;->ﾞʻ(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    const/4 p1, 0x2

    invoke-virtual {v9, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const p1, 0x7f080189

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0600d1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v9, v3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v9, v4, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 p3, 0x3

    invoke-virtual {v9, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    new-instance v0, Landroidx/leanback/widget/ˑʼ;

    invoke-direct {v0, p1, p2, p3}, Landroidx/leanback/widget/ˑʼ;-><init>(III)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/ˑʼ;)V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    invoke-static {v1, v2}, Lˋᵔ/ʽʽ;->ﾞʻ(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public getFocusedZoom()F
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->ٴᵢ:F

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0e00c6

    return v0
.end method

.method public getOrbColor()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˊʻ:Landroidx/leanback/widget/ˑʼ;

    iget v0, v0, Landroidx/leanback/widget/ˑʼ;->ﹳٴ:I

    return v0
.end method

.method public getOrbColors()Landroidx/leanback/widget/ˑʼ;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˊʻ:Landroidx/leanback/widget/ˑʼ;

    return-object v0
.end method

.method public getOrbIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔٴ:Z

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->ⁱˊ()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ʾˋ:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔٴ:Z

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->ⁱˊ()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->ﹳٴ(Z)V

    return-void
.end method

.method public setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->ʾˋ:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrbColor(I)V
    .locals 2

    new-instance v0, Landroidx/leanback/widget/ˑʼ;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, v1}, Landroidx/leanback/widget/ˑʼ;-><init>(III)V

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/ˑʼ;)V

    return-void
.end method

.method public setOrbColors(Landroidx/leanback/widget/ˑʼ;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->ˊʻ:Landroidx/leanback/widget/ˑʼ;

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˈٴ:Landroid/widget/ImageView;

    iget p1, p1, Landroidx/leanback/widget/ˑʼ;->ʽ:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔי:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->ˊʻ:Landroidx/leanback/widget/ˑʼ;

    iget p1, p1, Landroidx/leanback/widget/ˑʼ;->ﹳٴ:I

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/widget/SearchOrbView;->ˆﾞ:Z

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->ⁱˊ()V

    return-void
.end method

.method public setOrbIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroidx/leanback/widget/SearchOrbView;->ᴵᵔ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˈٴ:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOrbViewColor(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ʽʽ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setSearchOrbZ(F)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->ٴʼ:F

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->ᵎˊ:F

    invoke-static {v1, v0, p1, v0}, Landroid/support/v4/media/session/ﹳٴ;->ﾞᴵ(FFFF)F

    move-result p1

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ʽʽ:Landroid/view/View;

    invoke-static {v0, p1}, Lˋᵔ/ʽʽ;->ﾞʻ(Landroid/view/View;F)V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔי:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔי:Landroid/animation/ValueAnimator;

    :cond_0
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˆﾞ:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔٴ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˊʻ:Landroidx/leanback/widget/ˑʼ;

    iget v0, v0, Landroidx/leanback/widget/ˑʼ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ˊʻ:Landroidx/leanback/widget/ˑʼ;

    iget v1, v1, Landroidx/leanback/widget/ˑʼ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/leanback/widget/SearchOrbView;->ˊʻ:Landroidx/leanback/widget/ˑʼ;

    iget v2, v2, Landroidx/leanback/widget/ˑʼ;->ﹳٴ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ˈʿ:Landroid/animation/ArgbEvaluator;

    invoke-static {v1, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔי:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔי:Landroid/animation/ValueAnimator;

    iget v2, p0, Landroidx/leanback/widget/SearchOrbView;->ˉٴ:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔי:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ˑٴ:Landroidx/leanback/widget/ʻˋ;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ᵔי:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public final ﹳٴ(Z)V
    .locals 4

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/leanback/widget/SearchOrbView;->ٴᵢ:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/SearchOrbView;->ᴵˊ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/widget/SearchOrbView;->ᵎⁱ:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˋᵔ:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˋᵔ:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroidx/leanback/widget/SearchOrbView;->ˊˋ:Landroidx/leanback/widget/ʻˋ;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˋᵔ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˋᵔ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->ˋᵔ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-boolean p1, p0, Landroidx/leanback/widget/SearchOrbView;->ˆﾞ:Z

    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->ⁱˊ()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
