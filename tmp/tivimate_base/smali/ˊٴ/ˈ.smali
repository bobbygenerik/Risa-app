.class public final Lˊٴ/ˈ;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lˊٴ/ᵎﹶ;


# instance fields
.field public ʾˋ:Lˊٴ/ᵔᵢ;

.field public ᴵˊ:J


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    invoke-virtual {v0}, Lˊٴ/ᵔᵢ;->close()V

    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lˊٴ/ˈ;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lˊٴ/ˈ;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    iget-object v0, p0, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    invoke-virtual {v0, p1, p2, p3}, Lˊٴ/ᵔᵢ;->write([BII)V

    iget-wide p1, p0, Lˊٴ/ˈ;->ᴵˊ:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lˊٴ/ˈ;->ᴵˊ:J

    return-void
.end method

.method public final ʽ()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lˊٴ/ˈ;->ˉˆ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    iget v0, v0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉˆ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    invoke-static {v0}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lˊٴ/ᵔᵢ;->ᴵˊ:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ᵎﹶ()J
    .locals 2

    .prologue
    iget-object v0, p0, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    invoke-static {v0}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lˊٴ/ˈ;->ᴵˊ:J

    return-wide v0
.end method
