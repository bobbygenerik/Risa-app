.class public final Landroidx/media3/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic ᴵᵔ:I


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Lʻـ/ⁱˊ;

.field public ˈٴ:Landroid/animation/ValueAnimator;

.field public ᴵˊ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->ʽʽ:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lᐧⁱ/ٴᵢ;->ﹳٴ:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->ʽʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    new-instance p1, Lʻـ/ⁱˊ;

    invoke-direct {p1, p0}, Lʻـ/ⁱˊ;-><init>(Landroidx/media3/ui/AspectRatioFrameLayout;)V

    iput-object p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->ʾˋ:Lʻـ/ⁱˊ;

    return-void
.end method

.method public static ⁱˊ(Landroid/view/View;II)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getResizeMode()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->ʽʽ:I

    return v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object p2, p1, Landroidx/media3/ui/AspectRatioFrameLayout;->ˈٴ:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/media3/ui/AspectRatioFrameLayout;->ﹳٴ(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->ﹳٴ(Z)V

    :cond_0
    return-void
.end method

.method public setAspectRatioListener(Lᐧⁱ/ʽ;)V
    .locals 0

    return-void
.end method

.method public final ﹳٴ(Z)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v2, :cond_f

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    int-to-float v6, v2

    int-to-float v7, v4

    div-float v8, v6, v7

    iget v9, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    div-float/2addr v9, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v10, 0x3c23d70a    # 0.01f

    cmpg-float v8, v8, v10

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x1

    iget-object v13, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ʾˋ:Lʻـ/ⁱˊ;

    if-gtz v8, :cond_2

    iget-boolean v3, v13, Lʻـ/ⁱˊ;->ᴵˊ:Z

    if-nez v3, :cond_9

    iput-boolean v12, v13, Lʻـ/ⁱˊ;->ᴵˊ:Z

    iget-object v3, v13, Lʻـ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v3, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_2
    iget v8, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ʽʽ:I

    if-eqz v8, :cond_7

    if-eq v8, v12, :cond_6

    if-eq v8, v10, :cond_5

    const/4 v14, 0x4

    if-eq v8, v14, :cond_3

    if-eq v8, v11, :cond_7

    goto :goto_2

    :cond_3
    cmpl-float v3, v9, v3

    if-lez v3, :cond_4

    iget v2, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    :goto_0
    mul-float/2addr v7, v2

    float-to-int v2, v7

    goto :goto_2

    :cond_4
    iget v3, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    :goto_1
    div-float/2addr v6, v3

    float-to-int v4, v6

    goto :goto_2

    :cond_5
    iget v2, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    goto :goto_0

    :cond_6
    iget v3, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    goto :goto_1

    :cond_7
    cmpl-float v3, v9, v3

    if-lez v3, :cond_8

    iget v3, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    goto :goto_1

    :cond_8
    iget v2, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵˊ:F

    goto :goto_0

    :goto_2
    iget-boolean v3, v13, Lʻـ/ⁱˊ;->ᴵˊ:Z

    if-nez v3, :cond_9

    iput-boolean v12, v13, Lʻـ/ⁱˊ;->ᴵˊ:Z

    iget-object v3, v13, Lʻـ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {v3, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_3
    iget v3, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ʽʽ:I

    if-eq v3, v11, :cond_d

    const/4 v6, 0x6

    if-eq v3, v6, :cond_c

    const/16 v6, 0x8

    if-eq v3, v6, :cond_b

    const/16 v6, 0x9

    if-eq v3, v6, :cond_a

    :goto_4
    move v13, v2

    move v15, v4

    goto :goto_7

    :cond_a
    int-to-double v3, v2

    const-wide v6, 0x4002cccccccccccdL    # 2.35

    div-double/2addr v3, v6

    :goto_5
    double-to-int v4, v3

    goto :goto_4

    :cond_b
    int-to-double v2, v2

    const-wide v6, 0x3ff5266666666667L    # 1.3218750000000001

    :goto_6
    mul-double/2addr v2, v6

    double-to-int v2, v2

    int-to-double v3, v4

    mul-double/2addr v3, v6

    goto :goto_5

    :cond_c
    mul-int/lit8 v2, v4, 0x4

    div-int/lit8 v2, v2, 0x3

    goto :goto_4

    :cond_d
    int-to-double v2, v2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    goto :goto_6

    :goto_7
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    const v2, 0x7f0b0187

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v1, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v14

    new-array v1, v10, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ˈٴ:Landroid/animation/ValueAnimator;

    new-instance v11, Lᐧⁱ/ⁱˊ;

    invoke-direct/range {v11 .. v17}, Lᐧⁱ/ⁱˊ;-><init>(IIIILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ˈٴ:Landroid/animation/ValueAnimator;

    new-instance v2, Landroidx/leanback/widget/ᵔٴ;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Landroidx/leanback/widget/ᵔٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ˈٴ:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ˈٴ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_e
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v1, v13, v15}, Landroidx/media3/ui/AspectRatioFrameLayout;->ⁱˊ(Landroid/view/View;II)V

    invoke-static {v2, v13, v15}, Landroidx/media3/ui/AspectRatioFrameLayout;->ⁱˊ(Landroid/view/View;II)V

    return-void

    :cond_f
    :goto_8
    new-instance v2, Lᐧⁱ/ﹳٴ;

    invoke-direct {v2, v5, v0, v1}, Lᐧⁱ/ﹳٴ;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
