.class public abstract synthetic Lj$/util/function/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/g;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;I)V

    return-object v0
.end method

.method public static b(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Lj$/util/concurrent/s;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/concurrent/s;

    invoke-direct {v0, p0, p1}, Lj$/util/concurrent/s;-><init>(Ljava/util/function/BiFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static c(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lj$/util/concurrent/s;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/concurrent/s;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lj$/util/concurrent/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Lj$/util/function/c;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/c;

    invoke-direct {v0, p0, p1}, Lj$/util/function/c;-><init>(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)V

    return-object v0
.end method

.method public static e(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Lj$/util/function/e;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/e;

    invoke-direct {v0, p0, p1}, Lj$/util/function/e;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method

.method public static f(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Lj$/util/function/f;
    .locals 1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/f;

    invoke-direct {v0, p0, p1}, Lj$/util/function/f;-><init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public static g(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Lj$/util/function/g;
    .locals 2

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lj$/util/function/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/g;-><init>(Ljava/util/function/Predicate;Ljava/util/function/Predicate;I)V

    return-object v0
.end method
