.class public final synthetic Lj$/util/Collection$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 3

    invoke-static {p0}, Lj$/com/android/tools/r8/a;->c0(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/a2;

    invoke-static {p0}, Lj$/util/stream/Y2;->m(Lj$/util/Spliterator;)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/a;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static $default$removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z
    .locals 2

    .prologue
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static $default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 3

    invoke-static {p0}, Lj$/com/android/tools/r8/a;->c0(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/a2;

    invoke-static {p0}, Lj$/util/stream/Y2;->m(Lj$/util/Spliterator;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/a;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static $default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
