.class public final Lٴᵎ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ʽʽ:Lٴᵎ/יـ;

.field public final ʾˋ:Lˎᵢ/ʻٴ;

.field public volatile ˆﾞ:Z

.field public final ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ˈٴ:Lٴᵎ/ˉˆ;

.field public ˉٴ:Lٴᵎ/ᵔﹳ;

.field public ˊʻ:Ljava/lang/Object;

.field public ٴʼ:Z

.field public ٴᵢ:Lٴᵎ/ʼˎ;

.field public final ᴵˊ:Lˎᵢ/ʾᵎ;

.field public final ᴵᵔ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ᵎˊ:Z

.field public ᵎⁱ:Lcom/bumptech/glide/ʼˎ;

.field public ᵔי:Z

.field public volatile ᵔٴ:Lcom/bumptech/glide/ʼˎ;


# direct methods
.method public constructor <init>(Lˎᵢ/ʻٴ;Lˎᵢ/ʾᵎ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iput-object p2, p0, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    iget-object p2, p1, Lˎᵢ/ʻٴ;->ʾˋ:Lˉˆ/ʿ;

    iget-object p2, p2, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lٴᵎ/יـ;

    iput-object p2, p0, Lٴᵎ/ʼᐧ;->ʽʽ:Lٴᵎ/יـ;

    iget-object p1, p1, Lˎᵢ/ʻٴ;->ˈ:Lᵔﹶ/ˉʿ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lٴᵎ/ˉˆ;

    invoke-direct {p1, p0}, Lٴᵎ/ˉˆ;-><init>(Lٴᵎ/ʼᐧ;)V

    const/4 p2, 0x0

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Lˊᐧ/ˈٴ;->ᵎﹶ(J)Lˊᐧ/ˈٴ;

    iput-object p1, p0, Lٴᵎ/ʼᐧ;->ˈٴ:Lٴᵎ/ˉˆ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lٴᵎ/ʼᐧ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lٴᵎ/ʼᐧ;->ᵔי:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lٴᵎ/ʼᐧ;->ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final ﹳٴ(Lٴᵎ/ʼᐧ;)Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lٴᵎ/ʼᐧ;->ˆﾞ:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    iget-object p0, p0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {p0}, Lˎᵢ/ʼᐧ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ˆﾞ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴᵎ/ʼᐧ;->ˆﾞ:Z

    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ᵔٴ:Lcom/bumptech/glide/ʼˎ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʽי/ˑﹳ;

    invoke-interface {v0}, Lʽי/ˑﹳ;->cancel()V

    :cond_1
    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ˈʿ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴᵎ/ـˆ;

    invoke-interface {v1}, Lٴᵎ/ـˆ;->cancel()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lٴᵎ/ʼᐧ;

    iget-object v1, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v2, p0, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    invoke-direct {v0, v1, v2}, Lٴᵎ/ʼᐧ;-><init>(Lˎᵢ/ʻٴ;Lˎᵢ/ʾᵎ;)V

    return-object v0
.end method

.method public final ʼˎ(Lcom/bumptech/glide/ʼˎ;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .prologue
    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ᵔٴ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    monitor-enter p0

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ٴʼ:Z

    if-nez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ᵎˊ:Z

    if-eqz v0, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean p1, p0, Lٴᵎ/ʼᐧ;->ٴʼ:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean p1, p0, Lٴᵎ/ʼᐧ;->ᵎˊ:Z

    :cond_4
    iget-boolean p2, p0, Lٴᵎ/ʼᐧ;->ٴʼ:Z

    const/4 p3, 0x1

    if-nez p2, :cond_5

    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ᵎˊ:Z

    if-nez v0, :cond_5

    move v0, p3

    goto :goto_1

    :cond_5
    move v0, p1

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, Lٴᵎ/ʼᐧ;->ᵎˊ:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lٴᵎ/ʼᐧ;->ᵔי:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    move p1, p3

    :cond_6
    move p2, p1

    move p1, v0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_7
    move p2, p1

    :goto_3
    monitor-exit p0

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lٴᵎ/ʼᐧ;->ᵔٴ:Lcom/bumptech/glide/ʼˎ;

    iget-object p1, p0, Lٴᵎ/ʼᐧ;->ˉٴ:Lٴᵎ/ᵔﹳ;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lٴᵎ/ᵔﹳ;->ˈ()V

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, Lٴᵎ/ʼᐧ;->ⁱˊ(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_4
    return-object p4
.end method

.method public final ˆʾ(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ᵔי:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lٴᵎ/ʼᐧ;->ᵔי:Z

    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ٴʼ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ᵎˊ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lٴᵎ/ʼᐧ;->ⁱˊ(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final ˈ(Lˎᵢ/ˑﹳ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    invoke-virtual {v0}, Lـᐧ/ˑﹳ;->ᵔᵢ()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lٴᵎ/ʼᐧ;->ˊʻ:Ljava/lang/Object;

    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v0, v0, Lˎᵢ/ʻٴ;->ﹳٴ:Lˏˆ/ﹳٴ;

    new-instance v1, Lٴᵎ/ˉʿ;

    invoke-direct {v1, p0, p1}, Lٴᵎ/ˉʿ;-><init>(Lٴᵎ/ʼᐧ;Lˎᵢ/ˑﹳ;)V

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    iget-object p1, p1, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object p1, p1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v2, v0, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴᵎ/ˉʿ;

    iget-object v4, v3, Lٴᵎ/ˉʿ;->ʽʽ:Lٴᵎ/ʼᐧ;

    iget-object v4, v4, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    iget-object v4, v4, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object v4, v4, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v4, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴᵎ/ˉʿ;

    iget-object v4, v3, Lٴᵎ/ˉʿ;->ʽʽ:Lٴᵎ/ʼᐧ;

    iget-object v4, v4, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    iget-object v4, v4, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object v4, v4, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v4, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    iget-object p1, v3, Lٴᵎ/ˉʿ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, v1, Lٴᵎ/ˉʿ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    invoke-virtual {v0}, Lˏˆ/ﹳٴ;->ᴵᵔ()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_5
    const-string p1, "Already Executed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˑﹳ()Lˎᵢ/ʽʽ;
    .locals 3

    .prologue
    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ˈٴ:Lٴᵎ/ˉˆ;

    invoke-virtual {v0}, Lˊᐧ/ˈ;->ᵔᵢ()V

    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    invoke-virtual {v0}, Lـᐧ/ˑﹳ;->ᵔᵢ()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lٴᵎ/ʼᐧ;->ˊʻ:Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v0, v0, Lˎᵢ/ʻٴ;->ﹳٴ:Lˏˆ/ﹳٴ;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    invoke-virtual {p0}, Lٴᵎ/ʼᐧ;->ᵔᵢ()Lˎᵢ/ʽʽ;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v1, v1, Lˎᵢ/ʻٴ;->ﹳٴ:Lˏˆ/ﹳٴ;

    iget-object v2, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lˏˆ/ﹳٴ;->יـ(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    iget-object v1, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v1, v1, Lˎᵢ/ʻٴ;->ﹳٴ:Lˏˆ/ﹳٴ;

    iget-object v2, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lˏˆ/ﹳٴ;->יـ(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-string v0, "Already Executed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ٴﹶ()Ljava/net/Socket;
    .locals 7

    .prologue
    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ˉٴ:Lٴᵎ/ᵔﹳ;

    sget-object v1, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v1, v0, Lٴᵎ/ᵔﹳ;->ﹳᐧ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lٴᵎ/ʼᐧ;->ˉٴ:Lٴᵎ/ᵔﹳ;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, Lٴᵎ/ᵔﹳ;->יـ:J

    iget-object v1, p0, Lٴᵎ/ʼᐧ;->ʽʽ:Lٴᵎ/יـ;

    iget-object v3, v1, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v4, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-boolean v4, v0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    if-nez v4, :cond_2

    iget-object v0, v1, Lٴᵎ/יـ;->ʽ:Lﾞʿ/ⁱˊ;

    iget-object v1, v1, Lٴᵎ/יـ;->ˈ:Lٴᵎ/ﹳᐧ;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lﾞʿ/ⁱˊ;->ˈ(Lﾞʿ/ﹳٴ;J)V

    return-object v2

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lٴᵎ/יـ;->ʽ:Lﾞʿ/ⁱˊ;

    invoke-virtual {v2}, Lﾞʿ/ⁱˊ;->ﹳٴ()V

    :cond_3
    iget-object v2, v0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v2, v2, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v1, v1, Lٴᵎ/יـ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v0, v0, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_5
    return-object v2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔᵢ()Lˎᵢ/ʽʽ;
    .locals 9

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v0, v0, Lˎᵢ/ʻٴ;->ⁱˊ:Ljava/util/List;

    invoke-static {v0, v2}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    new-instance v0, Lʽי/ﹳٴ;

    iget-object v1, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1}, Lʽי/ﹳٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lʽי/ﹳٴ;

    iget-object v1, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v1, v1, Lˎᵢ/ʻٴ;->ˆʾ:Lˎᵢ/ﾞʻ;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lʽי/ﹳٴ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lʽי/ⁱˊ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lʽי/ⁱˊ;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lٴᵎ/ⁱˊ;->ﹳٴ:Lٴᵎ/ⁱˊ;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v0, v0, Lˎᵢ/ʻٴ;->ʽ:Ljava/util/List;

    invoke-static {v0, v2}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    new-instance v0, Lʽי/ⁱˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lʽי/ⁱˊ;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lʽי/ᵎﹶ;

    iget-object v5, p0, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    iget-object v1, p0, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget v6, v1, Lˎᵢ/ʻٴ;->ʻٴ:I

    iget v7, v1, Lˎᵢ/ʻٴ;->ـˆ:I

    iget v8, v1, Lˎᵢ/ʻٴ;->ʾᵎ:I

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lʽי/ᵎﹶ;-><init>(Lٴᵎ/ʼᐧ;Ljava/util/ArrayList;ILcom/bumptech/glide/ʼˎ;Lˎᵢ/ʾᵎ;III)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v5}, Lʽי/ᵎﹶ;->ⁱˊ(Lˎᵢ/ʾᵎ;)Lˎᵢ/ʽʽ;

    move-result-object v0

    iget-boolean v4, v1, Lٴᵎ/ʼᐧ;->ˆﾞ:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    invoke-virtual {p0, v2}, Lٴᵎ/ʼᐧ;->ˆʾ(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lⁱᐧ/ʽ;->ⁱˊ(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lٴᵎ/ʼᐧ;->ˆʾ(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lٴᵎ/ʼᐧ;->ˆʾ(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public final ⁱˊ(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ˉٴ:Lٴᵎ/ᵔﹳ;

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lٴᵎ/ʼᐧ;->ٴﹶ()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ˉٴ:Lٴᵎ/ᵔﹳ;

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lٴᵎ/ʼᐧ;->ˈٴ:Lٴᵎ/ˉˆ;

    invoke-virtual {v0}, Lˊᐧ/ˈ;->ʼˎ()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_4
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public final ﾞᴵ(Z)V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lٴᵎ/ʼᐧ;->ᵔי:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lٴᵎ/ʼᐧ;->ᵔٴ:Lcom/bumptech/glide/ʼˎ;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʽי/ˑﹳ;

    invoke-interface {v1}, Lʽי/ˑﹳ;->cancel()V

    iget-object v1, p1, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lٴᵎ/ʼᐧ;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, Lٴᵎ/ʼᐧ;->ʼˎ(Lcom/bumptech/glide/ʼˎ;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, Lٴᵎ/ʼᐧ;->ᵎⁱ:Lcom/bumptech/glide/ʼˎ;

    return-void

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
