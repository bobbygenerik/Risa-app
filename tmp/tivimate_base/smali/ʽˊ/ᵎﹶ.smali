.class public abstract Lʽˊ/ᵎﹶ;
.super Lˋⁱ/ʼˎ;
.source "SourceFile"


# static fields
.field public static final synthetic ـﹶ:I


# instance fields
.field public ˊᵔ:Lʽˊ/ˑﹳ;


# virtual methods
.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lʽˊ/ˑﹳ;

    iget-object v1, p0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    invoke-direct {v0, v1}, Lʽˊ/ˑﹳ;-><init>(Lʽˊ/ˑﹳ;)V

    iput-object v0, p0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    return-object p0
.end method

.method public final ʽﹳ(FFFF)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    iget-object v0, v0, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lˋⁱ/ʼˎ;->invalidateSelf()V

    return-void
.end method
