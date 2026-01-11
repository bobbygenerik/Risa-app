.class public final Lﹳʿ/ﹳٴ;
.super Lﹳʿ/ⁱˊ;
.source "SourceFile"


# virtual methods
.method public final ʽ(Lˈˑ/ʽ;)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object v0

    iget-object v1, p1, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    invoke-virtual {v0}, Lˎᵔ/ⁱˊ;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "not_defined_in_RFC4178@please_ignore"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v1, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Object Tag "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    const-string v2, " encountered."

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳʿ/ⁱˊ;->ᵔᵢ(Lˎᵔ/ⁱˊ;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p1}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳʿ/ⁱˊ;->ʼˎ(Lˎᵔ/ⁱˊ;)V

    return-void
.end method
