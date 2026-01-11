.class public final Lˋˋ/יـ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Landroid/view/View;

.field public final synthetic ˈ:Landroid/view/ViewPropertyAnimator;

.field public final synthetic ˑﹳ:Lʿי/ـᵎ;

.field public final synthetic ⁱˊ:Lˋˋ/ʼـ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Lʿי/ـᵎ;Lˋˋ/ʼـ;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˋˋ/יـ;->ﹳٴ:I

    iput-object p1, p0, Lˋˋ/יـ;->ˑﹳ:Lʿי/ـᵎ;

    iput-object p2, p0, Lˋˋ/יـ;->ⁱˊ:Lˋˋ/ʼـ;

    iput-object p3, p0, Lˋˋ/יـ;->ʽ:Landroid/view/View;

    iput-object p4, p0, Lˋˋ/יـ;->ˈ:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lʿי/ـᵎ;Lˋˋ/ʼـ;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/יـ;->ﹳٴ:I

    iput-object p1, p0, Lˋˋ/יـ;->ˑﹳ:Lʿי/ـᵎ;

    iput-object p2, p0, Lˋˋ/יـ;->ⁱˊ:Lˋˋ/ʼـ;

    iput-object p3, p0, Lˋˋ/יـ;->ˈ:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lˋˋ/יـ;->ʽ:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    iget v0, p0, Lˋˋ/יـ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋˋ/יـ;->ʽ:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    iget p1, p0, Lˋˋ/יـ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˋˋ/יـ;->ˈ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lˋˋ/יـ;->ˑﹳ:Lʿי/ـᵎ;

    iget-object v0, p0, Lˋˋ/יـ;->ⁱˊ:Lˋˋ/ʼـ;

    invoke-virtual {p1, v0}, Lˋˋ/ᐧᴵ;->ʽ(Lˋˋ/ʼـ;)V

    iget-object v1, p1, Lʿי/ـᵎ;->ʼᐧ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lʿי/ـᵎ;->ﾞʻ()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋˋ/יـ;->ˈ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lˋˋ/יـ;->ʽ:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lˋˋ/יـ;->ˑﹳ:Lʿי/ـᵎ;

    iget-object v0, p0, Lˋˋ/יـ;->ⁱˊ:Lˋˋ/ʼـ;

    invoke-virtual {p1, v0}, Lˋˋ/ᐧᴵ;->ʽ(Lˋˋ/ʼـ;)V

    iget-object v1, p1, Lʿי/ـᵎ;->ﹳᐧ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lʿי/ـᵎ;->ﾞʻ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    iget p1, p0, Lˋˋ/יـ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˋˋ/יـ;->ˑﹳ:Lʿי/ـᵎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋˋ/יـ;->ˑﹳ:Lʿי/ـᵎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
