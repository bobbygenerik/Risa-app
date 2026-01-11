.class public final Lʻˈ/ﾞʻ;
.super Lʻˈ/ˉʿ;
.source "SourceFile"


# instance fields
.field public ʼˎ:F

.field public ʽ:F

.field public final ˆʾ:Landroid/graphics/Matrix;

.field public ˈ:F

.field public ˑﹳ:F

.field public ٴﹶ:Ljava/lang/String;

.field public ᵎﹶ:F

.field public ᵔᵢ:F

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Landroid/graphics/Matrix;

.field public ﾞᴵ:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lʻˈ/ﾞʻ;->ﹳٴ:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʻˈ/ﾞʻ;->ⁱˊ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lʻˈ/ﾞʻ;->ʽ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ˈ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    iput v1, p0, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ʼˎ:F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lʻˈ/ﾞʻ;->ˆʾ:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lʻˈ/ﾞʻ;->ٴﹶ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lʻˈ/ﾞʻ;Lיـ/ˑﹳ;)V
    .locals 6

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lʻˈ/ﾞʻ;->ﹳٴ:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʻˈ/ﾞʻ;->ⁱˊ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lʻˈ/ﾞʻ;->ʽ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ˈ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    iput v1, p0, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    iput v0, p0, Lʻˈ/ﾞʻ;->ʼˎ:F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lʻˈ/ﾞʻ;->ˆʾ:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    iput-object v3, p0, Lʻˈ/ﾞʻ;->ٴﹶ:Ljava/lang/String;

    iget v3, p1, Lʻˈ/ﾞʻ;->ʽ:F

    iput v3, p0, Lʻˈ/ﾞʻ;->ʽ:F

    iget v3, p1, Lʻˈ/ﾞʻ;->ˈ:F

    iput v3, p0, Lʻˈ/ﾞʻ;->ˈ:F

    iget v3, p1, Lʻˈ/ﾞʻ;->ˑﹳ:F

    iput v3, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    iget v3, p1, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    iput v3, p0, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    iget v3, p1, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    iput v3, p0, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    iget v3, p1, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    iput v3, p0, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    iget v3, p1, Lʻˈ/ﾞʻ;->ʼˎ:F

    iput v3, p0, Lʻˈ/ﾞʻ;->ʼˎ:F

    iget-object v3, p1, Lʻˈ/ﾞʻ;->ٴﹶ:Ljava/lang/String;

    iput-object v3, p0, Lʻˈ/ﾞʻ;->ٴﹶ:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p2, v3, p0}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p1, Lʻˈ/ﾞʻ;->ˆʾ:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, Lʻˈ/ﾞʻ;->ⁱˊ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lʻˈ/ﾞʻ;

    if-eqz v4, :cond_1

    check-cast v3, Lʻˈ/ﾞʻ;

    iget-object v4, p0, Lʻˈ/ﾞʻ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v5, Lʻˈ/ﾞʻ;

    invoke-direct {v5, v3, p2}, Lʻˈ/ﾞʻ;-><init>(Lʻˈ/ﾞʻ;Lיـ/ˑﹳ;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    instance-of v4, v3, Lʻˈ/ٴﹶ;

    if-eqz v4, :cond_2

    new-instance v4, Lʻˈ/ٴﹶ;

    check-cast v3, Lʻˈ/ٴﹶ;

    invoke-direct {v4, v3}, Lʻˈ/ᵔʾ;-><init>(Lʻˈ/ᵔʾ;)V

    iput v0, v4, Lʻˈ/ٴﹶ;->ˑﹳ:F

    iput v1, v4, Lʻˈ/ٴﹶ;->ᵎﹶ:F

    iput v1, v4, Lʻˈ/ٴﹶ;->ᵔᵢ:F

    iput v0, v4, Lʻˈ/ٴﹶ;->ʼˎ:F

    iput v1, v4, Lʻˈ/ٴﹶ;->ˆʾ:F

    iput v0, v4, Lʻˈ/ٴﹶ;->ٴﹶ:F

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Lʻˈ/ٴﹶ;->ﾞʻ:Landroid/graphics/Paint$Cap;

    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Lʻˈ/ٴﹶ;->ˉʿ:Landroid/graphics/Paint$Join;

    const/high16 v5, 0x40800000    # 4.0f

    iput v5, v4, Lʻˈ/ٴﹶ;->ᵔʾ:F

    iget-object v5, v3, Lʻˈ/ٴﹶ;->ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object v5, v4, Lʻˈ/ٴﹶ;->ˈ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v5, v3, Lʻˈ/ٴﹶ;->ˑﹳ:F

    iput v5, v4, Lʻˈ/ٴﹶ;->ˑﹳ:F

    iget v5, v3, Lʻˈ/ٴﹶ;->ᵎﹶ:F

    iput v5, v4, Lʻˈ/ٴﹶ;->ᵎﹶ:F

    iget-object v5, v3, Lʻˈ/ٴﹶ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object v5, v4, Lʻˈ/ٴﹶ;->ﾞᴵ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v5, v3, Lʻˈ/ᵔʾ;->ʽ:I

    iput v5, v4, Lʻˈ/ᵔʾ;->ʽ:I

    iget v5, v3, Lʻˈ/ٴﹶ;->ᵔᵢ:F

    iput v5, v4, Lʻˈ/ٴﹶ;->ᵔᵢ:F

    iget v5, v3, Lʻˈ/ٴﹶ;->ʼˎ:F

    iput v5, v4, Lʻˈ/ٴﹶ;->ʼˎ:F

    iget v5, v3, Lʻˈ/ٴﹶ;->ˆʾ:F

    iput v5, v4, Lʻˈ/ٴﹶ;->ˆʾ:F

    iget v5, v3, Lʻˈ/ٴﹶ;->ٴﹶ:F

    iput v5, v4, Lʻˈ/ٴﹶ;->ٴﹶ:F

    iget-object v5, v3, Lʻˈ/ٴﹶ;->ﾞʻ:Landroid/graphics/Paint$Cap;

    iput-object v5, v4, Lʻˈ/ٴﹶ;->ﾞʻ:Landroid/graphics/Paint$Cap;

    iget-object v5, v3, Lʻˈ/ٴﹶ;->ˉʿ:Landroid/graphics/Paint$Join;

    iput-object v5, v4, Lʻˈ/ٴﹶ;->ˉʿ:Landroid/graphics/Paint$Join;

    iget v3, v3, Lʻˈ/ٴﹶ;->ᵔʾ:F

    iput v3, v4, Lʻˈ/ٴﹶ;->ᵔʾ:F

    goto :goto_1

    :cond_2
    instance-of v4, v3, Lʻˈ/ˆʾ;

    if-eqz v4, :cond_4

    new-instance v4, Lʻˈ/ˆʾ;

    check-cast v3, Lʻˈ/ˆʾ;

    invoke-direct {v4, v3}, Lʻˈ/ᵔʾ;-><init>(Lʻˈ/ᵔʾ;)V

    :goto_1
    iget-object v3, p0, Lʻˈ/ﾞʻ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lʻˈ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {p2, v3, v4}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʻˈ/ﾞʻ;->ٴﹶ:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lʻˈ/ﾞʻ;->ˆʾ:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    iget v0, p0, Lʻˈ/ﾞʻ;->ˈ:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    iget v0, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lʻˈ/ﾞʻ;->ʽ:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    iget v0, p0, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    iget v0, p0, Lʻˈ/ﾞʻ;->ʼˎ:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ﾞʻ;->ˈ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lʻˈ/ﾞʻ;->ˈ:F

    invoke-virtual {p0}, Lʻˈ/ﾞʻ;->ʽ()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    invoke-virtual {p0}, Lʻˈ/ﾞʻ;->ʽ()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ﾞʻ;->ʽ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lʻˈ/ﾞʻ;->ʽ:F

    invoke-virtual {p0}, Lʻˈ/ﾞʻ;->ʽ()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    invoke-virtual {p0}, Lʻˈ/ﾞʻ;->ʽ()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    invoke-virtual {p0}, Lʻˈ/ﾞʻ;->ʽ()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    invoke-virtual {p0}, Lʻˈ/ﾞʻ;->ʽ()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .prologue
    iget v0, p0, Lʻˈ/ﾞʻ;->ʼˎ:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lʻˈ/ﾞʻ;->ʼˎ:F

    invoke-virtual {p0}, Lʻˈ/ﾞʻ;->ʽ()V

    :cond_0
    return-void
.end method

.method public final ʽ()V
    .locals 4

    iget-object v0, p0, Lʻˈ/ﾞʻ;->ˆʾ:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v1, p0, Lʻˈ/ﾞʻ;->ˈ:F

    neg-float v1, v1

    iget v2, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v1, p0, Lʻˈ/ﾞʻ;->ﾞᴵ:F

    iget v2, p0, Lʻˈ/ﾞʻ;->ᵎﹶ:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v1, p0, Lʻˈ/ﾞʻ;->ʽ:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v1, p0, Lʻˈ/ﾞʻ;->ᵔᵢ:F

    iget v2, p0, Lʻˈ/ﾞʻ;->ˈ:F

    add-float/2addr v1, v2

    iget v2, p0, Lʻˈ/ﾞʻ;->ʼˎ:F

    iget v3, p0, Lʻˈ/ﾞʻ;->ˑﹳ:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final ⁱˊ([I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lʻˈ/ﾞʻ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻˈ/ˉʿ;

    invoke-virtual {v2, p1}, Lʻˈ/ˉʿ;->ⁱˊ([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final ﹳٴ()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lʻˈ/ﾞʻ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻˈ/ˉʿ;

    invoke-virtual {v2}, Lʻˈ/ˉʿ;->ﹳٴ()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
