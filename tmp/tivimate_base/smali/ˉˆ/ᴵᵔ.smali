.class public final Lˉˆ/ᴵᵔ;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field public final ʾˋ:Lˉˆ/ˊʻ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04054f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lˉˆ/ˎˉ;->ﹳٴ(Landroid/content/Context;Landroid/view/View;)V

    new-instance p1, Lˉˆ/ˊʻ;

    invoke-direct {p1, p0}, Lˉˆ/ˊʻ;-><init>(Lˉˆ/ᴵᵔ;)V

    iput-object p1, p0, Lˉˆ/ᴵᵔ;->ʾˋ:Lˉˆ/ˊʻ;

    invoke-virtual {p1, p2, v0}, Lˉˆ/ˊʻ;->ⁱˊ(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    iget-object v0, p0, Lˉˆ/ᴵᵔ;->ʾˋ:Lˉˆ/ˊʻ;

    iget-object v1, v0, Lˉˆ/ˊʻ;->ˑﹳ:Lˉˆ/ᴵᵔ;

    iget-object v0, v0, Lˉˆ/ˊʻ;->ﾞᴵ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lˉˆ/ᴵᵔ;->ʾˋ:Lˉˆ/ˊʻ;

    iget-object v0, v0, Lˉˆ/ˊʻ;->ﾞᴵ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lˉˆ/ᴵᵔ;->ʾˋ:Lˉˆ/ˊʻ;

    invoke-virtual {v0, p1}, Lˉˆ/ˊʻ;->ᵎﹶ(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
