.class public final synthetic Lj$/util/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Ljava/util/function/Predicate;
.implements Ljava/util/function/Supplier;
.implements Ljava/util/function/DoubleFunction;
.implements Ljava/util/function/Function;
.implements Ljava/util/function/LongFunction;
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/util/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lj$/util/p;->a:I

    iput-object p2, p0, Lj$/util/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj$/util/stream/X2;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    check-cast v1, Ljava/util/EnumMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget v0, p0, Lj$/util/p;->a:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :sswitch_0
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/l2;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :sswitch_1
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v1, Lj$/util/q;

    invoke-direct {v1, p1}, Lj$/util/q;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/a;->a(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/p;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/a;->c(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p0, p1}, Lj$/util/function/a;->c(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    :sswitch_1
    invoke-static {p0, p1}, Lj$/util/function/a;->c(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public apply(D)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    instance-of v0, p1, Lj$/util/stream/C;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/util/stream/C;

    invoke-static {p1}, Lj$/util/stream/B;->f(Lj$/util/stream/C;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/util/stream/DoubleStream;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/stream/A;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/C;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "java.util.stream.DoubleStream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    instance-of v0, p1, Lj$/util/stream/m0;

    if-eqz v0, :cond_1

    check-cast p1, Lj$/util/stream/m0;

    invoke-static {p1}, Lj$/util/stream/l0;->f(Lj$/util/stream/m0;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/util/stream/LongStream;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/stream/k0;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m0;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "java.util.stream.LongStream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw p2
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Lj$/util/stream/Stream;

    if-eqz v1, :cond_1

    check-cast p1, Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v1, p1, Ljava/util/stream/Stream;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p1}, Lj$/util/stream/W2;->f(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p1, Lj$/util/stream/IntStream;

    if-eqz v1, :cond_3

    check-cast p1, Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v1, p1, Ljava/util/stream/IntStream;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v1, p1, Lj$/util/stream/C;

    if-eqz v1, :cond_5

    check-cast p1, Lj$/util/stream/C;

    invoke-static {p1}, Lj$/util/stream/B;->f(Lj$/util/stream/C;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v1, p1, Ljava/util/stream/DoubleStream;

    if-eqz v1, :cond_6

    check-cast p1, Ljava/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/stream/A;->f(Ljava/util/stream/DoubleStream;)Lj$/util/stream/C;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v1, p1, Lj$/util/stream/m0;

    if-eqz v1, :cond_7

    check-cast p1, Lj$/util/stream/m0;

    invoke-static {p1}, Lj$/util/stream/l0;->f(Lj$/util/stream/m0;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v1, p1, Ljava/util/stream/LongStream;

    if-eqz v1, :cond_8

    check-cast p1, Ljava/util/stream/LongStream;

    invoke-static {p1}, Lj$/util/stream/k0;->f(Ljava/util/stream/LongStream;)Lj$/util/stream/m0;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "java.util.stream.*Stream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Lj$/util/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lj$/util/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/Spliterator;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj$/util/stream/a;->Q0(I)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getAsBoolean()Z
    .locals 2

    .prologue
    iget v0, p0, Lj$/util/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/C3;

    iget-object v1, v0, Lj$/util/stream/a3;->d:Lj$/util/Spliterator;

    iget-object v0, v0, Lj$/util/stream/a3;->e:Lj$/util/stream/l2;

    invoke-interface {v1, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/n3;

    iget-object v1, v0, Lj$/util/stream/a3;->d:Lj$/util/Spliterator;

    iget-object v0, v0, Lj$/util/stream/a3;->e:Lj$/util/stream/l2;

    invoke-interface {v1, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/l3;

    iget-object v1, v0, Lj$/util/stream/a3;->d:Lj$/util/Spliterator;

    iget-object v0, v0, Lj$/util/stream/a3;->e:Lj$/util/stream/l2;

    invoke-interface {v1, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/j3;

    iget-object v1, v0, Lj$/util/stream/a3;->d:Lj$/util/Spliterator;

    iget-object v0, v0, Lj$/util/stream/a3;->e:Lj$/util/stream/l2;

    invoke-interface {v1, v0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Ljava/util/function/Predicate;
    .locals 2

    new-instance v0, Lj$/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/a;->g(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/util/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
