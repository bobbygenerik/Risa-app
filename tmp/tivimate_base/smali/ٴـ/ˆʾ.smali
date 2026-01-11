.class public final Lٴـ/ˆʾ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public ʽʽ:[B

.field public ʾˋ:Ljava/io/PushbackInputStream;

.field public ˈٴ:J

.field public ᴵˊ:J


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lٴـ/ˆʾ;->ʾˋ:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    iget-object v0, p0, Lٴـ/ˆʾ;->ʽʽ:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lٴـ/ˆʾ;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    aget-byte v0, v0, v2

    return v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ˆʾ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    iget-wide v0, p0, Lٴـ/ˆʾ;->ˈٴ:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lٴـ/ˆʾ;->ᴵˊ:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v4, p3

    sub-long/2addr v0, v2

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lٴـ/ˆʾ;->ʾˋ:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    iget-wide p2, p0, Lٴـ/ˆʾ;->ᴵˊ:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lٴـ/ˆʾ;->ᴵˊ:J

    :cond_2
    return p1
.end method
