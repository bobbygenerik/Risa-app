.class public final Lᵔᵢ/ˉٴ;
.super Lˉʿ/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lᵔʾ/ᵔᵢ;


# instance fields
.field public final ʽʽ:Landroid/content/Context;

.field public final ˈٴ:Lᵔʾ/ˆʾ;

.field public ˊʻ:Ljava/lang/ref/WeakReference;

.field public final synthetic ٴᵢ:Lᵔᵢ/ᵎⁱ;

.field public ᴵᵔ:Lˑʼ/ᵎˊ;


# direct methods
.method public constructor <init>(Lᵔᵢ/ᵎⁱ;Landroid/content/Context;Lˑʼ/ᵎˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iput-object p2, p0, Lᵔᵢ/ˉٴ;->ʽʽ:Landroid/content/Context;

    iput-object p3, p0, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    new-instance p1, Lᵔʾ/ˆʾ;

    invoke-direct {p1, p2}, Lᵔʾ/ˆʾ;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lᵔʾ/ˆʾ;->ﾞʻ:I

    iput-object p1, p0, Lᵔᵢ/ˉٴ;->ˈٴ:Lᵔʾ/ˆʾ;

    iput-object p0, p1, Lᵔʾ/ˆʾ;->ˑﹳ:Lᵔʾ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ˉˆ:Lᵔᵢ/ˉٴ;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ˈٴ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->ـˆ()V

    :try_start_0
    iget-object v1, p0, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    invoke-virtual {v1, p0, v0}, Lˑʼ/ᵎˊ;->ˆﾞ(Lˉʿ/ﹳٴ;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->ʻٴ()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->ʻٴ()V

    throw v1
.end method

.method public final ʼᐧ(Z)V
    .locals 1

    iput-boolean p1, p0, Lˉʿ/ﹳٴ;->ᴵˊ:Z

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final ʽ()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ˊʻ:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->ʼˈ:Z

    return v0
.end method

.method public final ˈ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z
    .locals 0

    .prologue
    iget-object p1, p0, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˏˆ/ﹳٴ;

    invoke-virtual {p1, p0, p2}, Lˏˆ/ﹳٴ;->ʽʽ(Lˉʿ/ﹳٴ;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ˉʿ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˉˆ(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ˑﹳ()Lᵔʾ/ˆʾ;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ˈٴ:Lᵔʾ/ˆʾ;

    return-object v0
.end method

.method public final ٴﹶ(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lᵔᵢ/ˉٴ;->ˊʻ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final ᵎﹶ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔʾ(I)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lᵔᵢ/ˉٴ;->ˉˆ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ᵔᵢ()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Lᵔʾ/ˆʾ;)V
    .locals 0

    .prologue
    iget-object p1, p0, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lᵔᵢ/ˉٴ;->ʼˎ()V

    iget-object p1, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object p1, p1, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->ˈٴ:Lˉˆ/ٴﹶ;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lˉˆ/ٴﹶ;->ﾞʻ()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v1, v0, Lᵔᵢ/ᵎⁱ;->ˉˆ:Lᵔᵢ/ˉٴ;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lᵔᵢ/ᵎⁱ;->ʻٴ:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Lᵔᵢ/ᵎⁱ;->ʼᐧ:Lᵔᵢ/ˉٴ;

    iget-object v1, p0, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    iput-object v1, v0, Lᵔᵢ/ᵎⁱ;->ᵔﹳ:Lˑʼ/ᵎˊ;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    invoke-virtual {v1, p0}, Lˑʼ/ᵎˊ;->ᵎˊ(Lˉʿ/ﹳٴ;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lᵔᵢ/ˉٴ;->ᴵᵔ:Lˑʼ/ᵎˊ;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lᵔᵢ/ᵎⁱ;->ʿᵢ(Z)V

    iget-object v2, v0, Lᵔᵢ/ᵎⁱ;->ﾞʻ:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->ᵎˊ:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->ˑﹳ()V

    :cond_2
    iget-object v2, v0, Lᵔᵢ/ᵎⁱ;->ʼˎ:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Lᵔᵢ/ᵎⁱ;->ʾˋ:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Lᵔᵢ/ᵎⁱ;->ˉˆ:Lᵔᵢ/ˉٴ;

    return-void
.end method

.method public final ﾞʻ(I)V
    .locals 1

    iget-object v0, p0, Lᵔᵢ/ˉٴ;->ٴᵢ:Lᵔᵢ/ᵎⁱ;

    iget-object v0, v0, Lᵔᵢ/ᵎⁱ;->ᵎﹶ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lᵔᵢ/ˉٴ;->ˉʿ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final ﾞᴵ()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lˉʿ/ᵔᵢ;

    iget-object v1, p0, Lᵔᵢ/ˉٴ;->ʽʽ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lˉʿ/ᵔᵢ;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
