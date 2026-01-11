.class public final Lˋˋ/ˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ʽʽ:Landroid/widget/OverScroller;

.field public ʾˋ:I

.field public ˈٴ:Landroid/view/animation/Interpolator;

.field public ˊʻ:Z

.field public final synthetic ٴᵢ:Landroidx/recyclerview/widget/RecyclerView;

.field public ᴵˊ:I

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ˑ;->ٴᵢ:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->ـʻ:Lˉـ/ˈ;

    iput-object v0, p0, Lˋˋ/ˑ;->ˈٴ:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lˋˋ/ˑ;->ᴵᵔ:Z

    iput-boolean v1, p0, Lˋˋ/ˑ;->ˊʻ:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    iget-object v0, p0, Lˋˋ/ˑ;->ٴᵢ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->ʼᵢ:[I

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void

    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lˋˋ/ˑ;->ˊʻ:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lˋˋ/ˑ;->ᴵᵔ:Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʼᐧ()V

    iget-object v11, p0, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    invoke-virtual {v11}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    iget v3, p0, Lˋˋ/ˑ;->ʾˋ:I

    sub-int v3, v1, v3

    iget v4, p0, Lˋˋ/ˑ;->ᴵˊ:I

    sub-int v4, v2, v4

    iput v1, p0, Lˋˋ/ˑ;->ʾˋ:I

    iput v2, p0, Lˋˋ/ˑ;->ᴵˊ:I

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˈˏ:Landroid/widget/EdgeEffect;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹳﹳ:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v3, v1, v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->ˉˆ(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result v1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ:Landroid/widget/EdgeEffect;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ʻˋ:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v2, v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->ˉˆ(ILandroid/widget/EdgeEffect;Landroid/widget/EdgeEffect;I)I

    move-result v2

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->ʼᵢ:[I

    aput v9, v4, v9

    aput v9, v4, v10

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->ʽﹳ(III[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    aget v3, v8, v9

    sub-int/2addr v1, v3

    aget v3, v8, v10

    sub-int/2addr v2, v3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v3

    const/4 v12, 0x2

    if-eq v3, v12, :cond_2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->ᵔʾ(II)V

    :cond_2
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz v3, :cond_6

    aput v9, v8, v9

    aput v9, v8, v10

    invoke-virtual {v0, v8, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->ˈˏ([III)V

    aget v3, v8, v9

    aget v4, v8, v10

    sub-int/2addr v1, v3

    sub-int/2addr v2, v4

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    iget-object v5, v5, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-eqz v5, :cond_5

    iget-boolean v6, v5, Lˋˋ/ˆﾞ;->ˈ:Z

    if-nez v6, :cond_5

    iget-boolean v6, v5, Lˋˋ/ˆﾞ;->ˑﹳ:Z

    if-eqz v6, :cond_5

    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v6}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lˋˋ/ˆﾞ;->ˆʾ()V

    goto :goto_0

    :cond_3
    iget v7, v5, Lˋˋ/ˆﾞ;->ﹳٴ:I

    if-lt v7, v6, :cond_4

    sub-int/2addr v6, v10

    iput v6, v5, Lˋˋ/ˆﾞ;->ﹳٴ:I

    invoke-virtual {v5, v3, v4}, Lˋˋ/ˆﾞ;->ᵎﹶ(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v3, v4}, Lˋˋ/ˆﾞ;->ᵎﹶ(II)V

    :cond_5
    :goto_0
    move v13, v3

    move v3, v1

    move v1, v13

    move v13, v4

    move v4, v2

    move v2, v13

    goto :goto_1

    :cond_6
    move v3, v1

    move v4, v2

    move v1, v9

    move v2, v1

    :goto_1
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->ˋᵔ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_7
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->ʼᵢ:[I

    aput v9, v7, v9

    aput v9, v7, v10

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->ʻٴ(IIII[II[I)V

    aget v5, v8, v9

    sub-int/2addr v3, v5

    aget v5, v8, v10

    sub-int/2addr v4, v5

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->ـˆ(II)V

    :cond_9
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->ˈ(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_a
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v6

    if-ne v5, v6, :cond_b

    move v5, v10

    goto :goto_2

    :cond_b
    move v5, v9

    :goto_2
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v7

    if-ne v6, v7, :cond_c

    move v6, v10

    goto :goto_3

    :cond_c
    move v6, v9

    :goto_3
    invoke-virtual {v11}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_f

    if-nez v5, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    if-nez v6, :cond_f

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v5, v9

    goto :goto_5

    :cond_f
    :goto_4
    move v5, v10

    :goto_5
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    iget-object v6, v6, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-eqz v6, :cond_10

    iget-boolean v6, v6, Lˋˋ/ˆﾞ;->ˈ:Z

    if-eqz v6, :cond_10

    goto/16 :goto_a

    :cond_10
    if-eqz v5, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-eq v1, v12, :cond_1a

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v3, :cond_11

    neg-int v2, v1

    goto :goto_6

    :cond_11
    if-lez v3, :cond_12

    move v2, v1

    goto :goto_6

    :cond_12
    move v2, v9

    :goto_6
    if-gez v4, :cond_13

    neg-int v1, v1

    goto :goto_7

    :cond_13
    if-lez v4, :cond_14

    goto :goto_7

    :cond_14
    move v1, v9

    :goto_7
    if-gez v2, :cond_15

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʼʼ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ˈˏ:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ˈˏ:Landroid/widget/EdgeEffect;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_8

    :cond_15
    if-lez v2, :cond_16

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ᵢˏ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹳﹳ:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹳﹳ:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_16
    :goto_8
    if-gez v1, :cond_17

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʾˋ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ:Landroid/widget/EdgeEffect;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_9

    :cond_17
    if-lez v1, :cond_18

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʾᵎ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ʻˋ:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ʻˋ:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_18
    :goto_9
    if-nez v2, :cond_19

    if-eqz v1, :cond_1a

    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1a
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ˊˊ:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˊ:Lˋˋ/ʽʽ;

    iget-object v2, v1, Lˋˋ/ʽʽ;->ﹳٴ:[I

    if-eqz v2, :cond_1b

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :cond_1b
    iput v9, v1, Lˋˋ/ʽʽ;->ˈ:I

    goto :goto_b

    :cond_1c
    :goto_a
    invoke-virtual {p0}, Lˋˋ/ˑ;->ⁱˊ()V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ʻᴵ:Lˋˋ/ᴵᵔ;

    if-eqz v3, :cond_1d

    invoke-virtual {v3, v0, v1, v2}, Lˋˋ/ᴵᵔ;->ﹳٴ(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_1d
    :goto_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_1e

    invoke-virtual {v11}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lˋˋ/ʿᵢ;->ﹳٴ(Landroid/view/View;F)V

    :cond_1e
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    iget-object v1, v1, Lˋˋ/ʻᵎ;->ˑﹳ:Lˋˋ/ˆﾞ;

    if-eqz v1, :cond_1f

    iget-boolean v2, v1, Lˋˋ/ˆﾞ;->ˈ:Z

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v9, v9}, Lˋˋ/ˆﾞ;->ᵎﹶ(II)V

    :cond_1f
    iput-boolean v9, p0, Lˋˋ/ˑ;->ᴵᵔ:Z

    iget-boolean v1, p0, Lˋˋ/ˑ;->ˊʻ:Z

    if-eqz v1, :cond_20

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_20
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->י(I)V

    return-void
.end method

.method public final ʽ(IIILandroid/view/animation/Interpolator;)V
    .locals 9

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    iget-object v2, p0, Lˋˋ/ˑ;->ٴᵢ:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p3, v0, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    int-to-float p3, p3

    int-to-float v0, v4

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p3, v0

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    const/16 v0, 0x7d0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_3
    move v8, p3

    if-nez p4, :cond_4

    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->ـʻ:Lˉـ/ˈ;

    :cond_4
    iget-object p3, p0, Lˋˋ/ˑ;->ˈٴ:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_5

    iput-object p4, p0, Lˋˋ/ˑ;->ˈٴ:Landroid/view/animation/Interpolator;

    new-instance p3, Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    :cond_5
    iput v1, p0, Lˋˋ/ˑ;->ᴵˊ:I

    iput v1, p0, Lˋˋ/ˑ;->ʾˋ:I

    const/4 p3, 0x2

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v3, p0, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lˋˋ/ˑ;->ⁱˊ()V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˋˋ/ˑ;->ᴵᵔ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˋˋ/ˑ;->ˊʻ:Z

    return-void

    :cond_0
    iget-object v0, p0, Lˋˋ/ˑ;->ٴᵢ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ﹳٴ(II)V
    .locals 12

    .prologue
    const/4 v0, 0x2

    iget-object v1, p0, Lˋˋ/ˑ;->ٴᵢ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ˑ;->ᴵˊ:I

    iput v0, p0, Lˋˋ/ˑ;->ʾˋ:I

    iget-object v0, p0, Lˋˋ/ˑ;->ˈٴ:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->ـʻ:Lˉـ/ˈ;

    if-eq v0, v2, :cond_0

    iput-object v2, p0, Lˋˋ/ˑ;->ˈٴ:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    :cond_0
    iget-object v3, p0, Lˋˋ/ˑ;->ʽʽ:Landroid/widget/OverScroller;

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lˋˋ/ˑ;->ⁱˊ()V

    return-void
.end method
