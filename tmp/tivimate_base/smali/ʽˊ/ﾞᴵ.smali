.class public final Lʽˊ/ﾞᴵ;
.super Lʽˊ/ᵎﹶ;
.source "SourceFile"


# virtual methods
.method public final ﾞᴵ(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    iget-object v0, v0, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lˋⁱ/ʼˎ;->ﾞᴵ(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    iget-object v0, v0, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/RectF;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lʽˊ/ᵎﹶ;->ˊᵔ:Lʽˊ/ˑﹳ;

    iget-object v0, v0, Lʽˊ/ˑﹳ;->ᵔﹳ:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    :goto_0
    invoke-super {p0, p1}, Lˋⁱ/ʼˎ;->ﾞᴵ(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
