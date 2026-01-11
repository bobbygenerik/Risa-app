.class public final Lٴـ/ˈ;
.super Lٴـ/ʽ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Ljava/util/zip/Inflater;

.field public ˈٴ:[B

.field public ˊʻ:I

.field public ᴵᵔ:[B


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    :cond_0
    invoke-super {p0}, Lٴـ/ʽ;->close()V

    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    iget-object v0, p0, Lٴـ/ˈ;->ᴵᵔ:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lٴـ/ˈ;->read([BII)I

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

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ˈ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 5

    .prologue
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lٴـ/ˈ;->ˈٴ:[B

    array-length v2, v0

    iget-object v3, p0, Lٴـ/ʽ;->ʾˋ:Lٴـ/ⁱˊ;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lٴـ/ⁱˊ;->read([BII)I

    move-result v2

    iput v2, p0, Lٴـ/ˈ;->ˊʻ:I

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v0, v4, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Unexpected end of input stream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v0

    :goto_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final ʽ(Ljava/io/InputStream;I)V
    .locals 1

    .prologue
    iget-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    :cond_0
    invoke-super {p0, p1, p2}, Lٴـ/ʽ;->ʽ(Ljava/io/InputStream;I)V

    return-void
.end method

.method public final ᵎﹶ(Ljava/io/PushbackInputStream;)I
    .locals 3

    .prologue
    iget-object v0, p0, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lٴـ/ʽ;->ʾˋ:Lٴـ/ⁱˊ;

    iget-object v1, v1, Lٴـ/ⁱˊ;->ʽʽ:[B

    iget v2, p0, Lٴـ/ˈ;->ˊʻ:I

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    :cond_0
    return v0
.end method
