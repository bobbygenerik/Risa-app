.class public final Lﹳʻ/ʽ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:[C

.field public final ˈٴ:Lcom/parse/ٴʼ;

.field public final ᴵˊ:Lـʽ/ٴﹶ;


# direct methods
.method public constructor <init>(Lـʽ/ٴﹶ;[CLcom/parse/ٴʼ;Lⁱʽ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0, p4}, Lʽⁱ/ᵎﹶ;-><init>(Lⁱʽ/ﹳٴ;)V

    iput-object p1, p0, Lﹳʻ/ʽ;->ᴵˊ:Lـʽ/ٴﹶ;

    iput-object p2, p0, Lﹳʻ/ʽ;->ʽʽ:[C

    iput-object p3, p0, Lﹳʻ/ʽ;->ˈٴ:Lcom/parse/ٴʼ;

    return-void
.end method

.method public static ʽˑ(Lـʽ/ﾞʻ;Ljava/io/File;Lʻˆ/ﹳٴ;)Lـʽ/ﾞʻ;
    .locals 9

    .prologue
    new-instance v0, Lـʽ/ﾞʻ;

    invoke-direct {v0, p0}, Lـʽ/ﾞʻ;-><init>(Lـʽ/ﾞʻ;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    iput-wide v2, v0, Lـʽ/ﾞʻ;->ٴﹶ:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v0, Lـʽ/ﾞʻ;->ٴﹶ:J

    :goto_0
    iget-wide v4, p0, Lـʽ/ﾞʻ;->ˆʾ:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    iput-wide v2, v0, Lـʽ/ﾞʻ;->ˆʾ:J

    goto :goto_1

    :cond_1
    iput-wide v4, v0, Lـʽ/ﾞʻ;->ˆʾ:J

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lـʽ/ﾞʻ;->ﾞʻ:Z

    iget-object v4, p0, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    invoke-static {v4}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1, p0}, Lᴵﾞ/ʽ;->ﾞᴵ(Ljava/io/File;Lـʽ/ﾞʻ;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v4, 0x1

    if-eqz p0, :cond_4

    iput v4, v0, Lـʽ/ﾞʻ;->ﹳٴ:I

    iput v4, v0, Lـʽ/ﾞʻ;->ˈ:I

    iput-boolean v1, v0, Lـʽ/ﾞʻ;->ʽ:Z

    return-object v0

    :cond_4
    iget-boolean p0, v0, Lـʽ/ﾞʻ;->ʽ:Z

    if-eqz p0, :cond_7

    iget p0, v0, Lـʽ/ﾞʻ;->ˈ:I

    const/4 v5, 0x2

    if-ne p0, v5, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x4000

    new-array p0, p0, [B

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    invoke-virtual {v5, p0, v1, v7}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v7, v7

    invoke-virtual {p2, v7, v8}, Lʻˆ/ﹳٴ;->ﹳٴ(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    iput-wide v7, v0, Lـʽ/ﾞʻ;->ᵔᵢ:J

    goto :goto_5

    :goto_3
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "input file is null or does not exist or cannot read. Cannot calculate CRC for the file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_5
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    iput v4, v0, Lـʽ/ﾞʻ;->ﹳٴ:I

    :cond_8
    return-object v0
.end method


# virtual methods
.method public final ʼᵢ(Lˊٴ/ᵔᵢ;Lـʽ/ᵎﹶ;)Lˊٴ/ٴﹶ;
    .locals 8

    .prologue
    iget-object v0, p0, Lﹳʻ/ʽ;->ᴵˊ:Lـʽ/ٴﹶ;

    iget-object v1, v0, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lـʽ/ٴﹶ;->ᵎⁱ:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lـʽ/ٴﹶ;->ᴵᵔ:Lـʽ/ʼˎ;

    iget-wide v1, v1, Lـʽ/ʼˎ;->ᵎˊ:J

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lـʽ/ٴﹶ;->ʽʽ:Lـʽ/ʽ;

    iget-wide v1, v1, Lـʽ/ʽ;->ٴᵢ:J

    :goto_0
    iget-object v3, p1, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1
    new-instance v1, Lˊٴ/ٴﹶ;

    invoke-direct {v1}, Ljava/io/OutputStream;-><init>()V

    new-instance v2, Lᵎˉ/ⁱˊ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lˊٴ/ٴﹶ;->ٴᵢ:Lᵎˉ/ⁱˊ;

    new-instance v2, Lcom/parse/ٴʼ;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lcom/parse/ٴʼ;-><init>(I)V

    iput-object v2, v1, Lˊٴ/ٴﹶ;->ˉٴ:Lcom/parse/ٴʼ;

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v2, v1, Lˊٴ/ٴﹶ;->ᵎⁱ:Ljava/util/zip/CRC32;

    new-instance v2, Lᵢ/ﹳٴ;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lᵢ/ﹳٴ;-><init>(I)V

    iput-object v2, v1, Lˊٴ/ٴﹶ;->ٴʼ:Lᵢ/ﹳٴ;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lˊٴ/ٴﹶ;->ᵎˊ:J

    const/4 v5, 0x1

    iput-boolean v5, v1, Lˊٴ/ٴﹶ;->ᵔٴ:Z

    iget v6, p2, Lـʽ/ᵎﹶ;->ﹳٴ:I

    const/16 v7, 0x200

    if-lt v6, v7, :cond_5

    new-instance v6, Lˊٴ/ˈ;

    invoke-direct {v6}, Ljava/io/OutputStream;-><init>()V

    iput-wide v3, v6, Lˊٴ/ˈ;->ᴵˊ:J

    iput-object p1, v6, Lˊٴ/ˈ;->ʾˋ:Lˊٴ/ᵔᵢ;

    iput-object v6, v1, Lˊٴ/ٴﹶ;->ʾˋ:Lˊٴ/ˈ;

    iget-object v7, p0, Lﹳʻ/ʽ;->ʽʽ:[C

    iput-object v7, v1, Lˊٴ/ٴﹶ;->ᴵˊ:[C

    iput-object p2, v1, Lˊٴ/ٴﹶ;->ᵔי:Lـʽ/ᵎﹶ;

    invoke-virtual {v6}, Lˊٴ/ˈ;->ˉˆ()Z

    move-result p2

    if-eqz p2, :cond_3

    iput-boolean v5, v0, Lـʽ/ٴﹶ;->ˊʻ:Z

    invoke-virtual {v6}, Lˊٴ/ˈ;->ˉˆ()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v3, p1, Lˊٴ/ᵔᵢ;->ᴵˊ:J

    :cond_2
    iput-wide v3, v0, Lـʽ/ٴﹶ;->ٴᵢ:J

    :cond_3
    iput-object v0, v1, Lˊٴ/ٴﹶ;->ʽʽ:Lـʽ/ٴﹶ;

    const/4 p1, 0x0

    iput-boolean p1, v1, Lˊٴ/ٴﹶ;->ˆﾞ:Z

    invoke-virtual {v6}, Lˊٴ/ˈ;->ˉˆ()Z

    move-result p1

    if-nez p1, :cond_4

    return-object v1

    :cond_4
    const-wide/32 p1, 0x8074b50

    long-to-int p1, p1

    invoke-virtual {v2, v6, p1}, Lᵢ/ﹳٴ;->ˉٴ(Ljava/io/OutputStream;I)V

    return-object v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʿᵢ(Lʽⁱ/ᵎﹶ;Lʻˆ/ﹳٴ;)V
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p1

    check-cast v2, Lﹳʻ/ⁱˊ;

    iget-object v3, v2, Lﹳʻ/ⁱˊ;->ʽʽ:Lـʽ/ﾞʻ;

    iget v4, v3, Lـʽ/ﾞʻ;->ᵔʾ:I

    iget v5, v3, Lـʽ/ﾞʻ;->ﹳٴ:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "unsupported compression type"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v5, v3, Lـʽ/ﾞʻ;->ʽ:Z

    if-eqz v5, :cond_4

    iget v5, v3, Lـʽ/ﾞʻ;->ˈ:I

    if-eq v5, v7, :cond_3

    iget-object v5, v1, Lﹳʻ/ʽ;->ʽʽ:[C

    if-eqz v5, :cond_2

    array-length v5, v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input password is empty or null"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Encryption method has to be set, when encrypt files flag is set"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput v7, v3, Lـʽ/ﾞʻ;->ˈ:I

    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v2, Lﹳʻ/ⁱˊ;->ᴵˊ:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lᴵﾞ/ʽ;->ʼˎ(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v7, v4}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v9, v3}, Lᴵﾞ/ʽ;->ˈ(Ljava/io/File;Lـʽ/ﾞʻ;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lـʽ/ᵎﹶ;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    :cond_7
    :goto_3
    const/4 v11, 0x3

    if-ge v10, v8, :cond_c

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v10, v10, 0x1

    check-cast v12, Ljava/io/File;

    invoke-static {v12}, Lᴵﾞ/ʽ;->ʼˎ(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-static {v4, v11}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {v4, v6}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Symlink target \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lᴵﾞ/ʽ;->ﾞʻ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' does not exist for link \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_3

    :cond_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v4, v2, Lـʽ/ᵎﹶ;->ﹳٴ:I

    new-array v4, v4, [B

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v8, v1, Lﹳʻ/ʽ;->ᴵˊ:Lـʽ/ٴﹶ;

    iget-object v10, v8, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :cond_e
    :goto_4
    if-ge v12, v10, :cond_11

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v13, v3}, Lᴵﾞ/ʽ;->ﾞᴵ(Ljava/io/File;Lـʽ/ﾞʻ;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lʽٴ/ˈ;->ﾞʻ(Lـʽ/ٴﹶ;Ljava/lang/String;)Lـʽ/ˑﹳ;

    move-result-object v14

    if-eqz v14, :cond_e

    iget-boolean v15, v3, Lـʽ/ﾞʻ;->ˉʿ:Z

    if-eqz v15, :cond_10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lⁱʽ/ﹳٴ;

    invoke-direct {v13, v0}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    new-instance v15, Lﹳʻ/ᵔᵢ;

    iget-object v9, v1, Lﹳʻ/ʽ;->ˈٴ:Lcom/parse/ٴʼ;

    invoke-direct {v15, v8, v9, v13}, Lﹳʻ/ᵔᵢ;-><init>(Lـʽ/ٴﹶ;Lcom/parse/ٴʼ;Lⁱʽ/ﹳٴ;)V

    new-instance v9, Lﹳʻ/ᵎﹶ;

    iget-object v13, v14, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v9, v13, v2}, Lﹳʻ/ᵎﹶ;-><init>(Ljava/util/List;Lـʽ/ᵎﹶ;)V

    invoke-virtual {v15, v9}, Lʽⁱ/ᵎﹶ;->ᴵˑ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ٴᴵ()V

    goto :goto_4

    :cond_10
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    :goto_5
    new-instance v5, Lˊٴ/ᵔᵢ;

    iget-object v9, v8, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    iget-wide v12, v8, Lـʽ/ٴﹶ;->ٴᵢ:J

    invoke-direct {v5, v9, v12, v13}, Lˊٴ/ᵔᵢ;-><init>(Ljava/io/File;J)V

    :try_start_0
    invoke-virtual {v1, v5, v2}, Lﹳʻ/ʽ;->ʼᵢ(Lˊٴ/ᵔᵢ;Lـʽ/ᵎﹶ;)Lˊٴ/ٴﹶ;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_16

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/io/File;

    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ٴᴵ()V

    invoke-static {v3, v10, v0}, Lﹳʻ/ʽ;->ʽˑ(Lـʽ/ﾞʻ;Ljava/io/File;Lʻˆ/ﹳٴ;)Lـʽ/ﾞʻ;

    move-result-object v12

    iget v13, v12, Lـʽ/ﾞʻ;->ᵔʾ:I

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lᴵﾞ/ʽ;->ʼˎ(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-static {v7, v13}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-static {v11, v13}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v14

    if-eqz v14, :cond_13

    :cond_12
    invoke-virtual {v1, v10, v2, v12, v5}, Lﹳʻ/ʽ;->ﹶˎ(Ljava/io/File;Lˊٴ/ٴﹶ;Lـʽ/ﾞʻ;Lˊٴ/ᵔᵢ;)V

    invoke-static {v7, v13}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v13

    if-eqz v13, :cond_13

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_b

    :cond_13
    invoke-virtual {v2, v12}, Lˊٴ/ٴﹶ;->ᵎﹶ(Lـʽ/ﾞʻ;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_15

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    :try_start_2
    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_14

    const/4 v14, 0x0

    invoke-virtual {v2, v4, v14, v13}, Lˊٴ/ٴﹶ;->write([BII)V

    int-to-long v13, v13

    invoke-virtual {v0, v13, v14}, Lʻˆ/ﹳٴ;->ﹳٴ(J)V

    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ٴᴵ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :cond_14
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_15
    const/4 v14, 0x0

    goto :goto_a

    :goto_8
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v3

    :goto_a
    invoke-virtual {v1, v2, v5, v10, v14}, Lﹳʻ/ʽ;->ˋˊ(Lˊٴ/ٴﹶ;Lˊٴ/ᵔᵢ;Ljava/io/File;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :cond_16
    :try_start_6
    invoke-virtual {v2}, Lˊٴ/ٴﹶ;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v5}, Lˊٴ/ᵔᵢ;->close()V

    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :goto_b
    :try_start_7
    invoke-virtual {v2}, Lˊٴ/ٴﹶ;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_d
    :try_start_9
    invoke-virtual {v5}, Lˊٴ/ᵔᵢ;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v2
.end method

.method public final ˋˊ(Lˊٴ/ٴﹶ;Lˊٴ/ᵔᵢ;Ljava/io/File;Z)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lˊٴ/ٴﹶ;->ʽ()Lـʽ/ˑﹳ;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lᴵﾞ/ʽ;->ʽ(Ljava/io/File;)[B

    move-result-object v3

    if-nez p4, :cond_0

    const/4 v4, 0x3

    aget-byte v5, v3, v4

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lᴵﾞ/ﹳٴ;->ٴﹶ(BI)B

    move-result v5

    aput-byte v5, v3, v4

    :cond_0
    iput-object v3, v2, Lـʽ/ˑﹳ;->ᴵˑ:[B

    iget-object v3, v0, Lﹳʻ/ʽ;->ˈٴ:Lcom/parse/ٴʼ;

    iget-object v4, v3, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lᵢ/ﹳٴ;

    iget-object v3, v3, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v5, v0, Lﹳʻ/ʽ;->ᴵˊ:Lـʽ/ٴﹶ;

    if-eqz v5, :cond_7

    iget v6, v2, Lـʽ/ˑﹳ;->ˈⁱ:I

    iget v7, v1, Lˊٴ/ᵔᵢ;->ˈٴ:I

    const/4 v8, 0x0

    if-eq v6, v7, :cond_3

    iget-object v6, v5, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lᴵﾞ/ʽ;->ᵔᵢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_1

    invoke-static {v6}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "file.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    :goto_0
    iget v7, v2, Lـʽ/ˑﹳ;->ˈⁱ:I

    const/16 v9, 0x9

    const/4 v10, 0x1

    if-ge v7, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".z0"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lـʽ/ˑﹳ;->ˈⁱ:I

    add-int/2addr v5, v10

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".z"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lـʽ/ˑﹳ;->ˈⁱ:I

    add-int/2addr v5, v10

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v6, Lˊٴ/ᵔᵢ;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lˊٴ/ᵔᵢ;-><init>(Ljava/io/File;)V

    goto :goto_2

    :cond_3
    move-object v6, v1

    move v10, v8

    :goto_2
    iget-object v5, v6, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    iget-wide v13, v2, Lـʽ/ˑﹳ;->ˉـ:J

    const-wide/16 v15, 0xe

    add-long/2addr v13, v15

    iget-object v5, v6, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v13, v2, Lـʽ/ⁱˊ;->ٴᵢ:J

    invoke-static {v13, v14, v3}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    const/4 v5, 0x4

    invoke-virtual {v6, v3, v8, v5}, Lˊٴ/ᵔᵢ;->write([BII)V

    iget-wide v13, v2, Lـʽ/ⁱˊ;->ᵎⁱ:J

    move-object v7, v6

    const-wide v5, 0xffffffffL

    cmp-long v9, v13, v5

    if-ltz v9, :cond_5

    invoke-static {v5, v6, v3}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    const/4 v5, 0x4

    invoke-virtual {v7, v3, v8, v5}, Lˊٴ/ᵔᵢ;->write([BII)V

    invoke-virtual {v7, v3, v8, v5}, Lˊٴ/ᵔᵢ;->write([BII)V

    iget v3, v2, Lـʽ/ⁱˊ;->ٴʼ:I

    add-int/lit8 v3, v3, 0x8

    iget-object v5, v7, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v5

    if-ne v5, v3, :cond_4

    iget-wide v5, v2, Lـʽ/ⁱˊ;->ᵎⁱ:J

    invoke-virtual {v4, v7, v5, v6}, Lᵢ/ﹳٴ;->ٴʼ(Ljava/io/OutputStream;J)V

    iget-wide v2, v2, Lـʽ/ⁱˊ;->ˉٴ:J

    invoke-virtual {v4, v7, v2, v3}, Lᵢ/ﹳٴ;->ٴʼ(Ljava/io/OutputStream;J)V

    goto :goto_3

    :cond_4
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Unable to skip "

    const-string v4, " bytes to update LFH"

    invoke-static {v3, v2, v4}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-wide v4, v2, Lـʽ/ⁱˊ;->ˉٴ:J

    invoke-static {v4, v5, v3}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    const/4 v5, 0x4

    invoke-virtual {v7, v3, v8, v5}, Lˊٴ/ᵔᵢ;->write([BII)V

    iget-wide v13, v2, Lـʽ/ⁱˊ;->ᵎⁱ:J

    invoke-static {v13, v14, v3}, Lᵢ/ﹳٴ;->ᵎⁱ(J[B)V

    invoke-virtual {v7, v3, v8, v5}, Lˊٴ/ᵔᵢ;->write([BII)V

    :goto_3
    if-eqz v10, :cond_6

    invoke-virtual {v7}, Lˊٴ/ᵔᵢ;->close()V

    return-void

    :cond_6
    iget-object v1, v1, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void

    :cond_7
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid input parameters, cannot update local file header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ﹶˎ(Ljava/io/File;Lˊٴ/ٴﹶ;Lـʽ/ﾞʻ;Lˊٴ/ᵔᵢ;)V
    .locals 6

    .prologue
    new-instance v0, Lـʽ/ﾞʻ;

    invoke-direct {v0, p3}, Lـʽ/ﾞʻ;-><init>(Lـʽ/ﾞʻ;)V

    iget-object p3, p3, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lـʽ/ﾞʻ;->ʼˎ:Ljava/lang/String;

    iput-boolean v5, v0, Lـʽ/ﾞʻ;->ʽ:Z

    iput v4, v0, Lـʽ/ﾞʻ;->ﹳٴ:I

    invoke-virtual {p2, v0}, Lˊٴ/ٴﹶ;->ᵎﹶ(Lـʽ/ﾞʻ;)V

    invoke-static {p1}, Lᴵﾞ/ʽ;->ﾞʻ(Ljava/io/File;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Lˊٴ/ٴﹶ;->write([B)V

    invoke-virtual {p0, p2, p4, p1, v4}, Lﹳʻ/ʽ;->ˋˊ(Lˊٴ/ٴﹶ;Lˊٴ/ᵔᵢ;Ljava/io/File;Z)V

    return-void
.end method
