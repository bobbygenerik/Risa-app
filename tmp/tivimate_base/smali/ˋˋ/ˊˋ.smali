.class public final Lˋˋ/ˊˋ;
.super Lˋˋ/ˆﾞ;
.source "SourceFile"


# instance fields
.field public final synthetic ᵔﹳ:I

.field public final synthetic ﹳᐧ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˋˋ/ˊˋ;->ᵔﹳ:I

    iput-object p3, p0, Lˋˋ/ˊˋ;->ﹳᐧ:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lˋˋ/ˆﾞ;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ʼˎ(Landroid/view/View;Lˋˋ/ـᵎ;)V
    .locals 6

    .prologue
    iget v0, p0, Lˋˋ/ˊˋ;->ᵔﹳ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lˋˋ/ˆﾞ;->ʼˎ(Landroid/view/View;Lˋˋ/ـᵎ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˋˋ/ˊˋ;->ﹳᐧ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ʼˈ;

    iget-object v1, v0, Lˋˋ/ʼˈ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lˋˋ/ʻᵎ;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lˋˋ/ʼˈ;->ﹳٴ(Lˋˋ/ʻᵎ;Landroid/view/View;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lˋˋ/ˊˋ;->ˑﹳ(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-lez v2, :cond_0

    iput v0, p2, Lˋˋ/ـᵎ;->ﹳٴ:I

    iput p1, p2, Lˋˋ/ـᵎ;->ⁱˊ:I

    iput v2, p2, Lˋˋ/ـᵎ;->ʽ:I

    iget-object p1, p0, Lˋˋ/ˆﾞ;->ˆʾ:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p2, Lˋˋ/ـᵎ;->ˑﹳ:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Lˋˋ/ـᵎ;->ﾞᴵ:Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ(Landroid/view/View;I)I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˊˋ;->ᵔﹳ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lˋˋ/ˆﾞ;->ʽ(Landroid/view/View;I)I

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lˋˋ/ˊˋ;->ﹳᐧ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ˈ(Landroid/util/DisplayMetrics;)F
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˊˋ;->ᵔﹳ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lˋˋ/ˆﾞ;->ˈ(Landroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    :pswitch_0
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ˑﹳ(I)I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˊˋ;->ᵔﹳ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lˋˋ/ˆﾞ;->ˑﹳ(I)I

    move-result p1

    return p1

    :pswitch_0
    const/16 v0, 0x64

    invoke-super {p0, p1}, Lˋˋ/ˆﾞ;->ˑﹳ(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ⁱˊ(Landroid/view/View;I)I
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˊˋ;->ᵔﹳ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lˋˋ/ˆﾞ;->ⁱˊ(Landroid/view/View;I)I

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lˋˋ/ˊˋ;->ﹳᐧ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ﾞᴵ(I)Landroid/graphics/PointF;
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/ˊˋ;->ᵔﹳ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lˋˋ/ˆﾞ;->ﾞᴵ(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
