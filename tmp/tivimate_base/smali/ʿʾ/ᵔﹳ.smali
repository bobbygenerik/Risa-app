.class public final Lʿʾ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈﹳ/ⁱˊ;


# static fields
.field public static final ᴵˑ:Lˋⁱ/ﾞᴵ;


# instance fields
.field public ʼˈ:Lʿʾ/ʽﹳ;

.field public final ʽʽ:Lʿʾ/ˏי;

.field public final ʾˋ:Lʿʾ/ʼᐧ;

.field public ˆﾞ:Z

.field public ˈʿ:I

.field public final ˈٴ:Lˑٴ/ʽ;

.field public ˈⁱ:Z

.field public final ˉٴ:Lˉˏ/ˑﹳ;

.field public final ˊʻ:Lʿʾ/ﹳᐧ;

.field public ˊˋ:Z

.field public ˋᵔ:Lcom/bumptech/glide/load/engine/GlideException;

.field public ˑٴ:Z

.field public ـˏ:Lʿʾ/ˆʾ;

.field public final ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ٴᵢ:Lˉˏ/ˑﹳ;

.field public final ᴵˊ:Lˈﹳ/ˑﹳ;

.field public final ᴵᵔ:Lˋⁱ/ﾞᴵ;

.field public ᵎˊ:Lʿʾ/יـ;

.field public final ᵎⁱ:Lˉˏ/ˑﹳ;

.field public ᵔי:Z

.field public ᵔٴ:Lʿʾ/ᵢˏ;

.field public volatile ﹳـ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʿʾ/ᵔﹳ;->ᴵˑ:Lˋⁱ/ﾞᴵ;

    return-void
.end method

