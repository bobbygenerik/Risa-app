.class public final Lˊᐧ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ᴵˊ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Lˊᐧ/ᵔﹳ;

.field public ᴵˊ:J


# direct methods
.method public constructor <init>(Lˊᐧ/ᵔﹳ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊᐧ/ٴﹶ;->ʾˋ:Lˊᐧ/ᵔﹳ;

    iput-wide p2, p0, Lˊᐧ/ٴﹶ;->ᴵˊ:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˊᐧ/ٴﹶ;->ʾˋ:Lˊᐧ/ᵔﹳ;

    iget-boolean v1, p0, Lˊᐧ/ٴﹶ;->ʽʽ:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lˊᐧ/ٴﹶ;->ʽʽ:Z

    iget-object v1, v0, Lˊᐧ/ᵔﹳ;->ˈٴ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v2, v0, Lˊᐧ/ᵔﹳ;->ʽʽ:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lˊᐧ/ᵔﹳ;->ʽʽ:I

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lˊᐧ/ᵔﹳ;->ᴵˊ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lˊᐧ/ᵔﹳ;->ᴵᵔ:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    sget-object v0, Lˊᐧ/ˈٴ;->ˈ:Lˊᐧ/ʽʽ;

    return-object v0
.end method

.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    iget-boolean v4, v1, Lˊᐧ/ٴﹶ;->ʽʽ:Z

    if-nez v4, :cond_8

    iget-object v4, v1, Lˊᐧ/ٴﹶ;->ʾˋ:Lˊᐧ/ᵔﹳ;

    iget-wide v5, v1, Lˊᐧ/ٴﹶ;->ᴵˊ:J

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_7

    add-long/2addr v2, v5

    move-wide v7, v5

    :goto_0
    cmp-long v9, v7, v2

    if-gez v9, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lˊᐧ/ﾞᴵ;->ʽᵔ(I)Lˊᐧ/ʾᵎ;

    move-result-object v9

    iget-object v12, v9, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v13, v9, Lˊᐧ/ʾᵎ;->ʽ:I

    sub-long v14, v2, v7

    const-wide/16 p2, -0x1

    rsub-int v10, v13, 0x2000

    int-to-long v10, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    monitor-enter v4

    :try_start_0
    iget-object v11, v4, Lˊᐧ/ᵔﹳ;->ᴵᵔ:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    iget-object v15, v4, Lˊᐧ/ᵔﹳ;->ᴵᵔ:Ljava/io/RandomAccessFile;

    sub-int v14, v10, v11

    invoke-virtual {v15, v12, v13, v14}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    if-nez v11, :cond_1

    monitor-exit v4

    const/4 v11, -0x1

    :goto_2
    const/4 v15, -0x1

    goto :goto_3

    :cond_0
    add-int/2addr v11, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    monitor-exit v4

    goto :goto_2

    :goto_3
    if-ne v11, v15, :cond_3

    iget v2, v9, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget v3, v9, Lˊᐧ/ʾᵎ;->ʽ:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v9}, Lˊᐧ/ʾᵎ;->ﹳٴ()Lˊᐧ/ʾᵎ;

    move-result-object v2

    iput-object v2, v0, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    invoke-static {v9}, Lˊᐧ/ʼʼ;->ﹳٴ(Lˊᐧ/ʾᵎ;)V

    :cond_2
    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    move-wide/from16 v7, p2

    goto :goto_5

    :cond_3
    iget v10, v9, Lˊᐧ/ʾᵎ;->ʽ:I

    add-int/2addr v10, v11

    iput v10, v9, Lˊᐧ/ʾᵎ;->ʽ:I

    int-to-long v9, v11

    add-long/2addr v7, v9

    iget-wide v11, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    add-long/2addr v11, v9

    iput-wide v11, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    goto :goto_0

    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const-wide/16 p2, -0x1

    :cond_5
    sub-long/2addr v7, v5

    :goto_5
    cmp-long v0, v7, p2

    if-eqz v0, :cond_6

    iget-wide v2, v1, Lˊᐧ/ٴﹶ;->ᴵˊ:J

    add-long/2addr v2, v7

    iput-wide v2, v1, Lˊᐧ/ٴﹶ;->ᴵˊ:J

    :cond_6
    return-wide v7

    :cond_7
    const-string v0, "byteCount < 0: "

    invoke-static {v0, v2, v3}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string v0, "closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
