.class public final Lˋᵔ/ʼˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic ʽ:Lˋᵔ/ᐧﹶ;

.field public final synthetic ˈ:I

.field public final synthetic ˑﹳ:Landroid/view/View;

.field public final synthetic ⁱˊ:Lˋᵔ/ᐧﹶ;

.field public final synthetic ﹳٴ:Lˋᵔ/ʿᵢ;


# direct methods
.method public constructor <init>(Lˋᵔ/ʿᵢ;Lˋᵔ/ᐧﹶ;Lˋᵔ/ᐧﹶ;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋᵔ/ʼˈ;->ﹳٴ:Lˋᵔ/ʿᵢ;

    iput-object p2, p0, Lˋᵔ/ʼˈ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    iput-object p3, p0, Lˋᵔ/ʼˈ;->ʽ:Lˋᵔ/ᐧﹶ;

    iput p4, p0, Lˋᵔ/ʼˈ;->ˈ:I

    iput-object p5, p0, Lˋᵔ/ʼˈ;->ˑﹳ:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    .prologue
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lˋᵔ/ʼˈ;->ﹳٴ:Lˋᵔ/ʿᵢ;

    iget-object v1, v0, Lˋᵔ/ʿᵢ;->ﹳٴ:Lˋᵔ/ʿ;

    invoke-virtual {v1, p1}, Lˋᵔ/ʿ;->ˑﹳ(F)V

    iget-object p1, p0, Lˋᵔ/ʼˈ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    iget-object v2, p1, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v1}, Lˋᵔ/ʿ;->ʽ()F

    move-result v1

    sget-object v3, Lˋᵔ/ﹳـ;->ˑﹳ:Landroid/view/animation/PathInterpolator;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_0

    new-instance v3, Lˋᵔ/ʻᵎ;

    invoke-direct {v3, p1}, Lˋᵔ/ʻᵎ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x1f

    if-lt v3, v4, :cond_1

    new-instance v3, Lˋᵔ/ᴵʼ;

    invoke-direct {v3, p1}, Lˋᵔ/ᴵʼ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2

    new-instance v3, Lˋᵔ/ˏᵢ;

    invoke-direct {v3, p1}, Lˋᵔ/ˏᵢ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_3

    new-instance v3, Lˋᵔ/ᐧᴵ;

    invoke-direct {v3, p1}, Lˋᵔ/ᐧᴵ;-><init>(Lˋᵔ/ᐧﹶ;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lˋᵔ/ᵎᵔ;

    invoke-direct {v3, p1}, Lˋᵔ/ᵎᵔ;-><init>(Lˋᵔ/ᐧﹶ;)V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v4, 0x200

    if-gt p1, v4, :cond_5

    iget v4, p0, Lˋᵔ/ʼˈ;->ˈ:I

    and-int/2addr v4, p1

    if-nez v4, :cond_4

    invoke-virtual {v2, p1}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lˋᵔ/ˊᵔ;->ʽ(ILᵎⁱ/ⁱˊ;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, p1}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object v4

    iget-object v5, p0, Lˋᵔ/ʼˈ;->ʽ:Lˋᵔ/ᐧﹶ;

    iget-object v5, v5, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v5, p1}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object v5

    iget v6, v4, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v7, v5, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    mul-float/2addr v6, v7

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v6, v8

    iget v8, v4, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    iget v9, v5, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-double v8, v8

    add-double/2addr v8, v10

    double-to-int v8, v8

    iget v9, v4, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget v12, v5, Lᵎⁱ/ⁱˊ;->ʽ:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-double v12, v9

    add-double/2addr v12, v10

    double-to-int v9, v12

    iget v12, v4, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget v5, v5, Lᵎⁱ/ⁱˊ;->ˈ:I

    sub-int/2addr v12, v5

    int-to-float v5, v12

    mul-float/2addr v5, v7

    float-to-double v12, v5

    add-double/2addr v12, v10

    double-to-int v5, v12

    invoke-static {v4, v6, v8, v9, v5}, Lˋᵔ/ᐧﹶ;->ˑﹳ(Lᵎⁱ/ⁱˊ;IIII)Lᵎⁱ/ⁱˊ;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lˋᵔ/ˊᵔ;->ʽ(ILᵎⁱ/ⁱˊ;)V

    :goto_2
    shl-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lˋᵔ/ˊᵔ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lˋᵔ/ʼˈ;->ˑﹳ:Landroid/view/View;

    invoke-static {v1, p1, v0}, Lˋᵔ/ﹳـ;->ᵔᵢ(Landroid/view/View;Lˋᵔ/ᐧﹶ;Ljava/util/List;)V

    return-void
.end method
