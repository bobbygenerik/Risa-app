.class public final Lˋˋ/ﾞʻ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public final synthetic ˈ:Landroid/view/View;

.field public final synthetic ˑﹳ:I

.field public final synthetic ᵎﹶ:Lʿי/ـᵎ;

.field public final synthetic ⁱˊ:Lˋˋ/ʼـ;

.field public final synthetic ﹳٴ:I

.field public final synthetic ﾞᴵ:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public synthetic constructor <init>(Lʿי/ـᵎ;Lˋˋ/ʼـ;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;I)V
    .locals 0

    iput p7, p0, Lˋˋ/ﾞʻ;->ﹳٴ:I

    iput-object p1, p0, Lˋˋ/ﾞʻ;->ᵎﹶ:Lʿי/ـᵎ;

    iput-object p2, p0, Lˋˋ/ﾞʻ;->ⁱˊ:Lˋˋ/ʼـ;

    iput p3, p0, Lˋˋ/ﾞʻ;->ʽ:I

    iput-object p4, p0, Lˋˋ/ﾞʻ;->ˈ:Landroid/view/View;

    iput p5, p0, Lˋˋ/ﾞʻ;->ˑﹳ:I

    iput-object p6, p0, Lˋˋ/ﾞʻ;->ﾞᴵ:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    iget p1, p0, Lˋˋ/ﾞʻ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget p1, p0, Lˋˋ/ﾞʻ;->ʽ:I

    const/4 v0, 0x0

    iget-object v1, p0, Lˋˋ/ﾞʻ;->ˈ:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lˋˋ/ﾞʻ;->ˑﹳ:I

    if-eqz p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void

    :pswitch_0
    iget p1, p0, Lˋˋ/ﾞʻ;->ʽ:I

    const/4 v0, 0x0

    iget-object v1, p0, Lˋˋ/ﾞʻ;->ˈ:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    iget p1, p0, Lˋˋ/ﾞʻ;->ˑﹳ:I

    if-eqz p1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    iget p1, p0, Lˋˋ/ﾞʻ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˋˋ/ﾞʻ;->ﾞᴵ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lˋˋ/ﾞʻ;->ᵎﹶ:Lʿי/ـᵎ;

    iget-object v0, p0, Lˋˋ/ﾞʻ;->ⁱˊ:Lˋˋ/ʼـ;

    invoke-virtual {p1, v0}, Lˋˋ/ᐧᴵ;->ʽ(Lˋˋ/ʼـ;)V

    iget-object v1, p1, Lʿי/ـᵎ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lʿי/ـᵎ;->ﾞʻ()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋˋ/ﾞʻ;->ﾞᴵ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lˋˋ/ﾞʻ;->ᵎﹶ:Lʿי/ـᵎ;

    iget-object v0, p0, Lˋˋ/ﾞʻ;->ⁱˊ:Lˋˋ/ʼـ;

    invoke-virtual {p1, v0}, Lˋˋ/ᐧᴵ;->ʽ(Lˋˋ/ʼـ;)V

    iget-object v1, p1, Lʿי/ـᵎ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lʿי/ـᵎ;->ﾞʻ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    iget p1, p0, Lˋˋ/ﾞʻ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˋˋ/ﾞʻ;->ᵎﹶ:Lʿי/ـᵎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋˋ/ﾞʻ;->ᵎﹶ:Lʿי/ـᵎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
