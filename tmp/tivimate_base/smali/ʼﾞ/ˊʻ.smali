.class public abstract Lʼﾞ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Ljava/lang/ThreadLocal;

.field public ʽ:Ljava/util/concurrent/Executor;

.field public final ˆʾ:Ljava/util/LinkedHashMap;

.field public ˈ:Lʼﾞ/ˈʿ;

.field public ˑﹳ:Lʼﾞ/ᴵˊ;

.field public ٴﹶ:Z

.field public final ᵎﹶ:Lˑי/ʽ;

.field public ᵔᵢ:Z

.field public ⁱˊ:Lˈי/ᵔᵢ;

.field public ﹳٴ:Lˊʽ/ˈ;

.field public ﾞᴵ:Lʼﾞ/ٴﹶ;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˑי/ʽ;

    new-instance v1, Lʼﾞ/ᴵᵔ;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-class v4, Lʼﾞ/ˊʻ;

    const-string v5, "onClosed"

    const-string v6, "onClosed()V"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v1 .. v9}, Lʼﾞ/ᴵᵔ;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    iput-object v0, v3, Lʼﾞ/ˊʻ;->ᵎﹶ:Lˑי/ʽ;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, v3, Lʼﾞ/ˊʻ;->ʼˎ:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v3, Lʼﾞ/ˊʻ;->ˆʾ:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput-boolean v0, v3, Lʼﾞ/ˊʻ;->ٴﹶ:Z

    return-void
.end method

