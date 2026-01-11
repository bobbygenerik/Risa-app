.class public abstract Lj$/util/stream/a;
.super Lj$/util/stream/v1;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/g;


# instance fields
.field public final h:Lj$/util/stream/a;

.field public final i:Lj$/util/stream/a;

.field public final j:I

.field public final k:Lj$/util/stream/a;

.field public l:I

.field public m:I

.field public n:Lj$/util/Spliterator;

.field public o:Z

.field public final p:Z

.field public q:Ljava/lang/Runnable;

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lj$/util/stream/a;

    return-void
.end method

.method public constructor <init>(Lj$/util/Spliterator;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    iput-object p1, p0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    iput-object p0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    sget p1, Lj$/util/stream/Y2;->g:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/a;->j:I

    shl-int/lit8 p1, p1, 0x1

    not-int p1, p1

    sget p2, Lj$/util/stream/Y2;->l:I

    and-int/2addr p1, p2

    iput p1, p0, Lj$/util/stream/a;->m:I

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/a;->l:I

    iput-boolean p3, p0, Lj$/util/stream/a;->r:Z

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/a;I)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lj$/util/stream/a;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lj$/util/stream/a;->o:Z

    iput-object p0, p1, Lj$/util/stream/a;->k:Lj$/util/stream/a;

    iput-object p1, p0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    sget v1, Lj$/util/stream/Y2;->h:I

    and-int/2addr v1, p2

    iput v1, p0, Lj$/util/stream/a;->j:I

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-static {p2, v1}, Lj$/util/stream/Y2;->k(II)I

    move-result p2

    iput p2, p0, Lj$/util/stream/a;->m:I

    iget-object p2, p1, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iput-object p2, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    invoke-virtual {p0}, Lj$/util/stream/a;->O0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v0, p2, Lj$/util/stream/a;->p:Z

    :cond_0
    iget p1, p1, Lj$/util/stream/a;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lj$/util/stream/a;->l:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream has already been operated upon or closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final E0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 1

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/l2;

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->F0(Lj$/util/stream/l2;)Lj$/util/stream/l2;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/a;->g0(Lj$/util/Spliterator;Lj$/util/stream/l2;)V

    return-object p2
.end method

