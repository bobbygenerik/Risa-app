.class public abstract Lᴵי/ˈʿ;
.super Lᴵי/ˑٴ;
.source "SourceFile"

# interfaces
.implements Lᴵי/ʽʽ;


# static fields
.field public static final synthetic ˊʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed$volatile:Ljava/lang/Object;

.field private volatile synthetic _isCompleted$volatile:I

.field private volatile synthetic _queue$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_queue$volatile"

    const-class v1, Lᴵי/ˈʿ;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ˈʿ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_delayed$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ˈʿ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_isCompleted$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ˈʿ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 7

    .prologue
    sget-object v0, Lᴵי/ﹳﹳ;->ﹳٴ:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lᴵי/ˈʿ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v0, Lᴵי/ʾᵎ;->ʽ:Lʻᴵ/ﹳٴ;

    sget-object v3, Lᴵי/ˈʿ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v3, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lˊʽ/ˉʿ;

    if-eqz v5, :cond_3

    check-cast v4, Lˊʽ/ˉʿ;

    invoke-virtual {v4}, Lˊʽ/ˉʿ;->ⁱˊ()Z

    goto :goto_1

    :cond_3
    if-ne v4, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v5, Lˊʽ/ˉʿ;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, Lˊʽ/ˉʿ;-><init>(IZ)V

    move-object v6, v4

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lˊʽ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)I

    :cond_5
    invoke-virtual {v3, p0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lᴵי/ˈʿ;->יﹳ()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_2
    sget-object v0, Lᴵי/ˈʿ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵי/ᵔٴ;

    if-eqz v0, :cond_9

    monitor-enter v0

    :try_start_0
    sget-object v4, Lˊʽ/ـˆ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lˊʽ/ـˆ;->ʽ(I)Lᴵי/ˆﾞ;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_7
    move-object v4, v1

    :goto_3
    monitor-exit v0

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v2, v3, v4}, Lᴵי/ˑٴ;->ʾﾞ(JLᴵי/ˆﾞ;)V

    goto :goto_2

    :goto_4
    monitor-exit v0

    throw v1

    :cond_9
    :goto_5
    return-void

    :cond_a
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v4, :cond_5

    goto :goto_0
.end method

.method public final ʻᴵ(Ljava/lang/Runnable;)Z
    .locals 5

    .prologue
    :goto_0
    sget-object v0, Lᴵי/ˈʿ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lᴵי/ˈʿ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lˊʽ/ˉʿ;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lˊʽ/ˉʿ;

    invoke-virtual {v2, p1}, Lˊʽ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_b

    if-eq v4, v3, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_8

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lˊʽ/ˉʿ;->ʽ()Lˊʽ/ˉʿ;

    move-result-object v2

    :cond_5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_5

    goto :goto_0

    :cond_7
    sget-object v2, Lᴵי/ʾᵎ;->ʽ:Lʻᴵ/ﹳٴ;

    if-ne v1, v2, :cond_9

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_9
    new-instance v2, Lˊʽ/ˉʿ;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3}, Lˊʽ/ˉʿ;-><init>(IZ)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Lˊʽ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)I

    invoke-virtual {v2, p1}, Lˊʽ/ˉʿ;->ﹳٴ(Ljava/lang/Object;)I

    :cond_a
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    :goto_2
    return v3

    :cond_c
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_a

    goto :goto_0
.end method

