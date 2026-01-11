.class public final Lʼˊ/ᵔﹳ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public ʽʽ:Ljava/io/InputStream;

.field public final ʾˋ:Lʼˊ/ﹳٴ;

.field public ˈٴ:Lʼˊ/ˉˆ;

.field public final ˉٴ:[B

.field public ˊʻ:Z

.field public ٴᵢ:Ljava/io/IOException;

.field public final ᴵˊ:I

.field public final ᴵᵔ:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    sget-object v5, Lʼˊ/ﹳٴ;->ﹳٴ:Lʼˊ/ﹳٴ;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʼˊ/ᵔﹳ;->ˊʻ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lʼˊ/ᵔﹳ;->ٴᵢ:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lʼˊ/ᵔﹳ;->ˉٴ:[B

    iput-object v5, p0, Lʼˊ/ᵔﹳ;->ʾˋ:Lʼˊ/ﹳٴ;

    iput-object p1, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    const/4 v2, -0x1

    iput v2, p0, Lʼˊ/ᵔﹳ;->ᴵˊ:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lʼˊ/ᵔﹳ;->ᴵᵔ:Z

    new-instance v0, Lʼˊ/ˉˆ;

    const/16 v1, 0xc

    new-array v4, v1, [B

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lʼˊ/ˉˆ;-><init>(Ljava/io/InputStream;IZ[BLʼˊ/ﹳٴ;)V

    iput-object v0, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    iget-object v0, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʼˊ/ᵔﹳ;->ٴᵢ:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lʼˊ/ˉˆ;->available()I

    move-result v0

    return v0

    :cond_1
    throw v0

    :cond_2
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lʼˊ/ˉˆ;->ʽ(Z)V

    iput-object v1, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    throw v0

    :cond_1
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lʼˊ/ᵔﹳ;->ˉٴ:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lʼˊ/ᵔﹳ;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    if-ltz v0, :cond_8

    array-length v1, p1

    if-gt v0, v1, :cond_8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lʼˊ/ᵔﹳ;->ٴᵢ:Ljava/io/IOException;

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lʼˊ/ᵔﹳ;->ˊʻ:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-lez p3, :cond_5

    :try_start_0
    iget-object v1, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lʼˊ/ᵔﹳ;->ʽ()V

    iget-boolean v1, p0, Lʼˊ/ᵔﹳ;->ˊʻ:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_5

    :goto_1
    return v2

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;

    invoke-virtual {v1, p1, p2, p3}, Lʼˊ/ˉˆ;->read([BII)I

    move-result v1

    if-lez v1, :cond_3

    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    iput-object p1, p0, Lʼˊ/ᵔﹳ;->ٴᵢ:Ljava/io/IOException;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    throw p1

    :cond_5
    :goto_3
    return v0

    :cond_6
    throw v1

    :cond_7
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final ʽ()V
    .locals 8

    .prologue
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0xc

    new-array v6, v1, [B

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iput-boolean v2, p0, Lʼˊ/ᵔﹳ;->ˊʻ:Z

    return-void

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v6, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    aget-byte v1, v6, v1

    if-nez v1, :cond_2

    aget-byte v1, v6, v2

    if-nez v1, :cond_2

    const/4 v1, 0x2

    aget-byte v1, v6, v1

    if-nez v1, :cond_2

    aget-byte v1, v6, v3

    if-eqz v1, :cond_0

    :cond_2
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    :try_start_0
    new-instance v2, Lʼˊ/ˉˆ;

    iget-object v3, p0, Lʼˊ/ᵔﹳ;->ʽʽ:Ljava/io/InputStream;

    iget v4, p0, Lʼˊ/ᵔﹳ;->ᴵˊ:I

    iget-boolean v5, p0, Lʼˊ/ᵔﹳ;->ᴵᵔ:Z

    iget-object v7, p0, Lʼˊ/ᵔﹳ;->ʾˋ:Lʼˊ/ﹳٴ;

    invoke-direct/range {v2 .. v7}, Lʼˊ/ˉˆ;-><init>(Ljava/io/InputStream;IZ[BLʼˊ/ﹳٴ;)V

    iput-object v2, p0, Lʼˊ/ᵔﹳ;->ˈٴ:Lʼˊ/ˉˆ;
    :try_end_0
    .catch Lorg/tukaani/xz/XZFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "Garbage after a valid XZ Stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
