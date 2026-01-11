.class public abstract Lᴵﾞ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ʼˎ(Ljava/io/InputStream;[BII)I
    .locals 3

    .prologue
    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_3

    :goto_0
    if-eq v0, p3, :cond_2

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    return v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length greater than buffer size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative offset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ʽ(J)J
    .locals 9

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const-wide/16 v2, 0x3e

    and-long/2addr v0, v2

    long-to-int v8, v0

    const/4 v0, 0x5

    shr-long v0, p0, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v7, v0

    const/16 v0, 0xb

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1f

    and-long/2addr v0, v2

    long-to-int v6, v0

    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v5, v0

    const/16 v0, 0x15

    shr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v4, v0

    const/16 v0, 0x19

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x7bc

    add-long/2addr v0, v2

    long-to-int v3, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static ˆʾ(BI)B
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static ˈ(J)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/32 v1, 0x210000

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x7bc

    if-ge v4, v5, :cond_1

    move-wide v3, v1

    goto :goto_0

    :cond_1
    sub-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x19

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    shl-int/lit8 v6, v7, 0xb

    or-int/2addr v4, v6

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v5, v6, 0x5

    or-int/2addr v4, v5

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    shr-int/2addr v0, v3

    or-int/2addr v0, v4

    int-to-long v3, v0

    :goto_0
    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x7d0

    rem-long/2addr p0, v0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    add-long/2addr v3, p0

    return-wide v3

    :cond_2
    return-wide v1
.end method

.method public static ˑﹳ(Lـʽ/ⁱˊ;)I
    .locals 2

    .prologue
    iget v0, p0, Lـʽ/ⁱˊ;->ᴵᵔ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    if-eqz p0, :cond_1

    iget p0, p0, Lـʽ/ﹳٴ;->ٴᵢ:I

    return p0

    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "AesExtraDataRecord not present in local header for aes encrypted data"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ٴﹶ(BI)B
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static ᵎﹶ(Ljava/lang/String;)Z
    .locals 0

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ᵔᵢ(Ljava/io/InputStream;[B)I
    .locals 6

    .prologue
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    array-length v2, p1

    if-eq v0, v2, :cond_5

    if-ltz v0, :cond_4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v3, p1

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    if-eq v2, v1, :cond_2

    const/16 v2, 0xf

    if-ge v4, v2, :cond_2

    invoke-virtual {p0, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v0, v2

    sub-int/2addr v3, v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_1
    array-length p0, p1

    if-ne v2, p0, :cond_3

    return v2

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read fully into byte buffer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid readLength"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return v0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF reached when trying to read stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ⁱˊ(Lـʽ/ٴﹶ;)Lٴـ/ᵔᵢ;
    .locals 5

    .prologue
    iget-object v0, p0, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip.001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lٴـ/ﾞᴵ;

    iget-object p0, p0, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    new-instance v1, Lٴـ/ᵎﹶ;

    invoke-static {p0}, Lᴵﾞ/ʽ;->ⁱˊ(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lٴـ/ᵎﹶ;-><init>(Ljava/io/File;[Ljava/io/File;)V

    iput-object v1, v0, Lٴـ/ﾞᴵ;->ʾˋ:Lٴـ/ᵎﹶ;

    return-object v0

    :cond_0
    new-instance v0, Lٴـ/ﾞʻ;

    iget-object v1, p0, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    iget-boolean v2, p0, Lـʽ/ٴﹶ;->ˊʻ:Z

    iget-object p0, p0, Lـʽ/ٴﹶ;->ʽʽ:Lـʽ/ʽ;

    iget p0, p0, Lـʽ/ʽ;->ʽʽ:I

    invoke-direct {v0}, Ljava/io/InputStream;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lٴـ/ﾞʻ;->ᴵᵔ:I

    const/4 v3, 0x1

    new-array v3, v3, [B

    iput-object v3, v0, Lٴـ/ﾞʻ;->ˊʻ:[B

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lٴـ/ﾞʻ;->ʾˋ:Ljava/io/RandomAccessFile;

    iput-object v1, v0, Lٴـ/ﾞʻ;->ᴵˊ:Ljava/io/File;

    iput-boolean v2, v0, Lٴـ/ﾞʻ;->ˈٴ:Z

    iput p0, v0, Lٴـ/ﾞʻ;->ʽʽ:I

    if-eqz v2, :cond_1

    iput p0, v0, Lٴـ/ﾞʻ;->ᴵᵔ:I

    :cond_1
    return-object v0
.end method

.method public static ﹳٴ([CZ)[B
    .locals 2

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object p1, Lᴵﾞ/ˈ;->ⁱˊ:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    array-length p1, p0

    new-array p1, p1, [B

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char v1, p0, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    array-length p1, p0

    new-array p1, p1, [B

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-char v1, p0, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static ﾞᴵ(BI)Z
    .locals 4

    .prologue
    int-to-long v0, p0

    const-wide/16 v2, 0x1

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
