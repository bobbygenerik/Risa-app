.class public final Lj$/util/stream/Y1;
.super Lj$/util/stream/h2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final synthetic e:Lj$/util/stream/a;


# direct methods
.method public constructor <init>(Lj$/util/stream/U;Lj$/util/stream/l2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/Y1;->b:I

    iput-object p1, p0, Lj$/util/stream/Y1;->e:Lj$/util/stream/a;

    invoke-direct {p0, p2}, Lj$/util/stream/h2;-><init>(Lj$/util/stream/l2;)V

    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/H;

    invoke-direct {p2, p1, v0}, Lj$/util/H;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/Y1;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/f0;Lj$/util/stream/l2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/Y1;->b:I

    iput-object p1, p0, Lj$/util/stream/Y1;->e:Lj$/util/stream/a;

    invoke-direct {p0, p2}, Lj$/util/stream/h2;-><init>(Lj$/util/stream/l2;)V

    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/L;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lj$/util/L;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/Y1;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/v;Lj$/util/stream/l2;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lj$/util/stream/Y1;->b:I

    iput-object p1, p0, Lj$/util/stream/Y1;->e:Lj$/util/stream/a;

    invoke-direct {p0, p2}, Lj$/util/stream/h2;-><init>(Lj$/util/stream/l2;)V

    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lj$/util/D;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lj$/util/D;-><init>(Ljava/util/function/Consumer;I)V

    iput-object p2, p0, Lj$/util/stream/Y1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .prologue
    iget v0, p0, Lj$/util/stream/Y1;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/Y1;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/D;

    iget-object v1, p0, Lj$/util/stream/Y1;->e:Lj$/util/stream/a;

    check-cast v1, Lj$/util/stream/v;

    iget-object v1, v1, Lj$/util/stream/v;->t:Ljava/lang/Object;

    check-cast v1, Lj$/util/p;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/C;

    if-eqz p1, :cond_2

    :try_start_0
    iget-boolean v1, p0, Lj$/util/stream/Y1;->c:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Lj$/util/stream/C;->sequential()Lj$/util/stream/C;

    move-result-object v1

    invoke-interface {v1, v0}, Lj$/util/stream/C;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lj$/util/stream/C;->sequential()Lj$/util/stream/C;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/C;->spliterator()Lj$/util/U;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-interface {v2}, Lj$/util/stream/l2;->e()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v0}, Lj$/util/U;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    :goto_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :cond_3
    return-void

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/Y1;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/H;

    iget-object v1, p0, Lj$/util/stream/Y1;->e:Lj$/util/stream/a;

    check-cast v1, Lj$/util/stream/U;

    iget-object v1, v1, Lj$/util/stream/U;->t:Ljava/lang/Object;

    check-cast v1, Lj$/util/p;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/IntStream;

    if-eqz p1, :cond_6

    :try_start_2
    iget-boolean v1, p0, Lj$/util/stream/Y1;->c:Z

    if-nez v1, :cond_4

    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1, v0}, Lj$/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/X;

    move-result-object v1

    :cond_5
    iget-object v2, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-interface {v2}, Lj$/util/stream/l2;->e()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1, v0}, Lj$/util/X;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_5

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :cond_7
    return-void

    :pswitch_1
    iget-object v0, p0, Lj$/util/stream/Y1;->d:Ljava/lang/Object;

    check-cast v0, Lj$/util/L;

    iget-object v1, p0, Lj$/util/stream/Y1;->e:Lj$/util/stream/a;

    check-cast v1, Lj$/util/stream/f0;

    iget-object v1, v1, Lj$/util/stream/f0;->t:Ljava/lang/Object;

    check-cast v1, Lj$/util/p;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/util/stream/m0;

    if-eqz p1, :cond_a

    :try_start_4
    iget-boolean v1, p0, Lj$/util/stream/Y1;->c:Z

    if-nez v1, :cond_8

    invoke-interface {p1}, Lj$/util/stream/m0;->sequential()Lj$/util/stream/m0;

    move-result-object v1

    invoke-interface {v1, v0}, Lj$/util/stream/m0;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_6

    :cond_8
    invoke-interface {p1}, Lj$/util/stream/m0;->sequential()Lj$/util/stream/m0;

    move-result-object v1

    invoke-interface {v1}, Lj$/util/stream/m0;->spliterator()Lj$/util/a0;

    move-result-object v1

    :cond_9
    iget-object v2, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-interface {v2}, Lj$/util/stream/l2;->e()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1, v0}, Lj$/util/a0;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v2, :cond_9

    goto :goto_8

    :goto_6
    :try_start_5
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0

    :cond_a
    :goto_8
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(J)V
    .locals 2

    .prologue
    iget p1, p0, Lj$/util/stream/Y1;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/l2;->c(J)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/l2;->c(J)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Lj$/util/stream/l2;->c(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/Y1;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Y1;->c:Z

    iget-object v0, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-interface {v0}, Lj$/util/stream/l2;->e()Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Y1;->c:Z

    iget-object v0, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-interface {v0}, Lj$/util/stream/l2;->e()Z

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/Y1;->c:Z

    iget-object v0, p0, Lj$/util/stream/h2;->a:Lj$/util/stream/l2;

    invoke-interface {v0}, Lj$/util/stream/l2;->e()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