.method public final F0(Lj$/util/stream/l2;)Lj$/util/stream/l2;
    .locals 2

    .prologue
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/a;->l:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    iget v1, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1, p1}, Lj$/util/stream/a;->P0(ILj$/util/stream/l2;)Lj$/util/stream/l2;

    move-result-object p1

    iget-object v0, v0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final G0(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    .prologue
    iget v0, p0, Lj$/util/stream/a;->l:I

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lj$/util/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean p1, p1, Lj$/util/stream/a;->r:Z

    invoke-virtual {p0, p0, v0, p1}, Lj$/util/stream/a;->S0(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public final H0(Lj$/util/stream/E3;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lj$/util/stream/a;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/a;->o:Z

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->r:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/stream/E3;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->Q0(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/E3;->j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/E3;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lj$/util/stream/a;->Q0(I)Lj$/util/Spliterator;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lj$/util/stream/E3;->f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I0(Ljava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lj$/util/stream/a;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/a;->o:Z

    iget-object v1, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v1, v1, Lj$/util/stream/a;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/a;->O0()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Lj$/util/stream/a;->l:I

    iget-object v0, p0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    invoke-virtual {v0, v2}, Lj$/util/stream/a;->Q0(I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lj$/util/stream/a;->M0(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v2}, Lj$/util/stream/a;->Q0(I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lj$/util/stream/a;->k0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract J0(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;
.end method

.method public abstract K0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z
.end method

.method public abstract L0()Lj$/util/stream/Z2;
.end method

.method public M0(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Parallel evaluation is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    new-instance v0, Lj$/time/f;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lj$/time/f;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Lj$/util/stream/a;->M0(Lj$/util/stream/v1;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/G0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1
.end method

.method public abstract O0()Z
.end method

.method public abstract P0(ILj$/util/stream/l2;)Lj$/util/stream/l2;
.end method

.method public final Q0(I)Lj$/util/Spliterator;
    .locals 6

    .prologue
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-object v1, v0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    iget-boolean v2, v0, Lj$/util/stream/a;->r:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lj$/util/stream/a;->p:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lj$/util/stream/a;->k:Lj$/util/stream/a;

    const/4 v3, 0x1

    :goto_0
    if-eq v0, p0, :cond_3

    iget v4, v2, Lj$/util/stream/a;->j:I

    invoke-virtual {v2}, Lj$/util/stream/a;->O0()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lj$/util/stream/Y2;->SHORT_CIRCUIT:Lj$/util/stream/Y2;

    invoke-virtual {v3, v4}, Lj$/util/stream/Y2;->q(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lj$/util/stream/Y2;->u:I

    not-int v3, v3

    and-int/2addr v4, v3

    :cond_0
    invoke-virtual {v2, v0, v1}, Lj$/util/stream/a;->N0(Lj$/util/stream/a;Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v1

    const/16 v3, 0x40

    invoke-interface {v1, v3}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lj$/util/stream/Y2;->t:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/Y2;->s:I

    :goto_1
    or-int/2addr v3, v4

    move v4, v3

    goto :goto_2

    :cond_1
    sget v3, Lj$/util/stream/Y2;->s:I

    not-int v3, v3

    and-int/2addr v3, v4

    sget v4, Lj$/util/stream/Y2;->t:I

    goto :goto_1

    :goto_2
    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v5, v3, 0x1

    iput v3, v2, Lj$/util/stream/a;->l:I

    iget v0, v0, Lj$/util/stream/a;->m:I

    invoke-static {v4, v0}, Lj$/util/stream/Y2;->k(II)I

    move-result v0

    iput v0, v2, Lj$/util/stream/a;->m:I

    iget-object v0, v2, Lj$/util/stream/a;->k:Lj$/util/stream/a;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Lj$/util/stream/a;->m:I

    invoke-static {p1, v0}, Lj$/util/stream/Y2;->k(II)I

    move-result p1

    iput p1, p0, Lj$/util/stream/a;->m:I

    :cond_4
    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "source already consumed or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final R0()Lj$/util/Spliterator;
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    if-ne p0, v0, :cond_2

    iget-boolean v1, p0, Lj$/util/stream/a;->o:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/util/stream/a;->o:Z

    iget-object v1, v0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public abstract S0(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;
.end method

.method public final close()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/a;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    iget-object v1, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-object v2, v1, Lj$/util/stream/a;->q:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iput-object v0, v1, Lj$/util/stream/a;->q:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final g0(Lj$/util/Spliterator;Lj$/util/stream/l2;)V
    .locals 2

    .prologue
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj$/util/stream/Y2;->SHORT_CIRCUIT:Lj$/util/stream/Y2;

    iget v1, p0, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lj$/util/stream/l2;->c(J)V

    invoke-interface {p1, p2}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    invoke-interface {p2}, Lj$/util/stream/l2;->end()V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/util/stream/a;->h0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z

    return-void
.end method

.method public final h0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z
    .locals 3

    .prologue
    move-object v0, p0

    :goto_0
    iget v1, v0, Lj$/util/stream/a;->l:I

    if-lez v1, :cond_0

    iget-object v0, v0, Lj$/util/stream/a;->i:Lj$/util/stream/a;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lj$/util/stream/l2;->c(J)V

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/a;->K0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Z

    move-result p1

    invoke-interface {p2}, Lj$/util/stream/l2;->end()V

    return p1
.end method

.method public final isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->r:Z

    return v0
.end method

.method public final k0(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-boolean v0, v0, Lj$/util/stream/a;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0, p1, p2, p3}, Lj$/util/stream/a;->J0(Lj$/util/stream/a;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/G0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lj$/util/stream/a;->l0(Lj$/util/Spliterator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3}, Lj$/util/stream/v1;->A0(JLjava/util/function/IntFunction;)Lj$/util/stream/y0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/a;->E0(Lj$/util/Spliterator;Lj$/util/stream/l2;)Lj$/util/stream/l2;

    invoke-interface {p2}, Lj$/util/stream/y0;->build()Lj$/util/stream/G0;

    move-result-object p1

    return-object p1
.end method

.method public final l0(Lj$/util/Spliterator;)J
    .locals 2

    .prologue
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    iget v1, p0, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final onClose(Ljava/lang/Runnable;)Lj$/util/stream/g;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lj$/util/stream/a;->o:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    iget-object v1, v0, Lj$/util/stream/a;->q:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lj$/util/stream/D3;

    invoke-direct {v2, v1, p1}, Lj$/util/stream/D3;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    move-object p1, v2

    :goto_0
    iput-object p1, v0, Lj$/util/stream/a;->q:Ljava/lang/Runnable;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "stream has already been operated upon or closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parallel()Lj$/util/stream/g;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj$/util/stream/a;->r:Z

    return-object p0
.end method

.method public final sequential()Lj$/util/stream/g;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj$/util/stream/a;->r:Z

    return-object p0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 3

    .prologue
    iget-boolean v0, p0, Lj$/util/stream/a;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/a;->o:Z

    iget-object v0, p0, Lj$/util/stream/a;->h:Lj$/util/stream/a;

    if-ne p0, v0, :cond_1

    iget-object v1, v0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lj$/util/stream/a;->n:Lj$/util/Spliterator;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source already consumed or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lj$/util/p;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    iget-boolean v0, v0, Lj$/util/stream/a;->r:Z

    invoke-virtual {p0, p0, v1, v0}, Lj$/util/stream/a;->S0(Lj$/util/stream/a;Ljava/util/function/Supplier;Z)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream has already been operated upon or closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
