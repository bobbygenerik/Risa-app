.class public abstract Lj$/util/stream/Q0;
.super Lj$/util/stream/I0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/F0;


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 4

    .prologue
    const-wide/32 v0, 0x7ffffff7

    iget-wide v2, p0, Lj$/util/stream/I0;->c:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    long-to-int v0, v2

    invoke-interface {p0, v0}, Lj$/util/stream/F0;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lj$/util/stream/Q0;->f(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lj$/util/stream/I0;->a:Lj$/util/stream/G0;

    move-object v1, v0

    check-cast v1, Lj$/util/stream/F0;

    invoke-interface {v1, p1, p2}, Lj$/util/stream/F0;->f(ILjava/lang/Object;)V

    iget-object v1, p0, Lj$/util/stream/I0;->b:Lj$/util/stream/G0;

    check-cast v1, Lj$/util/stream/F0;

    check-cast v0, Lj$/util/stream/F0;

    invoke-interface {v0}, Lj$/util/stream/G0;->count()J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr p1, v0

    invoke-interface {v1, p1, p2}, Lj$/util/stream/F0;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/I0;->a:Lj$/util/stream/G0;

    check-cast v0, Lj$/util/stream/F0;

    invoke-interface {v0, p1}, Lj$/util/stream/F0;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/util/stream/I0;->b:Lj$/util/stream/G0;

    check-cast v0, Lj$/util/stream/F0;

    invoke-interface {v0, p1}, Lj$/util/stream/F0;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic m(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/v1;->M(Lj$/util/stream/F0;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v0, 0x20

    iget-wide v2, p0, Lj$/util/stream/I0;->c:J

    cmp-long v0, v2, v0

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    iget-object v0, p0, Lj$/util/stream/I0;->a:Lj$/util/stream/G0;

    aput-object v0, v2, v4

    iget-object v0, p0, Lj$/util/stream/I0;->b:Lj$/util/stream/G0;

    aput-object v0, v2, v1

    const-string v0, "%s[%s.%s]"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    aput-object v2, v1, v4

    const-string v0, "%s[size=%d]"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
