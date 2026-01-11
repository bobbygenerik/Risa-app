.class public final Lj$/util/stream/C1;
.super Lj$/util/stream/v1;
.source "SourceFile"


# instance fields
.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/C1;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D0()Lj$/util/stream/Q1;
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/C1;->h:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/util/stream/T1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :pswitch_0
    new-instance v0, Lj$/util/stream/V1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Lj$/util/stream/S1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Lj$/util/stream/U1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lj$/util/stream/C1;->h:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1

    :pswitch_0
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_1
    return-object p1

    :pswitch_1
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_2
    return-object p1

    :pswitch_2
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    iget v1, p1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->f(Lj$/util/stream/a;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lj$/util/stream/C1;->h:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    iget v1, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1

    :pswitch_0
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    iget v1, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_1
    return-object p1

    :pswitch_1
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    iget v1, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_2
    return-object p1

    :pswitch_2
    sget-object v0, Lj$/util/stream/Y2;->SIZED:Lj$/util/stream/Y2;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/a;

    iget v1, v1, Lj$/util/stream/a;->m:I

    invoke-virtual {v0, v1}, Lj$/util/stream/Y2;->q(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    :cond_3
    invoke-super {p0, p1, p2}, Lj$/util/stream/v1;->j(Lj$/util/stream/v1;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w()I
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/C1;->h:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lj$/util/stream/Y2;->r:I

    return v0

    :pswitch_0
    sget v0, Lj$/util/stream/Y2;->r:I

    return v0

    :pswitch_1
    sget v0, Lj$/util/stream/Y2;->r:I

    return v0

    :pswitch_2
    sget v0, Lj$/util/stream/Y2;->r:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
