.class public final Lˉᵔ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# static fields
.field public static final ˊʻ:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final ʽʽ:Ljava/util/AbstractMap;

.field public final ʾˋ:J

.field public ˈٴ:Lˉᵔ/ⁱˊ;

.field public final ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final synthetic ᴵᵔ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lˉᵔ/ʽ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lˉᵔ/ʽ;->ᴵᵔ:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lˉᵔ/ʽ;-><init>(Ljava/util/AbstractMap;B)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/AbstractMap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˉᵔ/ʽ;->ᴵᵔ:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lˉᵔ/ʽ;-><init>(Ljava/util/AbstractMap;B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/AbstractMap;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lˉᵔ/ʽ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lˉᵔ/ʽ;->ʾˋ:J

    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p2, p0, Lˉᵔ/ʽ;->ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iput-object p1, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lˉᵔ/ʽ;->ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v2, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    invoke-virtual {p0, p1, v0}, Lˉᵔ/ʽ;->ﹳٴ(Ljava/lang/Object;Lˉᵔ/ⁱˊ;)Lˉᵔ/ⁱˊ;

    move-result-object v0

    iput-object v0, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lˉᵔ/ʽ;->ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    invoke-virtual {p0, v3, v5}, Lˉᵔ/ʽ;->ﹳٴ(Ljava/lang/Object;Lˉᵔ/ⁱˊ;)Lˉᵔ/ⁱˊ;

    move-result-object v5

    iput-object v5, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    or-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :goto_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final clear()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˉᵔ/ʽ;->ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    iput-object v1, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    iget-object v1, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˉᵔ/ʽ;->ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v1, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˉᵔ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lˉᵔ/ⁱˊ;->ﹳٴ()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lˉᵔ/ʽ;

    iget-wide v2, p0, Lˉᵔ/ʽ;->ʾˋ:J

    iget-wide v4, p1, Lˉᵔ/ʽ;->ʾˋ:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/16 v0, 0x20

    iget-wide v1, p0, Lˉᵔ/ʽ;->ʾˋ:J

    ushr-long v3, v1, v0

    xor-long/2addr v1, v3

    long-to-int v0, v1

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    iget v0, p0, Lˉᵔ/ʽ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lˉᵔ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lˉᵔ/ﹳٴ;-><init>(Lˉᵔ/ʽ;B)V

    return-object v0

    :pswitch_0
    new-instance v0, Lˉᵔ/ﹳٴ;

    invoke-direct {v0, p0}, Lˉᵔ/ﹳٴ;-><init>(Lˉᵔ/ʽ;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-virtual {p0, p1}, Lˉᵔ/ʽ;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lˉᵔ/ʽ;->ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˉᵔ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    if-eq v3, v2, :cond_3

    iget-object v2, v3, Lˉᵔ/ⁱˊ;->ⁱˊ:Lˉᵔ/ⁱˊ;

    if-eqz v2, :cond_2

    iget-object v4, v3, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iput-object v4, v2, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iget-object v3, v3, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    if-eqz v3, :cond_4

    iput-object v2, v3, Lˉᵔ/ⁱˊ;->ⁱˊ:Lˉᵔ/ⁱˊ;

    goto :goto_0

    :cond_2
    iget-object v2, v3, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    iput-object v3, v2, Lˉᵔ/ⁱˊ;->ⁱˊ:Lˉᵔ/ⁱˊ;

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iput-object v2, p0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    :cond_4
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˉᵔ/ʽ;->ʽʽ:Ljava/util/AbstractMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lˉᵔ/ⁱˊ;)Lˉᵔ/ⁱˊ;
    .locals 2

    .prologue
    iget v0, p0, Lˉᵔ/ʽ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lˉᵔ/ⁱˊ;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lˉᵔ/ⁱˊ;-><init>(Lˉᵔ/ⁱˊ;I)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, v0, Lˉᵔ/ⁱˊ;->ˈ:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-direct {v0, p2}, Lˉᵔ/ⁱˊ;-><init>(I)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, v0, Lˉᵔ/ⁱˊ;->ˈ:Ljava/lang/Object;

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lˉᵔ/ⁱˊ;

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lˉᵔ/ⁱˊ;-><init>(Lˉᵔ/ⁱˊ;I)V

    iput-object p1, v0, Lˉᵔ/ⁱˊ;->ˈ:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-direct {v0, p2}, Lˉᵔ/ⁱˊ;-><init>(I)V

    iput-object p1, v0, Lˉᵔ/ⁱˊ;->ˈ:Ljava/lang/Object;

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
