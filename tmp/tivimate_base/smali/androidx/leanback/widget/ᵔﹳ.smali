.class public abstract Landroidx/leanback/widget/ᵔﹳ;
.super Lˋˋ/ˆﾞ;
.source "SourceFile"


# instance fields
.field public ᵔﹳ:Z

.field public final synthetic ﹳᐧ:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ᵔﹳ;->ﹳᐧ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager;->ﹳᐧ:Landroidx/leanback/widget/ᵔᵢ;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lˋˋ/ˆﾞ;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Landroid/view/View;Lˋˋ/ـᵎ;)V
    .locals 6

    .prologue
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->ˈˏ:[I

    iget-object v1, p0, Landroidx/leanback/widget/ᵔﹳ;->ﹳᐧ:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/leanback/widget/GridLayoutManager;->ﾞˏ(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v1, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    aget p1, v0, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    aget p1, v0, v1

    aget v0, v0, v2

    :goto_0
    mul-int v2, p1, p1

    mul-int v3, v0, v0

    add-int/2addr v3, v2

    int-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/ᵔﹳ;->ˑﹳ(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput p1, p2, Lˋˋ/ـᵎ;->ﹳٴ:I

    iput v0, p2, Lˋˋ/ـᵎ;->ⁱˊ:I

    iput v2, p2, Lˋˋ/ـᵎ;->ʽ:I

    iget-object p1, p0, Lˋˋ/ˆﾞ;->ˆʾ:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p2, Lˋˋ/ـᵎ;->ˑﹳ:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    :cond_1
    return-void
.end method

.method public final ˈ(Landroid/util/DisplayMetrics;)F
    .locals 1

    invoke-super {p0, p1}, Lˋˋ/ˆﾞ;->ˈ(Landroid/util/DisplayMetrics;)F

    move-result p1

    iget-object v0, p0, Landroidx/leanback/widget/ᵔﹳ;->ﹳᐧ:Landroidx/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->ʼᐧ:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public final ˑﹳ(I)I
    .locals 3

    .prologue
    invoke-super {p0, p1}, Lˋˋ/ˆﾞ;->ˑﹳ(I)I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/ᵔﹳ;->ﹳᐧ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v1, Landroidx/leanback/widget/GridLayoutManager;->ʿᵢ:Lˏˆ/ﹳٴ;

    iget-object v1, v1, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/ʽⁱ;

    iget v1, v1, Landroidx/leanback/widget/ʽⁱ;->ʼˎ:I

    if-lez v1, :cond_0

    const/high16 v2, 0x41f00000    # 30.0f

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    int-to-float p1, v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    float-to-int p1, v2

    return p1

    :cond_0
    return v0
.end method

.method public ٴﹶ()V
    .locals 4

    .prologue
    iget v0, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    iget-object v1, p0, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v1, v0}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/ᵔﹳ;->ﹳᐧ:Landroidx/leanback/widget/GridLayoutManager;

    if-nez v0, :cond_1

    iget v0, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroidx/leanback/widget/GridLayoutManager;->יʿ(IIZ)V

    :cond_0
    return-void

    :cond_1
    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    iget v3, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    if-eq v2, v3, :cond_2

    iput v3, v1, Landroidx/leanback/widget/GridLayoutManager;->ˊʻ:I

    :cond_2
    invoke-virtual {v1}, Lˋˋ/ʻᵎ;->ˋᵔ()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget v0, v1, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    and-int/lit8 v0, v0, -0x21

    iput v0, v1, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    :cond_3
    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager;->ˑˆ()V

    invoke-virtual {v1}, Landroidx/leanback/widget/GridLayoutManager;->ˎˉ()V

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 3

    .prologue
    invoke-super {p0}, Lˋˋ/ˆﾞ;->ᵔᵢ()V

    iget-boolean v0, p0, Landroidx/leanback/widget/ᵔﹳ;->ᵔﹳ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/ᵔﹳ;->ٴﹶ()V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ᵔﹳ;->ﹳᐧ:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉٴ:Landroidx/leanback/widget/ᵔﹳ;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ˉٴ:Landroidx/leanback/widget/ᵔﹳ;

    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎⁱ:Landroidx/leanback/widget/יـ;

    if-ne v1, p0, :cond_2

    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->ᵎⁱ:Landroidx/leanback/widget/יـ;

    :cond_2
    return-void
.end method