.method public final ʾˋ(JLᴵי/ٴﹶ;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    :goto_0
    const-wide p1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    new-instance v2, Lᴵי/ᵎˊ;

    add-long/2addr v0, p1

    invoke-direct {v2, p0, v0, v1, p3}, Lᴵי/ᵎˊ;-><init>(Lᴵי/ˈʿ;JLᴵי/ٴﹶ;)V

    invoke-virtual {p0, p1, p2, v2}, Lᴵי/ˈʿ;->ᵎʿ(JLᴵי/ˆﾞ;)V

    new-instance p1, Lᴵי/ᵔᵢ;

    const/4 p2, 0x2

    invoke-direct {p1, p2, v2}, Lᴵי/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, Lᴵי/ٴﹶ;->ʼʼ(Lᴵי/ˊᵔ;)V

    :cond_2
    return-void
.end method

.method public final יﹳ()J
    .locals 10

    .prologue
    sget-object v0, Lᴵי/ʾᵎ;->ʽ:Lʻᴵ/ﹳٴ;

    sget-object v1, Lᴵי/ˈʿ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0}, Lᴵי/ˑٴ;->ʽⁱ()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Lᴵי/ˈʿ;->ᐧˎ()V

    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    if-nez v2, :cond_1

    :goto_1
    move-object v7, v5

    goto :goto_2

    :cond_1
    instance-of v6, v2, Lˊʽ/ˉʿ;

    if-eqz v6, :cond_5

    move-object v6, v2

    check-cast v6, Lˊʽ/ˉʿ;

    invoke-virtual {v6}, Lˊʽ/ˉʿ;->ˈ()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lˊʽ/ˉʿ;->ᵎﹶ:Lʻᴵ/ﹳٴ;

    if-eq v7, v8, :cond_2

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lˊʽ/ˉʿ;->ʽ()Lˊʽ/ˉʿ;

    move-result-object v6

    :cond_3
    invoke-virtual {v1, p0, v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v2, :cond_3

    goto :goto_0

    :cond_5
    if-ne v2, v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v7, v2

    check-cast v7, Ljava/lang/Runnable;

    :goto_2
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-wide v3

    :cond_7
    iget-object v2, p0, Lᴵי/ˑٴ;->ˈٴ:Lﹶˈ/ᵔᵢ;

    const-wide v6, 0x7fffffffffffffffL

    if-nez v2, :cond_8

    :goto_3
    move-wide v8, v6

    goto :goto_4

    :cond_8
    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    move-wide v8, v3

    :goto_4
    cmp-long v2, v8, v3

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    instance-of v2, v1, Lˊʽ/ˉʿ;

    if-eqz v2, :cond_c

    check-cast v1, Lˊʽ/ˉʿ;

    sget-object v0, Lˊʽ/ˉʿ;->ﾞᴵ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v8, 0x3fffffff

    and-long/2addr v8, v0

    long-to-int v2, v8

    const-wide v8, 0xfffffffc0000000L

    and-long/2addr v0, v8

    const/16 v8, 0x1e

    shr-long/2addr v0, v8

    long-to-int v0, v0

    if-ne v2, v0, :cond_b

    goto :goto_5

    :cond_b
    return-wide v3

    :cond_c
    if-ne v1, v0, :cond_10

    goto :goto_9

    :cond_d
    :goto_5
    sget-object v0, Lᴵי/ˈʿ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵי/ᵔٴ;

    if-eqz v0, :cond_12

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lˊʽ/ـˆ;->ﹳٴ:[Lᴵי/ˆﾞ;

    if-eqz v1, :cond_e

    const/4 v2, 0x0

    aget-object v5, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_8

    :cond_e
    :goto_6
    monitor-exit v0

    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    iget-wide v0, v5, Lᴵי/ˆﾞ;->ʾˋ:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long v2, v0, v3

    if-gez v2, :cond_11

    :cond_10
    :goto_7
    return-wide v3

    :cond_11
    return-wide v0

    :goto_8
    monitor-exit v0

    throw v1

    :cond_12
    :goto_9
    return-wide v6

    :cond_13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v2, :cond_6

    goto/16 :goto_0
.end method

.method public final ـˊ()Z
    .locals 7

    .prologue
    iget-object v0, p0, Lᴵי/ˑٴ;->ˈٴ:Lﹶˈ/ᵔᵢ;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    sget-object v0, Lᴵי/ˈʿ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵי/ᵔٴ;

    if-eqz v0, :cond_3

    sget-object v3, Lˊʽ/ـˆ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Lᴵי/ˈʿ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    instance-of v3, v0, Lˊʽ/ˉʿ;

    if-eqz v3, :cond_6

    check-cast v0, Lˊʽ/ˉʿ;

    sget-object v3, Lˊʽ/ˉʿ;->ﾞᴵ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v3, v5

    const/16 v5, 0x1e

    shr-long/2addr v3, v5

    long-to-int v3, v3

    if-ne v0, v3, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    sget-object v3, Lᴵי/ʾᵎ;->ʽ:Lʻᴵ/ﹳٴ;

    if-ne v0, v3, :cond_7

    :goto_2
    return v1

    :cond_7
    :goto_3
    return v2
.end method

.method public final ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lᴵי/ˈʿ;->ⁱˉ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᐧˎ()V
    .locals 10

    .prologue
    sget-object v0, Lᴵי/ˈʿ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵי/ᵔٴ;

    if-eqz v0, :cond_6

    sget-object v1, Lˊʽ/ـˆ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :cond_1
    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lˊʽ/ـˆ;->ﹳٴ:[Lᴵי/ˆﾞ;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    aget-object v3, v3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_3

    monitor-exit v0

    goto :goto_2

    :cond_3
    :try_start_1
    iget-wide v6, v3, Lᴵי/ˆﾞ;->ʾˋ:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    invoke-virtual {p0, v3}, Lᴵי/ˈʿ;->ʻᴵ(Ljava/lang/Runnable;)Z

    move-result v3

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_4
    move v3, v5

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v0, v5}, Lˊʽ/ـˆ;->ʽ(I)Lᴵי/ˆﾞ;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v0

    :goto_2
    if-nez v4, :cond_1

    goto :goto_4

    :goto_3
    monitor-exit v0

    throw v1

    :cond_6
    :goto_4
    return-void
.end method

.method public ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;
    .locals 1

    sget-object v0, Lᴵי/ᵢˏ;->ﹳٴ:Lᴵי/ʽʽ;

    invoke-interface {v0, p1, p2, p3, p4}, Lᴵי/ʽʽ;->ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎʿ(JLᴵי/ˆﾞ;)V
    .locals 5

    .prologue
    sget-object v0, Lᴵי/ˈʿ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lᴵי/ˈʿ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵔٴ;

    if-nez v1, :cond_3

    new-instance v4, Lᴵי/ᵔٴ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide p1, v4, Lᴵי/ᵔٴ;->ʽ:J

    :cond_1
    invoke-virtual {v0, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵔٴ;

    :cond_3
    invoke-virtual {p3, p1, p2, v1, p0}, Lᴵי/ˆﾞ;->ˈ(JLᴵי/ᵔٴ;Lᴵי/ˈʿ;)I

    move-result v1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 p1, 0x2

    if-ne v1, p1, :cond_4

    goto :goto_5

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lᴵי/ˑٴ;->ʾﾞ(JLᴵי/ˆﾞ;)V

    return-void

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵי/ᵔٴ;

    if-eqz p1, :cond_8

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lˊʽ/ـˆ;->ﹳٴ:[Lᴵי/ˆﾞ;

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    aget-object v2, p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_7
    :goto_2
    monitor-exit p1

    goto :goto_4

    :goto_3
    monitor-exit p1

    throw p2

    :cond_8
    :goto_4
    if-ne v2, p3, :cond_9

    invoke-virtual {p0}, Lᴵי/ˑٴ;->ʼـ()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p2, p1, :cond_9

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public ⁱˉ(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lᴵי/ˈʿ;->ᐧˎ()V

    invoke-virtual {p0, p1}, Lᴵי/ˈʿ;->ʻᴵ(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lᴵי/ˑٴ;->ʼـ()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lᴵי/ʼʼ;->ˉٴ:Lᴵי/ʼʼ;

    invoke-virtual {v0, p1}, Lᴵי/ʼʼ;->ⁱˉ(Ljava/lang/Runnable;)V

    return-void
.end method
