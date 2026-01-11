.class public final Lﹳʻ/ᵔᵢ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lcom/parse/ٴʼ;

.field public final ᴵˊ:Lـʽ/ٴﹶ;


# direct methods
.method public constructor <init>(Lـʽ/ٴﹶ;Lcom/parse/ٴʼ;Lⁱʽ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0, p3}, Lʽⁱ/ᵎﹶ;-><init>(Lⁱʽ/ﹳٴ;)V

    iput-object p1, p0, Lﹳʻ/ᵔᵢ;->ᴵˊ:Lـʽ/ٴﹶ;

    iput-object p2, p0, Lﹳʻ/ᵔᵢ;->ʽʽ:Lcom/parse/ٴʼ;

    return-void
.end method

.method public static ʽˑ(Ljava/io/RandomAccessFile;Lˊٴ/ᵔᵢ;JJLʻˆ/ﹳٴ;I)V
    .locals 4

    .prologue
    add-long/2addr p4, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    cmp-long v2, p4, v0

    if-ltz v2, :cond_5

    cmp-long v2, p2, p4

    if-gtz v2, :cond_5

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long/2addr p4, p2

    int-to-long p2, p7

    cmp-long p2, p4, p2

    if-gez p2, :cond_1

    long-to-int p2, p4

    new-array p2, p2, [B

    goto :goto_0

    :cond_1
    new-array p2, p7, [B

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p3

    const/4 p7, -0x1

    if-eq p3, p7, :cond_4

    const/4 p7, 0x0

    invoke-virtual {p1, p2, p7, p3}, Lˊٴ/ᵔᵢ;->write([BII)V

    int-to-long v2, p3

    invoke-virtual {p6, v2, v3}, Lʻˆ/ﹳٴ;->ﹳٴ(J)V

    add-long/2addr v0, v2

    cmp-long p3, v0, p4

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    array-length p3, p2

    int-to-long v2, p3

    add-long/2addr v2, v0

    cmp-long p3, v2, p4

    if-lez p3, :cond_2

    sub-long p2, p4, v0

    long-to-int p2, p2

    new-array p2, p2, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "invalid offsets"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ˋˊ(Ljava/util/ArrayList;Lـʽ/ˑﹳ;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lـʽ/ˑﹳ;

    invoke-virtual {v1, p1}, Lـʽ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "Could not find file header in list of central directory file headers"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ﹶˎ(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    .prologue
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot rename modified zip file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot delete old zip file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "Could not delete temporary file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ʼᵢ(Ljava/util/ArrayList;Lـʽ/ˑﹳ;J)V
    .locals 7

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-eqz v0, :cond_5

    neg-long v0, p3

    invoke-static {p1, p2}, Lﹳʻ/ᵔᵢ;->ˋˊ(Ljava/util/ArrayList;Lـʽ/ˑﹳ;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lﹳʻ/ᵔᵢ;->ᴵˊ:Lـʽ/ٴﹶ;

    if-ge p2, v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lـʽ/ˑﹳ;

    iget-wide v4, v2, Lـʽ/ˑﹳ;->ˉـ:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lـʽ/ˑﹳ;->ˉـ:J

    iget-boolean v3, v3, Lـʽ/ٴﹶ;->ᵎⁱ:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lـʽ/ⁱˊ;->ˑٴ:Lـʽ/ˆʾ;

    if-eqz v2, :cond_0

    iget-wide v3, v2, Lـʽ/ˆʾ;->ᴵᵔ:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    add-long/2addr v3, v0

    iput-wide v3, v2, Lـʽ/ˆʾ;->ᴵᵔ:J

    goto :goto_0

    :cond_1
    iget-object p1, v3, Lـʽ/ٴﹶ;->ʽʽ:Lـʽ/ʽ;

    iget-wide v0, p1, Lـʽ/ʽ;->ٴᵢ:J

    sub-long/2addr v0, p3

    iput-wide v0, p1, Lـʽ/ʽ;->ٴᵢ:J

    iget p2, p1, Lـʽ/ʽ;->ˊʻ:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lـʽ/ʽ;->ˊʻ:I

    iget p2, p1, Lـʽ/ʽ;->ᴵᵔ:I

    if-lez p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lـʽ/ʽ;->ᴵᵔ:I

    :cond_2
    iget-boolean p1, v3, Lـʽ/ٴﹶ;->ᵎⁱ:Z

    if-eqz p1, :cond_3

    iget-object p1, v3, Lـʽ/ٴﹶ;->ᴵᵔ:Lـʽ/ʼˎ;

    iget-wide v0, p1, Lـʽ/ʼˎ;->ᵎˊ:J

    sub-long/2addr v0, p3

    iput-wide v0, p1, Lـʽ/ʼˎ;->ᵎˊ:J

    iget-wide v0, p1, Lـʽ/ʼˎ;->ᵎⁱ:J

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lـʽ/ʼˎ;->ˉٴ:J

    iget-object p1, v3, Lـʽ/ٴﹶ;->ˈٴ:Lـʽ/ᵔᵢ;

    iget-wide v0, p1, Lـʽ/ᵔᵢ;->ˈٴ:J

    sub-long/2addr v0, p3

    iput-wide v0, p1, Lـʽ/ᵔᵢ;->ˈٴ:J

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not locate modified file header in zipModel"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "long overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʿᵢ(Lʽⁱ/ᵎﹶ;Lʻˆ/ﹳٴ;)V
    .locals 19

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    check-cast v0, Lﹳʻ/ᵎﹶ;

    iget-object v2, v1, Lﹳʻ/ᵔᵢ;->ᴵˊ:Lـʽ/ٴﹶ;

    iget-boolean v3, v2, Lـʽ/ٴﹶ;->ˊʻ:Z

    if-nez v3, :cond_b

    iget-object v3, v0, Lﹳʻ/ᵎﹶ;->ᴵˊ:Ljava/util/List;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lـʽ/ᵎﹶ;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Lʽٴ/ˈ;->ﾞʻ(Lـʽ/ٴﹶ;Ljava/lang/String;)Lـʽ/ˑﹳ;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v2, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    new-instance v6, Ljava/io/File;

    invoke-static {v3}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2710

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v6, Ljava/io/File;

    invoke-static {v3}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance v8, Lˊٴ/ᵔᵢ;

    invoke-direct {v8, v6}, Lˊٴ/ᵔᵢ;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v5, v2, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v7, v5, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v5, v2, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    iget-object v5, v5, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lʻٴ/ˑﹳ;

    const/16 v9, 0x11

    invoke-direct {v5, v9}, Lʻٴ/ˑﹳ;-><init>(I)V

    invoke-static {v15, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x1

    if-ge v11, v5, :cond_a

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v16, v11, 0x1

    check-cast v13, Lـʽ/ˑﹳ;

    invoke-static {v15, v13}, Lﹳʻ/ᵔᵢ;->ˋˊ(Ljava/util/ArrayList;Lـʽ/ˑﹳ;)I

    move-result v11

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v12

    if-ne v11, v14, :cond_5

    iget-boolean v11, v2, Lـʽ/ٴﹶ;->ᵎⁱ:Z

    if-eqz v11, :cond_4

    iget-object v11, v2, Lـʽ/ٴﹶ;->ᴵᵔ:Lـʽ/ʼˎ;

    iget-wide v11, v11, Lـʽ/ʼˎ;->ᵎˊ:J

    goto :goto_3

    :cond_4
    iget-object v11, v2, Lـʽ/ٴﹶ;->ʽʽ:Lـʽ/ʽ;

    iget-wide v11, v11, Lـʽ/ʽ;->ٴᵢ:J

    goto :goto_3

    :cond_5
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lـʽ/ˑﹳ;

    iget-wide v11, v11, Lـʽ/ˑﹳ;->ˉـ:J

    :goto_3
    iget-object v14, v8, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v17

    sub-long v11, v11, v17

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v14, :cond_9

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v3, v3, 0x1

    move/from16 v18, v3

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    move-object/from16 v17, v4

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v13, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    iget-object v4, v13, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_5
    invoke-virtual {v1, v15, v13, v11, v12}, Lﹳʻ/ᵔᵢ;->ʼᵢ(Ljava/util/ArrayList;Lـʽ/ˑﹳ;J)V

    iget-object v3, v2, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    iget-object v3, v3, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_6
    add-long/2addr v9, v11

    goto :goto_7

    :cond_7
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Could not remove entry from list of central directory headers"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :cond_8
    move-object/from16 v4, v17

    move/from16 v3, v18

    goto :goto_4

    :cond_9
    move-object/from16 v17, v4

    iget v14, v0, Lـʽ/ᵎﹶ;->ﹳٴ:I

    move-object/from16 v13, p2

    invoke-static/range {v7 .. v14}, Lﹳʻ/ᵔᵢ;->ʽˑ(Ljava/io/RandomAccessFile;Lˊٴ/ᵔᵢ;JJLʻˆ/ﹳٴ;I)V

    goto :goto_6

    :goto_7
    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ٴᴵ()V

    move/from16 v11, v16

    move-object/from16 v4, v17

    goto/16 :goto_2

    :cond_a
    iget-object v0, v1, Lﹳʻ/ᵔᵢ;->ʽʽ:Lcom/parse/ٴʼ;

    invoke-virtual {v0, v2, v8}, Lcom/parse/ٴʼ;->ᵔי(Lـʽ/ٴﹶ;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8}, Lˊٴ/ᵔᵢ;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, v2, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-static {v0, v6, v12}, Lﹳʻ/ᵔᵢ;->ﹶˎ(Ljava/io/File;Ljava/io/File;Z)V

    return-void

    :catchall_1
    move-exception v0

    move v3, v12

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_a

    :goto_8
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    const/4 v12, 0x0

    :goto_a
    :try_start_7
    invoke-virtual {v8}, Lˊٴ/ᵔᵢ;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_6
    move-exception v0

    const/4 v3, 0x0

    :goto_c
    iget-object v2, v2, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-static {v2, v6, v3}, Lﹳʻ/ᵔᵢ;->ﹶˎ(Ljava/io/File;Ljava/io/File;Z)V

    throw v0

    :cond_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
