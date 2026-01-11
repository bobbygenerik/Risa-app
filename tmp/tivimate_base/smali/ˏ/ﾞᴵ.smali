.class public final Lˏ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏ/ʽ;


# static fields
.field public static final ˉٴ:Lˏ/ˑﹳ;


# instance fields
.field public final ʽʽ:Ljava/util/HashMap;

.field public final ʾˋ:Ljava/util/HashMap;

.field public final ˈٴ:Ljava/util/HashSet;

.field public final ˊʻ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final ٴᵢ:Lﹳˋ/ʼˎ;

.field public final ᴵˊ:Ljava/util/HashMap;

.field public final ᴵᵔ:Lˏ/ˆʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˏ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˏ/ˑﹳ;-><init>(I)V

    sput-object v0, Lˏ/ﾞᴵ;->ˉٴ:Lˏ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lﹳˋ/ʼˎ;)V
    .locals 8

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lˏ/ﾞᴵ;->ᴵˊ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lˏ/ﾞᴵ;->ʽʽ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lˏ/ﾞᴵ;->ˈٴ:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lˏ/ﾞᴵ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lˏ/ˆʾ;

    invoke-direct {v0}, Lˏ/ˆʾ;-><init>()V

    iput-object v0, p0, Lˏ/ﾞᴵ;->ᴵᵔ:Lˏ/ˆʾ;

    iput-object p3, p0, Lˏ/ﾞᴵ;->ٴᵢ:Lﹳˋ/ʼˎ;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Lˏ/ˆʾ;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lˋˑ/ⁱˊ;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lˋˑ/ﹳٴ;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lˏ/ⁱˊ;->ʽ(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lˏ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lˏ/ﾞᴵ;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lˏ/ⁱˊ;->ʽ(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lˏ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v4

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lˏ/ⁱˊ;

    if-eqz v2, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾﹳ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/ComponentRegistrar;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lˏ/ﾞᴵ;->ٴᵢ:Lﹳˋ/ʼˎ;

    invoke-virtual {v1, v0}, Lﹳˋ/ʼˎ;->ˊˋ(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Lcom/google/firebase/components/InvalidRegistrarException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_2
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    const-string v1, "ComponentDiscovery"

    const-string v2, "Invalid component registrar."

    nop

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˏ/ⁱˊ;

    iget-object v0, v0, Lˏ/ⁱˊ;->ⁱˊ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "kotlinx.coroutines.CoroutineDispatcher"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lˏ/ﾞᴵ;->ˈٴ:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lˏ/ﾞᴵ;->ˈٴ:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p3}, Lᴵˋ/ˊʻ;->ˉʿ(Ljava/util/ArrayList;)V

    goto :goto_5

    :cond_9
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p2}, Lᴵˋ/ˊʻ;->ˉʿ(Ljava/util/ArrayList;)V

    :goto_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v0, v4

    :goto_6
    if-ge v0, p2, :cond_a

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lˏ/ⁱˊ;

    new-instance v2, Lˏ/ٴﹶ;

    new-instance v3, Lˉᵎ/ʽ;

    invoke-direct {v3, p0, v5, v1}, Lˉᵎ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Lˏ/ٴﹶ;-><init>(Lʾﹳ/ⁱˊ;)V

    iget-object v3, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-virtual {p0, p3}, Lˏ/ﾞᴵ;->ʼˎ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lˏ/ﾞᴵ;->ˆʾ()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lˏ/ﾞᴵ;->ﾞᴵ()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_7
    if-ge v4, p2, :cond_b

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v4, v4, 0x1

    check-cast p3, Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lˏ/ﾞᴵ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_c

    iget-object p2, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lˏ/ﾞᴵ;->ﹳٴ(Ljava/util/HashMap;Z)V

    :cond_c
    return-void

    :goto_8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public final ʼˎ(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lˏ/ⁱˊ;

    iget v4, v3, Lˏ/ⁱˊ;->ˑﹳ:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾﹳ/ⁱˊ;

    iget-object v3, v3, Lˏ/ⁱˊ;->ⁱˊ:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˏ/ˉˆ;

    iget-object v6, p0, Lˏ/ﾞᴵ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʾﹳ/ⁱˊ;

    check-cast v5, Lˏ/ˉʿ;

    new-instance v6, Lʻʿ/ᵔʾ;

    const/16 v7, 0x10

    invoke-direct {v6, v5, v7, v4}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;
    .locals 0

    .prologue
    invoke-virtual {p0, p1}, Lˏ/ﾞᴵ;->ᵔᵢ(Lˏ/ˉˆ;)Lʾﹳ/ⁱˊ;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˆʾ()Ljava/util/ArrayList;
    .locals 8

    .prologue
    iget-object v0, p0, Lˏ/ﾞᴵ;->ʽʽ:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˏ/ⁱˊ;

    iget v6, v5, Lˏ/ⁱˊ;->ˑﹳ:I

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾﹳ/ⁱˊ;

    iget-object v5, v5, Lˏ/ⁱˊ;->ⁱˊ:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˏ/ˉˆ;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˏ/ˉˆ;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    check-cast v3, Ljava/util/Set;

    new-instance v5, Lˏ/ﾞʻ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-object v6, v5, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    new-instance v6, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, v5, Lˏ/ﾞʻ;->ﹳٴ:Ljava/util/Set;

    iget-object v6, v5, Lˏ/ﾞʻ;->ﹳٴ:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˏ/ﾞʻ;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʾﹳ/ⁱˊ;

    new-instance v6, Lʻʿ/ᵔʾ;

    const/16 v7, 0x11

    invoke-direct {v6, v4, v7, v5}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object v1
.end method

.method public final ˈ(Lˏ/ˉˆ;)Ljava/util/Set;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lˏ/ﾞᴵ;->ʽʽ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˏ/ﾞʻ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object p1, Lˏ/ﾞᴵ;->ˉٴ:Lˏ/ˑﹳ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    invoke-interface {p1}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ˑﹳ(Lˏ/ˉˆ;)Lˏ/ˉʿ;
    .locals 2

    .prologue
    invoke-virtual {p0, p1}, Lˏ/ﾞᴵ;->ᵔᵢ(Lˏ/ˉˆ;)Lʾﹳ/ⁱˊ;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lˏ/ˉʿ;

    sget-object v0, Lˏ/ˉʿ;->ʽ:Lˊˋ/ⁱˊ;

    sget-object v1, Lˏ/ˉʿ;->ˈ:Lˏ/ˑﹳ;

    invoke-direct {p1, v0, v1}, Lˏ/ˉʿ;-><init>(Lˊˋ/ⁱˊ;Lʾﹳ/ⁱˊ;)V

    return-object p1

    :cond_0
    instance-of v0, p1, Lˏ/ˉʿ;

    if-eqz v0, :cond_1

    check-cast p1, Lˏ/ˉʿ;

    return-object p1

    :cond_1
    new-instance v0, Lˏ/ˉʿ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lˏ/ˉʿ;-><init>(Lˊˋ/ⁱˊ;Lʾﹳ/ⁱˊ;)V

    return-object v0
.end method

.method public final ᵎﹶ(Ljava/lang/Class;)Lʾﹳ/ⁱˊ;
    .locals 0

    invoke-static {p1}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˏ/ﾞᴵ;->ᵔᵢ(Lˏ/ˉˆ;)Lʾﹳ/ⁱˊ;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized ᵔᵢ(Lˏ/ˉˆ;)Lʾﹳ/ⁱˊ;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "Null interface requested."

    invoke-static {p1, v0}, Lﹳˋ/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lˏ/ﾞᴵ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʾﹳ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lˏ/ˉˆ;->ﹳٴ(Ljava/lang/Class;)Lˏ/ˉˆ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lˏ/ﾞᴵ;->ʽ(Lˏ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Ljava/util/HashMap;Z)V
    .locals 3

    .prologue
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˏ/ⁱˊ;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʾﹳ/ⁱˊ;

    iget v1, v1, Lˏ/ⁱˊ;->ˈ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_0

    :goto_1
    invoke-interface {v0}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lˏ/ﾞᴵ;->ᴵᵔ:Lˏ/ˆʾ;

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lˏ/ˆʾ;->ⁱˊ:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iput-object v0, p1, Lˏ/ˆʾ;->ⁱˊ:Ljava/util/ArrayDeque;

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_3
    move-object p2, v0

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_3
    return-void

    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final ﾞᴵ()V
    .locals 10

    .prologue
    iget-object v0, p0, Lˏ/ﾞᴵ;->ᴵˊ:Ljava/util/HashMap;

    iget-object v1, p0, Lˏ/ﾞᴵ;->ʽʽ:Ljava/util/HashMap;

    iget-object v2, p0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˏ/ⁱˊ;

    iget-object v4, v3, Lˏ/ⁱˊ;->ʽ:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˏ/ʼˎ;

    iget v6, v5, Lˏ/ʼˎ;->ⁱˊ:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iget-object v9, v5, Lˏ/ʼˎ;->ﹳٴ:Lˏ/ˉˆ;

    if-eqz v6, :cond_3

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    new-instance v6, Lˏ/ﾞʻ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput-object v7, v6, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v7}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, v6, Lˏ/ﾞʻ;->ﹳٴ:Ljava/util/Set;

    iget-object v7, v6, Lˏ/ﾞʻ;->ﹳٴ:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v5, v5, Lˏ/ʼˎ;->ⁱˊ:I

    if-eq v5, v7, :cond_5

    if-ne v5, v8, :cond_4

    goto :goto_0

    :cond_4
    new-instance v5, Lˏ/ˉʿ;

    sget-object v6, Lˏ/ˉʿ;->ʽ:Lˊˋ/ⁱˊ;

    sget-object v7, Lˏ/ˉʿ;->ˈ:Lˏ/ˑﹳ;

    invoke-direct {v5, v6, v7}, Lˏ/ˉʿ;-><init>(Lˊˋ/ⁱˊ;Lʾﹳ/ⁱˊ;)V

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/firebase/components/MissingDependencyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsatisfied dependency for component "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method
