.class public final Lٴˉ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʻٴ:I

.field public ʼˎ:I

.field public ʼᐧ:Z

.field public ʽ:Lˊᵔ/ʼˎ;

.field public ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

.field public ˆʾ:I

.field public ˈ:Lٴˉ/ﹳٴ;

.field public ˉʿ:Landroid/content/res/ColorStateList;

.field public ˉˆ:Lˋⁱ/ʼˎ;

.field public ˏי:Z

.field public ˑﹳ:I

.field public יـ:Z

.field public ٴﹶ:Landroid/graphics/PorterDuff$Mode;

.field public ᵎﹶ:I

.field public ᵔʾ:Landroid/content/res/ColorStateList;

.field public ᵔᵢ:I

.field public ᵔﹳ:Z

.field public ⁱˊ:Lˋⁱ/ﾞʻ;

.field public final ﹳٴ:Lcom/google/android/material/button/MaterialButton;

.field public ﹳᐧ:Z

.field public ﾞʻ:Landroid/content/res/ColorStateList;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lˋⁱ/ﾞʻ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lٴˉ/ᵔᵢ;->ʼᐧ:Z

    iput-boolean v0, p0, Lٴˉ/ᵔᵢ;->ᵔﹳ:Z

    iput-boolean v0, p0, Lٴˉ/ᵔᵢ;->ﹳᐧ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴˉ/ᵔᵢ;->ˏי:Z

    iput-object p1, p0, Lٴˉ/ᵔᵢ;->ﹳٴ:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 12

    .prologue
    new-instance v0, Lˋⁱ/ʼˎ;

    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-direct {v0, v1}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ﾞʻ;)V

    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ˉʿ(Lˊᵔ/ʼˎ;)V

    :cond_0
    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ˈ:Lٴˉ/ﹳٴ;

    if-eqz v1, :cond_1

    iput-object v1, v0, Lˋⁱ/ʼˎ;->ˏᵢ:Lٴˉ/ﹳٴ;

    :cond_1
    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ﹳٴ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lˋⁱ/ʼˎ;->ﾞʻ(Landroid/content/Context;)V

    iget-object v2, p0, Lٴˉ/ᵔᵢ;->ﾞʻ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lˋⁱ/ʼˎ;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lٴˉ/ᵔᵢ;->ٴﹶ:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lˋⁱ/ʼˎ;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget v2, p0, Lٴˉ/ᵔᵢ;->ˆʾ:I

    int-to-float v2, v2

    iget-object v3, p0, Lٴˉ/ᵔᵢ;->ˉʿ:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput v2, v4, Lˋⁱ/ᵎﹶ;->ˆʾ:F

    invoke-virtual {v0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    iget-object v2, v0, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v4, v2, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eq v4, v3, :cond_3

    iput-object v3, v2, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    :cond_3
    new-instance v2, Lˋⁱ/ʼˎ;

    iget-object v3, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-direct {v2, v3}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ﾞʻ;)V

    iget-object v3, p0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Lˋⁱ/ʼˎ;->ˉʿ(Lˊᵔ/ʼˎ;)V

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lˋⁱ/ʼˎ;->setTint(I)V

    iget v4, p0, Lٴˉ/ᵔᵢ;->ˆʾ:I

    int-to-float v4, v4

    iget-boolean v5, p0, Lٴˉ/ᵔᵢ;->ʼᐧ:Z

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f040170

    invoke-static {v1, v6}, Lˈˋ/ʾˊ;->ᴵˊ(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v6

    invoke-static {v5, v6}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v5

    goto :goto_0

    :cond_5
    move v5, v3

    :goto_0
    iget-object v6, v2, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput v4, v6, Lˋⁱ/ᵎﹶ;->ˆʾ:F

    invoke-virtual {v2}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v5, v2, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v6, v5, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eq v6, v4, :cond_6

    iput-object v4, v5, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    :cond_6
    new-instance v4, Lˋⁱ/ʼˎ;

    iget-object v5, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-direct {v4, v5}, Lˋⁱ/ʼˎ;-><init>(Lˋⁱ/ﾞʻ;)V

    iput-object v4, p0, Lٴˉ/ᵔᵢ;->ˉˆ:Lˋⁱ/ʼˎ;

    iget-object v5, p0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Lˋⁱ/ʼˎ;->ˉʿ(Lˊᵔ/ʼˎ;)V

    :cond_7
    iget-object v4, p0, Lٴˉ/ᵔᵢ;->ˉˆ:Lˋⁱ/ʼˎ;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lˋⁱ/ʼˎ;->setTint(I)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lٴˉ/ᵔᵢ;->ᵔʾ:Landroid/content/res/ColorStateList;

    invoke-static {v5}, Lﹶʼ/ﹳٴ;->ﹳٴ(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v5

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v0, v6, v2

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v8, p0, Lٴˉ/ᵔᵢ;->ˑﹳ:I

    iget v9, p0, Lٴˉ/ᵔᵢ;->ᵎﹶ:I

    iget v10, p0, Lٴˉ/ᵔᵢ;->ﾞᴵ:I

    iget v11, p0, Lٴˉ/ᵔᵢ;->ᵔᵢ:I

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v0, p0, Lٴˉ/ᵔᵢ;->ˉˆ:Lˋⁱ/ʼˎ;

    invoke-direct {v4, v5, v6, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lٴˉ/ᵔᵢ;->ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v4}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v2, p0, Lٴˉ/ᵔᵢ;->ʻٴ:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lˋⁱ/ʼˎ;->ᵔʾ(F)V

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    return-void
.end method

.method public final ˈ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ʼᐧ(Lˋⁱ/ﾞʻ;)V

    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ˉʿ(Lˊᵔ/ʼˎ;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-virtual {v1, v2}, Lˋⁱ/ʼˎ;->ʼᐧ(Lˋⁱ/ﾞʻ;)V

    iget-object v2, p0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lˋⁱ/ʼˎ;->ˉʿ(Lˊᵔ/ʼˎ;)V

    :cond_1
    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    if-le v1, v0, :cond_3

    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    iget-object v0, p0, Lٴˉ/ᵔᵢ;->ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lˋⁱ/ʼʼ;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lˋⁱ/ʼʼ;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    instance-of v1, v0, Lˋⁱ/ʼˎ;

    if-eqz v1, :cond_4

    check-cast v0, Lˋⁱ/ʼˎ;

    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ʼᐧ(Lˋⁱ/ﾞʻ;)V

    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ʽ:Lˊᵔ/ʼˎ;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lˋⁱ/ʼˎ;->ˉʿ(Lˊᵔ/ʼˎ;)V

    return-void

    :cond_4
    iget-object v1, p0, Lٴˉ/ᵔᵢ;->ⁱˊ:Lˋⁱ/ﾞʻ;

    invoke-interface {v1}, Lˋⁱ/ﾞʻ;->ˈ()Lˋⁱ/ᵔʾ;

    move-result-object v1

    invoke-interface {v0, v1}, Lˋⁱ/ʼʼ;->setShapeAppearanceModel(Lˋⁱ/ᵔʾ;)V

    :cond_5
    return-void
.end method

.method public final ˑﹳ()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lٴˉ/ᵔᵢ;->ﹳٴ(Z)Lˋⁱ/ʼˎ;

    move-result-object v2

    if-eqz v1, :cond_2

    iget v3, p0, Lٴˉ/ᵔᵢ;->ˆʾ:I

    int-to-float v3, v3

    iget-object v4, p0, Lٴˉ/ᵔᵢ;->ˉʿ:Landroid/content/res/ColorStateList;

    iget-object v5, v1, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput v3, v5, Lˋⁱ/ᵎﹶ;->ˆʾ:F

    invoke-virtual {v1}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    iget-object v3, v1, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v5, v3, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eq v5, v4, :cond_0

    iput-object v4, v3, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    :cond_0
    if-eqz v2, :cond_2

    iget v1, p0, Lٴˉ/ᵔᵢ;->ˆʾ:I

    int-to-float v1, v1

    iget-boolean v3, p0, Lٴˉ/ᵔᵢ;->ʼᐧ:Z

    if-eqz v3, :cond_1

    iget-object v0, p0, Lٴˉ/ᵔᵢ;->ﹳٴ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040170

    invoke-static {v0, v4}, Lˈˋ/ʾˊ;->ᴵˊ(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v3, v0}, Lʽٴ/ˈ;->ʼʼ(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v0

    :cond_1
    iget-object v3, v2, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iput v1, v3, Lˋⁱ/ᵎﹶ;->ˆʾ:F

    invoke-virtual {v2}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, v2, Lˋⁱ/ʼˎ;->ᴵˊ:Lˋⁱ/ᵎﹶ;

    iget-object v3, v1, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    if-eq v3, v0, :cond_2

    iput-object v0, v1, Lˋⁱ/ᵎﹶ;->ˈ:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {v2, v0}, Lˋⁱ/ʼˎ;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public final ⁱˊ(II)V
    .locals 8

    .prologue
    iget-object v0, p0, Lٴˉ/ᵔᵢ;->ﹳٴ:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget v5, p0, Lٴˉ/ᵔᵢ;->ᵎﹶ:I

    iget v6, p0, Lٴˉ/ᵔᵢ;->ᵔᵢ:I

    iput p2, p0, Lٴˉ/ᵔᵢ;->ᵔᵢ:I

    iput p1, p0, Lٴˉ/ᵔᵢ;->ᵎﹶ:I

    iget-boolean v7, p0, Lٴˉ/ᵔᵢ;->ᵔﹳ:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lٴˉ/ᵔᵢ;->ʽ()V

    :cond_0
    add-int/2addr v2, p1

    sub-int/2addr v2, v5

    add-int/2addr v4, p2

    sub-int/2addr v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final ﹳٴ(Z)Lˋⁱ/ʼˎ;
    .locals 2

    .prologue
    iget-object v0, p0, Lٴˉ/ᵔᵢ;->ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lٴˉ/ᵔᵢ;->ʽﹳ:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lˋⁱ/ʼˎ;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
