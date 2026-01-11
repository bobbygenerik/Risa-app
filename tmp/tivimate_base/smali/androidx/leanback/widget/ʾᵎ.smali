.class public Landroidx/leanback/widget/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:I

.field public ʽ:Ljava/lang/CharSequence;

.field public ˆʾ:I

.field public ˈ:Ljava/lang/CharSequence;

.field public ˉʿ:I

.field public ˑﹳ:I

.field public ٴﹶ:I

.field public ᵎﹶ:Ljava/lang/CharSequence;

.field public ᵔᵢ:I

.field public ⁱˊ:Landroid/graphics/drawable/Drawable;

.field public ﹳٴ:J

.field public ﾞʻ:I

.field public ﾞᴵ:Ljava/lang/CharSequence;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "(action icon)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹳ(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/leanback/widget/ʾᵎ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object p1, p0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ﾞʻ:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    const/16 v1, 0x90

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iput-object p1, p0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ(II)V

    :cond_3
    return-void
.end method

.method public final ᵎﹶ(Z)V
    .locals 1

    .prologue
    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ(II)V

    return-void
.end method

.method public final ᵔᵢ(II)V
    .locals 2

    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    return-void
.end method

.method public final ⁱˊ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ˑﹳ:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞᴵ(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroidx/leanback/widget/ʾᵎ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/ʾᵎ;->ʽ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ᵔᵢ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ﾞʻ:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    const/16 v1, 0x90

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/ʾᵎ;->ˈ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/ʾᵎ;->ˉʿ:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/leanback/widget/ʾᵎ;->ⁱˊ()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
