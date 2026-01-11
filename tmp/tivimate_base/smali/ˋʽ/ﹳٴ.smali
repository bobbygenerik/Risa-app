.class public abstract Lˋʽ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ᴵᵔ:Lﾞʼ/ﹳٴ;


# instance fields
.field public ʽʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ʾˋ:Ljava/io/InputStream;

.field public ˈٴ:Ljava/lang/Thread;

.field public ᴵˊ:Lٴٴ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lˋʽ/ﹳٴ;

    invoke-static {v0}, Lﾞʼ/ⁱˊ;->ˑﹳ(Ljava/lang/Class;)Lﾞʼ/ﹳٴ;

    move-result-object v0

    sput-object v0, Lˋʽ/ﹳٴ;->ᴵᵔ:Lﾞʼ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    iget-object v0, p0, Lˋʽ/ﹳٴ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    sget-object v2, Lˋʽ/ﹳٴ;->ᴵᵔ:Lﾞʼ/ﹳٴ;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lˋʽ/ﹳٴ;->ﹳٴ()V
    :try_end_0
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v2, v1}, Lﾞʼ/ﹳٴ;->ـˆ(Lcom/hierynomus/protocol/transport/TransportException;)V

    iget-object v0, p0, Lˋʽ/ﹳٴ;->ᴵˊ:Lٴٴ/ⁱˊ;

    iget-object v2, v0, Lٴٴ/ⁱˊ;->ᴵᵔ:Lᵢ/ﹳٴ;

    iget-object v3, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v2, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_1
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lٴٴ/ʽ;

    iget-object v7, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    iget-object v8, v6, Lٴٴ/ʽ;->ˈ:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v6, Lٴٴ/ʽ;->ﹳٴ:Lˋٴ/ʽ;

    iget-object v7, v6, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v8, v6, Lˋٴ/ʽ;->ˈٴ:Ljava/lang/Object;

    check-cast v8, Lˋⁱ/ﾞᴵ;

    invoke-virtual {v8, v1}, Lˋⁱ/ﾞᴵ;->ᵢˏ(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    iput-object v8, v6, Lˋٴ/ʽ;->ˉٴ:Ljava/lang/Object;

    iget-object v6, v6, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :try_start_4
    invoke-virtual {v0}, Lٴٴ/ⁱˊ;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    const-string v3, "{} while closing connection on error, ignoring: {}"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0, v3}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "{} stopped."

    iget-object v1, p0, Lˋʽ/ﹳٴ;->ˈٴ:Ljava/lang/Thread;

    invoke-interface {v2, v1, v0}, Lﾞʼ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public final ﹳٴ()V
    .locals 20

    .prologue
    move-object/from16 v1, p0

    move-object v0, v1

    check-cast v0, Lˊﹶ/ﹳٴ;

    :try_start_0
    invoke-virtual {v0}, Lˊﹶ/ﹳٴ;->ʽ()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Lˊﹶ/ﹳٴ;->ⁱˊ([B)V

    iget-object v0, v0, Lˊﹶ/ﹳٴ;->ˊʻ:Lˆˋ/ﹳٴ;

    invoke-interface {v0, v2}, Lˆˋ/ﹳٴ;->read([B)Lʼﹳ/ʼᐧ;

    move-result-object v0
    :try_end_0
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_2

    sget-object v2, Lˋʽ/ﹳٴ;->ᴵᵔ:Lﾞʼ/ﹳٴ;

    const-string v3, "Received packet {}"

    invoke-interface {v2, v0, v3}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lˋʽ/ﹳٴ;->ᴵˊ:Lٴٴ/ⁱˊ;

    iget-object v3, v2, Lٴٴ/ⁱˊ;->ᴵᵔ:Lᵢ/ﹳٴ;

    instance-of v4, v0, Lʼﹳ/ʼᐧ;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lʼﹳ/ʼᐧ;->ﹳٴ:Lʼﹳ/ٴﹶ;

    iget-wide v5, v4, Lʼﹳ/ٴﹶ;->ﾞᴵ:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v3, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iget-object v9, v3, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_1
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v7, :cond_8

    iget-object v7, v2, Lٴٴ/ⁱˊ;->ˊʻ:Lـʾ/ᵔﹳ;

    iget v10, v4, Lʼﹳ/ٴﹶ;->ˈ:I

    iget-object v7, v7, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/Semaphore;->release(I)V

    sget-object v7, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    iget v10, v4, Lʼﹳ/ٴﹶ;->ˈ:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v2, Lٴٴ/ⁱˊ;->ˊʻ:Lـʾ/ᵔﹳ;

    iget-object v11, v11, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v11, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v10, 0x1

    aput-object v0, v13, v10

    const/4 v15, 0x2

    aput-object v11, v13, v15

    const-string v11, "Server granted us {} credits for {}, now available: {} credits"

    invoke-interface {v7, v11, v13}, Lﾞʼ/ﹳٴ;->ʽ(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_2
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lٴٴ/ʽ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-object v13, v11, Lٴٴ/ʽ;->ˑﹳ:Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move/from16 v16, v10

    const-string v10, "Send/Recv of packet {} took << {} ms >>"

    invoke-interface {v7, v10, v0, v13}, Lﾞʼ/ﹳٴ;->ʻٴ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;)V

    move v10, v14

    move v13, v15

    iget-wide v14, v4, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    move/from16 v17, v10

    sget-object v10, Lʼﹳ/ˉʿ;->ᴵˊ:Lʼﹳ/ˉʿ;

    invoke-static {v14, v15, v10}, Lᴵʿ/ﹳٴ;->ⁱˊ(JLᴵʿ/ʽ;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v14, v4, Lʼﹳ/ٴﹶ;->ˆʾ:J

    const-wide/16 v18, 0x103

    cmp-long v10, v14, v18

    if-nez v10, :cond_0

    iget-wide v2, v4, Lʼﹳ/ٴﹶ;->ᵎﹶ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Received ASYNC packet {} with AsyncId << {} >>"

    invoke-interface {v7, v0, v2, v3}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, v4, Lʼﹳ/ٴﹶ;->ᵎﹶ:J

    iput-wide v2, v11, Lٴٴ/ʽ;->ﾞᴵ:J

    return-void

    :cond_0
    :try_start_3
    iget-object v10, v2, Lٴٴ/ⁱˊ;->ٴᵢ:Lـˎ/ˈ;

    iget-object v11, v11, Lٴٴ/ʽ;->ⁱˊ:Lʽⁱ/ᵎﹶ;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v0}, Lـˎ/ˈ;->ʽﹳ(Lʽⁱ/ᵎﹶ;Lʼﹳ/ʼᐧ;)Lʼﹳ/ˉˆ;

    move-result-object v0
    :try_end_3
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_3 .. :try_end_3} :catch_1

    iget-wide v10, v4, Lʼﹳ/ٴﹶ;->ᵔᵢ:J

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-eqz v14, :cond_6

    iget-object v4, v4, Lʼﹳ/ٴﹶ;->ˑﹳ:Lʼﹳ/ﾞʻ;

    sget-object v14, Lʼﹳ/ﾞʻ;->ʽʽ:Lʼﹳ/ﾞʻ;

    if-eq v4, v14, :cond_6

    iget-object v4, v2, Lٴٴ/ⁱˊ;->ʽʽ:Lˑʼ/ᵎˊ;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Lˑʼ/ᵎˊ;->ˉٴ(Ljava/lang/Long;)Lיˆ/ʽ;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v2, v2, Lٴٴ/ⁱˊ;->ˈٴ:Lˑʼ/ᵎˊ;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lˑʼ/ᵎˊ;->ˉٴ(Ljava/lang/Long;)Lיˆ/ʽ;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "Illegal request, no session matching the sessionId: {}"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2, v0}, Lﾞʼ/ﹳٴ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v2

    check-cast v2, Lʼﹳ/ٴﹶ;

    sget-object v10, Lʼﹳ/ˉʿ;->ʽʽ:Lʼﹳ/ˉʿ;

    iget-wide v14, v2, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    invoke-static {v14, v15, v10}, Lᴵʿ/ﹳٴ;->ⁱˊ(JLᴵʿ/ʽ;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v4, Lיˆ/ʽ;->ᴵˊ:Lיˆ/ⁱˊ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v10, v0, Lʼﹳ/ˉˆ;->ʽʽ:Lˋʼ/ﹳٴ;

    iget-object v11, v2, Lיˆ/ⁱˊ;->ˈ:[B

    iget-object v14, v2, Lיˆ/ⁱˊ;->ʽ:Ljava/lang/String;

    iget-object v2, v2, Lיˆ/ⁱˊ;->ⁱˊ:Lﾞˎ/ʽ;

    invoke-interface {v2, v14}, Lﾞˎ/ʽ;->ˈ(Ljava/lang/String;)Lﾞˎ/ﹳٴ;

    move-result-object v2

    invoke-interface {v2, v11}, Lﾞˎ/ﹳٴ;->ˉʿ([B)V

    iget-object v11, v10, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget-object v14, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v14, Lˋʼ/ⁱˊ;

    check-cast v14, Lʼﹳ/ٴﹶ;

    iget v14, v14, Lʼﹳ/ٴﹶ;->ᵔʾ:I

    const/16 v15, 0x30

    invoke-interface {v2, v11, v14, v15}, Lﾞˎ/ﹳٴ;->update([BII)V

    sget-object v11, Lʼﹳ/ٴﹶ;->ˉˆ:[B

    invoke-interface {v2, v11}, Lﾞˎ/ﹳٴ;->update([B)V

    iget-object v10, v10, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    iget v11, v0, Lʼﹳ/ˉˆ;->ᴵᵔ:I

    const/16 v14, 0x40

    sub-int/2addr v11, v14

    invoke-interface {v2, v10, v14, v11}, Lﾞˎ/ﹳٴ;->update([BII)V

    invoke-interface {v2}, Lﾞˎ/ﹳٴ;->ﾞᴵ()[B

    move-result-object v2

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v10

    check-cast v10, Lʼﹳ/ٴﹶ;

    iget-object v10, v10, Lʼﹳ/ٴﹶ;->ˉʿ:[B

    move/from16 v11, v17

    :goto_0
    const/16 v14, 0x10

    if-ge v11, v14, :cond_6

    aget-byte v14, v2, v11

    aget-byte v15, v10, v11

    if-eq v14, v15, :cond_3

    sget-object v11, Lיˆ/ⁱˊ;->ˑﹳ:Lﾞʼ/ﹳٴ;

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v17

    aput-object v10, v12, v16

    aput-object v2, v12, v13

    invoke-interface {v11, v12}, Lﾞʼ/ﹳٴ;->ﾞᴵ([Ljava/lang/Object;)V

    const-string v2, "Packet {} has header: {}"

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v10

    invoke-interface {v11, v0, v10, v2}, Lﾞʼ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/hierynomus/security/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "Invalid packet signature for packet {}"

    invoke-interface {v7, v0, v2}, Lﾞʼ/ﹳٴ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v4, Lיˆ/ʽ;->ʽʽ:Z

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Lcom/hierynomus/protocol/transport/TransportException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Packet signature for packet "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was not correct"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    iget-boolean v2, v4, Lיˆ/ʽ;->ʽʽ:Z

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, "Illegal request, session requires message signing, but packet {} is not signed."

    invoke-interface {v7, v0, v2}, Lﾞʼ/ﹳٴ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/hierynomus/protocol/transport/TransportException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Session requires signing, but packet "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was not signed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Unable to find outstanding request for messageId "

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_5
    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lٴٴ/ʽ;

    if-eqz v5, :cond_7

    iget-object v2, v3, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, v5, Lٴٴ/ʽ;->ˈ:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v2, v5, Lٴٴ/ʽ;->ﹳٴ:Lˋٴ/ʽ;

    iget-object v3, v2, Lˋٴ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_6
    iget-object v4, v2, Lˋٴ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lﾞʼ/ﹳٴ;

    const-string v5, "Setting << {} >> to `{}`"

    iget-object v6, v2, Lˋٴ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v6, v0, v5}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v2, Lˋٴ/ʽ;->ٴᵢ:Ljava/lang/Object;

    iget-object v0, v2, Lˋٴ/ʽ;->ˊʻ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_7
    :try_start_7
    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/hierynomus/protocol/transport/TransportException;

    const-string v3, "Unable to deserialize SMB2 Packet Data."

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_2
    move-exception v0

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_8
    new-instance v0, Lcom/hierynomus/protocol/transport/TransportException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received response with unknown sequence number <<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_9
    new-instance v0, Lcom/hierynomus/mssmb/SMB1NotSupportedException;

    invoke-direct {v0}, Lcom/hierynomus/mssmb/SMB1NotSupportedException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    new-instance v2, Lcom/hierynomus/protocol/transport/TransportException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    throw v0
.end method
