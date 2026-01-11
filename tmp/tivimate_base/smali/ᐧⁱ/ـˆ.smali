.class public final Lᐧⁱ/ـˆ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lᐧⁱ/ʼʼ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lᐧⁱ/ʼʼ;I)V
    .locals 0

    iput p2, p0, Lᐧⁱ/ـˆ;->ﹳٴ:I

    iput-object p1, p0, Lᐧⁱ/ـˆ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    iget v0, p0, Lᐧⁱ/ـˆ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lᐧⁱ/ـˆ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    iget-object p1, p1, Lᐧⁱ/ʼʼ;->ᵔᵢ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_2
    iget-object p1, p0, Lᐧⁱ/ـˆ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    iget-object p1, p1, Lᐧⁱ/ʼʼ;->ﾞᴵ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :pswitch_3
    iget-object p1, p0, Lᐧⁱ/ـˆ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lᐧⁱ/ـˆ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lᐧⁱ/ـˆ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    iget-object v0, p1, Lᐧⁱ/ʼʼ;->ⁱˊ:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p1, Lᐧⁱ/ʼʼ;->ʽ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p1, Lᐧⁱ/ʼʼ;->ˑﹳ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    .prologue
    iget p1, p0, Lᐧⁱ/ـˆ;->ﹳٴ:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    const/4 v4, 0x4

    const/4 v5, 0x0

    iget-object v6, p0, Lᐧⁱ/ـˆ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    packed-switch p1, :pswitch_data_0

    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ﾞᴵ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ᵔᵢ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ᵔᵢ:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ᵔᵢ:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0, v5}, Landroid/view/View;->scrollTo(II)V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {v6, v4}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_2
    invoke-virtual {v6, v4}, Lᐧⁱ/ʼʼ;->ʼˎ(I)V

    return-void

    :pswitch_3
    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ⁱˊ:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ʽ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ˑﹳ:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    iget-boolean v7, v6, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-eqz v7, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ˆʾ:Landroid/view/View;

    instance-of v4, p1, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v4, :cond_7

    iget-boolean v4, v6, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-nez v4, :cond_7

    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    iget-object v4, p1, Landroidx/media3/ui/DefaultTimeBar;->ˊᵔ:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iput-boolean v5, p1, Landroidx/media3/ui/DefaultTimeBar;->ˈˏ:Z

    iget p1, p1, Landroidx/media3/ui/DefaultTimeBar;->ـﹶ:F

    new-array v1, v1, [F

    aput p1, v1, v5

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    return-void

    :pswitch_4
    iget-object p1, v6, Lᐧⁱ/ʼʼ;->ˆʾ:Landroid/view/View;

    instance-of v4, p1, Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v4, :cond_9

    iget-boolean v4, v6, Lᐧⁱ/ʼʼ;->ʾˋ:Z

    if-nez v4, :cond_9

    check-cast p1, Landroidx/media3/ui/DefaultTimeBar;

    iget-object v4, p1, Landroidx/media3/ui/DefaultTimeBar;->ˊᵔ:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    iget p1, p1, Landroidx/media3/ui/DefaultTimeBar;->ـﹶ:F

    new-array v1, v1, [F

    aput p1, v1, v5

    const/4 p1, 0x0

    aput p1, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
