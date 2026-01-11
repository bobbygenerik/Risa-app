.class public final Lˉʿ/ˑﹳ;
.super Landroid/view/ActionMode;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lˉʿ/ﹳٴ;

.field public final ﹳٴ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lˉʿ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lˉʿ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ﹳٴ()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ʽ()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Lᵔʾ/ʾᵎ;

    iget-object v1, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v1}, Lˉʿ/ﹳٴ;->ˑﹳ()Lᵔʾ/ˆʾ;

    move-result-object v1

    iget-object v2, p0, Lˉʿ/ˑﹳ;->ﹳٴ:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lᵔʾ/ʾᵎ;-><init>(Landroid/content/Context;Lᵔʾ/ˆʾ;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ﾞᴵ()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ᵎﹶ()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    iget-object v0, v0, Lˉʿ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ᵔᵢ()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    iget-boolean v0, v0, Lˉʿ/ﹳٴ;->ᴵˊ:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ʼˎ()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0}, Lˉʿ/ﹳٴ;->ˆʾ()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0, p1}, Lˉʿ/ﹳٴ;->ٴﹶ(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0, p1}, Lˉʿ/ﹳٴ;->ﾞʻ(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0, p1}, Lˉʿ/ﹳٴ;->ˉʿ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    iput-object p1, v0, Lˉʿ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0, p1}, Lˉʿ/ﹳٴ;->ᵔʾ(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0, p1}, Lˉʿ/ﹳٴ;->ˉˆ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Lˉʿ/ˑﹳ;->ⁱˊ:Lˉʿ/ﹳٴ;

    invoke-virtual {v0, p1}, Lˉʿ/ﹳٴ;->ʼᐧ(Z)V

    return-void
.end method
