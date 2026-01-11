.class public final Lj$/util/stream/G2;
.super Lj$/util/stream/b2;
.source "SourceFile"


# instance fields
.field public final s:Z

.field public final t:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lj$/util/stream/d2;)V
    .locals 2

    sget v0, Lj$/util/stream/Y2;->q:I

    sget v1, Lj$/util/stream/Y2;->o:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/G2;->s:Z

    sget-object p1, Lj$/util/e;->INSTANCE:Lj$/util/e;

    iput-object p1, p0, Lj$/util/stream/G2;->t:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/d2;Ljava/util/Comparator;)V
    .locals 2

    sget v0, Lj$/util/stream/Y2;->q:I

    sget v1, Lj$/util/stream/Y2;->p:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/a;-><init>(Lj$/util/stream/a;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/stream/G2;->s:Z

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lj$/util/stream/G2;->t:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final M0(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 2

    .prologue
    sget-object v0, Lj$/util/stream/Y2;->SORTED:Lj$/util/stream/Y2;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    iget v1, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/G2;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/v1;->k0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/v1;->k0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    invoke-interface {p1, p3}, Lj$/util/stream/G0;->m(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/G2;->t:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p2, Lj$/util/stream/J0;

    invoke-direct {p2, p1}, Lj$/util/stream/J0;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final P0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 1

    .prologue
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj$/util/stream/Y2;->SORTED:Lj$/util/stream/Y2;

    invoke-virtual {v0, p1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lj$/util/stream/G2;->s:Z

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    invoke-virtual {v0, p1}, Lj$/util/stream/Y2;->q(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/L2;

    iget-object v0, p0, Lj$/util/stream/G2;->t:Ljava/util/Comparator;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/z2;-><init>(Lj$/util/stream/l2;Ljava/util/Comparator;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/H2;

    iget-object v0, p0, Lj$/util/stream/G2;->t:Ljava/util/Comparator;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/z2;-><init>(Lj$/util/stream/l2;Ljava/util/Comparator;)V

    return-object p1
.end method
