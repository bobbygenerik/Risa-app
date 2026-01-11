.class public Lˋˋ/ˆﾞ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Landroid/view/animation/LinearInterpolator;

.field public ʼᐧ:I

.field public ʽ:Lˋˋ/ʻᵎ;

.field public final ˆʾ:Landroid/view/animation/DecelerateInterpolator;

.field public ˈ:Z

.field public ˉʿ:Z

.field public ˉˆ:I

.field public ˑﹳ:Z

.field public ٴﹶ:Landroid/graphics/PointF;

.field public final ᵎﹶ:Lˋˋ/ـᵎ;

.field public ᵔʾ:F

.field public ᵔᵢ:Z

.field public ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

.field public ﹳٴ:I

.field public final ﾞʻ:Landroid/util/DisplayMetrics;

.field public ﾞᴵ:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    new-instance v1, Lˋˋ/ـᵎ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v0, v1, Lˋˋ/ـᵎ;->ˈ:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    iput v0, v1, Lˋˋ/ـᵎ;->ᵎﹶ:I

    iput v0, v1, Lˋˋ/ـᵎ;->ﹳٴ:I

    iput v0, v1, Lˋˋ/ـᵎ;->ⁱˊ:I

    const/high16 v2, -0x80000000

    iput v2, v1, Lˋˋ/ـᵎ;->ʽ:I

    const/4 v2, 0x0

    iput-object v2, v1, Lˋˋ/ـᵎ;->ˑﹳ:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lˋˋ/ˆﾞ;->ᵎﹶ:Lˋˋ/ـᵎ;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lˋˋ/ˆﾞ;->ʼˎ:Landroid/view/animation/LinearInterpolator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lˋˋ/ˆﾞ;->ˆʾ:Landroid/view/animation/DecelerateInterpolator;

    iput-boolean v0, p0, Lˋˋ/ˆﾞ;->ˉʿ:Z

    iput v0, p0, Lˋˋ/ˆﾞ;->ˉˆ:I

    iput v0, p0, Lˋˋ/ˆﾞ;->ʼᐧ:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lˋˋ/ˆﾞ;->ﾞʻ:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public static ﹳٴ(IIIII)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    sub-int/2addr p3, p1

    return p3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p2, p0

    if-lez p2, :cond_2

    return p2

    :cond_2
    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p2, p0

    return p2
.end method


