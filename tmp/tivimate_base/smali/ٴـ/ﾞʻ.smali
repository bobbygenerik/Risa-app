.class public final Lٴـ/ﾞʻ;
.super Lٴـ/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public ʽʽ:I

.field public ʾˋ:Ljava/io/RandomAccessFile;

.field public ˈٴ:Z

.field public ˊʻ:[B

.field public ᴵˊ:Ljava/io/File;

.field public ᴵᵔ:I


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lٴـ/ﾞʻ;->ʾˋ:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    iget-object v0, p0, Lٴـ/ﾞʻ;->ˊʻ:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lٴـ/ﾞʻ;->read([BII)I

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

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ﾞʻ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    iget-object v0, p0, Lٴـ/ﾞʻ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-ne p2, p3, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lٴـ/ﾞʻ;->ˈٴ:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lٴـ/ﾞʻ;->ᴵᵔ:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lٴـ/ﾞʻ;->ᵎﹶ(I)V

    iget v0, p0, Lٴـ/ﾞʻ;->ᴵᵔ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lٴـ/ﾞʻ;->ᴵᵔ:I

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object v0, p0, Lٴـ/ﾞʻ;->ʾˋ:Ljava/io/RandomAccessFile;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    add-int/2addr p2, p1

    :cond_2
    return p2
.end method

.method public final ʽ(Lـʽ/ˑﹳ;)V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lٴـ/ﾞʻ;->ˈٴ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lٴـ/ﾞʻ;->ᴵᵔ:I

    iget v1, p1, Lـʽ/ˑﹳ;->ˈⁱ:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lٴـ/ﾞʻ;->ᵎﹶ(I)V

    iget v0, p1, Lـʽ/ˑﹳ;->ˈⁱ:I

    iput v0, p0, Lٴـ/ﾞʻ;->ᴵᵔ:I

    :cond_0
    iget-object v0, p0, Lٴـ/ﾞʻ;->ʾˋ:Ljava/io/RandomAccessFile;

    iget-wide v1, p1, Lـʽ/ˑﹳ;->ˉـ:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final ᵎﹶ(I)V
    .locals 6

    .prologue
    iget-object v0, p0, Lٴـ/ﾞʻ;->ᴵˊ:Ljava/io/File;

    iget v1, p0, Lٴـ/ﾞʻ;->ʽʽ:I

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-lt p1, v1, :cond_1

    const-string v1, ".z"

    goto :goto_0

    :cond_1
    const-string v1, ".z0"

    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lٴـ/ﾞʻ;->ʾˋ:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lٴـ/ﾞʻ;->ʾˋ:Ljava/io/RandomAccessFile;

    return-void

    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zip split file does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
