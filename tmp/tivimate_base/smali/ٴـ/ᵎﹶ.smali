.class public final Lٴـ/ᵎﹶ;
.super Ljava/io/RandomAccessFile;
.source "SourceFile"


# instance fields
.field public ʽʽ:Ljava/io/RandomAccessFile;

.field public final ʾˋ:J

.field public final ˈٴ:[B

.field public final ˊʻ:Ljava/lang/String;

.field public final ᴵˊ:[Ljava/io/File;

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>(Ljava/io/File;[Ljava/io/File;)V
    .locals 8

    .prologue
    const-string v0, "r"

    invoke-direct {p0, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [B

    iput-object v2, p0, Lٴـ/ᵎﹶ;->ˈٴ:[B

    const/4 v2, 0x0

    iput v2, p0, Lٴـ/ᵎﹶ;->ᴵᵔ:I

    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, p2, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v5, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v4, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Split file number "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Split file extension not in expected format. Found: "

    const-string v0, " expected of format: .001, .002, etc"

    invoke-static {p2, v5, v0}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lٴـ/ᵎﹶ;->ᴵˊ:[Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lٴـ/ᵎﹶ;->ʾˋ:J

    iput-object v0, p0, Lٴـ/ᵎﹶ;->ˊʻ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    invoke-super {p0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public final getFilePointer()J
    .locals 2

    iget-object v0, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public final length()J
    .locals 2

    iget-object v0, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final read()I
    .locals 4

    .prologue
    iget-object v0, p0, Lٴـ/ᵎﹶ;->ˈٴ:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lٴـ/ᵎﹶ;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ᵎﹶ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    iget-object v0, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lٴـ/ᵎﹶ;->ᴵᵔ:I

    iget-object v2, p0, Lٴـ/ᵎﹶ;->ᴵˊ:[Ljava/io/File;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lٴـ/ᵎﹶ;->ʽ(I)V

    invoke-virtual {p0, p1, p2, p3}, Lٴـ/ᵎﹶ;->read([BII)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final seek(J)V
    .locals 6

    .prologue
    iget-wide v0, p0, Lٴـ/ᵎﹶ;->ʾˋ:J

    div-long v2, p1, v0

    long-to-int v2, v2

    iget v3, p0, Lٴـ/ᵎﹶ;->ᴵᵔ:I

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lٴـ/ᵎﹶ;->ʽ(I)V

    :cond_0
    iget-object v3, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    int-to-long v4, v2

    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    invoke-virtual {v3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public final write(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ᵎﹶ;->write([BII)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final write([BII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final ʽ(I)V
    .locals 3

    .prologue
    iget v0, p0, Lٴـ/ᵎﹶ;->ᴵᵔ:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lٴـ/ᵎﹶ;->ᴵˊ:[Ljava/io/File;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_2

    iget-object v1, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    aget-object v0, v0, p1

    iget-object v2, p0, Lٴـ/ᵎﹶ;->ˊʻ:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lٴـ/ᵎﹶ;->ʽʽ:Ljava/io/RandomAccessFile;

    iput p1, p0, Lٴـ/ᵎﹶ;->ᴵᵔ:I

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "split counter greater than number of split files"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
