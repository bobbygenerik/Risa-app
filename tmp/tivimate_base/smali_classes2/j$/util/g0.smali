.class public final Lj$/util/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/K;
.implements Ljava/util/function/IntConsumer;
.implements Lj$/util/y;


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lj$/util/X;


# direct methods
.method public constructor <init>(Lj$/util/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/g0;->c:Lj$/util/X;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj$/util/g0;->a:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/g0;->a:Z

    iput p1, p0, Lj$/util/g0;->b:I

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/a;->e(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/e;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/g0;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2

    .prologue
    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Lj$/util/g0;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void

    :cond_0
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lj$/util/t0;->a:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/H;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj$/util/H;-><init>(Ljava/util/function/Consumer;I)V

    invoke-virtual {p0, v0}, Lj$/util/g0;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void

    :cond_1
    const-class p1, Lj$/util/g0;

    const-string v0, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)"

    invoke-static {p1, v0}, Lj$/util/t0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1

    .prologue
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lj$/util/g0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/g0;->nextInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lj$/util/g0;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/g0;->c:Lj$/util/X;

    invoke-interface {v0, p0}, Lj$/util/X;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    :cond_0
    iget-boolean v0, p0, Lj$/util/g0;->a:Z

    return v0
.end method

.method public final next()Ljava/lang/Integer;
    .locals 2

    .prologue
    sget-boolean v0, Lj$/util/t0;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/g0;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lj$/util/g0;

    const-string v1, "{0} calling PrimitiveIterator.OfInt.nextInt()"

    invoke-static {v0, v1}, Lj$/util/t0;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj$/util/g0;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final nextInt()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lj$/util/g0;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/util/g0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/g0;->a:Z

    iget v0, p0, Lj$/util/g0;->b:I

    return v0
.end method
