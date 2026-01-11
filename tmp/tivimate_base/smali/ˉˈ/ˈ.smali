.class public final Lˉˈ/ˈ;
.super Lcom/bumptech/glide/ˉˆ;
.source "SourceFile"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˉˈ/ˈ;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/bumptech/glide/ˉˆ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
