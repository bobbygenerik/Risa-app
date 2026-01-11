.class public abstract Lﹶˈ/ᵔʾ;
.super Lﹶˈ/ˉʿ;
.source "SourceFile"


# direct methods
.method public static ˏᵢ(Ljava/util/Comparator;Ljava/util/List;)V
    .locals 2

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
