.class public final Lˈʼ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈʼ/ʽ;
.implements Lˈʼ/ˈ;


# virtual methods
.method public ⁱˊ(I)Lˈʼ/ʽ;
    .locals 0

    sget-object p1, Lˈʼ/ⁱˊ;->ʾˋ:Lˈʼ/ⁱˊ;

    return-object p1
.end method

.method public ﹳٴ(Ljava/lang/Object;Lʾˎ/ﹳٴ;)Z
    .locals 4

    .prologue
    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p2, p2, Lʾˎ/ﹳٴ;->ʾˋ:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const/16 p1, 0x96

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method
