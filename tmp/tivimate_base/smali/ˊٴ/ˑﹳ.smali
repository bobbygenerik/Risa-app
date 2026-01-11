.class public final Lˊٴ/ˑﹳ;
.super Lˊٴ/ʽ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Ljava/util/zip/Deflater;

.field public ᴵˊ:[B


# virtual methods
.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lˊٴ/ˑﹳ;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lˊٴ/ˑﹳ;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˊٴ/ˑﹳ;->ʽʽ:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lˊٴ/ˑﹳ;->ᴵˊ:[B

    array-length p2, p1

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p3, p2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result p2

    if-lez p2, :cond_0

    invoke-super {p0, p1, p3, p2}, Lˊٴ/ʽ;->write([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˊٴ/ˑﹳ;->ʽʽ:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lˊٴ/ˑﹳ;->ᴵˊ:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    if-lez v2, :cond_0

    invoke-super {p0, v1, v3, v2}, Lˊٴ/ʽ;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    invoke-super {p0}, Lˊٴ/ʽ;->ʽ()V

    return-void
.end method
