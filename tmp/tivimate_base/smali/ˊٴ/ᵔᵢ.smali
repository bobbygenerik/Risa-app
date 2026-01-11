.class public final Lˊٴ/ᵔᵢ;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lˊٴ/ᵎﹶ;


# instance fields
.field public ʽʽ:Ljava/io/File;

.field public ʾˋ:Ljava/io/RandomAccessFile;

.field public ˈٴ:I

.field public final ˊʻ:Lᵢ/ﹳٴ;

.field public final ᴵˊ:J

.field public ᴵᵔ:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lˊٴ/ᵔᵢ;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Lᵢ/ﹳٴ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lᵢ/ﹳٴ;-><init>(I)V

    iput-object v0, p0, Lˊٴ/ᵔᵢ;->ˊʻ:Lᵢ/ﹳٴ;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x10000

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "split length less than minimum allowed split length of 65536 Bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    iput-wide p2, p0, Lˊٴ/ᵔᵢ;->ᴵˊ:J

    iput-object p1, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    const/4 p1, 0x0

    iput p1, p0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    iput-wide v0, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lˊٴ/ᵔᵢ;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lˊٴ/ᵔᵢ;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 12

    .prologue
    if-gtz p3, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lˊٴ/ᵔᵢ;->ᴵˊ:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    return-void

    :cond_1
    iget-wide v0, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    invoke-virtual {p0}, Lˊٴ/ᵔᵢ;->ˉˆ()V

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long p1, p3

    iput-wide p1, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    return-void

    :cond_2
    int-to-long v4, p3

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ˊʻ:Lᵢ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lᵢ/ﹳٴ;->ʼʼ(I[B)I

    move-result v1

    const/16 v6, 0xc

    invoke-static {v6}, Lʻٴ/ᵎﹶ;->ˑﹳ(I)[I

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v0, v7, :cond_4

    aget v8, v6, v0

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    invoke-static {v8}, Lᐧـ/ˈ;->ᵎﹶ(I)J

    move-result-wide v8

    int-to-long v10, v1

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    invoke-virtual {p0}, Lˊٴ/ᵔᵢ;->ˉˆ()V

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iput-wide v4, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {p0}, Lˊٴ/ᵔᵢ;->ˉˆ()V

    iget-object p3, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    iget-wide v0, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    sub-long v0, v2, v0

    long-to-int v6, v0

    add-int/2addr p2, v6

    sub-long v0, v4, v0

    long-to-int v0, v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    sub-long/2addr v2, p1

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    return-void

    :cond_5
    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide p1, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lˊٴ/ᵔᵢ;->ᴵᵔ:J

    return-void
.end method

.method public final ʽ()I
    .locals 1

    iget v0, p0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    return v0
.end method

.method public final ˉˆ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lᴵﾞ/ʽ;->ᵔᵢ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".z0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".z"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-static {v2, v0, v3}, Lʼﾞ/ˊˋ;->ﹳᐧ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lˊٴ/ᵔᵢ;->ʽʽ:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    iget v0, p0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lˊٴ/ᵔᵢ;->ˈٴ:I

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot rename newly created split file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "split file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already exists in the current directory, cannot rename this file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎﹶ()J
    .locals 2

    iget-object v0, p0, Lˊٴ/ᵔᵢ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method
