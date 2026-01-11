.class public final Lˉˆ/ˏⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˉˆ/ﹳﹳ;


# instance fields
.field public ʼˎ:Ljava/lang/CharSequence;

.field public ʽ:Landroid/view/View;

.field public ˆʾ:Ljava/lang/CharSequence;

.field public ˈ:Landroid/graphics/drawable/Drawable;

.field public ˉʿ:Lˉˆ/ٴﹶ;

.field public ˉˆ:Landroid/graphics/drawable/Drawable;

.field public ˑﹳ:Landroid/graphics/drawable/Drawable;

.field public ٴﹶ:Landroid/view/Window$Callback;

.field public ᵎﹶ:Z

.field public ᵔʾ:I

.field public ᵔᵢ:Ljava/lang/CharSequence;

.field public ⁱˊ:I

.field public ﹳٴ:Landroidx/appcompat/widget/Toolbar;

.field public ﾞʻ:Z

.field public ﾞᴵ:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public final ʽ()V
    .locals 2

    .prologue
    iget v0, p0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˉˆ/ˏⁱ;->ˑﹳ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˉˆ/ˏⁱ;->ˈ:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˉˆ/ˏⁱ;->ˈ:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˉˆ/ˏⁱ;->ˆʾ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lˉˆ/ˏⁱ;->ᵔʾ:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lˉˆ/ˏⁱ;->ˆʾ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final ﹳٴ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˉˆ/ˏⁱ;->ﹳٴ:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    xor-int/2addr v1, p1

    iput p1, p0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    if-eqz v1, :cond_8

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lˉˆ/ˏⁱ;->ⁱˊ()V

    :cond_0
    iget v2, p0, Lˉˆ/ˏⁱ;->ⁱˊ:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˉˆ/ˏⁱ;->ﾞᴵ:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lˉˆ/ˏⁱ;->ˉˆ:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lˉˆ/ˏⁱ;->ʽ()V

    :cond_4
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_6

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    iget-object v2, p0, Lˉˆ/ˏⁱ;->ᵔᵢ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lˉˆ/ˏⁱ;->ʼˎ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    iget-object v1, p0, Lˉˆ/ˏⁱ;->ʽ:Landroid/view/View;

    if-eqz v1, :cond_8

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    return-void
.end method
