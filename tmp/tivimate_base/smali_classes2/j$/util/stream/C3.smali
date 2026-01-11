.class public final Lj$/util/stream/C3;
.super Lj$/util/stream/a3;
.source "SourceFile"


# virtual methods
.method public final d()V
    .locals 3

    new-instance v0, Lj$/util/stream/V2;

    invoke-direct {v0}, Lj$/util/stream/V2;-><init>()V

    iput-object v0, p0, Lj$/util/stream/a3;->h:Lj$/util/stream/c;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj$/util/stream/B3;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lj$/util/stream/B3;-><init>(Ljava/util/function/Consumer;I)V

    iget-object v0, p0, Lj$/util/stream/a3;->b:Lj$/util/stream/a;

    invoke-virtual {v0, v1}, Lj$/util/stream/a;->F0(Lj$/util/stream/l2;)Lj$/util/stream/l2;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/a3;->e:Lj$/util/stream/l2;

    new-instance v0, Lj$/util/p;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj$/util/stream/a3;->f:Ljava/util/function/BooleanSupplier;

    return-void
.end method

.method public final e(Lj$/util/Spliterator;)Lj$/util/stream/a3;
    .locals 3

    new-instance v0, Lj$/util/stream/C3;

    iget-object v1, p0, Lj$/util/stream/a3;->b:Lj$/util/stream/a;

    iget-boolean v2, p0, Lj$/util/stream/a3;->a:Z

    invoke-direct {v0, v1, p1, v2}, Lj$/util/stream/a3;-><init>(Lj$/util/stream/a;Lj$/util/Spliterator;Z)V

    return-object v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/stream/a3;->h:Lj$/util/stream/c;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/a3;->i:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/util/stream/a3;->c()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/B3;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lj$/util/stream/B3;-><init>(Ljava/util/function/Consumer;I)V

    iget-object p1, p0, Lj$/util/stream/a3;->d:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/a3;->b:Lj$/util/stream/a;

    invoke-virtual {v1, p1, v0}, Lj$/util/stream/a;->E0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/a3;->i:Z

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/C3;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 10

    .prologue
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lj$/util/stream/a3;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lj$/util/stream/a3;->h:Lj$/util/stream/c;

    check-cast v1, Lj$/util/stream/V2;

    iget-wide v2, p0, Lj$/util/stream/a3;->g:J

    iget v4, v1, Lj$/util/stream/c;->c:I

    if-nez v4, :cond_1

    iget v4, v1, Lj$/util/stream/c;->b:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    iget-object v1, v1, Lj$/util/stream/V2;->e:[Ljava/lang/Object;

    long-to-int v2, v2

    aget-object v1, v1, v2

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Lj$/util/stream/c;->count()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    iget v5, v1, Lj$/util/stream/c;->c:I

    if-gt v4, v5, :cond_3

    iget-object v5, v1, Lj$/util/stream/c;->d:[J

    aget-wide v6, v5, v4

    iget-object v5, v1, Lj$/util/stream/V2;->f:[[Ljava/lang/Object;

    aget-object v5, v5, v4

    array-length v8, v5

    int-to-long v8, v8

    add-long/2addr v8, v6

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    sub-long/2addr v2, v6

    long-to-int v1, v2

    aget-object v1, v5, v1

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return v0
.end method
