.class public final synthetic Lᐧⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ʽ:I

.field public final synthetic ˈ:I

.field public final synthetic ˑﹳ:Landroid/view/View;

.field public final synthetic ⁱˊ:I

.field public final synthetic ﹳٴ:I

.field public final synthetic ﾞᴵ:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(IIIILandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᐧⁱ/ⁱˊ;->ﹳٴ:I

    iput p2, p0, Lᐧⁱ/ⁱˊ;->ⁱˊ:I

    iput p3, p0, Lᐧⁱ/ⁱˊ;->ʽ:I

    iput p4, p0, Lᐧⁱ/ⁱˊ;->ˈ:I

    iput-object p5, p0, Lᐧⁱ/ⁱˊ;->ˑﹳ:Landroid/view/View;

    iput-object p6, p0, Lᐧⁱ/ⁱˊ;->ﾞᴵ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    sget v0, Landroidx/media3/ui/AspectRatioFrameLayout;->ᴵᵔ:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lᐧⁱ/ⁱˊ;->ﹳٴ:I

    int-to-float v1, v0

    iget v2, p0, Lᐧⁱ/ⁱˊ;->ⁱˊ:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lᐧⁱ/ⁱˊ;->ʽ:I

    int-to-float v2, v1

    iget v3, p0, Lᐧⁱ/ⁱˊ;->ˈ:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr p1, v1

    add-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lᐧⁱ/ⁱˊ;->ˑﹳ:Landroid/view/View;

    invoke-static {v1, v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->ⁱˊ(Landroid/view/View;II)V

    iget-object v1, p0, Lᐧⁱ/ⁱˊ;->ﾞᴵ:Landroid/view/View;

    invoke-static {v1, v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->ⁱˊ(Landroid/view/View;II)V

    return-void
.end method
