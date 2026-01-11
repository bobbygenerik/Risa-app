.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic ᵔٴ:I


# instance fields
.field public final ʽʽ:Ljava/util/ArrayList;

.field public final ʾˋ:Landroid/animation/ValueAnimator;

.field public ˆﾞ:I

.field public final ˈٴ:I

.field public final ˉٴ:I

.field public final ˊʻ:Landroid/graphics/Paint;

.field public ٴʼ:Z

.field public final ٴᵢ:Landroid/graphics/RectF;

.field public ᴵˊ:Z

.field public final ᴵᵔ:F

.field public ᵎˊ:D

.field public ᵎⁱ:F

.field public ᵔי:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v0, 0x7f040415

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->ʾˋ:Landroid/animation/ValueAnimator;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->ʽʽ:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˊʻ:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->ٴᵢ:Landroid/graphics/RectF;

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˆﾞ:I

    sget-object v4, Lיﹶ/ﹳٴ;->ˑﹳ:[I

    const v5, 0x7f140683

    invoke-virtual {p1, p2, v4, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, 0x7f04044f

    const/16 v4, 0xc8

    invoke-static {p1, v0, v4}, Lﹳˋ/ʽʽ;->ʻٴ(Landroid/content/Context;II)I

    const v0, 0x7f04045f

    sget-object v4, Lˑˏ/ﹳٴ;->ⁱˊ:Lᵎʻ/ﹳٴ;

    invoke-static {p1, v0, v4}, Lﹳˋ/ʽʽ;->ـˆ(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵔי:I

    const/4 v4, 0x2

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˈٴ:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070451

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˉٴ:I

    const v6, 0x7f07044f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᴵᵔ:F

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/ClockHandView;->ⁱˊ(F)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    invoke-virtual {p0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lcom/google/android/material/timepicker/ˑﹳ;

    invoke-direct {p1, p0}, Lcom/google/android/material/timepicker/ˑﹳ;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/google/android/material/timepicker/ﾞᴵ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/material/timepicker/ﾞᴵ;-><init>(I)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˆﾞ:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->ﹳٴ(I)I

    move-result v2

    int-to-float v4, v1

    int-to-float v3, v2

    iget-wide v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎˊ:D

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    move v6, v5

    int-to-float v5, v0

    iget-wide v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎˊ:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v3, v7

    add-float/2addr v3, v5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˊʻ:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˈٴ:I

    int-to-float v9, v7

    invoke-virtual {p1, v6, v3, v9, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-wide v9, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎˊ:D

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    iget-wide v11, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎˊ:D

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    sub-int/2addr v2, v7

    int-to-float v2, v2

    float-to-double v2, v2

    mul-double/2addr v11, v2

    double-to-int v6, v11

    add-int/2addr v1, v6

    int-to-float v6, v1

    mul-double/2addr v2, v9

    double-to-int v1, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˉٴ:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᴵᵔ:F

    invoke-virtual {v3, v4, v5, p1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object p2, p1, Lcom/google/android/material/timepicker/ClockHandView;->ʾˋ:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    iget p2, p1, Lcom/google/android/material/timepicker/ClockHandView;->ᵎⁱ:F

    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/ClockHandView;->ⁱˊ(F)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    move v0, v4

    move v5, v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->ٴʼ:Z

    iget-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᴵˊ:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v2

    int-to-float v5, v5

    int-to-float v6, v6

    sub-float v5, v1, v5

    sub-float v6, p1, v6

    float-to-double v7, v5

    float-to-double v5, v6

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->ﹳٴ(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/16 v8, 0xc

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v3, v8, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    int-to-float v6, v6

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˆﾞ:I

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->ٴʼ:Z

    move v5, v3

    move v0, v4

    :goto_1
    iget-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->ٴʼ:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v2, v7

    sub-float/2addr v1, v2

    float-to-double v1, v1

    int-to-float v7, v8

    sub-float/2addr p1, v7

    float-to-double v7, p1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int p1, v1

    add-int/lit8 v1, p1, 0x5a

    if-gez v1, :cond_4

    add-int/lit16 v1, p1, 0x1c2

    :cond_4
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎⁱ:F

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    move p1, v4

    :goto_2
    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_6
    if-nez p1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/ClockHandView;->ⁱˊ(F)V

    goto :goto_3

    :cond_8
    :goto_4
    or-int p1, v6, v4

    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->ٴʼ:Z

    return v3
.end method

.method public final ʽ(F)V
    .locals 6

    .prologue
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎⁱ:F

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎˊ:D

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˆﾞ:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/ClockHandView;->ﹳٴ(I)I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    iget-wide v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎˊ:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    int-to-float v0, v0

    iget-wide v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵎˊ:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->ˈٴ:I

    int-to-float v0, v0

    sub-float v1, v3, v0

    sub-float v4, v2, v0

    add-float/2addr v3, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->ٴᵢ:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/material/timepicker/ᵎﹶ;

    check-cast v3, Lcom/google/android/material/timepicker/ClockFaceView;

    iget v4, v3, Lcom/google/android/material/timepicker/ClockFaceView;->ˊᵔ:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iput p1, v3, Lcom/google/android/material/timepicker/ClockFaceView;->ˊᵔ:F

    invoke-virtual {v3}, Lcom/google/android/material/timepicker/ClockFaceView;->ᵔʾ()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final ⁱˊ(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->ʾˋ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->ʽ(F)V

    return-void
.end method

.method public final ﹳٴ(I)I
    .locals 1

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵔי:I

    int-to-float p1, p1

    const v0, 0x3f28f5c3    # 0.66f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_0
    iget p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->ᵔי:I

    return p1
.end method
