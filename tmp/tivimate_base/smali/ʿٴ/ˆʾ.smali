.class public Lʿٴ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/io/Serializable;

.field public ⁱˊ:J

.field public ﹳٴ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    iput-wide v0, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    iput-wide p1, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    return-void
.end method


# virtual methods
.method public ʽ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized ˈ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lʿٴ/ˆʾ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v0

    int-to-long v1, v0

    iget-wide v3, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    invoke-virtual {p0, p1, p2}, Lʿٴ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    iget-wide v5, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    :cond_1
    iget-object v1, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v1, Ljava/util/LinkedHashMap;

    if-nez p2, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    new-instance v2, Lʿٴ/ʼˎ;

    invoke-direct {v2, v0, p2}, Lʿٴ/ʼˎ;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʿٴ/ʼˎ;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget v3, v0, Lʿٴ/ʼˎ;->ⁱˊ:I

    int-to-long v5, v3

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget-object v1, v0, Lʿٴ/ʼˎ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, v0, Lʿٴ/ʼˎ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lʿٴ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-wide p1, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    invoke-virtual {p0, p1, p2}, Lʿٴ/ˆʾ;->ﾞᴵ(J)V

    if-eqz v0, :cond_4

    iget-object v4, v0, Lʿٴ/ʼˎ;->ﹳٴ:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-object v4

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ˑﹳ(Ljava/lang/Exception;)V
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/Exception;

    if-nez v2, :cond_0

    iput-object p1, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    :cond_0
    iget-wide v2, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    sget-object v2, Lﹶ/ʾᵎ;->ٴﹳ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v3, Lﹶ/ʾᵎ;->ـᵎ:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_1
    iget-wide v2, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    iget-object v0, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Exception;

    if-eq v0, p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-object v0, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    iput-wide v4, p0, Lʿٴ/ˆʾ;->ﹳٴ:J

    iput-wide v4, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    throw p1

    :cond_4
    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    return-void
.end method

.method public ⁱˊ(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʿٴ/ʼˎ;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lʿٴ/ʼˎ;->ﹳٴ:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized ﾞᴵ(J)V
    .locals 7

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lʿٴ/ˆʾ;->ʽ:Ljava/io/Serializable;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʿٴ/ʼˎ;

    iget-wide v3, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    iget v5, v2, Lʿٴ/ʼˎ;->ⁱˊ:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lʿٴ/ˆʾ;->ⁱˊ:J

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, v2, Lʿٴ/ʼˎ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lʿٴ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