.method public static ˉˆ(Lʼﾞ/ˊʻ;Lʼﾞ/ٴʼ;)Landroid/database/Cursor;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ﹳٴ()V

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ٴﹶ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lʼﾞ/ˊʻ;->ʼˎ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ᵎﹶ()Lʼﹶ/ˈ;

    move-result-object p0

    invoke-interface {p0}, Lʼﹶ/ˈ;->ʻᵎ()Lʼﹶ/ﹳٴ;

    move-result-object p0

    invoke-interface {p0, p1}, Lʼﹶ/ﹳٴ;->ʽʽ(Lʼﹶ/ﾞᴵ;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ʼˎ()Ljava/util/LinkedHashMap;
    .locals 2

    .prologue
    sget-object v0, Lﹶˈ/ﹳᐧ;->ʾˋ:Lﹶˈ/ﹳᐧ;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lﹶˈ/ˏי;->ˉـ(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v1
.end method

.method public final ʼᐧ(Lᴵⁱ/ﹳٴ;)Ljava/lang/Object;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ⁱˊ()V

    :try_start_0
    invoke-interface {p1}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ᵔﹳ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ﾞʻ()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ﾞʻ()V

    throw p1

    :cond_0
    new-instance v0, Lʼⁱ/ʽⁱ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lʼⁱ/ʽⁱ;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʼﾞ/ˊʻ;->ᵎﹶ:Lˑי/ʽ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    iget-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᴵᵔ;

    invoke-virtual {v0}, Lʼﾞ/ᴵᵔ;->ʽ()Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ˆʾ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʼﾞ/ˊʻ;->ˑﹳ:Lʼﾞ/ᴵˊ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lʼﾞ/ᴵˊ;->ʽ()Lʼﹶ/ˈ;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ˈ(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 3

    .prologue
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lﹶˈ/ˏי;->ˉـ(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᐧˆ/ⁱˊ;

    check-cast v2, Lˊʼ/ˑﹳ;

    invoke-interface {v2}, Lˊʼ/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    return-object p1
.end method

.method public final ˉʿ(Lﹳᴵ/ﹳٴ;)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʼﾞ/ˊʻ;->ﾞᴵ:Lʼﾞ/ٴﹶ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, v0, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "PRAGMA query_only"

    invoke-interface {p1, v3}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-interface {v3}, Lﹳᴵ/ʽ;->ʼˈ()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v3, v1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v4, :cond_2

    const-string v4, "PRAGMA temp_store = MEMORY"

    invoke-static {p1, v4}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    const-string v4, "PRAGMA recursive_triggers = 1"

    invoke-static {p1, v4}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    const-string v4, "DROP TABLE IF EXISTS room_table_modification_log"

    invoke-static {p1, v4}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    iget-boolean v4, v2, Lʼﾞ/ᐧﾞ;->ˈ:Z

    if-eqz v4, :cond_1

    const-string v4, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-static {p1, v4}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    const-string v5, "TEMP"

    const-string v6, ""

    invoke-static {v4, v5, v6, v3}, Lﹶˑ/ᵔﹳ;->ʿᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :goto_0
    iget-object p1, v2, Lʼﾞ/ᐧﾞ;->ᵔᵢ:Lcom/bumptech/glide/ʼˎ;

    iget-object v2, p1, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iput-boolean v1, p1, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    :goto_1
    iget-object p1, v0, Lʼﾞ/ٴﹶ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v2, v0, Lʼﾞ/ٴﹶ;->ˆʾ:Lʼﾞ/ᵔﹳ;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lʼﾞ/ٴﹶ;->ʼˎ:Landroid/content/Intent;

    if-eqz v0, :cond_5

    iget-object v4, v2, Lʼﾞ/ᵔﹳ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v2, Lʼﾞ/ᵔﹳ;->ʽ:Landroid/content/Context;

    iget-object v5, v2, Lʼﾞ/ᵔﹳ;->ٴﹶ:Lʼٴ/ᵢˏ;

    invoke-virtual {v4, v0, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, v2, Lʼﾞ/ᵔﹳ;->ⁱˊ:Lʼﾞ/ٴﹶ;

    iget-object v2, v2, Lʼﾞ/ᵔﹳ;->ʼˎ:Lʼﾞ/ʼᐧ;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Lʼﾞ/ٴﹶ;->ﹳٴ(Lʼﾞ/ʼˎ;)Z

    goto :goto_3

    :cond_4
    const-string v0, "isRemote was false of observer argument"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1

    throw v0

    :catchall_2
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v3, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract ˑﹳ()Lʼﾞ/ٴﹶ;
.end method

.method public final ٴﹶ()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ᵔʾ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ᵎﹶ()Lʼﹶ/ˈ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ˈ;->ʻᵎ()Lʼﹶ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->ٴʼ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵎﹶ()Lʼﹶ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼﾞ/ˊʻ;->ˑﹳ:Lʼﾞ/ᴵˊ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lʼﾞ/ᴵˊ;->ʽ()Lʼﹶ/ˈ;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔʾ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʼﾞ/ˊʻ;->ˑﹳ:Lʼﾞ/ᴵˊ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lʼﾞ/ᴵˊ;->ᵔᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹶ/ﹳٴ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->isOpen()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ᵔᵢ()Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    sget-object v2, Lﹶˈ/ﹳᐧ;->ʾˋ:Lﹶˈ/ﹳᐧ;

    invoke-static {v2, v1}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔﹳ()V
    .locals 1

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ᵎﹶ()Lʼﹶ/ˈ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ˈ;->ʻᵎ()Lʼﹶ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->ˈⁱ()V

    return-void
.end method

.method public final ⁱˊ()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ﹳٴ()V

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ﹳٴ()V

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ᵎﹶ()Lʼﹶ/ˈ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ˈ;->ʻᵎ()Lʼﹶ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->ٴʼ()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lʼﾞ/ˊʻ;->ﾞᴵ:Lʼﾞ/ٴﹶ;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lʼﾞ/ˆʾ;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lʼﾞ/ˆʾ;-><init>(Lʼﾞ/ٴﹶ;Lˈי/ˈ;I)V

    invoke-static {v3}, Lˉᵎ/ⁱˊ;->ᵎˊ(Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->ˋᵔ()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->ˉـ()V

    return-void

    :cond_2
    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->ˆʾ()V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lʼﾞ/ˊʻ;->ᵔᵢ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳᐧ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lʼﾞ/ˊʻ;->ˑﹳ:Lʼﾞ/ᴵˊ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lʼﾞ/ᴵˊ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Lʼˋ/ⁱˊ;

    invoke-interface {v0, p1, p2, p3}, Lʼˋ/ⁱˊ;->ʼʼ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ﾞʻ()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ᵎﹶ()Lʼﹶ/ˈ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ˈ;->ʻᵎ()Lʼﹶ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0}, Lʼﹶ/ﹳٴ;->ʼˎ()V

    invoke-virtual {p0}, Lʼﾞ/ˊʻ;->ٴﹶ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lʼﾞ/ˊʻ;->ﾞᴵ:Lʼﾞ/ٴﹶ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, v0, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    iget-object v2, v0, Lʼﾞ/ٴﹶ;->ﾞᴵ:Lʼⁱ/ᵔʾ;

    iget-object v0, v0, Lʼﾞ/ٴﹶ;->ᵎﹶ:Lʼﾞ/ᵔᵢ;

    invoke-virtual {v1, v2, v0}, Lʼﾞ/ᐧﾞ;->ˑﹳ(Lᴵⁱ/ﹳٴ;Lᴵⁱ/ﹳٴ;)V

    :cond_1
    return-void
.end method

.method public ﾞᴵ()Lʼﾞ/ᵎⁱ;
    .locals 1

    new-instance v0, Lʻᵢ/ˈ;

    invoke-direct {v0}, Lʻᵢ/ˈ;-><init>()V

    throw v0
.end method
