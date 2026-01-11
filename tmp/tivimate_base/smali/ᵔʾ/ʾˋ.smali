.class public final Lᵔʾ/ʾˋ;
.super Lᵔʾ/ˆʾ;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final ʾˋ:Lᵔʾ/ﾞʻ;

.field public final ᵢˏ:Lᵔʾ/ˆʾ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᵔʾ/ˆʾ;Lᵔʾ/ﾞʻ;)V
    .locals 0

    invoke-direct {p0, p1}, Lᵔʾ/ˆʾ;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    iput-object p3, p0, Lᵔʾ/ʾˋ;->ʾˋ:Lᵔʾ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ʾˋ:Lᵔʾ/ﾞʻ;

    return-object v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, p1}, Lᵔʾ/ˆʾ;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lᵔʾ/ˆʾ;->ʽﹳ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lᵔʾ/ˆʾ;->ʽﹳ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lᵔʾ/ˆʾ;->ʽﹳ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lᵔʾ/ˆʾ;->ʽﹳ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lᵔʾ/ˆʾ;->ʽﹳ(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object v0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ʾˋ:Lᵔʾ/ﾞʻ;

    invoke-virtual {v0, p1}, Lᵔʾ/ﾞʻ;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ʾˋ:Lᵔʾ/ﾞʻ;

    invoke-virtual {v0, p1}, Lᵔʾ/ﾞʻ;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, p1}, Lᵔʾ/ˆʾ;->setQwertyMode(Z)V

    return-void
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lᵔʾ/ʾˋ;->ʾˋ:Lᵔʾ/ﾞʻ;

    if-eqz v0, :cond_0

    iget v0, v0, Lᵔʾ/ﾞʻ;->ﹳٴ:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v1, "android:menu:actionviewstates:"

    invoke-static {v0, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ(Lᵔʾ/ﾞʻ;)Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, p1}, Lᵔʾ/ˆʾ;->ˈ(Lᵔʾ/ﾞʻ;)Z

    move-result p1

    return p1
.end method

.method public final ˉʿ()Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->ˉʿ()Z

    move-result v0

    return v0
.end method

.method public final ˉˆ()Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->ˉˆ()Z

    move-result v0

    return v0
.end method

.method public final ˑﹳ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    invoke-super {p0, p1, p2}, Lᵔʾ/ˆʾ;->ˑﹳ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, p1, p2}, Lᵔʾ/ˆʾ;->ˑﹳ(Lᵔʾ/ˆʾ;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ٴﹶ()Lᵔʾ/ˆʾ;
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->ٴﹶ()Lᵔʾ/ˆʾ;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔʾ()Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0}, Lᵔʾ/ˆʾ;->ᵔʾ()Z

    move-result v0

    return v0
.end method

.method public final ﾞᴵ(Lᵔʾ/ﾞʻ;)Z
    .locals 1

    iget-object v0, p0, Lᵔʾ/ʾˋ;->ᵢˏ:Lᵔʾ/ˆʾ;

    invoke-virtual {v0, p1}, Lᵔʾ/ˆʾ;->ﾞᴵ(Lᵔʾ/ﾞʻ;)Z

    move-result p1

    return p1
.end method
