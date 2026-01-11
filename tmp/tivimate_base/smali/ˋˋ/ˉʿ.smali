.class public final Lˋˋ/ˉʿ;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Landroid/view/ViewPropertyAnimator;

.field public final synthetic ˈ:Landroid/view/View;

.field public final synthetic ˑﹳ:Lʿי/ـᵎ;

.field public final synthetic ⁱˊ:Lˋˋ/ᵔʾ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lʿי/ـᵎ;Lˋˋ/ᵔʾ;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Lˋˋ/ˉʿ;->ﹳٴ:I

    iput-object p1, p0, Lˋˋ/ˉʿ;->ˑﹳ:Lʿי/ـᵎ;

    iput-object p2, p0, Lˋˋ/ˉʿ;->ⁱˊ:Lˋˋ/ᵔʾ;

    iput-object p3, p0, Lˋˋ/ˉʿ;->ʽ:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lˋˋ/ˉʿ;->ˈ:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    iget p1, p0, Lˋˋ/ˉʿ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˋˋ/ˉʿ;->ʽ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lˋˋ/ˉʿ;->ˈ:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lˋˋ/ˉʿ;->ⁱˊ:Lˋˋ/ᵔʾ;

    iget-object v0, p1, Lˋˋ/ᵔʾ;->ⁱˊ:Lˋˋ/ʼـ;

    iget-object v1, p0, Lˋˋ/ˉʿ;->ˑﹳ:Lʿי/ـᵎ;

    invoke-virtual {v1, v0}, Lˋˋ/ᐧᴵ;->ʽ(Lˋˋ/ʼـ;)V

    iget-object v0, v1, Lʿי/ـᵎ;->יـ:Ljava/util/ArrayList;

    iget-object p1, p1, Lˋˋ/ᵔʾ;->ⁱˊ:Lˋˋ/ʼـ;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lʿי/ـᵎ;->ﾞʻ()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋˋ/ˉʿ;->ʽ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lˋˋ/ˉʿ;->ˈ:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lˋˋ/ˉʿ;->ⁱˊ:Lˋˋ/ᵔʾ;

    iget-object v0, p1, Lˋˋ/ᵔʾ;->ﹳٴ:Lˋˋ/ʼـ;

    iget-object v1, p0, Lˋˋ/ˉʿ;->ˑﹳ:Lʿי/ـᵎ;

    invoke-virtual {v1, v0}, Lˋˋ/ᐧᴵ;->ʽ(Lˋˋ/ʼـ;)V

    iget-object v0, v1, Lʿי/ـᵎ;->יـ:Ljava/util/ArrayList;

    iget-object p1, p1, Lˋˋ/ᵔʾ;->ﹳٴ:Lˋˋ/ʼـ;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lʿי/ـᵎ;->ﾞʻ()V

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
    iget p1, p0, Lˋˋ/ˉʿ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lˋˋ/ˉʿ;->ⁱˊ:Lˋˋ/ᵔʾ;

    iget-object p1, p1, Lˋˋ/ᵔʾ;->ⁱˊ:Lˋˋ/ʼـ;

    iget-object p1, p0, Lˋˋ/ˉʿ;->ˑﹳ:Lʿי/ـᵎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    iget-object p1, p0, Lˋˋ/ˉʿ;->ⁱˊ:Lˋˋ/ᵔʾ;

    iget-object p1, p1, Lˋˋ/ᵔʾ;->ﹳٴ:Lˋˋ/ʼـ;

    iget-object p1, p0, Lˋˋ/ˉʿ;->ˑﹳ:Lʿי/ـᵎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
