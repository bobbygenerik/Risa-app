.class public final synthetic Lᐧⁱ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lᐧⁱ/ʼʼ;


# direct methods
.method public synthetic constructor <init>(Lᐧⁱ/ʼʼ;I)V
    .locals 0

    iput p2, p0, Lᐧⁱ/ʽﹳ;->ʾˋ:I

    iput-object p1, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    iget v0, p0, Lᐧⁱ/ʽﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ﾞʻ:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ʽﹳ:Lᐧⁱ/ʽﹳ;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lᐧⁱ/ʼʼ;->ˑﹳ(Ljava/lang/Runnable;J)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    iget-object v0, v0, Lᐧⁱ/ʼʼ;->ˉʿ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    iget-object v0, v0, Lᐧⁱ/ʼʼ;->ᵔʾ:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ﹳᐧ:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lᐧⁱ/ʼʼ;->ٴﹶ:Landroid/view/View;

    iget-object v3, v0, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    iget-object v4, v0, Lᐧⁱ/ʼʼ;->ᵎﹶ:Landroid/view/ViewGroup;

    iget-object v5, v0, Lᐧⁱ/ʼʼ;->ﾞᴵ:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v6, v3

    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v3, v8, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v5, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, v0, Lᐧⁱ/ʼʼ;->ʼˎ:Landroid/view/ViewGroup;

    invoke-static {v3}, Lᐧⁱ/ʼʼ;->ʽ(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v8

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_3

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lᐧⁱ/ʼʼ;->ʽ(Landroid/view/View;)I

    move-result v11

    add-int/2addr v3, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v6, :cond_7

    if-eqz v2, :cond_4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v2}, Lᐧⁱ/ʼʼ;->ʽ(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v7

    :goto_2
    if-ge v1, v9, :cond_6

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lᐧⁱ/ʼʼ;->ʽ(Landroid/view/View;)I

    move-result v10

    sub-int/2addr v3, v10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gt v3, v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5, v7, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_8

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lᐧⁱ/ʼʼ;->ᵔᵢ:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, v0, Lᐧⁱ/ʼʼ;->ᵔﹳ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_5
    return-void

    :pswitch_4
    iget-object v0, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ˆʾ:Landroid/view/View;

    iget-object v2, v0, Lᐧⁱ/ʼʼ;->ˑﹳ:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    iget-boolean v5, v0, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-eqz v5, :cond_9

    move v5, v4

    goto :goto_6

    :cond_9
    move v5, v3

    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v1, :cond_12

    iget-object v2, v0, Lᐧⁱ/ʼʼ;->ﹳٴ:Lᐧⁱ/ˏי;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0700c2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_c

    iget-boolean v6, v0, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-eqz v6, :cond_b

    move v2, v4

    :cond_b
    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    instance-of v2, v1, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v2, :cond_12

    check-cast v1, Landroidx/media3/ui/DefaultTimeBar;

    iget-object v2, v1, Landroidx/media3/ui/DefaultTimeBar;->ʾˋ:Landroid/graphics/Rect;

    iget-object v5, v1, Landroidx/media3/ui/DefaultTimeBar;->ˊᵔ:Landroid/animation/ValueAnimator;

    iget-boolean v6, v0, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    iput-boolean v8, v1, Landroidx/media3/ui/DefaultTimeBar;->ˈˏ:Z

    iput v7, v1, Landroidx/media3/ui/DefaultTimeBar;->ـﹶ:F

    invoke-virtual {v1, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_e
    iget v6, v0, Lᐧⁱ/ʼʼ;->ᵢˏ:I

    if-ne v6, v8, :cond_10

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iput-boolean v4, v1, Landroidx/media3/ui/DefaultTimeBar;->ˈˏ:Z

    iput v7, v1, Landroidx/media3/ui/DefaultTimeBar;->ـﹶ:F

    invoke-virtual {v1, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_10
    const/4 v7, 0x3

    if-eq v6, v7, :cond_12

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_11
    iput-boolean v4, v1, Landroidx/media3/ui/DefaultTimeBar;->ˈˏ:Z

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Landroidx/media3/ui/DefaultTimeBar;->ـﹶ:F

    invoke-virtual {v1, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_12
    :goto_7
    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ʼʼ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v4

    :goto_8
    if-ge v5, v2, :cond_14

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/view/View;

    iget-boolean v7, v0, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-eqz v7, :cond_13

    invoke-static {v6}, Lᐧⁱ/ʼʼ;->ˆʾ(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v3

    goto :goto_9

    :cond_13
    move v7, v4

    :goto_9
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_14
    return-void

    :pswitch_5
    iget-object v0, p0, Lᐧⁱ/ʽﹳ;->ᴵˊ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0}, Lᐧⁱ/ʼʼ;->ٴﹶ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
