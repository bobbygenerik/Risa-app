.class public final synthetic Lᐧⁱ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ⁱˊ:Lᐧⁱ/ʼʼ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lᐧⁱ/ʼʼ;I)V
    .locals 0

    iput p2, p0, Lᐧⁱ/ʻٴ;->ﹳٴ:I

    iput-object p1, p0, Lᐧⁱ/ʻٴ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    iget v0, p0, Lᐧⁱ/ʻٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧⁱ/ʻٴ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ⁱˊ:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ʽ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v0, v0, Lᐧⁱ/ʼʼ;->ˑﹳ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lᐧⁱ/ʻٴ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lᐧⁱ/ʼʼ;->ﹳٴ(F)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lᐧⁱ/ʻٴ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lᐧⁱ/ʼʼ;->ﹳٴ(F)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lᐧⁱ/ʻٴ;->ⁱˊ:Lᐧⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ⁱˊ:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, v0, Lᐧⁱ/ʼʼ;->ʽ:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, v0, Lᐧⁱ/ʼʼ;->ˑﹳ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
