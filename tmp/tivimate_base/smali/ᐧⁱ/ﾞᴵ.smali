.class public final synthetic Lᐧⁱ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ⁱˊ:Landroidx/media3/ui/DefaultTimeBar;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/DefaultTimeBar;I)V
    .locals 0

    iput p2, p0, Lᐧⁱ/ﾞᴵ;->ﹳٴ:I

    iput-object p1, p0, Lᐧⁱ/ﾞᴵ;->ⁱˊ:Landroidx/media3/ui/DefaultTimeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    iget v0, p0, Lᐧⁱ/ﾞᴵ;->ﹳٴ:I

    iget-object v1, p0, Lᐧⁱ/ﾞᴵ;->ⁱˊ:Landroidx/media3/ui/DefaultTimeBar;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/ui/DefaultTimeBar;->ˑ:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroidx/media3/ui/DefaultTimeBar;->ـﹶ:F

    iget-object p1, v1, Landroidx/media3/ui/DefaultTimeBar;->ʾˋ:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/ui/DefaultTimeBar;->ˑ:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Landroidx/media3/ui/DefaultTimeBar;->ᐧﹶ:F

    iget-object p1, v1, Landroidx/media3/ui/DefaultTimeBar;->ᴵˊ:Landroid/graphics/Rect;

    iget v0, v1, Landroidx/media3/ui/DefaultTimeBar;->ᵎᵔ:F

    const/4 v2, 0x3

    invoke-static {v2, v0}, Landroidx/media3/ui/DefaultTimeBar;->ﹳٴ(IF)I

    move-result v3

    iput v3, v1, Landroidx/media3/ui/DefaultTimeBar;->ˆﾞ:I

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2, v0}, Landroidx/media3/ui/DefaultTimeBar;->ﹳٴ(IF)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x6

    invoke-static {v3, v0}, Landroidx/media3/ui/DefaultTimeBar;->ﹳٴ(IF)I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroidx/media3/ui/DefaultTimeBar;->ᐧﹶ:F

    sub-float v4, v0, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    add-float/2addr v2, v4

    goto :goto_0

    :cond_0
    sub-float v2, v0, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroidx/media3/ui/DefaultTimeBar;->ˆﾞ:I

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, v1, Landroidx/media3/ui/DefaultTimeBar;->ˆﾞ:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
