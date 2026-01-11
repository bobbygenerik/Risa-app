.class public final Lˏ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﹳ/ⁱˊ;


# instance fields
.field public volatile ⁱˊ:Ljava/util/Set;

.field public volatile ﹳٴ:Ljava/util/Set;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    invoke-virtual {p0}, Lˏ/ﾞʻ;->ﹳٴ()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized ﹳٴ()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˏ/ﾞʻ;->ﹳٴ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʾﹳ/ⁱˊ;

    iget-object v2, p0, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    invoke-interface {v1}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lˏ/ﾞʻ;->ﹳٴ:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
