.class public final Lᐧˎ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ﾞᴵ:Lᐧˎ/ᵔﹳ;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public ˈ:I

.field public ˑﹳ:Z

.field public final ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ﹳٴ:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lᐧˎ/ﹳٴ;->ﹳᐧ()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lᐧˎ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/Executor;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lᐧˎ/ᵔﹳ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lᐧˎ/ᵔﹳ;->ʽ:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lᐧˎ/ᵔﹳ;->ˈ:I

    new-instance v1, Lʻʿ/ᵔʾ;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, v2, p1}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized ﹳٴ(Landroid/content/Context;)Lᐧˎ/ᵔﹳ;
    .locals 2

    .prologue
    const-class v0, Lᐧˎ/ᵔﹳ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lᐧˎ/ᵔﹳ;->ﾞᴵ:Lᐧˎ/ᵔﹳ;

    if-nez v1, :cond_0

    new-instance v1, Lᐧˎ/ᵔﹳ;

    invoke-direct {v1, p0}, Lᐧˎ/ᵔﹳ;-><init>(Landroid/content/Context;)V

    sput-object v1, Lᐧˎ/ᵔﹳ;->ﾞᴵ:Lᐧˎ/ᵔﹳ;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lᐧˎ/ᵔﹳ;->ﾞᴵ:Lᐧˎ/ᵔﹳ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ʽ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lᐧˎ/ᵔﹳ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᐧˎ/ʼᐧ;

    iget-object v3, v2, Lᐧˎ/ʼᐧ;->ﹳٴ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lᐧˎ/ᵔﹳ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lᐧˎ/ᵔﹳ;->ˑﹳ:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lᐧˎ/ᵔﹳ;->ˈ:I

    if-ne v1, p1, :cond_2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lᐧˎ/ᵔﹳ;->ˑﹳ:Z

    iput p1, p0, Lᐧˎ/ᵔﹳ;->ˈ:I

    iget-object p1, p0, Lᐧˎ/ᵔﹳ;->ⁱˊ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᐧˎ/ʼᐧ;

    iget-object v1, v0, Lᐧˎ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    new-instance v2, Lٴˉ/ⁱˊ;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧˎ/ᵔﹳ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lᐧˎ/ᵔﹳ;->ˈ:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
