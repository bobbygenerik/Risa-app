.class public abstract Lj$/util/stream/d2;
.super Lj$/util/stream/a;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Stream;


# virtual methods
.method public final A0(JLjava/util/function/IntFunction;)Lj$/util/stream/y0;
    .locals 0

    invoke-static {p1, p2, p3}, Lj$/util/stream/v1;->Z(JLjava/util/function/IntFunction;)Lj$/util/stream/y0;

    move-result-object p1

    return-object p1
.end method

.method public final J0(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lj$/util/stream/v1;->b0(Lj$/util/stream/v1;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1
.end method

.method public final K0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z
    .locals 2

    .prologue
    :cond_0
    invoke-interface {p2}, Lj$/util/stream/l2;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method public final L0()Lj$/util/stream/Z2;
    .locals 1

    sget-object v0, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    return-object v0
.end method

.method public final S0(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/C3;

    invoke-direct {v0, p1, p2, p3}, Lj$/util/stream/a3;-><init>(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)V

    return-object v0
.end method

.method public final allMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/t0;->ALL:Lj$/util/stream/t0;

    invoke-static {v0, p1}, Lj$/util/stream/v1;->B0(Lj$/util/stream/t0;Ljava/util/function/Predicate;)Lj$/util/concurrent/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/t0;->ANY:Lj$/util/stream/t0;

    invoke-static {v0, p1}, Lj$/util/stream/v1;->B0(Lj$/util/stream/t0;Ljava/util/function/Predicate;)Lj$/util/concurrent/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/A1;

    sget-object v1, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    const/4 v5, 0x3

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/A1;-><init>(Lj$/util/stream/Z2;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    new-instance v0, Lj$/util/stream/C1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lj$/util/stream/C1;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Lj$/util/p;)Lj$/util/stream/Stream;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/q;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Y2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final distinct()Lj$/util/stream/Stream;
    .locals 3

    new-instance v0, Lj$/util/stream/m;

    sget v1, Lj$/util/stream/Y2;->m:I

    sget v2, Lj$/util/stream/Y2;->t:I

    or-int/2addr v1, v2

    invoke-direct {v0, p0, v1}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-object v0
.end method

.method public final dropWhile(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3

    sget v0, Lj$/util/stream/Y3;->a:I

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/H3;

    sget v1, Lj$/util/stream/Y3;->b:I

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/H3;-><init>(Lj$/util/stream/d2;ILjava/util/function/Predicate;I)V

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/q;

    sget v1, Lj$/util/stream/Y2;->t:I

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final findAny()Lj$/util/Optional;
    .locals 1

    sget-object v0, Lj$/util/stream/H;->d:Lj$/util/stream/D;

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public final findFirst()Lj$/util/Optional;
    .locals 1

    sget-object v0, Lj$/util/stream/H;->c:Lj$/util/stream/D;

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/O;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/stream/O;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/O;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/O;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Lj$/util/stream/i;)Ljava/lang/Object;
    .locals 9

    .prologue
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->r:Z

    const-string v1, "java.util.stream.Collector.Characteristics"

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p1, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lj$/util/stream/h;

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    check-cast v4, Lj$/util/stream/h;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    sget-object v5, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    if-ne v4, v5, :cond_2

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    goto :goto_1

    :cond_2
    sget-object v5, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    if-ne v4, v5, :cond_3

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_4
    instance-of v5, v4, Ljava/util/stream/Collector$Characteristics;

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_1
    check-cast v4, Ljava/util/stream/Collector$Characteristics;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_5

    move-object v4, v2

    goto :goto_3

    :cond_5
    sget-object v5, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    if-ne v4, v5, :cond_6

    sget-object v4, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    goto :goto_3

    :cond_6
    sget-object v5, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    if-ne v4, v5, :cond_7

    sget-object v4, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    goto :goto_3

    :cond_7
    sget-object v4, Lj$/util/stream/h;->IDENTITY_FINISH:Lj$/util/stream/h;

    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_8
    move-object v0, v3

    goto :goto_4

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_a
    :goto_4
    sget-object v3, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lj$/util/stream/Y2;->ORDERED:Lj$/util/stream/Y2;

    iget v3, p0, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v3}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p1, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_9

    :cond_b
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lj$/util/stream/h;

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_2
    check-cast v4, Lj$/util/stream/h;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_c

    move-object v4, v2

    goto :goto_6

    :cond_c
    sget-object v5, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    if-ne v4, v5, :cond_d

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    goto :goto_6

    :cond_d
    sget-object v5, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    if-ne v4, v5, :cond_e

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    goto :goto_6

    :cond_e
    sget-object v4, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    :goto_6
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_2
    move-exception v0

    move-object p1, v0

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_f
    instance-of v5, v4, Ljava/util/stream/Collector$Characteristics;

    if-eqz v5, :cond_14

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_3
    check-cast v4, Ljava/util/stream/Collector$Characteristics;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v4, :cond_10

    move-object v4, v2

    goto :goto_8

    :cond_10
    sget-object v5, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    if-ne v4, v5, :cond_11

    sget-object v4, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    goto :goto_8

    :cond_11
    sget-object v5, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    if-ne v4, v5, :cond_12

    sget-object v4, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    goto :goto_8

    :cond_12
    sget-object v4, Lj$/util/stream/h;->IDENTITY_FINISH:Lj$/util/stream/h;

    :goto_8
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_3
    move-exception v0

    move-object p1, v0

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_13
    move-object v0, v3

    goto :goto_9

    :cond_14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_9
    sget-object v3, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    iget-object v0, p1, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p1, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v3}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v3

    new-instance v4, Lj$/util/concurrent/s;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v3, v0}, Lj$/util/concurrent/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lj$/util/stream/d2;->forEach(Ljava/util/function/Consumer;)V

    move-object v8, p1

    goto :goto_a

    :cond_17
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/i;

    iget-object v0, v0, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v7

    iget-object v0, p1, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    iget-object v0, p1, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {v0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v5

    new-instance v3, Lj$/util/stream/H1;

    sget-object v4, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/H1;-><init>(Lj$/util/stream/Z2;Ljava/util/function/BinaryOperator;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;Lj$/util/stream/i;)V

    invoke-virtual {p0, v3}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    iget-object p1, v8, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    goto/16 :goto_f

    :cond_18
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lj$/util/stream/h;

    if-eqz v5, :cond_1c

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_4
    check-cast v4, Lj$/util/stream/h;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v4, :cond_19

    move-object v4, v2

    goto :goto_c

    :cond_19
    sget-object v5, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    if-ne v4, v5, :cond_1a

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    goto :goto_c

    :cond_1a
    sget-object v5, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    if-ne v4, v5, :cond_1b

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    goto :goto_c

    :cond_1b
    sget-object v4, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    :goto_c
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_4
    move-exception v0

    move-object p1, v0

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_1c
    instance-of v5, v4, Ljava/util/stream/Collector$Characteristics;

    if-eqz v5, :cond_21

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :try_start_5
    check-cast v4, Ljava/util/stream/Collector$Characteristics;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    if-nez v4, :cond_1d

    move-object v4, v2

    goto :goto_e

    :cond_1d
    sget-object v5, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    if-ne v4, v5, :cond_1e

    sget-object v4, Lj$/util/stream/h;->CONCURRENT:Lj$/util/stream/h;

    goto :goto_e

    :cond_1e
    sget-object v5, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    if-ne v4, v5, :cond_1f

    sget-object v4, Lj$/util/stream/h;->UNORDERED:Lj$/util/stream/h;

    goto :goto_e

    :cond_1f
    sget-object v4, Lj$/util/stream/h;->IDENTITY_FINISH:Lj$/util/stream/h;

    :goto_e
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_5
    move-exception v0

    move-object p1, v0

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_20
    move-object p1, v3

    goto :goto_f

    :cond_21
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_22
    :goto_f
    sget-object v1, Lj$/util/stream/h;->IDENTITY_FINISH:Lj$/util/stream/h;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return-object v0

    :cond_23
    iget-object p1, v8, Lj$/util/stream/i;->a:Ljava/util/stream/Collector;

    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Lj$/util/stream/a;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/f0;

    invoke-direct {v1, v0}, Lj$/util/f0;-><init>(Lj$/util/Spliterator;)V

    return-object v1
.end method

.method public final limit(J)Lj$/util/stream/Stream;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-static {p0, v0, v1, p1, p2}, Lj$/util/stream/v1;->C0(Lj$/util/stream/d2;JJ)Lj$/util/stream/n2;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Lj$/util/p;)Lj$/util/stream/m0;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/f0;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Y2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final map(Ljava/util/function/Function;)Lj$/util/stream/Stream;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/q;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/q;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/C;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/v;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/U;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/U;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final mapToLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/m0;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/f0;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/f0;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final max(Ljava/util/Comparator;)Lj$/util/Optional;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/function/b;-><init>(Ljava/util/Comparator;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/d2;->reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final min(Ljava/util/Comparator;)Lj$/util/Optional;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/function/b;-><init>(Ljava/util/Comparator;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/d2;->reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .locals 1

    sget-object v0, Lj$/util/stream/t0;->NONE:Lj$/util/stream/t0;

    invoke-static {v0, p1}, Lj$/util/stream/v1;->B0(Lj$/util/stream/t0;Ljava/util/function/Predicate;)Lj$/util/concurrent/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final o(Lj$/util/p;)Lj$/util/stream/IntStream;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/U;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Y2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/U;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method

.method public final peek(Ljava/util/function/Consumer;)Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/q;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/q;-><init>(Lj$/util/stream/d2;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final reduce(Ljava/util/function/BinaryOperator;)Lj$/util/Optional;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/y1;

    sget-object v1, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/y1;-><init>(Lj$/util/stream/Z2;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/Optional;

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 6

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/A1;

    sget-object v1, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    const/4 v5, 0x2

    move-object v4, p1

    move-object v3, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/A1;-><init>(Lj$/util/stream/Z2;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 6

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/A1;

    sget-object v1, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    const/4 v5, 0x2

    move-object v3, p2

    move-object v4, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/A1;-><init>(Lj$/util/stream/Z2;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->H0(Lj$/util/stream/E3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final skip(J)Lj$/util/stream/Stream;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lj$/util/stream/v1;->C0(Lj$/util/stream/d2;JJ)Lj$/util/stream/n2;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Lj$/util/stream/Stream;
    .locals 1

    new-instance v0, Lj$/util/stream/G2;

    invoke-direct {v0, p0}, Lj$/util/stream/G2;-><init>(Lj$/util/stream/d2;)V

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;
    .locals 1

    new-instance v0, Lj$/util/stream/G2;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/G2;-><init>(Lj$/util/stream/d2;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final takeWhile(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3

    sget v0, Lj$/util/stream/Y3;->a:I

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/H3;

    sget v1, Lj$/util/stream/Y3;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/H3;-><init>(Lj$/util/stream/d2;ILjava/util/function/Predicate;I)V

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    new-instance v0, Lj$/util/stream/b0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lj$/util/stream/b0;-><init>(I)V

    invoke-virtual {p0, v0}, Lj$/util/stream/d2;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lj$/util/stream/a;->I0(Ljava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/util/stream/v1;->n0(Lj$/util/stream/G0;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/stream/G0;->m(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toList()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lj$/util/stream/d2;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final z(Lj$/util/p;)Lj$/util/stream/C;
    .locals 3

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/v;

    sget v1, Lj$/util/stream/Y2;->p:I

    sget v2, Lj$/util/stream/Y2;->n:I

    or-int/2addr v1, v2

    sget v2, Lj$/util/stream/Y2;->t:I

    or-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, p1, v2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/a;ILjava/lang/Object;I)V

    return-object v0
.end method
