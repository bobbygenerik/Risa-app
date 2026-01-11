.class public final Lˋᵔ/ˉـ;
.super Lˋᵔ/ʿ;
.source "SourceFile"


# instance fields
.field public final ˑﹳ:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lˋᵔ/ʿ;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object p1, p0, Lˋᵔ/ˉـ;->ˑﹳ:Landroid/view/WindowInsetsAnimation;

    return-void
.end method

.method public static ᵎﹶ(Landroid/view/WindowInsetsAnimation$Bounds;)Lᵎⁱ/ⁱˊ;
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation$Bounds;->getLowerBound()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lᵎⁱ/ⁱˊ;->ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;

    move-result-object p0

    return-object p0
.end method

.method public static ᵔᵢ(Landroid/view/View;Lʽⁱ/ᵎﹶ;)V
    .locals 1

    new-instance v0, Lˋᵔ/ᴵˑ;

    invoke-direct {v0, p1}, Lˋᵔ/ᴵˑ;-><init>(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static ﾞᴵ(Landroid/view/WindowInsetsAnimation$Bounds;)Lᵎⁱ/ⁱˊ;
    .locals 0

    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation$Bounds;->getUpperBound()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Lᵎⁱ/ⁱˊ;->ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ʽ()F
    .locals 1

    iget-object v0, p0, Lˋᵔ/ˉـ;->ˑﹳ:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    return v0
.end method

.method public final ˈ()I
    .locals 1

    iget-object v0, p0, Lˋᵔ/ˉـ;->ˑﹳ:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v0

    return v0
.end method

.method public final ˑﹳ(F)V
    .locals 1

    iget-object v0, p0, Lˋᵔ/ˉـ;->ˑﹳ:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0, p1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    return-void
.end method

.method public final ⁱˊ()J
    .locals 2

    iget-object v0, p0, Lˋᵔ/ˉـ;->ˑﹳ:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﹳٴ()F
    .locals 1

    iget-object v0, p0, Lˋᵔ/ˉـ;->ˑﹳ:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getAlpha()F

    move-result v0

    return v0
.end method
