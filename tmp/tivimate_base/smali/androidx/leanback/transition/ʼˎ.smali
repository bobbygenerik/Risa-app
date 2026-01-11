.class public final Landroidx/leanback/transition/ʼˎ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field public final ʼˎ:F

.field public final ʽ:I

.field public final ˈ:I

.field public ˑﹳ:[I

.field public ᵎﹶ:F

.field public final ᵔᵢ:F

.field public final ⁱˊ:Landroid/view/View;

.field public final ﹳٴ:Landroid/view/View;

.field public ﾞᴵ:F


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/leanback/transition/ʼˎ;->ⁱˊ:Landroid/view/View;

    iput-object p2, p0, Landroidx/leanback/transition/ʼˎ;->ﹳٴ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p0, Landroidx/leanback/transition/ʼˎ;->ʽ:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/leanback/transition/ʼˎ;->ˈ:I

    iput p5, p0, Landroidx/leanback/transition/ʼˎ;->ᵔᵢ:F

    iput p6, p0, Landroidx/leanback/transition/ʼˎ;->ʼˎ:F

    const p1, 0x7f0b03b8

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Landroidx/leanback/transition/ʼˎ;->ˑﹳ:[I

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    iget-object p1, p0, Landroidx/leanback/transition/ʼˎ;->ˑﹳ:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/leanback/transition/ʼˎ;->ˑﹳ:[I

    :cond_0
    iget-object p1, p0, Landroidx/leanback/transition/ʼˎ;->ˑﹳ:[I

    iget v0, p0, Landroidx/leanback/transition/ʼˎ;->ʽ:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/leanback/transition/ʼˎ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v2, 0x0

    aput v0, p1, v2

    iget-object p1, p0, Landroidx/leanback/transition/ʼˎ;->ˑﹳ:[I

    iget v0, p0, Landroidx/leanback/transition/ʼˎ;->ˈ:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    const p1, 0x7f0b03b8

    iget-object v0, p0, Landroidx/leanback/transition/ʼˎ;->ˑﹳ:[I

    iget-object v1, p0, Landroidx/leanback/transition/ʼˎ;->ﹳٴ:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/leanback/transition/ʼˎ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/leanback/transition/ʼˎ;->ﾞᴵ:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/leanback/transition/ʼˎ;->ᵎﹶ:F

    iget v0, p0, Landroidx/leanback/transition/ʼˎ;->ᵔᵢ:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, p0, Landroidx/leanback/transition/ʼˎ;->ʼˎ:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/leanback/transition/ʼˎ;->ﾞᴵ:F

    iget-object v0, p0, Landroidx/leanback/transition/ʼˎ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget p1, p0, Landroidx/leanback/transition/ʼˎ;->ᵎﹶ:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    iget p1, p0, Landroidx/leanback/transition/ʼˎ;->ᵔᵢ:F

    iget-object v0, p0, Landroidx/leanback/transition/ʼˎ;->ⁱˊ:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget p1, p0, Landroidx/leanback/transition/ʼˎ;->ʼˎ:F

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
