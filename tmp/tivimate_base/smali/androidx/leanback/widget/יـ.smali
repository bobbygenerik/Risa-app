.class public final Landroidx/leanback/widget/יـ;
.super Landroidx/leanback/widget/ᵔﹳ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽﹳ:Landroidx/leanback/widget/GridLayoutManager;

.field public ˏי:I

.field public final יـ:Z


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;IZ)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/יـ;->ʽﹳ:Landroidx/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/ᵔﹳ;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput p2, p0, Landroidx/leanback/widget/יـ;->ˏי:I

    iput-boolean p3, p0, Landroidx/leanback/widget/יـ;->יـ:Z

    const/4 p1, -0x2

    iput p1, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    return-void
.end method


# virtual methods
.method public final ٴﹶ()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroidx/leanback/widget/ᵔﹳ;->ٴﹶ()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/יـ;->ˏי:I

    iget v0, p0, Lˋˋ/ˆﾞ;->ﹳٴ:I

    iget-object v1, p0, Lˋˋ/ˆﾞ;->ⁱˊ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v1, v0}, Lˋˋ/ʻᵎ;->יـ(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/יـ;->ʽﹳ:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->ˑﹶ(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public final ﾞᴵ(I)Landroid/graphics/PointF;
    .locals 3

    .prologue
    iget p1, p0, Landroidx/leanback/widget/יـ;->ˏי:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/יـ;->ʽﹳ:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->ʽʽ:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->יـ:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
