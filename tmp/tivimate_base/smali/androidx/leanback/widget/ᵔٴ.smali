.class public final Landroidx/leanback/widget/ᵔٴ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ᵔٴ;->ﹳٴ:I

    iput-object p2, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ᵔٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/ui/AspectRatioFrameLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/media3/ui/AspectRatioFrameLayout;->ˈٴ:Landroid/animation/ValueAnimator;

    return-void

    :pswitch_2
    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵˑ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴʼ:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ᵔٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/ui/AspectRatioFrameLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/media3/ui/AspectRatioFrameLayout;->ˈٴ:Landroid/animation/ValueAnimator;

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˑʿ/ʻٴ;

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ʼᐧ()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ᴵˑ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->ٴʼ:Z

    return-void

    :pswitch_2
    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->ٴﹶ:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_3
    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ٴﹶ:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_4
    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lʽˊ/ٴﹶ;

    invoke-virtual {p1}, Lʽˊ/ᵔﹳ;->ʼᐧ()V

    iget-object p1, p1, Lʽˊ/ٴﹶ;->ﹳᐧ:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʻˈ/ﾞᴵ;

    iget-object v1, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱ/ﹳٴ;

    iget-object v3, v3, Lⁱ/ﹳٴ;->ⁱˊ:Lⁱ/ʽ;

    iget-object v3, v3, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lʻˈ/ﾞᴵ;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_6
    iget-object p1, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/leanback/widget/ˈʿ;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/leanback/widget/ˈʿ;->ᴵʼ:Landroid/animation/Animator;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ᵔٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/leanback/widget/ᵔٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʻˈ/ﾞᴵ;

    iget-object v1, v0, Lʻˈ/ﾞᴵ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱ/ﹳٴ;

    iget-object v3, v3, Lⁱ/ﹳٴ;->ⁱˊ:Lⁱ/ʽ;

    iget-object v4, v3, Lⁱ/ʽ;->ˈʿ:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lⁱ/ʽ;->ʼˈ:[I

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {v0, v3}, Lʻˈ/ﾞᴵ;->setTint(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
