.class public final Lˉʿ/ˈ;
.super Lˉʿ/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lᵔʾ/ᵔᵢ;


# instance fields
.field public ʽʽ:Landroid/content/Context;

.field public ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

.field public ˉٴ:Lᵔʾ/ˆʾ;

.field public ˊʻ:Ljava/lang/ref/WeakReference;

.field public ٴᵢ:Z

.field public ᴵᵔ:Lˑʼ/ᵎˊ;


# virtual methods
.method public final ʼˎ()V
    .locals 2

    iget-object v0, p0, Lˉʿ/ˈ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    iget-object v1, p0, Lˉʿ/ˈ;->ˉٴ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, p0, v1}, Lˑʼ/ᵎˊ;->ˆﾞ(Lˉʿ/ﹳٴ;Landroid/view/Menu;)Z

    return-void
.end method

.method public final ʼᐧ(Z)V
    .locals 1

    iput-boolean p1, p0, Lˉʿ/ﹳٴ;->ᴵˊ:Z

    iget-object v0, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final ʽ()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lˉʿ/ˈ;->ˊʻ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˆʾ()Z
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->ʼˈ:Z

    return v0
.end method

.method public final ˈ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lˉʿ/ˈ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    iget-object p1, p1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˏˆ/ﹳٴ;

    invoke-virtual {p1, p0, p2}, Lˏˆ/ﹳٴ;->ʽʽ(Lˉʿ/ﹳٴ;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final ˉʿ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˉˆ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˑﹳ()Lᵔʾ/ˆʾ;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ˉٴ:Lᵔʾ/ˆʾ;

    return-object v0
.end method

.method public final ٴﹶ(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lˉʿ/ˈ;->ˊʻ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final ᵎﹶ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔʾ(I)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ʽʽ:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˉʿ/ˈ;->ˉˆ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ᵔᵢ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Lᵔʾ/ˆʾ;)V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lˉʿ/ˈ;->ʼˎ()V

    iget-object p1, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉˆ/ٴﹶ;->ﾞʻ()Z

    :cond_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˉʿ/ˈ;->ٴᵢ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lˉʿ/ˈ;->ٴᵢ:Z

    iget-object v0, p0, Lˉʿ/ˈ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    invoke-virtual {v0, p0}, Lˑʼ/ᵎˊ;->ᵎˊ(Lˉʿ/ﹳٴ;)V

    return-void
.end method

.method public final ﾞʻ(I)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˈ;->ʽʽ:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˉʿ/ˈ;->ˉʿ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ﾞᴵ()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lˉʿ/ᵔᵢ;

    iget-object v1, p0, Lˉʿ/ˈ;->ˈٴ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lˉʿ/ᵔᵢ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
