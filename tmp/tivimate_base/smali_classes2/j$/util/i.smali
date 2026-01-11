.class public final Lj$/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# static fields
.field private static final serialVersionUID:J = 0x1b73f9094b4b397bL


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lj$/util/i;

.field public transient c:Lj$/util/k;

.field public transient d:Lj$/util/k;

.field public transient e:Lj$/util/g;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lj$/util/i;->a:Ljava/util/Map;

    iput-object p0, p0, Lj$/util/i;->b:Lj$/util/i;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    invoke-interface {v1, p1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    invoke-interface {v1, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    move-object p1, v3

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, v2

    goto :goto_0

    :cond_2
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2, p1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move-object p1, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->d:Lj$/util/k;

    if-nez v1, :cond_0

    new-instance v1, Lj$/util/k;

    iget-object v2, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lj$/util/i;->b:Lj$/util/i;

    invoke-direct {v1, v2, v3}, Lj$/util/g;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Lj$/util/i;->d:Lj$/util/k;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/i;->d:Lj$/util/k;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-static {v1, p1}, Lj$/com/android/tools/r8/a;->K(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/com/android/tools/r8/a;->N(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->c:Lj$/util/k;

    if-nez v1, :cond_0

    new-instance v1, Lj$/util/k;

    iget-object v2, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lj$/util/i;->b:Lj$/util/i;

    invoke-direct {v1, v2, v3}, Lj$/util/g;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Lj$/util/i;->c:Lj$/util/k;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/i;->c:Lj$/util/k;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2, p3}, Lj$/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_4

    invoke-interface {p3, v2, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1, p1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, v3

    goto :goto_0

    :cond_3
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_5
    invoke-static {v1, p1, p2, p3}, Lj$/util/Map$-CC;->$default$merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/com/android/tools/r8/a;->a0(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2}, Lj$/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p2}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1, p2, p3}, Lj$/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1, p2, p3}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    instance-of v2, v1, Lj$/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Lj$/util/Map;

    invoke-interface {v1, p1}, Lj$/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lj$/util/concurrent/s;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, p1}, Lj$/util/concurrent/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    instance-of p1, v1, Lj$/util/concurrent/t;

    if-eqz p1, :cond_1

    check-cast v1, Lj$/util/concurrent/t;

    invoke-interface {v1, v2}, Lj$/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lj$/com/android/tools/r8/a;->f(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_2
    invoke-static {v1, p1}, Lj$/util/Map$-CC;->$default$replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final size()I
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final values()Ljava/util/Collection;
    .locals 4

    .prologue
    iget-object v0, p0, Lj$/util/i;->b:Lj$/util/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/i;->e:Lj$/util/g;

    if-nez v1, :cond_0

    new-instance v1, Lj$/util/g;

    iget-object v2, p0, Lj$/util/i;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lj$/util/i;->b:Lj$/util/i;

    invoke-direct {v1, v2, v3}, Lj$/util/g;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Lj$/util/i;->e:Lj$/util/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lj$/util/i;->e:Lj$/util/g;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
