.class public final Lj$/util/stream/g0;
.super Lj$/util/stream/j0;
.source "SourceFile"


# virtual methods
.method public final O0()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final P0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/a;->R0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/j0;->T0(Lj$/util/Spliterator;)Lj$/util/a0;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/a0;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/j0;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public final forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/a;->R0()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/j0;->T0(Lj$/util/Spliterator;)Lj$/util/a0;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/a0;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lj$/util/stream/j0;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public final parallel()Lj$/util/stream/m0;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/util/stream/a;->r:Z

    return-object p0
.end method

.method public final sequential()Lj$/util/stream/m0;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/a;->r:Z

    return-object p0
.end method

.method public final bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/j0;->spliterator()Lj$/util/a0;

    move-result-object v0

    return-object v0
.end method

.method public final unordered()Lj$/util/stream/g;
    .locals 3

    .prologue
    sget-object v0, Lj$/util/stream/Y2;->ORDERED:Lj$/util/stream/Y2;

    iget v1, p0, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/stream/t;

    sget v1, Lj$/util/stream/Y2;->r:I

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/t;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method
