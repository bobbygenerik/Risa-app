.class public final synthetic Lj$/util/stream/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;
.implements Ljava/util/function/ObjDoubleConsumer;
.implements Ljava/util/function/Predicate;
.implements Ljava/util/function/IntFunction;
.implements Ljava/util/function/ToIntFunction;
.implements Ljava/util/function/IntBinaryOperator;
.implements Ljava/util/function/ObjIntConsumer;
.implements Ljava/util/function/BiConsumer;
.implements Ljava/util/function/ObjLongConsumer;
.implements Ljava/util/function/LongBinaryOperator;
.implements Ljava/util/function/ToLongFunction;
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 3

    check-cast p1, [D

    invoke-static {p1, p2, p3}, Lj$/util/stream/j;->a([DD)V

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    add-double/2addr v1, p2

    aput-wide v1, p1, v0

    return-void
.end method

.method public accept(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [J

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    int-to-long v3, p2

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void

    :pswitch_0
    check-cast p1, Lj$/util/x;

    invoke-virtual {p1, p2}, Lj$/util/x;->accept(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 5

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [J

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    add-long/2addr v1, p2

    aput-wide v1, p1, v0

    return-void

    :pswitch_0
    check-cast p1, Lj$/util/z;

    invoke-virtual {p1, p2, p3}, Lj$/util/z;->accept(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lj$/util/z;

    check-cast p2, Lj$/util/z;

    invoke-virtual {p1, p2}, Lj$/util/z;->a(Lj$/util/z;)V

    return-void

    :sswitch_0
    check-cast p1, [J

    check-cast p2, [J

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void

    :sswitch_1
    check-cast p1, Lj$/util/x;

    check-cast p2, Lj$/util/x;

    invoke-virtual {p1, p2}, Lj$/util/x;->a(Lj$/util/x;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/a;->a(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/a;->a(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/a;->a(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/a;->a(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    :sswitch_1
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->b(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lj$/util/concurrent/s;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array p1, p1, [Ljava/lang/Long;

    return-object p1

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, p1, [Ljava/lang/Integer;

    return-object p1

    :pswitch_3
    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply(J)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public applyAsInt(II)I
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_1
    add-int/2addr p1, p2

    return p1

    :pswitch_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public applyAsLong(JJ)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0

    :sswitch_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0

    :sswitch_1
    new-instance v0, Lj$/util/stream/H;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :sswitch_2
    new-instance v0, Lj$/util/stream/G;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :sswitch_3
    new-instance v0, Lj$/util/stream/F;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :sswitch_4
    new-instance v0, Lj$/util/stream/E;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :sswitch_5
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x7 -> :sswitch_2
        0x9 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public negate()Ljava/util/function/Predicate;
    .locals 2

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lj$/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lj$/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lj$/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lj$/util/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/util/p;-><init>(ILjava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/a;->g(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/a;->g(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/a;->g(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/a;->g(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget v0, p0, Lj$/util/stream/o;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lj$/util/Optional;

    iget-object p1, p1, Lj$/util/Optional;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_1
    check-cast p1, Lj$/util/C;

    iget-boolean p1, p1, Lj$/util/C;->a:Z

    return p1

    :pswitch_2
    check-cast p1, Lj$/util/B;

    iget-boolean p1, p1, Lj$/util/B;->a:Z

    return p1

    :pswitch_3
    check-cast p1, Lj$/util/A;

    iget-boolean p1, p1, Lj$/util/A;->a:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
