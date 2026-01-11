.class public final Lٴـ/ٴﹶ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Lᵢ/ﹳٴ;

.field public final ʾˋ:Ljava/io/PushbackInputStream;

.field public final ˈٴ:[C

.field public final ˉٴ:Lـʽ/ᵎﹶ;

.field public final ˊʻ:Ljava/util/zip/CRC32;

.field public ٴʼ:Z

.field public ٴᵢ:Z

.field public ᴵˊ:Lٴـ/ʽ;

.field public ᴵᵔ:Lـʽ/ﾞᴵ;

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[CLـʽ/ᵎﹶ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lᵢ/ﹳٴ;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lᵢ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Lٴـ/ٴﹶ;->ʽʽ:Lᵢ/ﹳٴ;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lٴـ/ٴﹶ;->ˊʻ:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lٴـ/ٴﹶ;->ٴᵢ:Z

    iput-boolean v0, p0, Lٴـ/ٴﹶ;->ᵎⁱ:Z

    iput-boolean v0, p0, Lٴـ/ٴﹶ;->ٴʼ:Z

    iget v0, p3, Lـʽ/ᵎﹶ;->ﹳٴ:I

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    new-instance v1, Ljava/io/PushbackInputStream;

    invoke-direct {v1, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lٴـ/ٴﹶ;->ʾˋ:Ljava/io/PushbackInputStream;

    iput-object p2, p0, Lٴـ/ٴﹶ;->ˈٴ:[C

    iput-object p3, p0, Lٴـ/ٴﹶ;->ˉٴ:Lـʽ/ᵎﹶ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    iget-boolean v0, p0, Lٴـ/ٴﹶ;->ᵎⁱ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lٴـ/ٴﹶ;->ٴʼ:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lٴـ/ٴﹶ;->ᵎⁱ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵˊ:Lٴـ/ʽ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lٴـ/ʽ;->close()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴـ/ٴﹶ;->ᵎⁱ:Z

    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lٴـ/ٴﹶ;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ٴﹶ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    iget-boolean v0, p0, Lٴـ/ٴﹶ;->ᵎⁱ:Z

    if-nez v0, :cond_5

    if-ltz p3, :cond_4

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵˊ:Lٴـ/ʽ;

    invoke-virtual {v0, p1, p2, p3}, Lٴـ/ʽ;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_2

    invoke-virtual {p0}, Lٴـ/ٴﹶ;->ʽ()V

    return p3

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lٴـ/ٴﹶ;->ˊʻ:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :goto_0
    iget-object p2, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    iget-boolean p3, p2, Lـʽ/ⁱˊ;->ˆﾞ:Z

    if-eqz p3, :cond_3

    const/4 p3, 0x2

    iget p2, p2, Lـʽ/ⁱˊ;->ᵔٴ:I

    invoke-static {p3, p2}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ()V
    .locals 12

    .prologue
    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵˊ:Lٴـ/ʽ;

    iget-object v1, p0, Lٴـ/ٴﹶ;->ʾˋ:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lٴـ/ʽ;->ᵎﹶ(Ljava/io/PushbackInputStream;)I

    move-result v0

    iget-object v2, p0, Lٴـ/ٴﹶ;->ᴵˊ:Lٴـ/ʽ;

    invoke-virtual {v2, v1, v0}, Lٴـ/ʽ;->ʽ(Ljava/io/InputStream;I)V

    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    iget-boolean v2, v0, Lـʽ/ⁱˊ;->ˈʿ:Z

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lٴـ/ٴﹶ;->ٴᵢ:Z

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lـʽ/ⁱˊ;->ʼˈ:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lـʽ/ˈ;

    iget-wide v5, v5, Lـʽ/ˈ;->ʽʽ:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    move v0, v4

    :goto_0
    iget-object v5, p0, Lٴـ/ٴﹶ;->ʽʽ:Lᵢ/ﹳٴ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v6, v3, [B

    invoke-static {v1, v6}, Lᴵﾞ/ﹳٴ;->ᵔᵢ(Ljava/io/InputStream;[B)I

    iget-object v5, v5, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lᵢ/ﹳٴ;

    iget-object v7, v5, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v5, v2, v6}, Lᵢ/ﹳٴ;->ʾˋ(I[B)J

    move-result-wide v8

    const-wide/32 v10, 0x8074b50

    cmp-long v10, v8, v10

    if-nez v10, :cond_4

    invoke-static {v1, v6}, Lᴵﾞ/ﹳٴ;->ᵔᵢ(Ljava/io/InputStream;[B)I

    invoke-virtual {v5, v2, v6}, Lᵢ/ﹳٴ;->ʾˋ(I[B)J

    move-result-wide v8

    :cond_4
    if-eqz v0, :cond_5

    array-length v0, v7

    invoke-static {v1, v7, v0}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    invoke-virtual {v5, v2, v7}, Lᵢ/ﹳٴ;->ʾˋ(I[B)J

    move-result-wide v10

    array-length v0, v7

    invoke-static {v1, v7, v0}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    invoke-virtual {v5, v2, v7}, Lᵢ/ﹳٴ;->ʾˋ(I[B)J

    move-result-wide v0

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v1}, Lᵢ/ﹳٴ;->ᵢˏ(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v10, v0

    invoke-virtual {v5, v1}, Lᵢ/ﹳٴ;->ᵢˏ(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    :goto_1
    iget-object v2, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    iput-wide v10, v2, Lـʽ/ⁱˊ;->ˉٴ:J

    iput-wide v0, v2, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iput-wide v8, v2, Lـʽ/ⁱˊ;->ٴᵢ:J

    :cond_6
    :goto_2
    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    iget v1, v0, Lـʽ/ⁱˊ;->ᵔٴ:I

    const/4 v2, 0x2

    iget-object v5, p0, Lٴـ/ٴﹶ;->ˊʻ:Ljava/util/zip/CRC32;

    if-ne v1, v3, :cond_7

    iget-object v0, v0, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    iget v0, v0, Lـʽ/ﹳٴ;->ˈٴ:I

    invoke-static {v0, v2}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    iget-wide v0, v0, Lـʽ/ⁱˊ;->ٴᵢ:J

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-nez v0, :cond_8

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    iput-boolean v4, p0, Lٴـ/ٴﹶ;->ٴʼ:Z

    return-void

    :cond_8
    iget-object v0, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    iget-boolean v1, v0, Lـʽ/ⁱˊ;->ˆﾞ:Z

    if-eqz v1, :cond_9

    iget v0, v0, Lـʽ/ⁱˊ;->ᵔٴ:I

    invoke-static {v2, v0}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v0

    :cond_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reached end of entry, but crc verification failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    iget-object v2, v2, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
