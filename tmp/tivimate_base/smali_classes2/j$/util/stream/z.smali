.class public abstract Lj$/util/stream/z;
.super Lj$/util/stream/a;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/C;


# direct methods
.method public static T0(Lj$/util/Spliterator;)Lj$/util/U;
    .locals 1

    .prologue
    instance-of v0, p0, Lj$/util/U;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/util/U;

    return-object p0

    :cond_0
    sget-boolean p0, Lj$/util/stream/G3;->a:Z

    if-eqz p0, :cond_1

    const-class p0, Lj$/util/stream/a;

    const-string v0, "using DoubleStream.adapt(Spliterator<Double> s)"

    invoke-static {p0, v0}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Lj$/util/stream/IntStream;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/s;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/s;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method

.method public final A0(JLjava/util/function/IntFunction;)Lj$/util/stream/y0;
    .locals 0

    invoke-static {p1, p2}, Lj$/util/stream/v1;->i0(J)Lj$/util/stream/v0;

    move-result-object p1

    return-object p1
.end method

.method public final C()Z
    .locals 1

    sget-object v0, Lj$/util/stream/t0;->NONE:Lj$/util/stream/t0;

    invoke-static {v0}, Lj$/util/stream/v1;->u0(Lj$/util/stream/t0;)Lj$/util/concurrent/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final J0(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 0

    invoke-static {p1, p2, p3}, Lj$/util/stream/v1;->c0(Lj$/util/stream/v1;Lj$/util/Spliterator;Z)Lj$/util/stream/A0;

    move-result-object p1

    return-object p1
.end method

.method public final K0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z
    .locals 3

    .prologue
    invoke-static {p1}, Lj$/util/stream/z;->T0(Lj$/util/Spliterator;)Lj$/util/U;

    move-result-object p1

    instance-of v0, p2, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/function/DoubleConsumer;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_3

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/D;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lj$/util/D;-><init>(Ljava/util/function/Consumer;I)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/l2;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lj$/util/U;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    return v1

    :cond_3
    const-class p1, Lj$/util/stream/a;

    const-string p2, "using DoubleStream.adapt(Sink<Double> s)"

    invoke-static {p1, p2}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final L0()Lj$/util/stream/Z2;
    .locals 1

    sget-object v0, Lj$/util/stream/Z2;->DOUBLE_VALUE:Lj$/util/stream/Z2;

    return-object v0
.end method

.method public final S0(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/j3;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/a3;-><init>(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method

.method public final a()Lj$/util/stream/C;
    .locals 3

    sget v0, Lj$/util/stream/Y3;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/D2;

    sget v1, Lj$/util/stream/Y3;->a:I

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/D2;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method

.method public final average()Lj$/util/A;
    .locals 7

    .prologue
    new-instance v0, Lj$/time/f;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    new-instance v1, Lj$/time/f;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lj$/time/f;-><init>(I)V

    new-instance v2, Lj$/time/f;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/z;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    sget v2, Lj$/util/stream/j;->a:I

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v5, v0, v4

    add-double/2addr v2, v5

    array-length v5, v0

    sub-int/2addr v5, v4

    aget-wide v4, v0, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_0

    move-wide v2, v4

    :cond_0
    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    new-instance v0, Lj$/util/A;

    invoke-direct {v0, v2, v3}, Lj$/util/A;-><init>(D)V

    return-object v0

    :cond_1
    sget-object v0, Lj$/util/A;->c:Lj$/util/A;

    return-object v0
.end method

.method public final b()Lj$/util/stream/C;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/r;

    sget v1, Lj$/util/stream/Y2;->t:I

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/r;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method

.method public final boxed()Lj$/util/stream/Stream;
    .locals 4

    new-instance v0, Lj$/time/f;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    new-instance v1, Lj$/util/stream/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v0, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final c()Lj$/util/stream/C;
    .locals 3

    sget v0, Lj$/util/stream/Y3;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/D2;

    sget v1, Lj$/util/stream/Y3;->b:I

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/D2;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 6

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lj$/util/stream/n;

    const/4 v0, 0x0

    invoke-direct {v2, p3, v0}, Lj$/util/stream/n;-><init>(Ljava/util/function/BiConsumer;I)V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/A1;

    sget-object v1, Lj$/util/stream/Z2;->DOUBLE_VALUE:Lj$/util/stream/Z2;

    const/4 v5, 0x1

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/A1;-><init>(Lj$/util/stream/Z2;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    new-instance v0, Lj$/util/stream/C1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj$/util/stream/C1;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Lj$/util/p;)Lj$/util/stream/C;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/v;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Y2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final distinct()Lj$/util/stream/C;
    .locals 3

    invoke-virtual {p0}, Lj$/util/stream/z;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/d2;

    invoke-virtual {v0}, Lj$/util/stream/d2;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj$/time/f;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lj$/time/f;-><init>(I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/C;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lj$/util/stream/C;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/r;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/r;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method

.method public final findAny()Lj$/util/A;
    .locals 1

    sget-object v0, Lj$/util/stream/E;->d:Lj$/util/stream/D;

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/A;

    return-object v0
.end method

.method public final findFirst()Lj$/util/A;
    .locals 1

    sget-object v0, Lj$/util/stream/E;->c:Lj$/util/stream/D;

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/A;

    return-object v0
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/L;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/L;-><init>(Ljava/util/function/DoubleConsumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/L;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/L;-><init>(Ljava/util/function/DoubleConsumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    return-void
.end method

.method public final iterator()Lj$/util/G;
    .locals 2

    invoke-virtual {p0}, Lj$/util/stream/z;->spliterator()Lj$/util/U;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/i0;

    invoke-direct {v1, v0}, Lj$/util/i0;-><init>(Lj$/util/U;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/z;->iterator()Lj$/util/G;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Lj$/util/stream/C;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/v1;->v0(Lj$/util/stream/z;JJ)Lj$/util/stream/t2;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mapToObj(Ljava/util/function/DoubleFunction;)Lj$/util/stream/Stream;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lj$/util/stream/Y2;->p:I

    sget v1, Lj$/util/stream/Y2;->n:I

    or-int/2addr v0, v1

    new-instance v1, Lj$/util/stream/q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v1
.end method

.method public final max()Lj$/util/A;
    .locals 2

    new-instance v0, Lj$/time/f;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/z;->reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/A;

    move-result-object v0

    return-object v0
.end method

.method public final min()Lj$/util/A;
    .locals 2

    new-instance v0, Lj$/time/f;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/z;->reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/A;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .locals 1

    sget-object v0, Lj$/util/stream/t0;->ANY:Lj$/util/stream/t0;

    invoke-static {v0}, Lj$/util/stream/v1;->u0(Lj$/util/stream/t0;)Lj$/util/concurrent/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final peek(Ljava/util/function/DoubleConsumer;)Lj$/util/stream/C;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/v;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/v;-><init>(Lj$/util/stream/z;Ljava/util/function/DoubleConsumer;)V

    return-object v0
.end method

.method public final reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .locals 2

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/E1;

    sget-object v1, Lj$/util/stream/Z2;->DOUBLE_VALUE:Lj$/util/stream/Z2;

    invoke-direct {v0, v1, p3, p1, p2}, Lj$/util/stream/E1;-><init>(Lj$/util/stream/Z2;Ljava/util/function/DoubleBinaryOperator;D)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public final reduce(Ljava/util/function/DoubleBinaryOperator;)Lj$/util/A;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/y1;

    sget-object v1, Lj$/util/stream/Z2;->DOUBLE_VALUE:Lj$/util/stream/Z2;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/y1;-><init>(Lj$/util/stream/Z2;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/A;

    return-object p1
.end method

.method public final skip(J)Lj$/util/stream/C;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/v1;->v0(Lj$/util/stream/z;JJ)Lj$/util/stream/t2;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/C;
    .locals 3

    new-instance v0, Lj$/util/stream/D2;

    sget v1, Lj$/util/stream/Y2;->q:I

    sget v2, Lj$/util/stream/Y2;->o:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/D2;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/U;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/a;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/z;->T0(Lj$/util/Spliterator;)Lj$/util/U;

    move-result-object v0

    return-object v0
.end method

.method public final sum()D
    .locals 6

    .prologue
    new-instance v0, Lj$/util/stream/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj$/util/stream/o;-><init>(I)V

    new-instance v2, Lj$/util/stream/o;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lj$/util/stream/o;-><init>(I)V

    new-instance v4, Lj$/time/f;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p0, v0, v2, v4}, Lj$/util/stream/z;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    sget v2, Lj$/util/stream/j;->a:I

    aget-wide v1, v0, v1

    aget-wide v4, v0, v3

    add-double/2addr v1, v4

    array-length v4, v0

    sub-int/2addr v4, v3

    aget-wide v3, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v3

    :cond_0
    return-wide v1
.end method

.method public final summaryStatistics()Lj$/util/w;
    .locals 4

    new-instance v0, Lj$/time/f;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    new-instance v1, Lj$/time/f;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lj$/time/f;-><init>(I)V

    new-instance v2, Lj$/time/f;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Lj$/util/stream/z;->collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/w;

    return-object v0
.end method

.method public final toArray()[D
    .locals 2

    new-instance v0, Lj$/time/f;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->I0(Ljava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object v0

    check-cast v0, Lj$/util/stream/A0;

    invoke-static {v0}, Lj$/util/stream/v1;->o0(Lj$/util/stream/A0;)Lj$/util/stream/A0;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/F0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final u()Z
    .locals 1

    sget-object v0, Lj$/util/stream/t0;->ALL:Lj$/util/stream/t0;

    invoke-static {v0}, Lj$/util/stream/v1;->u0(Lj$/util/stream/t0;)Lj$/util/concurrent/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final v()Lj$/util/stream/m0;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/t;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/util/stream/t;-><init>(Lj$/util/stream/a;II)V

    return-object v0
.end method
