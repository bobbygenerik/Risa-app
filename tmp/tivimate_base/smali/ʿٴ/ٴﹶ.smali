.class public final Lʿٴ/ٴﹶ;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public ʾˋ:I


# direct methods
.method public constructor <init>(Lʿٴ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lʿٴ/ٴﹶ;->ʾˋ:I

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    iget v0, p0, Lʿٴ/ٴﹶ;->ʾˋ:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iput p1, p0, Lʿٴ/ٴﹶ;->ʾˋ:I
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

.method public final read()I
    .locals 6

    .prologue
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lʿٴ/ٴﹶ;->ʽ(J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v2

    invoke-virtual {p0, v0, v1}, Lʿٴ/ٴﹶ;->ᵎﹶ(J)V

    return v2
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lʿٴ/ٴﹶ;->ʽ(J)J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    invoke-virtual {p0, p2, p3}, Lʿٴ/ٴﹶ;->ᵎﹶ(J)V

    return p1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lʿٴ/ٴﹶ;->ʾˋ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final skip(J)J
    .locals 2

    .prologue
    invoke-virtual {p0, p1, p2}, Lʿٴ/ٴﹶ;->ʽ(J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lʿٴ/ٴﹶ;->ᵎﹶ(J)V

    return-wide p1
.end method

.method public final ʽ(J)J
    .locals 3

    .prologue
    iget v0, p0, Lʿٴ/ٴﹶ;->ʾˋ:I

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    int-to-long p1, v0

    :cond_1
    return-wide p1
.end method

.method public final ᵎﹶ(J)V
    .locals 3

    .prologue
    iget v0, p0, Lʿٴ/ٴﹶ;->ʾˋ:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lʿٴ/ٴﹶ;->ʾˋ:I

    :cond_0
    return-void
.end method
