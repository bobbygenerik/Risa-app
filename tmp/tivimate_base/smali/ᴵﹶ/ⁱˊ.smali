.class public final Lᴵﹶ/ⁱˊ;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lᴵﹶ/ˑﹳ;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lʻˈ/ˑﹳ;

.field public ˈٴ:Z

.field public ˉٴ:Z

.field public ˊʻ:I

.field public ٴʼ:Landroid/graphics/Rect;

.field public final ٴᵢ:I

.field public ᴵˊ:Z

.field public ᴵᵔ:Z

.field public ᵎⁱ:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lʻˈ/ˑﹳ;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ᴵᵔ:Z

    const/4 v0, -0x1

    iput v0, p0, Lᴵﹶ/ⁱˊ;->ٴᵢ:I

    iput-object p1, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ˈٴ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ˉٴ:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lᴵﹶ/ⁱˊ;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lᴵﹶ/ⁱˊ;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lᴵﹶ/ⁱˊ;->ٴʼ:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lᴵﹶ/ⁱˊ;->ٴʼ:Landroid/graphics/Rect;

    :cond_1
    iget-object v3, p0, Lᴵﹶ/ⁱˊ;->ٴʼ:Landroid/graphics/Rect;

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ˉٴ:Z

    :cond_2
    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget-object v1, v0, Lᴵﹶ/ﾞᴵ;->ʼˎ:Lᴵﹶ/ˈ;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lᴵﹶ/ˈ;->ٴᵢ:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lᴵﹶ/ﾞᴵ;->ﾞʻ:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v1, p0, Lᴵﹶ/ⁱˊ;->ٴʼ:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lᴵﹶ/ⁱˊ;->ٴʼ:Landroid/graphics/Rect;

    :cond_4
    iget-object v1, p0, Lᴵﹶ/ⁱˊ;->ٴʼ:Landroid/graphics/Rect;

    iget-object v2, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    :cond_5
    iget-object v2, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget v0, v0, Lᴵﹶ/ﾞᴵ;->ʼᐧ:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget v0, v0, Lᴵﹶ/ﾞᴵ;->ˉˆ:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ᴵˊ:Z

    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lᴵﹶ/ⁱˊ;->ˉٴ:Z

    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ᵎⁱ:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ˈٴ:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v1, v0}, Lʿٴ/ﾞᴵ;->ﹳٴ(Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lᴵﹶ/ⁱˊ;->ᴵᵔ:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ᴵˊ:Z

    iget-object v1, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v1, v1, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᴵﹶ/ﾞᴵ;

    iget-object v2, v1, Lᴵﹶ/ﾞᴵ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, v1, Lᴵﹶ/ﾞᴵ;->ﾞᴵ:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ʽʽ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lᴵﹶ/ⁱˊ;->ﹳٴ()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ʽʽ:Z

    const/4 v0, 0x0

    iput v0, p0, Lᴵﹶ/ⁱˊ;->ˊʻ:I

    iget-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ᴵᵔ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lᴵﹶ/ⁱˊ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ʽʽ:Z

    iput-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ᴵˊ:Z

    iget-object v1, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v1, v1, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lᴵﹶ/ﾞᴵ;

    iget-object v2, v1, Lᴵﹶ/ﾞᴵ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, v1, Lᴵﹶ/ﾞᴵ;->ﾞᴵ:Z

    :cond_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lᴵﹶ/ⁱˊ;->ˈٴ:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v2, v0}, Lʿٴ/ﾞᴵ;->ﹳٴ(Ljava/lang/String;Z)V

    iget-object v0, p0, Lᴵﹶ/ⁱˊ;->ʾˋ:Lʻˈ/ˑﹳ;

    iget-object v0, v0, Lʻˈ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᴵﹶ/ﾞᴵ;

    iget-object v2, v0, Lᴵﹶ/ﾞᴵ;->ﹳٴ:Lᵢٴ/ˈ;

    iget-object v2, v2, Lᵢٴ/ˈ;->ﾞʻ:Lᵢٴ/ⁱˊ;

    iget v2, v2, Lᵢٴ/ⁱˊ;->ʽ:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    iget-boolean v2, p0, Lᴵﹶ/ⁱˊ;->ᴵˊ:Z

    if-nez v2, :cond_5

    iput-boolean v1, p0, Lᴵﹶ/ⁱˊ;->ᴵˊ:Z

    iget-object v2, v0, Lᴵﹶ/ﾞᴵ;->ʽ:Ljava/util/ArrayList;

    iget-boolean v3, v0, Lᴵﹶ/ﾞᴵ;->ˆʾ:Z

    if-nez v3, :cond_4

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    iget-boolean v2, v0, Lᴵﹶ/ﾞᴵ;->ﾞᴵ:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, v0, Lᴵﹶ/ﾞᴵ;->ﾞᴵ:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lᴵﹶ/ﾞᴵ;->ˆʾ:Z

    invoke-virtual {v0}, Lᴵﹶ/ﾞᴵ;->ﹳٴ()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method
