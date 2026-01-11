.class public final Lʻˈ/ٴﹶ;
.super Lʻˈ/ᵔʾ;
.source "SourceFile"


# instance fields
.field public ʼˎ:F

.field public ˆʾ:F

.field public ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ˉʿ:Landroid/graphics/Paint$Join;

.field public ˑﹳ:F

.field public ٴﹶ:F

.field public ᵎﹶ:F

.field public ᵔʾ:F

.field public ᵔᵢ:F

.field public ﾞʻ:Landroid/graphics/Paint$Cap;

.field public ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;


# virtual methods
.method public getFillAlpha()F
    .locals 1

    iget v0, p0, Lʻˈ/ٴﹶ;->ᵔᵢ:F

    return v0
.end method

.method public getFillColor()I
    .locals 1

    iget-object v0, p0, Lʻˈ/ٴﹶ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    return v0
.end method

.method public getStrokeAlpha()F
    .locals 1

    iget v0, p0, Lʻˈ/ٴﹶ;->ᵎﹶ:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget-object v0, p0, Lʻˈ/ٴﹶ;->ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lʻˈ/ٴﹶ;->ˑﹳ:F

    return v0
.end method

.method public getTrimPathEnd()F
    .locals 1

    iget v0, p0, Lʻˈ/ٴﹶ;->ˆʾ:F

    return v0
.end method

.method public getTrimPathOffset()F
    .locals 1

    iget v0, p0, Lʻˈ/ٴﹶ;->ٴﹶ:F

    return v0
.end method

.method public getTrimPathStart()F
    .locals 1

    iget v0, p0, Lʻˈ/ٴﹶ;->ʼˎ:F

    return v0
.end method

.method public setFillAlpha(F)V
    .locals 0

    iput p1, p0, Lʻˈ/ٴﹶ;->ᵔᵢ:F

    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    iget-object v0, p0, Lʻˈ/ٴﹶ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput p1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    return-void
.end method

.method public setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Lʻˈ/ٴﹶ;->ᵎﹶ:F

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Lʻˈ/ٴﹶ;->ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput p1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lʻˈ/ٴﹶ;->ˑﹳ:F

    return-void
.end method

.method public setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Lʻˈ/ٴﹶ;->ˆʾ:F

    return-void
.end method

.method public setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Lʻˈ/ٴﹶ;->ٴﹶ:F

    return-void
.end method

.method public setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Lʻˈ/ٴﹶ;->ʼˎ:F

    return-void
.end method

.method public final ⁱˊ([I)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lʻˈ/ٴﹶ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᵔﹳ()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget v4, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    if-eq v1, v4, :cond_0

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lʻˈ/ٴﹶ;->ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᵔﹳ()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    if-eq p1, v4, :cond_1

    iput p1, v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    or-int p1, v0, v2

    return p1
.end method

.method public final ﹳٴ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʻˈ/ٴﹶ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᵔﹳ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lʻˈ/ٴﹶ;->ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᵔﹳ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
