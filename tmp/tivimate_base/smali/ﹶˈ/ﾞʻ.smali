.class public abstract Lﹶˈ/ﾞʻ;
.super Lﹶˈ/ٴﹶ;
.source "SourceFile"


# direct methods
.method public static ᐧᴵ(Ljava/lang/Iterable;I)I
    .locals 1

    .prologue
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method
