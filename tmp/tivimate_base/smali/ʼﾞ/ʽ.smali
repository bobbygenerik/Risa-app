.class public abstract Lʼﾞ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ˈ(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lʼﾞ/ʽʽ;
    .locals 1

    .prologue
    invoke-static {p2}, Lﹶˑ/ˆʾ;->ـᵎ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ":memory:"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lʼﾞ/ʽʽ;

    invoke-direct {v0, p0, p1, p2}, Lʼﾞ/ʽʽ;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot build a database with the special name \':memory:\'. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ˑﹳ(Lʼﾞ/ʾᵎ;Ljava/lang/String;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 2

    .prologue
    new-instance v0, Lar/tvplayer/core/domain/ـˆ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    invoke-interface {p0, p1, v0, p2}, Lʼﾞ/ʾᵎ;->ﹳٴ(Ljava/lang/String;Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method

.method public static ﹳٴ(Ljava/lang/String;)Lʼﾞ/ٴʼ;
    .locals 4

    .prologue
    sget-object v0, Lʼﾞ/ٴʼ;->ˉٴ:Ljava/util/TreeMap;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʼﾞ/ٴʼ;

    iput-object p0, v2, Lʼﾞ/ٴʼ;->ʾˋ:Ljava/lang/String;

    iput v1, v2, Lʼﾞ/ٴʼ;->ٴᵢ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    new-instance v0, Lʼﾞ/ٴʼ;

    invoke-direct {v0}, Lʼﾞ/ٴʼ;-><init>()V

    iput-object p0, v0, Lʼﾞ/ٴʼ;->ʾˋ:Ljava/lang/String;

    iput v1, v0, Lʼﾞ/ٴʼ;->ٴᵢ:I

    return-object v0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public ʼˎ(Lﹳᴵ/ﹳٴ;Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʼﾞ/ʽ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lʼﾞ/ʽ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/Object;)V

    invoke-interface {p1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract ʽ()Ljava/lang/String;
.end method

.method public ˆʾ(Lﹳᴵ/ﹳٴ;Ljava/lang/Object;)J
    .locals 1

    .prologue
    if-nez p2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lʼﾞ/ʽ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lʼﾞ/ʽ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/Object;)V

    invoke-interface {v0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {v0, p2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lٴˑ/ﾞᴵ;->ᵔᵢ(Lﹳᴵ/ﹳٴ;)J

    move-result-wide p1

    return-wide p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ٴﹶ(Lﹳᴵ/ﹳٴ;Ljava/util/Collection;)Ljava/util/List;
    .locals 4

    .prologue
    if-nez p2, :cond_0

    sget-object p1, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object p1

    :cond_0
    invoke-static {}, Lˈˊ/ᵔʾ;->ᵎﹶ()Lⁱˏ/ʽ;

    move-result-object v0

    invoke-virtual {p0}, Lʼﾞ/ʽ;->ʽ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, v2}, Lʼﾞ/ʽ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/Object;)V

    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-interface {v1}, Lﹳᴵ/ʽ;->reset()V

    invoke-static {p1}, Lٴˑ/ﾞᴵ;->ᵔᵢ(Lﹳᴵ/ﹳٴ;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lˈˊ/ᵔʾ;->ﹳٴ(Lⁱˏ/ʽ;)Lⁱˏ/ʽ;

    move-result-object p1

    return-object p1

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ᵎﹶ(Lﹳᴵ/ﹳٴ;Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʼﾞ/ʽ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Lʼﾞ/ʽ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/Object;)V

    invoke-interface {v0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-interface {v0}, Lﹳᴵ/ʽ;->reset()V

    invoke-static {p1}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ᵔᵢ(Lﹳᴵ/ﹳٴ;Ljava/lang/Iterable;)V
    .locals 1

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʼﾞ/ʽ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lʼﾞ/ʽ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/Object;)V

    invoke-interface {p1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-interface {p1}, Lﹳᴵ/ʽ;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/Object;)V
.end method

.method public ﾞᴵ(Lﹳᴵ/ﹳٴ;Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʼﾞ/ʽ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lʼﾞ/ʽ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/Object;)V

    invoke-interface {v0}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {v0, p2}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method
