.class public final Lj$/util/stream/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/E3;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/function/Predicate;

.field public final d:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>(ZLj$/util/stream/Z2;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p2, Lj$/util/stream/Y2;->u:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lj$/util/stream/Y2;->r:I

    :goto_0
    or-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/D;->a:I

    iput-object p3, p0, Lj$/util/stream/D;->b:Ljava/lang/Object;

    iput-object p4, p0, Lj$/util/stream/D;->c:Ljava/util/function/Predicate;

    iput-object p5, p0, Lj$/util/stream/D;->d:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/util/stream/D;->d:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/F3;

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/a;->E0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;

    check-cast v0, Lj$/util/stream/F3;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lj$/util/stream/D;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public final j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lj$/util/stream/Y2;->ORDERED:Lj$/util/stream/Y2;

    check-cast p1, Lj$/util/stream/a;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    new-instance v1, Lj$/util/stream/J;

    invoke-direct {v1, p0, v0, p1, p2}, Lj$/util/stream/J;-><init>(Lj$/util/stream/D;ZLj$/util/stream/a;Lj$/util/Spliterator;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final w()I
    .locals 1

    iget v0, p0, Lj$/util/stream/D;->a:I

    return v0
.end method
