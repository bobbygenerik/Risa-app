.class public final Lʽˎ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final ʽʽ:Lʻˆ/ﹳٴ;

.field public final ʾˋ:Ljava/io/File;

.field public final ˈٴ:[C

.field public final ˉٴ:Z

.field public final ˊʻ:I

.field public final ٴᵢ:Ljava/util/ArrayList;

.field public ᴵˊ:Lـʽ/ٴﹶ;

.field public final ᴵᵔ:Lcom/parse/ٴʼ;


# direct methods
.method public constructor <init>(Ljava/io/File;[C)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/parse/ٴʼ;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/parse/ٴʼ;-><init>(I)V

    iput-object v0, p0, Lʽˎ/ﹳٴ;->ᴵᵔ:Lcom/parse/ٴʼ;

    const/16 v0, 0x1000

    iput v0, p0, Lʽˎ/ﹳٴ;->ˊʻ:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʽˎ/ﹳٴ;->ٴᵢ:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʽˎ/ﹳٴ;->ˉٴ:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lʽˎ/ﹳٴ;->ʾˋ:Ljava/io/File;

    iput-object p2, p0, Lʽˎ/ﹳٴ;->ˈٴ:[C

    new-instance p1, Lʻˆ/ﹳٴ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˎ/ﹳٴ;->ʽʽ:Lʻˆ/ﹳٴ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input zip file parameter is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽˎ/ﹳٴ;->ٴᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʽˎ/ﹳٴ;->ʾˋ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(Ljava/io/File;Lـʽ/ﾞʻ;)V
    .locals 5

    .prologue
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lʽˎ/ﹳٴ;->ﹳᐧ()V

    iget-object v0, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʽˎ/ﹳٴ;->ʾˋ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    iget-boolean v0, v0, Lـʽ/ٴﹶ;->ˊʻ:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lﹳʻ/ʽ;

    iget-object v1, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    new-instance v2, Lⁱʽ/ﹳٴ;

    iget-object v3, p0, Lʽˎ/ﹳٴ;->ʽʽ:Lʻˆ/ﹳٴ;

    invoke-direct {v2, v3}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lʽˎ/ﹳٴ;->ˈٴ:[C

    iget-object v4, p0, Lʽˎ/ﹳٴ;->ᴵᵔ:Lcom/parse/ٴʼ;

    invoke-direct {v0, v1, v3, v4, v2}, Lﹳʻ/ʽ;-><init>(Lـʽ/ٴﹶ;[CLcom/parse/ٴʼ;Lⁱʽ/ﹳٴ;)V

    new-instance v1, Lﹳʻ/ⁱˊ;

    new-instance v2, Lـʽ/ᵎﹶ;

    iget v3, p0, Lʽˎ/ﹳٴ;->ˊʻ:I

    iget-boolean v4, p0, Lʽˎ/ﹳٴ;->ˉٴ:Z

    invoke-direct {v2, v3, v4}, Lـʽ/ᵎﹶ;-><init>(IZ)V

    invoke-direct {v1, p1, p2, v2}, Lﹳʻ/ⁱˊ;-><init>(Ljava/util/List;Lـʽ/ﾞʻ;Lـʽ/ᵎﹶ;)V

    invoke-virtual {v0, v1}, Lʽⁱ/ᵎﹶ;->ᴵˑ(Lʽⁱ/ᵎﹶ;)V

    return-void

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file List is null or empty"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˉˆ()Ljava/io/RandomAccessFile;
    .locals 3

    .prologue
    iget-object v0, p0, Lʽˎ/ﹳٴ;->ʾˋ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip.001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lᴵﾞ/ʽ;->ⁱˊ(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    new-instance v2, Lٴـ/ᵎﹶ;

    invoke-direct {v2, v0, v1}, Lٴـ/ᵎﹶ;-><init>(Ljava/io/File;[Ljava/io/File;)V

    iget-object v0, v2, Lٴـ/ᵎﹶ;->ᴵˊ:[Ljava/io/File;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lٴـ/ᵎﹶ;->ʽ(I)V

    return-object v2

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final ᵎﹶ(Ljava/lang/String;)V
    .locals 5

    .prologue
    new-instance v0, Lـˎ/ˈ;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lـˎ/ˈ;-><init>(I)V

    invoke-static {p1}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "output directory is not valid"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lʽˎ/ﹳٴ;->ﹳᐧ()V

    :cond_2
    iget-object v1, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    if-eqz v1, :cond_3

    new-instance v2, Lﹳʻ/ˑﹳ;

    new-instance v3, Lⁱʽ/ﹳٴ;

    iget-object v4, p0, Lʽˎ/ﹳٴ;->ʽʽ:Lʻˆ/ﹳٴ;

    invoke-direct {v3, v4}, Lⁱʽ/ﹳٴ;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lʽˎ/ﹳٴ;->ˈٴ:[C

    invoke-direct {v2, v1, v4, v0, v3}, Lﹳʻ/ˑﹳ;-><init>(Lـʽ/ٴﹶ;[CLـˎ/ˈ;Lⁱʽ/ﹳٴ;)V

    new-instance v0, Lﹳʻ/ˈ;

    new-instance v1, Lـʽ/ᵎﹶ;

    iget v3, p0, Lʽˎ/ﹳٴ;->ˊʻ:I

    iget-boolean v4, p0, Lʽˎ/ﹳٴ;->ˉٴ:Z

    invoke-direct {v1, v3, v4}, Lـʽ/ᵎﹶ;-><init>(IZ)V

    invoke-direct {v0, p1, v1}, Lﹳʻ/ˈ;-><init>(Ljava/lang/String;Lـʽ/ᵎﹶ;)V

    invoke-virtual {v2, v0}, Lʽⁱ/ᵎﹶ;->ᴵˑ(Lʽⁱ/ᵎﹶ;)V

    return-void

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Internal error occurred when extracting zip file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Cannot create output directories"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "output path is null or invalid"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳᐧ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lʽˎ/ﹳٴ;->ʾˋ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lـʽ/ٴﹶ;

    invoke-direct {v1}, Lـʽ/ٴﹶ;-><init>()V

    iput-object v1, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    iput-object v0, v1, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lʽˎ/ﹳٴ;->ˉˆ()Ljava/io/RandomAccessFile;

    move-result-object v1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lᵢ/ﹳٴ;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lᵢ/ﹳٴ;-><init>(I)V

    new-instance v3, Lـʽ/ᵎﹶ;

    iget v4, p0, Lʽˎ/ﹳٴ;->ˊʻ:I

    iget-boolean v5, p0, Lʽˎ/ﹳٴ;->ˉٴ:Z

    invoke-direct {v3, v4, v5}, Lـʽ/ᵎﹶ;-><init>(IZ)V

    invoke-virtual {v2, v1, v3}, Lᵢ/ﹳٴ;->ʻٴ(Ljava/io/RandomAccessFile;Lـʽ/ᵎﹶ;)Lـʽ/ٴﹶ;

    move-result-object v2

    iput-object v2, p0, Lʽˎ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    iput-object v0, v2, Lـʽ/ٴﹶ;->ˉٴ:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    throw v0

    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
