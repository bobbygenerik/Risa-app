.class public final synthetic Landroidx/leanback/widget/ʻˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/ʻˋ;->ﹳٴ:I

    iput-object p2, p0, Landroidx/leanback/widget/ʻˋ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʻˋ;->ﹳٴ:I

    iget-object v1, p0, Landroidx/leanback/widget/ʻˋ;->ⁱˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lʽˊ/ٴﹶ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, v1, Lʽˊ/ᵔﹳ;->ˈ:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_0
    check-cast v1, Landroidx/leanback/widget/SearchOrbView;

    sget v0, Landroidx/leanback/widget/SearchOrbView;->ʼˈ:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/SearchOrbView;->setSearchOrbZ(F)V

    return-void

    :pswitch_1
    check-cast v1, Landroidx/leanback/widget/SearchOrbView;

    sget v0, Landroidx/leanback/widget/SearchOrbView;->ʼˈ:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/SearchOrbView;->setOrbViewColor(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
