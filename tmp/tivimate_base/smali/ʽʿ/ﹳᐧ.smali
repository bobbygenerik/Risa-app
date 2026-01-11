.class public final Lʽʿ/ﹳᐧ;
.super Lʽʿ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lʽʿ/יـ;


# virtual methods
.method public final ʻᵎ(Ljava/lang/Throwable;Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lʽʿ/ﾞᴵ;->ٴﹶ(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    invoke-static {p1, p2}, Lᴵי/ʾᵎ;->ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    :cond_0
    return-void
.end method

.method public final ـﹶ(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lʻᵢ/ʼᐧ;

    iget-object p1, p0, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lʽʿ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Throwable;)Z

    return-void
.end method
