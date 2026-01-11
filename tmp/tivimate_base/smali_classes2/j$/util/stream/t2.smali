.class public final Lj$/util/stream/t2;
.super Lj$/util/stream/x;
.source "SourceFile"


# instance fields
.field public final synthetic s:J

.field public final synthetic t:J


# direct methods
.method public constructor <init>(Lj$/util/stream/z;IJJ)V
    .locals 0

    iput-wide p3, p0, Lj$/util/stream/t2;->s:J

    iput-wide p5, p0, Lj$/util/stream/t2;->t:J

    invoke-direct {p0, p1, p2}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    return-void
.end method


# virtual methods
.method public final M0(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 12

    .prologue
    invoke-virtual {p1, p2}, Lj$/util/stream/v1;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_1

    const/16 v4, 0x4000

    invoke-interface {p2, v4}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object p3, p1

    check-cast p3, Lj$/util/stream/a;

    :goto_0
    iget v0, p3, Lj$/util/stream/a;->l:I

    if-lez v0, :cond_0

    iget-object p3, p3, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lj$/util/stream/a;->L0()Lj$/util/stream/Z2;

    move-result-object v6

    iget-wide v8, p0, Lj$/util/stream/t2;->s:J

    iget-wide v10, p0, Lj$/util/stream/t2;->t:J

    move-object v7, p2

    invoke-static/range {v6 .. v11}, Lj$/util/stream/v1;->Y(Lj$/util/stream/Z2;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object p2

    invoke-static {p1, p2, v5}, Lj$/util/stream/v1;->c0(Lj$/util/stream/v1;Lj$/util/Spliterator;Z)Lj$/util/stream/A0;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v7, p2

    sget-object p2, Lj$/util/stream/Y2;->ORDERED:Lj$/util/stream/Y2;

    move-object v4, p1

    check-cast v4, Lj$/util/stream/a;

    iget v4, v4, Lj$/util/stream/a;->m:I

    invoke-virtual {p2, v4}, Lj$/util/stream/Y2;->q(I)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, v7}, Lj$/util/stream/v1;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lj$/util/U;

    iget-wide p1, p0, Lj$/util/stream/t2;->s:J

    iget-wide v8, p0, Lj$/util/stream/t2;->t:J

    cmp-long p3, p1, v0

    if-gtz p3, :cond_3

    cmp-long p3, v8, v2

    sub-long/2addr v0, p1

    if-ltz p3, :cond_2

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v8, p1

    goto :goto_1

    :cond_2
    move-wide v8, v0

    :goto_1
    move-wide v10, v8

    move-wide v8, v2

    goto :goto_2

    :cond_3
    move-wide v10, v8

    move-wide v8, p1

    :goto_2
    new-instance v6, Lj$/util/stream/u3;

    invoke-direct/range {v6 .. v11}, Lj$/util/stream/A3;-><init>(Lj$/util/Spliterator;JJ)V

    invoke-static {p0, v6, v5}, Lj$/util/stream/v1;->c0(Lj$/util/stream/v1;Lj$/util/Spliterator;Z)Lj$/util/stream/A0;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lj$/util/stream/v2;

    iget-wide v5, p0, Lj$/util/stream/t2;->s:J

    move-object v3, v7

    iget-wide v7, p0, Lj$/util/stream/t2;->t:J

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/v2;-><init>(Lj$/util/stream/a;Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/G0;

    return-object p1
.end method

.method public final N0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 12

    .prologue
    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->l0(Lj$/util/Spliterator;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    invoke-interface {p2, v0}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Lj$/util/stream/o3;

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lj$/util/U;

    iget-wide v8, p0, Lj$/util/stream/t2;->s:J

    iget-wide v2, p0, Lj$/util/stream/t2;->t:J

    invoke-static {v8, v9, v2, v3}, Lj$/util/stream/v1;->a0(JJ)J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lj$/util/stream/r3;-><init>(Lj$/util/d0;JJ)V

    return-object v6

    :cond_0
    sget-object v0, Lj$/util/stream/Y2;->ORDERED:Lj$/util/stream/Y2;

    iget v7, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v7}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/a;->G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lj$/util/U;

    iget-wide v8, p0, Lj$/util/stream/t2;->s:J

    iget-wide v10, p0, Lj$/util/stream/t2;->t:J

    cmp-long v0, v8, v2

    if-gtz v0, :cond_2

    cmp-long v0, v10, v4

    sub-long/2addr v2, v8

    if-ltz v0, :cond_1

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_1
    move-wide v10, v2

    move-wide v8, v4

    :cond_2
    new-instance v6, Lj$/util/stream/u3;

    invoke-direct/range {v6 .. v11}, Lj$/util/stream/A3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v6

    :cond_3
    new-instance v0, Lj$/util/stream/v2;

    new-instance v4, Lj$/util/stream/b0;

    const/16 v2, 0xf

    invoke-direct {v4, v2}, Lj$/util/stream/b0;-><init>(I)V

    iget-wide v5, p0, Lj$/util/stream/t2;->s:J

    iget-wide v7, p0, Lj$/util/stream/t2;->t:J

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/v2;-><init>(Lj$/util/stream/a;Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/G0;

    invoke-interface {v0}, Lj$/util/stream/G0;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final P0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 0

    new-instance p1, Lj$/util/stream/s2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/s2;-><init>(Lj$/util/stream/t2;Lj$/util/stream/l2;)V

    return-object p1
.end method
