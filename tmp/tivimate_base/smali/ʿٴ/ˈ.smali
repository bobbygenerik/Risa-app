.class public final Lʿٴ/ˈ;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final ʾˋ:J

.field public ᴵˊ:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lʿٴ/ˈ;->ʾˋ:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized available()I
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lʿٴ/ˈ;->ʾˋ:J

    iget v2, p0, Lʿٴ/ˈ;->ᴵˊ:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized read()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1}, Lʿٴ/ˈ;->ʽ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lʿٴ/ˈ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized read([BII)I
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lʿٴ/ˈ;->ʽ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ʽ(I)V
    .locals 6

    .prologue
    if-ltz p1, :cond_0

    iget v0, p0, Lʿٴ/ˈ;->ᴵˊ:I

    add-int/2addr v0, p1

    iput v0, p0, Lʿٴ/ˈ;->ᴵˊ:I

    return-void

    :cond_0
    iget p1, p0, Lʿٴ/ˈ;->ᴵˊ:I

    int-to-long v0, p1

    iget-wide v2, p0, Lʿٴ/ˈ;->ʾˋ:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-gtz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to read all expected data, expected: "

    const-string v1, ", but read: "

    invoke-static {v2, v3, v0, v1}, Lʼﾞ/ˊˋ;->ʻٴ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lʿٴ/ˈ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
