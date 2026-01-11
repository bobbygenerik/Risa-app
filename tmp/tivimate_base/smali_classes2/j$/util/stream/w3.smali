.class public final Lj$/util/stream/w3;
.super Lj$/util/stream/x3;
.source "SourceFile"

# interfaces
.implements Lj$/util/a0;
.implements Ljava/util/function/LongConsumer;


# instance fields
.field public f:J


# virtual methods
.method public final accept(J)V
    .locals 0

    iput-wide p1, p0, Lj$/util/stream/w3;->f:J

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/a;->f(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/f;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/a0;

    new-instance v0, Lj$/util/stream/w3;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/A3;-><init>(Lj$/util/Spliterator;Lj$/util/stream/A3;)V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->i(Lj$/util/a0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/util/function/LongConsumer;

    iget-wide v0, p0, Lj$/util/stream/w3;->f:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public final j(I)Lj$/util/stream/e3;
    .locals 1

    new-instance v0, Lj$/util/stream/d3;

    invoke-direct {v0, p1}, Lj$/util/stream/d3;-><init>(I)V

    return-object v0
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->y(Lj$/util/a0;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