# virtual methods
.method public ʼˎ(Landroid/view/View;Lˋˋ/ـᵎ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lˋˋ/ˆﾞ;->ٴﹶ:Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lˋˋ/ˆﾞ;->ⁱˊ(Landroid/view/View;I)I

    move-result v0

    iget-object v5, p0, Lˋˋ/ˆﾞ;->ٴﹶ:Landroid/graphics/PointF;

    if-eqz v5, :cond_5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v5, v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    if-lez v4, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Lˋˋ/ˆﾞ;->ʽ(Landroid/view/View;I)I

    move-result p1

    mul-int v1, v0, v0

    mul-int v2, p1, p1

    add-int/2addr v2, v1

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Lˋˋ/ˆﾞ;->ˑﹳ(I)I

    move-result v1

    int-to-double v1, v1

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-lez v1, :cond_6

    neg-int v0, v0

    neg-int p1, p1

    iput v0, p2, Lˋˋ/ـᵎ;->ﹳٴ:I

    iput p1, p2, Lˋˋ/ـᵎ;->ⁱˊ:I

    iput v1, p2, Lˋˋ/ـᵎ;->ʽ:I

    iget-object p1, p0, Lˋˋ/ˆﾞ;->ˆʾ:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p2, Lˋˋ/ـᵎ;->ˑﹳ:Landroid/view/animation/Interpolator;

    iput-boolean v3, p2, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    :cond_6
    return-void
.end method

.method public ʽ(Landroid/view/View;I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ˆﾞ;->ʽ:Lˋˋ/ʻᵎ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ﾞᴵ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˋˋ/ˊᵔ;

    invoke-virtual {v0, p1}, Lˋˋ/ʻᵎ;->ٴᵢ(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1}, Lˋˋ/ʻᵎ;->ʾˋ(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v1

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵔי()I

    move-result v1

    iget v3, v0, Lˋˋ/ʻᵎ;->ˉˆ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎⁱ()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v2, p1, v1, v3, p2}, Lˋˋ/ˆﾞ;->ﹳٴ(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˆʾ()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    invoke-virtual {p0}, Lˋˋ/ˆﾞ;->ᵔᵢ()V

    iget-object v1, p0, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    const/4 v2, -0x1

    iput v2, v1, Lˋˋ/ᐧﹶ;->ﹳٴ:I

    const/4 v1, 0x0

    iput-object v1, p0, Lˋˋ/ˆﾞ;->ﾞᴵ:Landroid/view/View;

    iput v2, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    iput-boolean v0, p0, Lˋˋ/ˆﾞ;->ˈ:Z

    iget-object v0, p0, Lˋˋ/ˆﾞ;->ʽ:Lˋˋ/ʻᵎ;

    iget-object v2, v0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-ne v2, p0, :cond_1

    iput-object v1, v0, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    :cond_1
    iput-object v1, p0, Lˋˋ/ˆﾞ;->ʽ:Lˋˋ/ʻᵎ;

    iput-object v1, p0, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public ˈ(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public ˑﹳ(I)I
    .locals 2

    .prologue
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Lˋˋ/ˆﾞ;->ˉʿ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋˋ/ˆﾞ;->ﾞʻ:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Lˋˋ/ˆﾞ;->ˈ(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lˋˋ/ˆﾞ;->ᵔʾ:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˋˋ/ˆﾞ;->ˉʿ:Z

    :cond_0
    iget v0, p0, Lˋˋ/ˆﾞ;->ᵔʾ:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public final ᵎﹶ(II)V
    .locals 8

    .prologue
    iget-object v0, p0, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ˆﾞ;->ˆʾ()V

    :cond_1
    iget-boolean v1, p0, Lˋˋ/ˆﾞ;->ˈ:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lˋˋ/ˆﾞ;->ﾞᴵ:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Lˋˋ/ˆﾞ;->ʽ:Lˋˋ/ʻᵎ;

    if-eqz v1, :cond_3

    iget v1, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {p0, v1}, Lˋˋ/ˆﾞ;->ﾞᴵ(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v5, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v5, v4

    if-nez v6, :cond_2

    iget v6, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->ˈˏ([III)V

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lˋˋ/ˆﾞ;->ˈ:Z

    iget-object v5, p0, Lˋˋ/ˆﾞ;->ﾞᴵ:Landroid/view/View;

    iget-object v6, p0, Lˋˋ/ˆﾞ;->ᵎﹶ:Lˋˋ/ـᵎ;

    if-eqz v5, :cond_6

    iget-object v7, p0, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lˋˋ/ʼـ;->ˈ()I

    move-result v2

    :cond_4
    iget v5, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lˋˋ/ˆﾞ;->ﾞᴵ:Landroid/view/View;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {p0, v2, v6}, Lˋˋ/ˆﾞ;->ʼˎ(Landroid/view/View;Lˋˋ/ـᵎ;)V

    invoke-virtual {v6, v0}, Lˋˋ/ـᵎ;->ﹳٴ(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0}, Lˋˋ/ˆﾞ;->ˆʾ()V

    goto :goto_0

    :cond_5
    const-string v2, "RecyclerView"

    const-string v5, "Passed over target position while smooth scrolling."

    nop

    iput-object v3, p0, Lˋˋ/ˆﾞ;->ﾞᴵ:Landroid/view/View;

    :cond_6
    :goto_0
    iget-boolean v2, p0, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    iget-object v2, p0, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v2}, Lˋˋ/ʻᵎ;->ʾᵎ()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lˋˋ/ˆﾞ;->ˆʾ()V

    goto/16 :goto_2

    :cond_7
    iget v2, p0, Lˋˋ/ˆﾞ;->ˉˆ:I

    sub-int p1, v2, p1

    mul-int/2addr v2, p1

    if-gtz v2, :cond_8

    move p1, v1

    :cond_8
    iput p1, p0, Lˋˋ/ˆﾞ;->ˉˆ:I

    iget v2, p0, Lˋˋ/ˆﾞ;->ʼᐧ:I

    sub-int p2, v2, p2

    mul-int/2addr v2, p2

    if-gtz v2, :cond_9

    move p2, v1

    :cond_9
    iput p2, p0, Lˋˋ/ˆﾞ;->ʼᐧ:I

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    iget p1, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {p0, p1}, Lˋˋ/ˆﾞ;->ﾞᴵ(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_b

    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, p2, v4

    if-nez v2, :cond_a

    iget v2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    mul-float/2addr p2, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v2

    add-float/2addr v2, p2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p2, v4

    iget v2, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, p2

    iput v4, p1, Landroid/graphics/PointF;->y:F

    iput-object p1, p0, Lˋˋ/ˆﾞ;->ٴﹶ:Landroid/graphics/PointF;

    const p1, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p1

    float-to-int p2, v2

    iput p2, p0, Lˋˋ/ˆﾞ;->ˉˆ:I

    mul-float/2addr v4, p1

    float-to-int p1, v4

    iput p1, p0, Lˋˋ/ˆﾞ;->ʼᐧ:I

    const/16 p1, 0x2710

    invoke-virtual {p0, p1}, Lˋˋ/ˆﾞ;->ˑﹳ(I)I

    move-result p1

    iget p2, p0, Lˋˋ/ˆﾞ;->ˉˆ:I

    int-to-float p2, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    iget v4, p0, Lˋˋ/ˆﾞ;->ʼᐧ:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p2, v6, Lˋˋ/ـᵎ;->ﹳٴ:I

    iput v4, v6, Lˋˋ/ـᵎ;->ⁱˊ:I

    iput p1, v6, Lˋˋ/ـᵎ;->ʽ:I

    iget-object p1, p0, Lˋˋ/ˆﾞ;->ʼˎ:Landroid/view/animation/LinearInterpolator;

    iput-object p1, v6, Lˋˋ/ـᵎ;->ˑﹳ:Landroid/view/animation/Interpolator;

    iput-boolean v3, v6, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    goto :goto_2

    :cond_b
    :goto_1
    iget p1, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    iput p1, v6, Lˋˋ/ـᵎ;->ˈ:I

    invoke-virtual {p0}, Lˋˋ/ˆﾞ;->ˆʾ()V

    :cond_c
    :goto_2
    iget p1, v6, Lˋˋ/ـᵎ;->ˈ:I

    if-ltz p1, :cond_d

    move v1, v3

    :cond_d
    invoke-virtual {v6, v0}, Lˋˋ/ـᵎ;->ﹳٴ(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz v1, :cond_e

    iget-boolean p1, p0, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz p1, :cond_e

    iput-boolean v3, p0, Lˋˋ/ˆﾞ;->ˈ:Z

    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᐧˎ:Lˋˋ/ˑ;

    invoke-virtual {p1}, Lˋˋ/ˑ;->ⁱˊ()V

    :cond_e
    return-void
.end method

.method public ᵔᵢ()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ˆﾞ;->ʼᐧ:I

    iput v0, p0, Lˋˋ/ˆﾞ;->ˉˆ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lˋˋ/ˆﾞ;->ٴﹶ:Landroid/graphics/PointF;

    return-void
.end method

.method public ⁱˊ(Landroid/view/View;I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ˆﾞ;->ʽ:Lˋˋ/ʻᵎ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ˑﹳ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lˋˋ/ˊᵔ;

    invoke-virtual {v0, p1}, Lˋˋ/ʻᵎ;->ʽʽ(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1}, Lˋˋ/ʻᵎ;->ˊʻ(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v1

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ٴʼ()I

    move-result v1

    iget v3, v0, Lˋˋ/ʻᵎ;->ᵔʾ:I

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ᵎˊ()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v2, p1, v1, v3, p2}, Lˋˋ/ˆﾞ;->ﹳٴ(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public ﾞᴵ(I)Landroid/graphics/PointF;
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ˆﾞ;->ʽ:Lˋˋ/ʻᵎ;

    instance-of v1, v0, Lˋˋ/ʽᵔ;

    if-eqz v1, :cond_0

    check-cast v0, Lˋˋ/ʽᵔ;

    invoke-interface {v0, p1}, Lˋˋ/ʽᵔ;->ﹳٴ(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lˋˋ/ʽᵔ;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    nop

    const/4 p1, 0x0

    return-object p1
.end method
