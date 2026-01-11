.class public abstract Lj$/util/stream/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/E3;


# static fields
.field public static final a:Lj$/util/stream/Y0;

.field public static final b:Lj$/util/stream/W0;

.field public static final c:Lj$/util/stream/X0;

.field public static final d:Lj$/util/stream/V0;

.field public static final e:[I

.field public static final f:[J

.field public static final g:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/util/stream/Y0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj$/util/stream/v1;->a:Lj$/util/stream/Y0;

    new-instance v0, Lj$/util/stream/W0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj$/util/stream/v1;->b:Lj$/util/stream/W0;

    new-instance v0, Lj$/util/stream/X0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj$/util/stream/v1;->c:Lj$/util/stream/X0;

    new-instance v0, Lj$/util/stream/V0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj$/util/stream/v1;->d:Lj$/util/stream/V0;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lj$/util/stream/v1;->e:[I

    new-array v1, v0, [J

    sput-object v1, Lj$/util/stream/v1;->f:[J

    new-array v0, v0, [D

    sput-object v0, Lj$/util/stream/v1;->g:[D

    return-void
.end method

.method public static B0(Lj$/util/stream/t0;Ljava/util/function/Predicate;)Lj$/util/concurrent/s;
    .locals 4

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/concurrent/s;

    sget-object v1, Lj$/util/stream/Z2;->REFERENCE:Lj$/util/stream/Z2;

    new-instance v2, Lj$/util/concurrent/s;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, p1}, Lj$/util/concurrent/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/s;-><init>(Lj$/util/stream/Z2;Lj$/util/stream/t0;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static C0(Lj$/util/stream/d2;JJ)Lj$/util/stream/n2;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v1, Lj$/util/stream/n2;

    invoke-static {p3, p4}, Lj$/util/stream/v1;->m0(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/n2;-><init>(Lj$/util/stream/d2;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static E(Lj$/util/stream/i2;Ljava/lang/Double;)V
    .locals 2

    .prologue
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/stream/i2;->accept(D)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfDouble.accept(Double)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic F(Lj$/util/stream/i2;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0, p1}, Lj$/util/stream/i2;->n(Ljava/lang/Double;)V

    return-void
.end method

.method public static G(Lj$/util/stream/j2;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lj$/util/stream/j2;->accept(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfInt.accept(Integer)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic H(Lj$/util/stream/j2;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Lj$/util/stream/j2;->d(Ljava/lang/Integer;)V

    return-void
.end method

.method public static I(Lj$/util/stream/k2;Ljava/lang/Long;)V
    .locals 2

    .prologue
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/stream/k2;->accept(J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfLong.accept(Long)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic J(Lj$/util/stream/k2;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Lj$/util/stream/k2;->l(Ljava/lang/Long;)V

    return-void
.end method

.method public static K()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static L()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static M(Lj$/util/stream/F0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4

    .prologue
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lj$/util/stream/G0;->k([Ljava/lang/Object;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfPrimitive.asArray"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static N(Lj$/util/stream/A0;[Ljava/lang/Double;I)V
    .locals 4

    .prologue
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/F0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static O(Lj$/util/stream/C0;[Ljava/lang/Integer;I)V
    .locals 3

    .prologue
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/F0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static P(Lj$/util/stream/E0;[Ljava/lang/Long;I)V
    .locals 4

    .prologue
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/F0;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static Q(Lj$/util/stream/A0;Ljava/util/function/Consumer;)V
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/F0;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/F0;->spliterator()Lj$/util/d0;

    move-result-object p0

    check-cast p0, Lj$/util/U;

    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static R(Lj$/util/stream/C0;Ljava/util/function/Consumer;)V
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/F0;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/F0;->spliterator()Lj$/util/d0;

    move-result-object p0

    check-cast p0, Lj$/util/X;

    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static S(Lj$/util/stream/E0;Ljava/util/function/Consumer;)V
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/F0;->g(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-boolean v0, Lj$/util/stream/G3;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/F0;->spliterator()Lj$/util/d0;

    move-result-object p0

    check-cast p0, Lj$/util/a0;

    invoke-interface {p0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/G3;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static T(Lj$/util/stream/A0;JJ)Lj$/util/stream/A0;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    invoke-interface {p0}, Lj$/util/stream/F0;->spliterator()Lj$/util/d0;

    move-result-object v2

    check-cast v2, Lj$/util/U;

    invoke-static {v0, v1}, Lj$/util/stream/v1;->i0(J)Lj$/util/stream/v0;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lj$/util/stream/l2;->c(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    new-instance v6, Lj$/util/stream/z0;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lj$/util/stream/z0;-><init>(I)V

    invoke-interface {v2, v6}, Lj$/util/U;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    invoke-interface {v2, v3}, Lj$/util/U;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    invoke-interface {v2, v3}, Lj$/util/U;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/l2;->end()V

    invoke-interface {v3}, Lj$/util/stream/v0;->build()Lj$/util/stream/A0;

    move-result-object p0

    return-object p0
.end method

.method public static U(Lj$/util/stream/C0;JJ)Lj$/util/stream/C0;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    invoke-interface {p0}, Lj$/util/stream/F0;->spliterator()Lj$/util/d0;

    move-result-object v2

    check-cast v2, Lj$/util/X;

    invoke-static {v0, v1}, Lj$/util/stream/v1;->s0(J)Lj$/util/stream/w0;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lj$/util/stream/l2;->c(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    new-instance v6, Lj$/util/stream/B0;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lj$/util/stream/B0;-><init>(I)V

    invoke-interface {v2, v6}, Lj$/util/X;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    invoke-interface {v2, v3}, Lj$/util/X;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    invoke-interface {v2, v3}, Lj$/util/X;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/l2;->end()V

    invoke-interface {v3}, Lj$/util/stream/w0;->build()Lj$/util/stream/C0;

    move-result-object p0

    return-object p0
.end method

.method public static V(Lj$/util/stream/E0;JJ)Lj$/util/stream/E0;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    invoke-interface {p0}, Lj$/util/stream/F0;->spliterator()Lj$/util/d0;

    move-result-object v2

    check-cast v2, Lj$/util/a0;

    invoke-static {v0, v1}, Lj$/util/stream/v1;->t0(J)Lj$/util/stream/x0;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lj$/util/stream/l2;->c(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    int-to-long v6, v5

    cmp-long v6, v6, p1

    if-gez v6, :cond_1

    new-instance v6, Lj$/util/stream/D0;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lj$/util/stream/D0;-><init>(I)V

    invoke-interface {v2, v6}, Lj$/util/a0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    invoke-interface {v2, v3}, Lj$/util/a0;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v4

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    invoke-interface {v2, v3}, Lj$/util/a0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v3}, Lj$/util/stream/l2;->end()V

    invoke-interface {v3}, Lj$/util/stream/x0;->build()Lj$/util/stream/E0;

    move-result-object p0

    return-object p0
.end method

.method public static W(Lj$/util/stream/G0;JJLjava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lj$/util/stream/G0;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    sub-long v1, p3, p1

    invoke-static {v1, v2, p5}, Lj$/util/stream/v1;->Z(JLjava/util/function/IntFunction;)Lj$/util/stream/y0;

    move-result-object p5

    invoke-interface {p5, v1, v2}, Lj$/util/stream/l2;->c(J)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    new-instance v5, Lj$/util/stream/b0;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lj$/util/stream/b0;-><init>(I)V

    invoke-interface {v0, v5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    invoke-interface {v0, p5}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v3

    cmp-long p0, p0, v1

    if-gez p0, :cond_3

    invoke-interface {v0, p5}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p5}, Lj$/util/stream/l2;->end()V

    invoke-interface {p5}, Lj$/util/stream/y0;->build()Lj$/util/stream/G0;

    move-result-object p0

    return-object p0
.end method

.method public static X(JJJ)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_0

    sub-long/2addr p0, p2

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v1
.end method

.method public static Y(Lj$/util/stream/Z2;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;
    .locals 2

    .prologue
    invoke-static {p2, p3, p4, p5}, Lj$/util/stream/v1;->a0(JJ)J

    move-result-wide p4

    sget-object v0, Lj$/util/stream/u2;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance p0, Lj$/util/stream/o3;

    check-cast p1, Lj$/util/U;

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/r3;-><init>(Lj$/util/d0;JJ)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown shape "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lj$/util/stream/q3;

    check-cast p1, Lj$/util/a0;

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/r3;-><init>(Lj$/util/d0;JJ)V

    return-object p0

    :cond_2
    new-instance p0, Lj$/util/stream/p3;

    check-cast p1, Lj$/util/X;

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/r3;-><init>(Lj$/util/d0;JJ)V

    return-object p0

    :cond_3
    new-instance p0, Lj$/util/stream/s3;

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/s3;-><init>(Lj$/util/Spliterator;JJ)V

    return-object p0
.end method

.method public static Z(JLjava/util/function/IntFunction;)Lj$/util/stream/y0;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Lj$/util/stream/a1;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/J0;-><init>(JLjava/util/function/IntFunction;)V

    return-object v0

    :cond_0
    new-instance p0, Lj$/util/stream/s1;

    invoke-direct {p0}, Lj$/util/stream/V2;-><init>()V

    return-object p0
.end method

.method public static a0(JJ)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0x7fffffffffffffffL

    if-ltz v2, :cond_0

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    move-wide p0, v3

    :goto_0
    cmp-long p2, p0, v0

    if-ltz p2, :cond_1

    return-wide p0

    :cond_1
    return-wide v3
.end method

.method public static b0(Lj$/util/stream/v1;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 6

    .prologue
    invoke-virtual {p0, p1}, Lj$/util/stream/v1;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    invoke-interface {p3, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    new-instance p3, Lj$/util/stream/q1;

    invoke-direct {p3, p1, p0, p2}, Lj$/util/stream/q1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/v1;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/J0;

    invoke-direct {p0, p2}, Lj$/util/stream/J0;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lj$/util/stream/L0;

    new-instance v3, Lj$/util/stream/K;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p3, v3, Lj$/util/stream/K;->a:Ljava/util/function/IntFunction;

    new-instance v4, Lj$/util/stream/b0;

    const/16 v1, 0xb

    invoke-direct {v4, v1}, Lj$/util/stream/b0;-><init>(I)V

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/L0;-><init>(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/G0;

    if-eqz p2, :cond_2

    invoke-static {p0, p3}, Lj$/util/stream/v1;->n0(Lj$/util/stream/G0;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static c0(Lj$/util/stream/v1;Lj$/util/Spliterator;Z)Lj$/util/stream/A0;
    .locals 6

    .prologue
    invoke-virtual {p0, p1}, Lj$/util/stream/v1;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    new-array p2, p2, [D

    new-instance v0, Lj$/util/stream/n1;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/n1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/v1;[D)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/S0;

    invoke-direct {p0, p2}, Lj$/util/stream/S0;-><init>([D)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lj$/util/stream/L0;

    new-instance v3, Lj$/util/stream/b0;

    const/4 v1, 0x5

    invoke-direct {v3, v1}, Lj$/util/stream/b0;-><init>(I)V

    new-instance v4, Lj$/util/stream/b0;

    const/4 v1, 0x6

    invoke-direct {v4, v1}, Lj$/util/stream/b0;-><init>(I)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/L0;-><init>(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/A0;

    if-eqz p2, :cond_2

    invoke-static {p0}, Lj$/util/stream/v1;->o0(Lj$/util/stream/A0;)Lj$/util/stream/A0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static d0(Lj$/util/stream/v1;Lj$/util/Spliterator;Z)Lj$/util/stream/C0;
    .locals 6

    .prologue
    invoke-virtual {p0, p1}, Lj$/util/stream/v1;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    new-array p2, p2, [I

    new-instance v0, Lj$/util/stream/o1;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/o1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/v1;[I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/b1;

    invoke-direct {p0, p2}, Lj$/util/stream/b1;-><init>([I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lj$/util/stream/L0;

    new-instance v3, Lj$/util/stream/b0;

    const/4 v1, 0x7

    invoke-direct {v3, v1}, Lj$/util/stream/b0;-><init>(I)V

    new-instance v4, Lj$/util/stream/b0;

    const/16 v1, 0x8

    invoke-direct {v4, v1}, Lj$/util/stream/b0;-><init>(I)V

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/L0;-><init>(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/C0;

    if-eqz p2, :cond_2

    invoke-static {p0}, Lj$/util/stream/v1;->p0(Lj$/util/stream/C0;)Lj$/util/stream/C0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static e0(Lj$/util/stream/v1;Lj$/util/Spliterator;Z)Lj$/util/stream/E0;
    .locals 6

    .prologue
    invoke-virtual {p0, p1}, Lj$/util/stream/v1;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0x7ffffff7

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    long-to-int p2, v0

    new-array p2, p2, [J

    new-instance v0, Lj$/util/stream/p1;

    invoke-direct {v0, p1, p0, p2}, Lj$/util/stream/p1;-><init>(Lj$/util/Spliterator;Lj$/util/stream/v1;[J)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/k1;

    invoke-direct {p0, p2}, Lj$/util/stream/k1;-><init>([J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lj$/util/stream/L0;

    new-instance v3, Lj$/util/stream/b0;

    const/16 v1, 0x9

    invoke-direct {v3, v1}, Lj$/util/stream/b0;-><init>(I)V

    new-instance v4, Lj$/util/stream/b0;

    const/16 v1, 0xa

    invoke-direct {v4, v1}, Lj$/util/stream/b0;-><init>(I)V

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/L0;-><init>(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/LongFunction;Ljava/util/function/BinaryOperator;I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/util/stream/E0;

    if-eqz p2, :cond_2

    invoke-static {p0}, Lj$/util/stream/v1;->q0(Lj$/util/stream/E0;)Lj$/util/stream/E0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static f0(Lj$/util/stream/Z2;Lj$/util/stream/G0;Lj$/util/stream/G0;)Lj$/util/stream/I0;
    .locals 2

    .prologue
    sget-object v0, Lj$/util/stream/H0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance p0, Lj$/util/stream/N0;

    check-cast p1, Lj$/util/stream/A0;

    check-cast p2, Lj$/util/stream/A0;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/I0;-><init>(Lj$/util/stream/G0;Lj$/util/stream/G0;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown shape "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lj$/util/stream/P0;

    check-cast p1, Lj$/util/stream/E0;

    check-cast p2, Lj$/util/stream/E0;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/I0;-><init>(Lj$/util/stream/G0;Lj$/util/stream/G0;)V

    return-object p0

    :cond_2
    new-instance p0, Lj$/util/stream/O0;

    check-cast p1, Lj$/util/stream/C0;

    check-cast p2, Lj$/util/stream/C0;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/I0;-><init>(Lj$/util/stream/G0;Lj$/util/stream/G0;)V

    return-object p0

    :cond_3
    new-instance p0, Lj$/util/stream/R0;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/I0;-><init>(Lj$/util/stream/G0;Lj$/util/stream/G0;)V

    return-object p0
.end method

.method public static i0(J)Lj$/util/stream/v0;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Lj$/util/stream/T0;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/S0;-><init>(J)V

    return-object v0

    :cond_0
    new-instance p0, Lj$/util/stream/U0;

    invoke-direct {p0}, Lj$/util/stream/U2;-><init>()V

    return-object p0
.end method

.method public static j0(Lj$/util/stream/Z2;)Lj$/util/stream/Z0;
    .locals 3

    .prologue
    sget-object v0, Lj$/util/stream/H0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object p0, Lj$/util/stream/v1;->d:Lj$/util/stream/V0;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown shape "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lj$/util/stream/v1;->c:Lj$/util/stream/X0;

    return-object p0

    :cond_2
    sget-object p0, Lj$/util/stream/v1;->b:Lj$/util/stream/W0;

    return-object p0

    :cond_3
    sget-object p0, Lj$/util/stream/v1;->a:Lj$/util/stream/Y0;

    return-object p0
.end method

.method public static m0(J)I
    .locals 3

    .prologue
    sget v0, Lj$/util/stream/Y2;->t:I

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-eqz p0, :cond_0

    sget p0, Lj$/util/stream/Y2;->u:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public static n0(Lj$/util/stream/G0;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 4

    .prologue
    invoke-interface {p0}, Lj$/util/stream/G0;->o()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    new-instance v0, Lj$/util/stream/u1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/u1;-><init>(Lj$/util/stream/G0;Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/J0;

    invoke-direct {p0, p1}, Lj$/util/stream/J0;-><init>([Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static o0(Lj$/util/stream/A0;)Lj$/util/stream/A0;
    .locals 4

    .prologue
    invoke-interface {p0}, Lj$/util/stream/G0;->o()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    new-array v0, v0, [D

    new-instance v1, Lj$/util/stream/t1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/u1;-><init>(Lj$/util/stream/G0;Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/S0;

    invoke-direct {p0, v0}, Lj$/util/stream/S0;-><init>([D)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static p0(Lj$/util/stream/C0;)Lj$/util/stream/C0;
    .locals 4

    .prologue
    invoke-interface {p0}, Lj$/util/stream/G0;->o()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    new-array v0, v0, [I

    new-instance v1, Lj$/util/stream/t1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/u1;-><init>(Lj$/util/stream/G0;Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/b1;

    invoke-direct {p0, v0}, Lj$/util/stream/b1;-><init>([I)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static q0(Lj$/util/stream/E0;)Lj$/util/stream/E0;
    .locals 4

    .prologue
    invoke-interface {p0}, Lj$/util/stream/G0;->o()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/G0;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    new-array v0, v0, [J

    new-instance v1, Lj$/util/stream/t1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lj$/util/stream/u1;-><init>(Lj$/util/stream/G0;Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    new-instance p0, Lj$/util/stream/k1;

    invoke-direct {p0, v0}, Lj$/util/stream/k1;-><init>([J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static r0(Ljava/util/function/Function;)Lj$/util/p;
    .locals 2

    new-instance v0, Lj$/util/p;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/p;-><init>(I)V

    iput-object p0, v0, Lj$/util/p;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static s0(J)Lj$/util/stream/w0;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Lj$/util/stream/c1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/b1;-><init>(J)V

    return-object v0

    :cond_0
    new-instance p0, Lj$/util/stream/d1;

    invoke-direct {p0}, Lj$/util/stream/U2;-><init>()V

    return-object p0
.end method

.method public static t0(J)Lj$/util/stream/x0;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Lj$/util/stream/l1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/k1;-><init>(J)V

    return-object v0

    :cond_0
    new-instance p0, Lj$/util/stream/m1;

    invoke-direct {p0}, Lj$/util/stream/U2;-><init>()V

    return-object p0
.end method

.method public static u0(Lj$/util/stream/t0;)Lj$/util/concurrent/s;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/concurrent/s;

    sget-object v1, Lj$/util/stream/Z2;->DOUBLE_VALUE:Lj$/util/stream/Z2;

    new-instance v2, Lj$/util/stream/n0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lj$/util/stream/n0;-><init>(Lj$/util/stream/t0;I)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/s;-><init>(Lj$/util/stream/Z2;Lj$/util/stream/t0;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static v0(Lj$/util/stream/z;JJ)Lj$/util/stream/t2;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v1, Lj$/util/stream/t2;

    invoke-static {p3, p4}, Lj$/util/stream/v1;->m0(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/t2;-><init>(Lj$/util/stream/z;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w0(Lj$/util/stream/t0;)Lj$/util/concurrent/s;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/concurrent/s;

    sget-object v1, Lj$/util/stream/Z2;->INT_VALUE:Lj$/util/stream/Z2;

    new-instance v2, Lj$/util/stream/n0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lj$/util/stream/n0;-><init>(Lj$/util/stream/t0;I)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/s;-><init>(Lj$/util/stream/Z2;Lj$/util/stream/t0;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static x0(Lj$/util/stream/a0;JJ)Lj$/util/stream/p2;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v1, Lj$/util/stream/p2;

    invoke-static {p3, p4}, Lj$/util/stream/v1;->m0(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/p2;-><init>(Lj$/util/stream/a0;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y0(Lj$/util/stream/t0;)Lj$/util/concurrent/s;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/concurrent/s;

    sget-object v1, Lj$/util/stream/Z2;->LONG_VALUE:Lj$/util/stream/Z2;

    new-instance v2, Lj$/util/stream/n0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lj$/util/stream/n0;-><init>(Lj$/util/stream/t0;I)V

    invoke-direct {v0, v1, p0, v2}, Lj$/util/concurrent/s;-><init>(Lj$/util/stream/Z2;Lj$/util/stream/t0;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static z0(Lj$/util/stream/j0;JJ)Lj$/util/stream/r2;
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v1, Lj$/util/stream/r2;

    invoke-static {p3, p4}, Lj$/util/stream/v1;->m0(J)I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lj$/util/stream/r2;-><init>(Lj$/util/stream/j0;IJJ)V

    return-object v1

    :cond_0
    move-wide v4, p1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Skip must be non-negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract A0(JLjava/util/function/IntFunction;)Lj$/util/stream/y0;
.end method

.method public abstract D0()Lj$/util/stream/Q1;
.end method

.method public abstract E0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;
.end method

.method public abstract F0(Lj$/util/stream/l2;)Lj$/util/stream/l2;
.end method

.method public abstract G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;
.end method

.method public f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/v1;->D0()Lj$/util/stream/Q1;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/a;->E0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;

    check-cast v0, Lj$/util/stream/Q1;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract g0(Lj$/util/Spliterator;Lj$/util/stream/l2;)V
.end method

.method public abstract h0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z
.end method

.method public j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/X1;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/X1;-><init>(Lj$/util/stream/v1;Lj$/util/stream/v1;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Q1;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract k0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;
.end method

.method public abstract l0(Lj$/util/Spliterator;)J
.end method

.method public synthetic w()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
