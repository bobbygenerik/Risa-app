.class public abstract Lﹳⁱ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳⁱ/ˈ;


# instance fields
.field public ʼˎ:Lﹳⁱ/ˑﹳ;

.field public final ʽ:Ljava/util/ArrayDeque;

.field public ˆʾ:Landroidx/media3/decoder/DecoderException;

.field public final ˈ:Ljava/util/ArrayDeque;

.field public ˉʿ:I

.field public final ˑﹳ:[Lﹳⁱ/ˑﹳ;

.field public ٴﹶ:Z

.field public ᵎﹶ:I

.field public ᵔʾ:J

.field public ᵔᵢ:I

.field public final ⁱˊ:Ljava/lang/Object;

.field public final ﹳٴ:Lcom/parse/ˋᵔ;

.field public ﾞʻ:Z

.field public final ﾞᴵ:[Lﹳⁱ/ﾞᴵ;


# direct methods
.method public constructor <init>([Lﹳⁱ/ˑﹳ;[Lﹳⁱ/ﾞᴵ;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lﹳⁱ/ᵎﹶ;->ᵔʾ:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lﹳⁱ/ᵎﹶ;->ˈ:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    array-length p1, p1

    iput p1, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    invoke-virtual {p0}, Lﹳⁱ/ᵎﹶ;->ᵎﹶ()Lﹳⁱ/ˑﹳ;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lﹳⁱ/ᵎﹶ;->ﾞᴵ:[Lﹳⁱ/ﾞᴵ;

    array-length p2, p2

    iput p2, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    :goto_1
    iget p2, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lﹳⁱ/ᵎﹶ;->ﾞᴵ:[Lﹳⁱ/ﾞᴵ;

    invoke-virtual {p0}, Lﹳⁱ/ᵎﹶ;->ᵔᵢ()Lﹳⁱ/ﾞᴵ;

    move-result-object v0

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/parse/ˋᵔ;

    invoke-direct {p1, p0}, Lcom/parse/ˋᵔ;-><init>(Lﹳⁱ/ᵎﹶ;)V

    iput-object p1, p0, Lﹳⁱ/ᵎﹶ;->ﹳٴ:Lcom/parse/ˋᵔ;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lﹳⁱ/ᵎﹶ;->ٴﹶ:Z

    const/4 v1, 0x0

    iput v1, p0, Lﹳⁱ/ᵎﹶ;->ˉʿ:I

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʼˎ:Lﹳⁱ/ˑﹳ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object v2, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    iget v3, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    aput-object v1, v2, v3

    const/4 v1, 0x0

    iput-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʼˎ:Lﹳⁱ/ˑﹳ;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳⁱ/ˑﹳ;

    invoke-virtual {v1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object v2, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    iget v3, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    aput-object v1, v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˈ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˈ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳⁱ/ﾞᴵ;

    invoke-virtual {v1}, Lﹳⁱ/ﾞᴵ;->ʽﹳ()V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract ʼˎ(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;
.end method

.method public final ʽ(J)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    iget-object v2, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lﹳⁱ/ᵎﹶ;->ٴﹶ:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p1, p0, Lﹳⁱ/ᵎﹶ;->ᵔʾ:J

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract ˆʾ(Lﹳⁱ/ˑﹳ;Lﹳⁱ/ﾞᴵ;Z)Landroidx/media3/decoder/DecoderException;
.end method

.method public final ˉʿ(J)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lﹳⁱ/ᵎﹶ;->ᵔʾ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˉˆ(Lﹳⁱ/ﾞᴵ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lﹳⁱ/ﾞᴵ;->ˏי()V

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ﾞᴵ:[Lﹳⁱ/ﾞᴵ;

    iget v2, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    aput-object p1, v1, v2

    iget-object p1, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic ˑﹳ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lﹳⁱ/ᵎﹶ;->ﾞʻ()Lﹳⁱ/ﾞᴵ;

    move-result-object v0

    return-object v0
.end method

.method public final ٴﹶ()Z
    .locals 8

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lﹳⁱ/ᵎﹶ;->ﾞʻ:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_1

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :cond_1
    iget-boolean v1, p0, Lﹳⁱ/ᵎﹶ;->ﾞʻ:Z

    if-eqz v1, :cond_2

    monitor-exit v0

    return v3

    :cond_2
    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳⁱ/ˑﹳ;

    iget-object v4, p0, Lﹳⁱ/ᵎﹶ;->ﾞᴵ:[Lﹳⁱ/ﾞᴵ;

    iget v5, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    sub-int/2addr v5, v2

    iput v5, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    aget-object v4, v4, v5

    iget-boolean v5, p0, Lﹳⁱ/ᵎﹶ;->ٴﹶ:Z

    iput-boolean v3, p0, Lﹳⁱ/ᵎﹶ;->ٴﹶ:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v0}, Lʻᴵ/ﾞᴵ;->ⁱˊ(I)V

    goto :goto_3

    :cond_3
    iget-wide v6, v1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iput-wide v6, v4, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v0}, Lʻᴵ/ﾞᴵ;->ⁱˊ(I)V

    :cond_4
    iget-wide v6, v1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    invoke-virtual {p0, v6, v7}, Lﹳⁱ/ᵎﹶ;->ˉʿ(J)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v2, v4, Lﹳⁱ/ﾞᴵ;->ᴵᵔ:Z

    :cond_5
    :try_start_1
    invoke-virtual {p0, v1, v4, v5}, Lﹳⁱ/ᵎﹶ;->ˆʾ(Lﹳⁱ/ˑﹳ;Lﹳⁱ/ﾞᴵ;Z)Landroidx/media3/decoder/DecoderException;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lﹳⁱ/ᵎﹶ;->ʼˎ(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lﹳⁱ/ᵎﹶ;->ʼˎ(Ljava/lang/Throwable;)Landroidx/media3/decoder/DecoderException;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_6

    iget-object v5, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iput-object v0, p0, Lﹳⁱ/ᵎﹶ;->ˆʾ:Landroidx/media3/decoder/DecoderException;

    monitor-exit v5

    return v3

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    :goto_3
    iget-object v5, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-boolean v0, p0, Lﹳⁱ/ᵎﹶ;->ٴﹶ:Z

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Lﹳⁱ/ﾞᴵ;->ʽﹳ()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_7
    iget-boolean v0, v4, Lﹳⁱ/ﾞᴵ;->ᴵᵔ:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lﹳⁱ/ᵎﹶ;->ˉʿ:I

    add-int/2addr v0, v2

    iput v0, p0, Lﹳⁱ/ᵎﹶ;->ˉʿ:I

    invoke-virtual {v4}, Lﹳⁱ/ﾞᴵ;->ʽﹳ()V

    goto :goto_4

    :cond_8
    iget v0, p0, Lﹳⁱ/ᵎﹶ;->ˉʿ:I

    iput v0, v4, Lﹳⁱ/ﾞᴵ;->ˈٴ:I

    iput v3, p0, Lﹳⁱ/ᵎﹶ;->ˉʿ:I

    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ˈ:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    iget v3, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    aput-object v1, v0, v3

    monitor-exit v5

    return v2

    :goto_5
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public abstract ᵎﹶ()Lﹳⁱ/ˑﹳ;
.end method

.method public final ᵔʾ(Lﹳⁱ/ˑﹳ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˆʾ:Landroidx/media3/decoder/DecoderException;

    if-nez v1, :cond_2

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʼˎ:Lﹳⁱ/ˑﹳ;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lﹳⁱ/ᵎﹶ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lﹳⁱ/ᵎﹶ;->ᵔᵢ:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lﹳⁱ/ᵎﹶ;->ʼˎ:Lﹳⁱ/ˑﹳ;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract ᵔᵢ()Lﹳⁱ/ﾞᴵ;
.end method

.method public final bridge synthetic ⁱˊ(Lʽᐧ/ᵔᵢ;)V
    .locals 0

    invoke-virtual {p0, p1}, Lﹳⁱ/ᵎﹶ;->ᵔʾ(Lﹳⁱ/ˑﹳ;)V

    return-void
.end method

.method public ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lﹳⁱ/ᵎﹶ;->ﾞʻ:Z

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ﹳٴ:Lcom/parse/ˋᵔ;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final ﾞʻ()Lﹳⁱ/ﾞᴵ;
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˆʾ:Landroidx/media3/decoder/DecoderException;

    if-nez v1, :cond_1

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˈ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˈ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳⁱ/ﾞᴵ;

    monitor-exit v0

    return-object v1

    :cond_1
    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ﾞᴵ()Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳⁱ/ᵎﹶ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ˆʾ:Landroidx/media3/decoder/DecoderException;

    if-nez v1, :cond_2

    iget-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʼˎ:Lﹳⁱ/ˑﹳ;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v1, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lﹳⁱ/ᵎﹶ;->ˑﹳ:[Lﹳⁱ/ˑﹳ;

    sub-int/2addr v1, v2

    iput v1, p0, Lﹳⁱ/ᵎﹶ;->ᵎﹶ:I

    aget-object v1, v3, v1

    :goto_1
    iput-object v1, p0, Lﹳⁱ/ᵎﹶ;->ʼˎ:Lﹳⁱ/ˑﹳ;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_2
    throw v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
