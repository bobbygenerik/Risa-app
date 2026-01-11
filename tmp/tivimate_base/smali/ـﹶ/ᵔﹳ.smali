.class public final Lـﹶ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـﹶ/ʼˎ;


# instance fields
.field public final ʽʽ:Lﹳˋ/ʼˎ;

.field public final ʾˋ:Landroid/content/Context;

.field public final ˈٴ:Ljava/lang/Object;

.field public ˉٴ:Lˉᵎ/ⁱˊ;

.field public ˊʻ:Ljava/util/concurrent/ThreadPoolExecutor;

.field public ٴᵢ:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final ᴵˊ:Lᵔٴ/ˈ;

.field public ᴵᵔ:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᵔٴ/ˈ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lˈˊ/ˉˆ;->ﾞᴵ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lـﹶ/ᵔﹳ;->ʾˋ:Landroid/content/Context;

    iput-object p2, p0, Lـﹶ/ᵔﹳ;->ᴵˊ:Lᵔٴ/ˈ;

    sget-object p1, Lـﹶ/ﹳᐧ;->ˈ:Lﹳˋ/ʼˎ;

    iput-object p1, p0, Lـﹶ/ᵔﹳ;->ʽʽ:Lﹳˋ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 10

    .prologue
    iget-object v1, p0, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lـﹶ/ᵔﹳ;->ˉٴ:Lˉᵎ/ⁱˊ;

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lـﹶ/ᵔﹳ;->ˊʻ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    const-string v0, "emojiCompat"

    new-instance v9, Lـﹶ/ﹳٴ;

    const/4 v2, 0x0

    invoke-direct {v9, v2, v0}, Lـﹶ/ﹳٴ;-><init>(ILjava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0xf

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    iput-object v2, p0, Lـﹶ/ᵔﹳ;->ٴᵢ:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v2, p0, Lـﹶ/ᵔﹳ;->ˊʻ:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    iget-object v0, p0, Lـﹶ/ᵔﹳ;->ˊʻ:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Landroidx/lifecycle/ᵎⁱ;

    const/16 v3, 0x1d

    invoke-direct {v2, v3, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ˈ()Lᵔٴ/ᵔᵢ;
    .locals 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lـﹶ/ᵔﹳ;->ʽʽ:Lﹳˋ/ʼˎ;

    iget-object v1, p0, Lـﹶ/ᵔﹳ;->ʾˋ:Landroid/content/Context;

    iget-object v2, p0, Lـﹶ/ᵔﹳ;->ᴵˊ:Lᵔٴ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v3, v4

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lᵔٴ/ʽ;->ﹳٴ(Landroid/content/Context;Ljava/util/List;)Lיי/ﾞᴵ;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v0, Lיי/ﾞᴵ;->ﹳٴ:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lיי/ﾞᴵ;->ⁱˊ:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᵔٴ/ᵔᵢ;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v0, v0, v4

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fetchFonts failed (empty result)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "fetchFonts failed ("

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "provider not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final ⁱˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lـﹶ/ᵔﹳ;->ˉٴ:Lˉᵎ/ⁱˊ;

    iget-object v2, p0, Lـﹶ/ᵔﹳ;->ᴵᵔ:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lـﹶ/ᵔﹳ;->ᴵᵔ:Landroid/os/Handler;

    iget-object v2, p0, Lـﹶ/ᵔﹳ;->ٴᵢ:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_1
    iput-object v1, p0, Lـﹶ/ᵔﹳ;->ˊʻ:Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v1, p0, Lـﹶ/ᵔﹳ;->ٴᵢ:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ﹳٴ(Lˉᵎ/ⁱˊ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lـﹶ/ᵔﹳ;->ˉٴ:Lˉᵎ/ⁱˊ;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lـﹶ/ᵔﹳ;->ʽ()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
