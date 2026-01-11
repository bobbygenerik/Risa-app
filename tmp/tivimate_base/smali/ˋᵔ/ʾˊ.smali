.class public final Lˋᵔ/ʾˊ;
.super Lˋᵔ/י;
.source "SourceFile"


# virtual methods
.method public final ᵎⁱ(Z)V
    .locals 2

    .prologue
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/high16 p1, 0x8000000

    iget-object v1, p0, Lˋᵔ/י;->ʽ:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 p1, -0x80000000

    invoke-virtual {v1, p1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lˋᵔ/י;->ʼˈ(I)V

    return-void
.end method
