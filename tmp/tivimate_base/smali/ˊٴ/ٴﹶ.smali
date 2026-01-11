.class public final Lˊٴ/ٴﹶ;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public ʽʽ:Lـʽ/ٴﹶ;

.field public ʾˋ:Lˊٴ/ˈ;

.field public ˆﾞ:Z

.field public ˈٴ:Lˊٴ/ʽ;

.field public ˉٴ:Lcom/parse/ٴʼ;

.field public ˊʻ:Lـʽ/ﾞᴵ;

.field public ٴʼ:Lᵢ/ﹳٴ;

.field public ٴᵢ:Lᵎˉ/ⁱˊ;

.field public ᴵˊ:[C

.field public ᴵᵔ:Lـʽ/ˑﹳ;

.field public ᵎˊ:J

.field public ᵎⁱ:Ljava/util/zip/CRC32;

.field public ᵔי:Lـʽ/ᵎﹶ;

.field public ᵔٴ:Z


# virtual methods
.method public final close()V
    .locals 5

    .prologue
    iget-object v0, p0, Lˊٴ/ٴﹶ;->ʽʽ:Lـʽ/ٴﹶ;

    iget-object v1, p0, Lˊٴ/ٴﹶ;->ʾˋ:Lˊٴ/ˈ;

    iget-boolean v2, p0, Lˊٴ/ٴﹶ;->ᵔٴ:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lˊٴ/ٴﹶ;->ʽ()Lـʽ/ˑﹳ;

    :cond_0
    iget-object v2, v0, Lـʽ/ٴﹶ;->ʽʽ:Lـʽ/ʽ;

    iget-object v3, v1, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    invoke-static {v3}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, v1, Lˊٴ/ˈ;->ᴵˊ:J

    :goto_0
    iput-wide v3, v2, Lـʽ/ʽ;->ٴᵢ:J

    iget-object v2, p0, Lˊٴ/ٴﹶ;->ˉٴ:Lcom/parse/ٴʼ;

    iget-object v3, p0, Lˊٴ/ٴﹶ;->ᵔי:Lـʽ/ᵎﹶ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Lcom/parse/ٴʼ;->ᵔי(Lـʽ/ٴﹶ;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Lˊٴ/ˈ;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lˊٴ/ٴﹶ;->ˆﾞ:Z

    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lˊٴ/ٴﹶ;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lˊٴ/ٴﹶ;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˊٴ/ٴﹶ;->ˆﾞ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lˊٴ/ٴﹶ;->ᵎⁱ:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    iget-object v0, p0, Lˊٴ/ٴﹶ;->ˈٴ:Lˊٴ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lˊٴ/ʽ;->write([BII)V

    iget-wide p1, p0, Lˊٴ/ٴﹶ;->ᵎˊ:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lˊٴ/ٴﹶ;->ᵎˊ:J

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ()Lـʽ/ˑﹳ;
    .locals 11

    .prologue
    iget-object v0, p0, Lˊٴ/ٴﹶ;->ʽʽ:Lـʽ/ٴﹶ;

    iget-object v1, p0, Lˊٴ/ٴﹶ;->ᵎⁱ:Ljava/util/zip/CRC32;

    iget-object v2, p0, Lˊٴ/ٴﹶ;->ˈٴ:Lˊٴ/ʽ;

    invoke-virtual {v2}, Lˊٴ/ʽ;->ʽ()V

    iget-object v2, p0, Lˊٴ/ٴﹶ;->ˈٴ:Lˊٴ/ʽ;

    iget-object v2, v2, Lˊٴ/ʽ;->ʾˋ:Lˊٴ/ⁱˊ;

    iget-object v2, v2, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    iget-wide v2, v2, Lˊٴ/ˆʾ;->ʾˋ:J

    iget-object v4, p0, Lˊٴ/ٴﹶ;->ᴵᵔ:Lـʽ/ˑﹳ;

    iput-wide v2, v4, Lـʽ/ⁱˊ;->ˉٴ:J

    iget-object v5, p0, Lˊٴ/ٴﹶ;->ˊʻ:Lـʽ/ﾞᴵ;

    iput-wide v2, v5, Lـʽ/ⁱˊ;->ˉٴ:J

    iget-wide v2, p0, Lˊٴ/ٴﹶ;->ᵎˊ:J

    iput-wide v2, v4, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iput-wide v2, v5, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iget-boolean v2, v4, Lـʽ/ⁱˊ;->ˆﾞ:Z

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    iget v2, v4, Lـʽ/ⁱˊ;->ᵔٴ:I

    invoke-static {v2, v3}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    iget v2, v2, Lـʽ/ﹳٴ;->ˈٴ:I

    invoke-static {v2, v5}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lˊٴ/ٴﹶ;->ᴵᵔ:Lـʽ/ˑﹳ;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    iput-wide v6, v2, Lـʽ/ⁱˊ;->ٴᵢ:J

    iget-object v2, p0, Lˊٴ/ٴﹶ;->ˊʻ:Lـʽ/ﾞᴵ;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    iput-wide v6, v2, Lـʽ/ⁱˊ;->ٴᵢ:J

    :cond_1
    iget-object v2, v0, Lـʽ/ٴﹶ;->ʾˋ:Ljava/util/ArrayList;

    iget-object v4, p0, Lˊٴ/ٴﹶ;->ˊʻ:Lـʽ/ﾞᴵ;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    iget-object v0, v0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    iget-object v2, p0, Lˊٴ/ٴﹶ;->ᴵᵔ:Lـʽ/ˑﹳ;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lˊٴ/ٴﹶ;->ˊʻ:Lـʽ/ﾞᴵ;

    iget-boolean v2, v0, Lـʽ/ⁱˊ;->ˈʿ:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lˊٴ/ٴﹶ;->ˉٴ:Lcom/parse/ٴʼ;

    iget-object v4, p0, Lˊٴ/ٴﹶ;->ʾˋ:Lˊٴ/ˈ;

    iget-object v6, v2, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, [B

    iget-object v2, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lᵢ/ﹳٴ;

    if-eqz v4, :cond_3

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/32 v8, 0x8074b50

    long-to-int v8, v8

    :try_start_0
    invoke-virtual {v2, v7, v8}, Lᵢ/ﹳٴ;->ˉٴ(Ljava/io/OutputStream;I)V

    iget-wide v8, v0, Lـʽ/ⁱˊ;->ٴᵢ:J

    invoke-static {v8, v9, v6}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-boolean v9, v0, Lـʽ/ﾞᴵ;->ﹳـ:Z

    if-eqz v9, :cond_2

    iget-wide v8, v0, Lـʽ/ⁱˊ;->ˉٴ:J

    invoke-virtual {v2, v7, v8, v9}, Lᵢ/ﹳٴ;->ٴʼ(Ljava/io/OutputStream;J)V

    iget-wide v8, v0, Lـʽ/ⁱˊ;->ᵎⁱ:J

    invoke-virtual {v2, v7, v8, v9}, Lᵢ/ﹳٴ;->ٴʼ(Ljava/io/OutputStream;J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-wide v9, v0, Lـʽ/ⁱˊ;->ˉٴ:J

    invoke-static {v9, v10, v6}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    invoke-virtual {v7, v6, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-wide v9, v0, Lـʽ/ⁱˊ;->ᵎⁱ:J

    invoke-static {v9, v10, v6}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    invoke-virtual {v7, v6, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lˊٴ/ˈ;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null, cannot write extended local header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lˊٴ/ٴﹶ;->ᵎˊ:J

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Lˊٴ/ٴﹶ;->ˈٴ:Lˊٴ/ʽ;

    invoke-virtual {v0}, Lˊٴ/ʽ;->close()V

    iput-boolean v5, p0, Lˊٴ/ٴﹶ;->ᵔٴ:Z

    iget-object v0, p0, Lˊٴ/ٴﹶ;->ᴵᵔ:Lـʽ/ˑﹳ;

    return-object v0
.end method

.method public final ᵎﹶ(Lـʽ/ﾞʻ;)V
    .locals 22

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lˊٴ/ٴﹶ;->ᵔי:Lـʽ/ᵎﹶ;

    iget-object v3, v1, Lˊٴ/ٴﹶ;->ʾˋ:Lˊٴ/ˈ;

    iget-object v4, v0, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    const-string v5, "fileNameInZip is null or empty"

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_34

    iget v4, v0, Lـʽ/ﾞʻ;->ﹳٴ:I

    const/4 v10, 0x1

    const-wide/16 v6, 0x0

    if-ne v4, v10, :cond_1

    iget-wide v8, v0, Lـʽ/ﾞʻ;->ٴﹶ:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_1

    iget-object v4, v0, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    invoke-static {v4}, Lᴵﾞ/ʽ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lـʽ/ﾞʻ;->ﾞʻ:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v8, Lـʽ/ﾞʻ;

    invoke-direct {v8, v0}, Lـʽ/ﾞʻ;-><init>(Lـʽ/ﾞʻ;)V

    iget-object v4, v0, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    invoke-static {v4}, Lᴵﾞ/ʽ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_2

    iput-boolean v12, v8, Lـʽ/ﾞʻ;->ﾞʻ:Z

    iput v10, v8, Lـʽ/ﾞʻ;->ﹳٴ:I

    iput-boolean v12, v8, Lـʽ/ﾞʻ;->ʽ:Z

    iput-wide v6, v8, Lـʽ/ﾞʻ;->ٴﹶ:J

    :cond_2
    iget-wide v13, v0, Lـʽ/ﾞʻ;->ˆʾ:J

    cmp-long v0, v13, v6

    if-gtz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v0, v13, v6

    if-gez v0, :cond_3

    iput-wide v6, v8, Lـʽ/ﾞʻ;->ˆʾ:J

    goto :goto_1

    :cond_3
    iput-wide v13, v8, Lـʽ/ﾞʻ;->ˆʾ:J

    :cond_4
    :goto_1
    iget-object v0, v1, Lˊٴ/ٴﹶ;->ٴᵢ:Lᵎˉ/ⁱˊ;

    invoke-virtual {v3}, Lˊٴ/ˈ;->ˉˆ()Z

    move-result v4

    invoke-virtual {v3}, Lˊٴ/ˈ;->ʽ()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v11, v2, Lـʽ/ᵎﹶ;->ⁱˊ:Z

    iget-object v13, v1, Lˊٴ/ٴﹶ;->ٴʼ:Lᵢ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lـʽ/ˑﹳ;

    invoke-direct {v0}, Lـʽ/ˑﹳ;-><init>()V

    const/4 v14, 0x3

    iput v14, v0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    const/4 v15, 0x2

    new-array v6, v15, [B

    const/16 v7, 0x33

    aput-byte v7, v6, v12

    aput-byte v14, v6, v10

    invoke-static {}, Lᴵﾞ/ʽ;->ˆʾ()Z

    move-result v16

    if-eqz v16, :cond_5

    aput-byte v12, v6, v10

    :cond_5
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v6}, Lᵢ/ﹳٴ;->ᴵˊ(I[B)I

    move-result v6

    iput v6, v0, Lـʽ/ˑﹳ;->ﹳـ:I

    iget v6, v8, Lـʽ/ﾞʻ;->ﹳٴ:I

    if-ne v6, v15, :cond_6

    move v6, v15

    :goto_2
    move/from16 v16, v12

    goto :goto_3

    :cond_6
    move v6, v10

    goto :goto_2

    :goto_3
    iget-wide v12, v8, Lـʽ/ﾞʻ;->ٴﹶ:J

    move/from16 p1, v11

    const-wide v10, 0xffffffffL

    cmp-long v12, v12, v10

    if-lez v12, :cond_7

    move v6, v14

    :cond_7
    iget-boolean v12, v8, Lـʽ/ﾞʻ;->ʽ:Z

    const/4 v13, 0x4

    if-eqz v12, :cond_8

    iget v12, v8, Lـʽ/ﾞʻ;->ˈ:I

    invoke-static {v12, v13}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v12

    if-eqz v12, :cond_8

    move v6, v13

    :cond_8
    const/16 v12, 0xa

    const/16 v17, 0x14

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    if-eq v6, v15, :cond_b

    if-eq v6, v14, :cond_a

    if-ne v6, v13, :cond_9

    const/16 v6, 0x33

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    throw v0

    :cond_a
    const/16 v6, 0x2d

    goto :goto_4

    :cond_b
    move/from16 v6, v17

    goto :goto_4

    :cond_c
    move v6, v12

    :goto_4
    iput v6, v0, Lـʽ/ⁱˊ;->ʽʽ:I

    iget-boolean v6, v8, Lـʽ/ﾞʻ;->ʽ:Z

    if-eqz v6, :cond_11

    iget v7, v8, Lـʽ/ﾞʻ;->ˈ:I

    if-ne v7, v13, :cond_11

    iput v14, v0, Lـʽ/ⁱˊ;->ᴵᵔ:I

    new-instance v7, Lـʽ/ﹳٴ;

    invoke-direct {v7}, Lـʽ/ﹳٴ;-><init>()V

    move-wide/from16 v18, v10

    iget v10, v8, Lـʽ/ﾞʻ;->ᵎﹶ:I

    if-eqz v10, :cond_d

    iput v10, v7, Lـʽ/ﹳٴ;->ˈٴ:I

    :cond_d
    iget v10, v8, Lـʽ/ﾞʻ;->ﾞᴵ:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    iput v11, v7, Lـʽ/ﹳٴ;->ˊʻ:I

    goto :goto_5

    :cond_e
    if-ne v10, v15, :cond_f

    iput v15, v7, Lـʽ/ﹳٴ;->ˊʻ:I

    goto :goto_5

    :cond_f
    if-ne v10, v14, :cond_10

    iput v14, v7, Lـʽ/ﹳٴ;->ˊʻ:I

    :goto_5
    iget v10, v8, Lـʽ/ﾞʻ;->ﹳٴ:I

    iput v10, v7, Lـʽ/ﹳٴ;->ٴᵢ:I

    iput-object v7, v0, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    iget v7, v0, Lـʽ/ⁱˊ;->ᵎˊ:I

    add-int/lit8 v7, v7, 0xb

    iput v7, v0, Lـʽ/ⁱˊ;->ᵎˊ:I

    goto :goto_6

    :cond_10
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid AES key strength"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-wide/from16 v18, v10

    iget v7, v8, Lـʽ/ﾞʻ;->ﹳٴ:I

    iput v7, v0, Lـʽ/ⁱˊ;->ᴵᵔ:I

    :goto_6
    if-eqz v6, :cond_13

    iget v6, v8, Lـʽ/ﾞʻ;->ˈ:I

    if-eqz v6, :cond_12

    const/4 v10, 0x1

    if-eq v6, v10, :cond_12

    iput-boolean v10, v0, Lـʽ/ⁱˊ;->ˆﾞ:Z

    iput v6, v0, Lـʽ/ⁱˊ;->ᵔٴ:I

    goto :goto_7

    :cond_12
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_7
    iget-object v6, v8, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    invoke-static {v6}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    iput-object v6, v0, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    sget-object v5, Lᴵﾞ/ˈ;->ʽ:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    iput v7, v0, Lـʽ/ⁱˊ;->ٴʼ:I

    if-eqz v4, :cond_14

    goto :goto_8

    :cond_14
    move/from16 v9, v16

    :goto_8
    iput v9, v0, Lـʽ/ˑﹳ;->ˈⁱ:I

    iget-wide v9, v8, Lـʽ/ﾞʻ;->ˆʾ:J

    invoke-static {v9, v10}, Lᴵﾞ/ﹳٴ;->ˈ(J)J

    move-result-wide v9

    iput-wide v9, v0, Lـʽ/ⁱˊ;->ˊʻ:J

    invoke-static {v6}, Lᴵﾞ/ʽ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lـʽ/ⁱˊ;->ـˏ:Z

    new-array v6, v13, [B

    const-string v7, "os.name"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "nux"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v9, "mac"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto :goto_9

    :cond_15
    invoke-static {}, Lᴵﾞ/ʽ;->ˆʾ()Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v4, :cond_18

    aget-byte v4, v6, v16

    invoke-static {v4, v13}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    aput-byte v4, v6, v16

    goto :goto_a

    :cond_16
    :goto_9
    if-eqz v4, :cond_17

    sget-object v4, Lᴵﾞ/ʽ;->ⁱˊ:[B

    move/from16 v7, v16

    invoke-static {v4, v7, v6, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    :cond_17
    move/from16 v7, v16

    sget-object v4, Lᴵﾞ/ʽ;->ﹳٴ:[B

    invoke-static {v4, v7, v6, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    :goto_a
    iput-object v6, v0, Lـʽ/ˑﹳ;->ᴵˑ:[B

    iget-boolean v4, v8, Lـʽ/ﾞʻ;->ﾞʻ:Z

    if-eqz v4, :cond_19

    iget-wide v6, v8, Lـʽ/ﾞʻ;->ٴﹶ:J

    const-wide/16 v9, -0x1

    cmp-long v4, v6, v9

    if-nez v4, :cond_19

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lـʽ/ⁱˊ;->ᵎⁱ:J

    goto :goto_b

    :cond_19
    iget-wide v6, v8, Lـʽ/ﾞʻ;->ٴﹶ:J

    iput-wide v6, v0, Lـʽ/ⁱˊ;->ᵎⁱ:J

    :goto_b
    iget-boolean v4, v8, Lـʽ/ﾞʻ;->ʽ:Z

    if-eqz v4, :cond_1a

    iget v4, v8, Lـʽ/ﾞʻ;->ˈ:I

    if-ne v4, v15, :cond_1a

    iget-wide v6, v8, Lـʽ/ﾞʻ;->ᵔᵢ:J

    iput-wide v6, v0, Lـʽ/ⁱˊ;->ٴᵢ:J

    :cond_1a
    iget-boolean v4, v0, Lـʽ/ⁱˊ;->ˆﾞ:Z

    new-array v6, v15, [B

    if-eqz v4, :cond_1b

    const/4 v7, 0x0

    invoke-static {v7, v7}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_c
    iget v7, v8, Lـʽ/ﾞʻ;->ﹳٴ:I

    invoke-static {v15, v7}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    iget v9, v8, Lـʽ/ﾞʻ;->ⁱˊ:I

    if-eqz v7, :cond_20

    const/4 v7, 0x6

    invoke-static {v7, v9}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v10, 0x1

    invoke-static {v4, v10}, Lᴵﾞ/ﹳٴ;->ٴﹶ(BI)B

    move-result v4

    invoke-static {v4, v15}, Lᴵﾞ/ﹳٴ;->ٴﹶ(BI)B

    move-result v4

    goto :goto_d

    :cond_1c
    const/4 v10, 0x1

    const/16 v7, 0x8

    invoke-static {v7, v9}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-static {v4, v10}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    invoke-static {v4, v15}, Lᴵﾞ/ﹳٴ;->ٴﹶ(BI)B

    move-result v4

    goto :goto_d

    :cond_1d
    invoke-static {v13, v9}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-static {v4, v10}, Lᴵﾞ/ﹳٴ;->ٴﹶ(BI)B

    move-result v4

    invoke-static {v4, v15}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    goto :goto_d

    :cond_1e
    invoke-static {v15, v9}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-static {v12, v9}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    if-eqz v7, :cond_21

    :cond_1f
    invoke-static {v4, v10}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    invoke-static {v4, v15}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    goto :goto_d

    :cond_20
    const/4 v10, 0x1

    :cond_21
    :goto_d
    iget-boolean v7, v8, Lـʽ/ﾞʻ;->ﾞʻ:Z

    if-eqz v7, :cond_22

    invoke-static {v4, v14}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    :cond_22
    const/16 v16, 0x0

    aput-byte v4, v6, v16

    aget-byte v4, v6, v10

    invoke-static {v4, v14}, Lᴵﾞ/ﹳٴ;->ˆʾ(BI)B

    move-result v4

    aput-byte v4, v6, v10

    iput-object v6, v0, Lـʽ/ⁱˊ;->ˈٴ:[B

    iget-boolean v4, v8, Lـʽ/ﾞʻ;->ﾞʻ:Z

    iput-boolean v4, v0, Lـʽ/ⁱˊ;->ˈʿ:Z

    move v4, v9

    const/4 v9, 0x0

    iput-object v9, v0, Lـʽ/ˑﹳ;->ʿ:Ljava/lang/String;

    iput-object v0, v1, Lˊٴ/ٴﹶ;->ᴵᵔ:Lـʽ/ˑﹳ;

    iget-object v6, v3, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    invoke-static {v6}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v6, v6, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    goto :goto_e

    :cond_23
    iget-wide v6, v3, Lˊٴ/ˈ;->ᴵˊ:J

    :goto_e
    iput-wide v6, v0, Lـʽ/ˑﹳ;->ˉـ:J

    iget-object v0, v1, Lˊٴ/ٴﹶ;->ᴵᵔ:Lـʽ/ˑﹳ;

    new-instance v6, Lـʽ/ﾞᴵ;

    invoke-direct {v6}, Lـʽ/ﾞᴵ;-><init>()V

    const/4 v10, 0x1

    iput v10, v6, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    iget v7, v0, Lـʽ/ⁱˊ;->ʽʽ:I

    iput v7, v6, Lـʽ/ⁱˊ;->ʽʽ:I

    iget v7, v0, Lـʽ/ⁱˊ;->ᴵᵔ:I

    iput v7, v6, Lـʽ/ⁱˊ;->ᴵᵔ:I

    iget-wide v10, v0, Lـʽ/ⁱˊ;->ˊʻ:J

    iput-wide v10, v6, Lـʽ/ⁱˊ;->ˊʻ:J

    iget-wide v10, v0, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iput-wide v10, v6, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iget v7, v0, Lـʽ/ⁱˊ;->ٴʼ:I

    iput v7, v6, Lـʽ/ⁱˊ;->ٴʼ:I

    iget-object v7, v0, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    iput-object v7, v6, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    iget-boolean v7, v0, Lـʽ/ⁱˊ;->ˆﾞ:Z

    iput-boolean v7, v6, Lـʽ/ⁱˊ;->ˆﾞ:Z

    iget v7, v0, Lـʽ/ⁱˊ;->ᵔٴ:I

    iput v7, v6, Lـʽ/ⁱˊ;->ᵔٴ:I

    iget-object v7, v0, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    iput-object v7, v6, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    iget-wide v10, v0, Lـʽ/ⁱˊ;->ٴᵢ:J

    iput-wide v10, v6, Lـʽ/ⁱˊ;->ٴᵢ:J

    iget-wide v10, v0, Lـʽ/ⁱˊ;->ˉٴ:J

    iput-wide v10, v6, Lـʽ/ⁱˊ;->ˉٴ:J

    iget-object v7, v0, Lـʽ/ⁱˊ;->ˈٴ:[B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iput-object v7, v6, Lـʽ/ⁱˊ;->ˈٴ:[B

    iget-boolean v7, v0, Lـʽ/ⁱˊ;->ˈʿ:Z

    iput-boolean v7, v6, Lـʽ/ⁱˊ;->ˈʿ:Z

    iget v0, v0, Lـʽ/ⁱˊ;->ᵎˊ:I

    iput v0, v6, Lـʽ/ⁱˊ;->ᵎˊ:I

    iput-object v6, v1, Lˊٴ/ٴﹶ;->ˊʻ:Lـʽ/ﾞᴵ;

    iget-object v0, v1, Lˊٴ/ٴﹶ;->ˉٴ:Lcom/parse/ٴʼ;

    iget-object v7, v1, Lˊٴ/ٴﹶ;->ʽʽ:Lـʽ/ٴﹶ;

    iget-object v10, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v10, [B

    iget-object v0, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢ/ﹳٴ;

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget v12, v6, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    invoke-static {v12}, Lᐧـ/ˈ;->ᵎﹶ(I)J

    move-result-wide v14

    long-to-int v12, v14

    invoke-virtual {v0, v11, v12}, Lᵢ/ﹳٴ;->ˉٴ(Ljava/io/OutputStream;I)V

    iget v12, v6, Lـʽ/ⁱˊ;->ʽʽ:I

    invoke-virtual {v0, v11, v12}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v12, v6, Lـʽ/ⁱˊ;->ˈٴ:[B

    invoke-virtual {v11, v12}, Ljava/io/OutputStream;->write([B)V

    iget v12, v6, Lـʽ/ⁱˊ;->ᴵᵔ:I

    invoke-static {v12}, Lʼﾞ/ˊˋ;->ﾞᴵ(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    iget-wide v14, v6, Lـʽ/ⁱˊ;->ˊʻ:J

    invoke-static {v14, v15, v10}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-wide v14, v6, Lـʽ/ⁱˊ;->ٴᵢ:J

    invoke-static {v14, v15, v10}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    invoke-virtual {v11, v10, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-wide v14, v6, Lـʽ/ⁱˊ;->ˉٴ:J

    cmp-long v12, v14, v18

    if-gez v12, :cond_25

    move-wide/from16 v20, v14

    iget-wide v13, v6, Lـʽ/ⁱˊ;->ᵎⁱ:J

    cmp-long v13, v13, v18

    if-ltz v13, :cond_24

    goto :goto_f

    :cond_24
    const/4 v13, 0x0

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_16

    :cond_25
    move-wide/from16 v20, v14

    :goto_f
    const/4 v13, 0x1

    :goto_10
    if-eqz v13, :cond_26

    move-wide/from16 v14, v18

    invoke-static {v14, v15, v10}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    const/4 v12, 0x4

    const/4 v14, 0x0

    invoke-virtual {v11, v10, v14, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v11, v10, v14, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v14, 0x1

    iput-boolean v14, v7, Lـʽ/ٴﹶ;->ᵎⁱ:Z

    iput-boolean v14, v6, Lـʽ/ﾞᴵ;->ﹳـ:Z

    move v7, v13

    const/4 v13, 0x0

    goto :goto_11

    :cond_26
    move v7, v13

    move-wide/from16 v12, v20

    const/4 v14, 0x1

    invoke-static {v12, v13, v10}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v13, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-wide v14, v6, Lـʽ/ⁱˊ;->ᵎⁱ:J

    invoke-static {v14, v15, v10}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    invoke-virtual {v11, v10, v13, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iput-boolean v13, v6, Lـʽ/ﾞᴵ;->ﹳـ:Z

    :goto_11
    new-array v10, v13, [B

    iget-object v13, v6, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-static {v13}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    iget-object v10, v6, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    :cond_27
    array-length v13, v10

    invoke-virtual {v0, v11, v13}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    if-eqz v7, :cond_28

    goto :goto_12

    :cond_28
    const/16 v17, 0x0

    :goto_12
    iget-object v13, v6, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    if-eqz v13, :cond_29

    add-int/lit8 v17, v17, 0xb

    :cond_29
    move/from16 v13, v17

    invoke-virtual {v0, v11, v13}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    array-length v13, v10

    if-lez v13, :cond_2a

    invoke-virtual {v11, v10}, Ljava/io/OutputStream;->write([B)V

    :cond_2a
    const/16 v10, 0x10

    if-eqz v7, :cond_2b

    const-wide/16 v13, 0x1

    long-to-int v7, v13

    invoke-virtual {v0, v11, v7}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0, v11, v10}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    iget-wide v13, v6, Lـʽ/ⁱˊ;->ᵎⁱ:J

    invoke-virtual {v0, v11, v13, v14}, Lᵢ/ﹳٴ;->ٴʼ(Ljava/io/OutputStream;J)V

    iget-wide v13, v6, Lـʽ/ⁱˊ;->ˉٴ:J

    invoke-virtual {v0, v11, v13, v14}, Lᵢ/ﹳٴ;->ٴʼ(Ljava/io/OutputStream;J)V

    :cond_2b
    iget-object v6, v6, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    if-eqz v6, :cond_2c

    iget v7, v6, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    invoke-static {v7}, Lᐧـ/ˈ;->ᵎﹶ(I)J

    move-result-wide v13

    long-to-int v7, v13

    invoke-virtual {v0, v11, v7}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    iget v7, v6, Lـʽ/ﹳٴ;->ʽʽ:I

    invoke-virtual {v0, v11, v7}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    iget v7, v6, Lـʽ/ﹳٴ;->ˈٴ:I

    invoke-static {v7}, Lʼﾞ/ˊˋ;->ٴﹶ(I)I

    move-result v7

    invoke-virtual {v0, v11, v7}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v7, v6, Lـʽ/ﹳٴ;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/io/OutputStream;->write([B)V

    iget v5, v6, Lـʽ/ﹳٴ;->ˊʻ:I

    invoke-static {v5}, Lʼﾞ/ˊˋ;->ʼˎ(I)I

    move-result v5

    int-to-byte v5, v5

    const/4 v7, 0x1

    new-array v7, v7, [B

    const/16 v16, 0x0

    aput-byte v5, v7, v16

    invoke-virtual {v11, v7}, Ljava/io/OutputStream;->write([B)V

    iget v5, v6, Lـʽ/ﹳٴ;->ٴᵢ:I

    invoke-static {v5}, Lʼﾞ/ˊˋ;->ﾞᴵ(I)I

    move-result v5

    invoke-virtual {v0, v11, v5}, Lᵢ/ﹳٴ;->ᵎˊ(Ljava/io/ByteArrayOutputStream;I)V

    :cond_2c
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lˊٴ/ˈ;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v7, Lˊٴ/ˆʾ;

    invoke-direct {v7}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v5, 0x0

    iput-wide v5, v7, Lˊٴ/ˆʾ;->ʾˋ:J

    iput-object v3, v7, Lˊٴ/ˆʾ;->ᴵˊ:Ljava/io/OutputStream;

    const/4 v14, 0x0

    iput-boolean v14, v7, Lˊٴ/ˆʾ;->ʽʽ:Z

    iget-boolean v0, v8, Lـʽ/ﾞʻ;->ʽ:Z

    if-nez v0, :cond_2d

    new-instance v6, Lˊٴ/ﾞᴵ;

    const/4 v11, 0x0

    move v0, v4

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v11}, Lˊٴ/ﾞᴵ;-><init>(Lˊٴ/ˆʾ;Lـʽ/ﾞʻ;[CZI)V

    move v14, v10

    move-object v5, v8

    :goto_13
    const/4 v9, 0x2

    goto :goto_14

    :cond_2d
    move v0, v4

    move-object v4, v7

    move-object v5, v8

    const/4 v14, 0x1

    iget-object v6, v1, Lˊٴ/ٴﹶ;->ᴵˊ:[C

    if-eqz v6, :cond_32

    array-length v3, v6

    if-eqz v3, :cond_32

    iget v3, v5, Lـʽ/ﾞʻ;->ˈ:I

    const/4 v12, 0x4

    if-ne v3, v12, :cond_2e

    new-instance v3, Lˊٴ/ﹳٴ;

    move/from16 v7, p1

    invoke-direct {v3, v4, v5, v6, v7}, Lˊٴ/ⁱˊ;-><init>(Lˊٴ/ˆʾ;Lـʽ/ﾞʻ;[CZ)V

    new-array v4, v10, [B

    iput-object v4, v3, Lˊٴ/ﹳٴ;->ʽʽ:[B

    const/4 v7, 0x0

    iput v7, v3, Lˊٴ/ﹳٴ;->ˈٴ:I

    move-object v6, v3

    goto :goto_13

    :cond_2e
    move/from16 v7, p1

    const/4 v9, 0x2

    if-ne v3, v9, :cond_30

    new-instance v3, Lˊٴ/ﾞᴵ;

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v8}, Lˊٴ/ﾞᴵ;-><init>(Lˊٴ/ˆʾ;Lـʽ/ﾞʻ;[CZI)V

    move-object v6, v3

    :goto_14
    iget v3, v5, Lـʽ/ﾞʻ;->ﹳٴ:I

    if-ne v3, v9, :cond_2f

    new-instance v3, Lˊٴ/ˑﹳ;

    iget v2, v2, Lـʽ/ᵎﹶ;->ﹳٴ:I

    invoke-direct {v3, v6}, Lˊٴ/ʽ;-><init>(Lˊٴ/ⁱˊ;)V

    new-instance v4, Ljava/util/zip/Deflater;

    invoke-static {v0}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v0

    invoke-direct {v4, v0, v14}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v4, v3, Lˊٴ/ˑﹳ;->ʽʽ:Ljava/util/zip/Deflater;

    new-array v0, v2, [B

    iput-object v0, v3, Lˊٴ/ˑﹳ;->ᴵˊ:[B

    goto :goto_15

    :cond_2f
    new-instance v3, Lˊٴ/ʼˎ;

    invoke-direct {v3, v6}, Lˊٴ/ʽ;-><init>(Lˊٴ/ⁱˊ;)V

    :goto_15
    iput-object v3, v1, Lˊٴ/ٴﹶ;->ˈٴ:Lˊٴ/ʽ;

    const/4 v7, 0x0

    iput-boolean v7, v1, Lˊٴ/ٴﹶ;->ᵔٴ:Z

    return-void

    :cond_30
    const/4 v0, 0x3

    if-ne v3, v0, :cond_31

    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "ZIP_STANDARD_VARIANT_STRONG"

    const-string v3, " encryption method is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Invalid encryption method"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "password not set"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_16
    :try_start_1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_17

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw v2

    :cond_33
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
