.class public final Lj$/util/stream/P0;
.super Lj$/util/stream/Q0;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/E0;


# virtual methods
.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/v1;->S(Lj$/util/stream/E0;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic j(JJLjava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/v1;->V(Lj$/util/stream/E0;JJ)Lj$/util/stream/E0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k([Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-static {p0, p1, p2}, Lj$/util/stream/v1;->P(Lj$/util/stream/E0;[Ljava/lang/Long;I)V

    return-void
.end method

.method public final newArray(I)Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [J

    return-object p1
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    new-instance v0, Lj$/util/stream/g1;

    invoke-direct {v0, p0}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/G0;)V

    return-object v0
.end method

.method public final spliterator()Lj$/util/d0;
    .locals 1

    new-instance v0, Lj$/util/stream/g1;

    invoke-direct {v0, p0}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/G0;)V

    return-object v0
.end method