.method public constructor <init>(Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lˉˏ/ˑﹳ;Lʿʾ/ˉʿ;Lʿʾ/ˉʿ;Lᵢ/ﹳٴ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lʿʾ/ʼᐧ;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p3, v0}, Lʿʾ/ʼᐧ;-><init>(Ljava/util/ArrayList;)V

    iput-object p3, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    new-instance p3, Lˈﹳ/ˑﹳ;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lʿʾ/ᵔﹳ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lʿʾ/ᵔﹳ;->ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lʿʾ/ᵔﹳ;->ٴᵢ:Lˉˏ/ˑﹳ;

    iput-object p2, p0, Lʿʾ/ᵔﹳ;->ˉٴ:Lˉˏ/ˑﹳ;

    iput-object p4, p0, Lʿʾ/ᵔﹳ;->ᵎⁱ:Lˉˏ/ˑﹳ;

    iput-object p5, p0, Lʿʾ/ᵔﹳ;->ˊʻ:Lʿʾ/ﹳᐧ;

    iput-object p6, p0, Lʿʾ/ᵔﹳ;->ʽʽ:Lʿʾ/ˏי;

    iput-object p7, p0, Lʿʾ/ᵔﹳ;->ˈٴ:Lˑٴ/ʽ;

    sget-object p1, Lʿʾ/ᵔﹳ;->ᴵˑ:Lˋⁱ/ﾞᴵ;

    iput-object p1, p0, Lʿʾ/ᵔﹳ;->ᴵᵔ:Lˋⁱ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ʼˎ()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᵎˊ:Lʿʾ/יـ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object v0, v0, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʿʾ/ᵔﹳ;->ᵎˊ:Lʿʾ/יـ;

    iput-object v0, p0, Lʿʾ/ᵔﹳ;->ʼˈ:Lʿʾ/ʽﹳ;

    iput-object v0, p0, Lʿʾ/ᵔﹳ;->ᵔٴ:Lʿʾ/ᵢˏ;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lʿʾ/ᵔﹳ;->ˊˋ:Z

    iput-boolean v1, p0, Lʿʾ/ᵔﹳ;->ﹳـ:Z

    iput-boolean v1, p0, Lʿʾ/ᵔﹳ;->ˑٴ:Z

    iput-boolean v1, p0, Lʿʾ/ᵔﹳ;->ˈⁱ:Z

    iget-object v2, p0, Lʿʾ/ᵔﹳ;->ـˏ:Lʿʾ/ˆʾ;

    invoke-virtual {v2}, Lʿʾ/ˆʾ;->ˉʿ()V

    iput-object v0, p0, Lʿʾ/ᵔﹳ;->ـˏ:Lʿʾ/ˆʾ;

    iput-object v0, p0, Lʿʾ/ᵔﹳ;->ˋᵔ:Lcom/bumptech/glide/load/engine/GlideException;

    iput v1, p0, Lʿʾ/ᵔﹳ;->ˈʿ:I

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ˈٴ:Lˑٴ/ʽ;

    invoke-interface {v0, p0}, Lˑٴ/ʽ;->ˑﹳ(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ʽ()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʾ/ᵔﹳ;->ﹳـ:Z

    iget-object v1, p0, Lʿʾ/ᵔﹳ;->ـˏ:Lʿʾ/ˆʾ;

    iput-boolean v0, v1, Lʿʾ/ˆʾ;->ᵎᵔ:Z

    iget-object v0, v1, Lʿʾ/ˆʾ;->ʿ:Lʿʾ/ᵔᵢ;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lʿʾ/ᵔᵢ;->cancel()V

    :cond_1
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ˊʻ:Lʿʾ/ﹳᐧ;

    iget-object v1, p0, Lʿʾ/ᵔﹳ;->ᵎˊ:Lʿʾ/יـ;

    check-cast v0, Lʿʾ/ˉʿ;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lʿʾ/ˉʿ;->ﹳٴ:Lcom/bumptech/glide/ﾞᴵ;

    iget-object v2, v2, Lcom/bumptech/glide/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized ˆʾ(Lⁱⁱ/ᵎﹶ;)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object v0, v0, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    new-instance v1, Lʿʾ/ˉˆ;

    sget-object v2, Lʿٴ/ﾞᴵ;->ⁱˊ:Lʿʿ/ﹳٴ;

    invoke-direct {v1, p1, v2}, Lʿʾ/ˉˆ;-><init>(Lⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object p1, p1, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ʽ()V

    iget-boolean p1, p0, Lʿʾ/ᵔﹳ;->ˑٴ:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lʿʾ/ᵔﹳ;->ˊˋ:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lʿʾ/ᵔﹳ;->ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ʼˎ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˈ()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ﾞᴵ()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Lʿٴ/ﾞᴵ;->ﹳٴ(Ljava/lang/String;Z)V

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    invoke-static {v2, v1}, Lʿٴ/ﾞᴵ;->ﹳٴ(Ljava/lang/String;Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ʼˈ:Lʿʾ/ʽﹳ;

    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ʼˎ()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lʿʾ/ʽﹳ;->ˑﹳ()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ˑﹳ(I)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ﾞᴵ()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v1, v0}, Lʿٴ/ﾞᴵ;->ﹳٴ(Ljava/lang/String;Z)V

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ٴʼ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lʿʾ/ᵔﹳ;->ʼˈ:Lʿʾ/ʽﹳ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʿʾ/ʽﹳ;->ﹳٴ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ٴﹶ(Lʿʾ/ˆʾ;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lʿʾ/ᵔﹳ;->ـˏ:Lʿʾ/ˆʾ;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lʿʾ/ˆʾ;->ᵔᵢ(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˆﾞ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᵎⁱ:Lˉˏ/ˑﹳ;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ˉٴ:Lˉˏ/ˑﹳ;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ٴᵢ:Lˉˏ/ˑﹳ;

    :goto_1
    invoke-virtual {v0, p1}, Lˉˏ/ˑﹳ;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ᵎﹶ()V
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ﹳـ:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ʼˎ()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object v0, v0, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˊˋ:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˊˋ:Z

    iget-object v1, p0, Lʿʾ/ᵔﹳ;->ᵎˊ:Lʿʾ/יـ;

    iget-object v2, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lʿʾ/ᵔﹳ;->ˑﹳ(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ˊʻ:Lʿʾ/ﹳᐧ;

    const/4 v2, 0x0

    check-cast v0, Lʿʾ/ˉʿ;

    invoke-virtual {v0, p0, v1, v2}, Lʿʾ/ˉʿ;->ˑﹳ(Lʿʾ/ᵔﹳ;Lʿʾ/יـ;Lʿʾ/ʽﹳ;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lʿʾ/ˉˆ;

    iget-object v4, v2, Lʿʾ/ˉˆ;->ⁱˊ:Ljava/util/concurrent/Executor;

    new-instance v5, Lʿʾ/ᵔʾ;

    iget-object v2, v2, Lʿʾ/ˉˆ;->ﹳٴ:Lⁱⁱ/ᵎﹶ;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v2, v6}, Lʿʾ/ᵔʾ;-><init>(Lʿʾ/ᵔﹳ;Lⁱⁱ/ᵎﹶ;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ˈ()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ᵔᵢ()V
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ﹳـ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᵔٴ:Lʿʾ/ᵢˏ;

    invoke-interface {v0}, Lʿʾ/ᵢˏ;->ˈ()V

    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ʼˎ()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object v0, v0, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˑٴ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᴵᵔ:Lˋⁱ/ﾞᴵ;

    iget-object v2, p0, Lʿʾ/ᵔﹳ;->ᵔٴ:Lʿʾ/ᵢˏ;

    iget-boolean v3, p0, Lʿʾ/ᵔﹳ;->ᵔי:Z

    iget-object v5, p0, Lʿʾ/ᵔﹳ;->ᵎˊ:Lʿʾ/יـ;

    iget-object v6, p0, Lʿʾ/ᵔﹳ;->ʽʽ:Lʿʾ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lʿʾ/ʽﹳ;

    const/4 v4, 0x1

    invoke-direct/range {v1 .. v6}, Lʿʾ/ʽﹳ;-><init>(Lʿʾ/ᵢˏ;ZZLʼᵔ/ˑﹳ;Lʿʾ/ˏי;)V

    iput-object v1, p0, Lʿʾ/ᵔﹳ;->ʼˈ:Lʿʾ/ʽﹳ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˑٴ:Z

    iget-object v1, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lʿʾ/ᵔﹳ;->ˑﹳ(I)V

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᵎˊ:Lʿʾ/יـ;

    iget-object v1, p0, Lʿʾ/ᵔﹳ;->ʼˈ:Lʿʾ/ʽﹳ;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lʿʾ/ᵔﹳ;->ˊʻ:Lʿʾ/ﹳᐧ;

    check-cast v3, Lʿʾ/ˉʿ;

    invoke-virtual {v3, p0, v0, v1}, Lʿʾ/ˉʿ;->ˑﹳ(Lʿʾ/ᵔﹳ;Lʿʾ/יـ;Lʿʾ/ʽﹳ;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lʿʾ/ˉˆ;

    iget-object v4, v3, Lʿʾ/ˉˆ;->ⁱˊ:Ljava/util/concurrent/Executor;

    new-instance v5, Lʿʾ/ᵔʾ;

    iget-object v3, v3, Lʿʾ/ˉˆ;->ﹳٴ:Lⁱⁱ/ᵎﹶ;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v3, v6}, Lʿʾ/ᵔʾ;-><init>(Lʿʾ/ᵔﹳ;Lⁱⁱ/ᵎﹶ;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lʿʾ/ᵔﹳ;->ˈ()V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ⁱˊ(Lⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v0}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object v0, v0, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    new-instance v1, Lʿʾ/ˉˆ;

    invoke-direct {v1, p1, p2}, Lʿʾ/ˉˆ;-><init>(Lⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˑٴ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lʿʾ/ᵔﹳ;->ˑﹳ(I)V

    new-instance v0, Lʿʾ/ᵔʾ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lʿʾ/ᵔʾ;-><init>(Lʿʾ/ᵔﹳ;Lⁱⁱ/ᵎﹶ;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˊˋ:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lʿʾ/ᵔﹳ;->ˑﹳ(I)V

    new-instance v0, Lʿʾ/ᵔʾ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lʿʾ/ᵔʾ;-><init>(Lʿʾ/ᵔﹳ;Lⁱⁱ/ᵎﹶ;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lʿʾ/ᵔﹳ;->ﹳـ:Z

    xor-int/2addr p1, v1

    const-string p2, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {p2, p1}, Lʿٴ/ﾞᴵ;->ﹳٴ(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ()Lˈﹳ/ˑﹳ;
    .locals 1

    iget-object v0, p0, Lʿʾ/ᵔﹳ;->ᴵˊ:Lˈﹳ/ˑﹳ;

    return-object v0
.end method

.method public final ﾞᴵ()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˊˋ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ˑٴ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lʿʾ/ᵔﹳ;->ﹳـ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
