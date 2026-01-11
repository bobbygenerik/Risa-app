.class public final Lʼˊ/ˉˆ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final ʽʽ:I

.field public ʾˋ:Ljava/io/InputStream;

.field public final ˈٴ:Lʼˊ/ⁱˊ;

.field public final ˉٴ:Lˊי/ﹳٴ;

.field public final ˊʻ:Z

.field public ٴʼ:Ljava/io/IOException;

.field public ٴᵢ:Lʼˊ/ᵎﹶ;

.field public final ᴵˊ:Lʼˊ/ﹳٴ;

.field public final ᴵᵔ:Lᵎᵎ/ʽ;

.field public final ᵎˊ:[B

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZ[BLʼˊ/ﹳٴ;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;

    new-instance v1, Lˊי/ﹳٴ;

    invoke-direct {v1}, Lˊי/ﹳٴ;-><init>()V

    iput-object v1, p0, Lʼˊ/ˉˆ;->ˉٴ:Lˊי/ﹳٴ;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lʼˊ/ˉˆ;->ᵎⁱ:Z

    iput-object v0, p0, Lʼˊ/ˉˆ;->ٴʼ:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v2, v0, [B

    iput-object v2, p0, Lʼˊ/ˉˆ;->ᵎˊ:[B

    iput-object p5, p0, Lʼˊ/ˉˆ;->ᴵˊ:Lʼˊ/ﹳٴ;

    iput-object p1, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    iput p2, p0, Lʼˊ/ˉˆ;->ʽʽ:I

    iput-boolean p3, p0, Lʼˊ/ˉˆ;->ˊʻ:Z

    move p1, v1

    :goto_0
    const/4 p2, 0x6

    if-ge p1, p2, :cond_1

    aget-byte p2, p4, p1

    sget-object p3, Lʼˊ/ʼᐧ;->ﹳٴ:[B

    aget-byte p3, p3, p1

    if-ne p2, p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {p1}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x2

    const/16 p3, 0x8

    invoke-static {p2, p1, p3, p4}, Lcom/google/android/gms/internal/play_billing/י;->ʻٴ(III[B)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_0
    invoke-static {p2, p4}, Lcom/google/android/gms/internal/play_billing/י;->ʼᐧ(I[B)Lʼˊ/ⁱˊ;

    move-result-object p1
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object p1, p0, Lʼˊ/ˉˆ;->ˈٴ:Lʼˊ/ⁱˊ;

    iget p1, p1, Lʼˊ/ⁱˊ;->ʾˋ:I

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    :try_start_1
    new-instance p2, Lᵎᵎ/ﹳٴ;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lᵎᵎ/ﹳٴ;-><init>(I)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    new-instance p2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p3, "Unsupported Check ID "

    invoke-static {p1, p3}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Lᵎᵎ/ⁱˊ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const-wide/16 p4, -0x1

    iput-wide p4, p2, Lᵎᵎ/ⁱˊ;->ʽ:J

    iput p3, p2, Lᵎᵎ/ʽ;->ﹳٴ:I

    const-string p1, "CRC64"

    iput-object p1, p2, Lᵎᵎ/ʽ;->ⁱˊ:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance p2, Lᵎᵎ/ﹳٴ;

    const/4 p1, 0x0

    invoke-direct {p2, p1}, Lᵎᵎ/ﹳٴ;-><init>(I)V

    goto :goto_1

    :cond_5
    new-instance p2, Lᵎᵎ/ˈ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput v1, p2, Lᵎᵎ/ʽ;->ﹳٴ:I

    const-string p1, "None"

    iput-object p1, p2, Lᵎᵎ/ʽ;->ⁱˊ:Ljava/lang/String;

    :goto_1
    iput-object p2, p0, Lʼˊ/ˉˆ;->ᴵᵔ:Lᵎᵎ/ʽ;

    return-void

    :catch_1
    new-instance p1, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p2, "Unsupported options in XZ Stream Header"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    const-string p2, "XZ Stream Header is corrupt"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    iget-object v0, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʼˊ/ˉˆ;->ٴʼ:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, v0, Lʼˊ/ᵎﹶ;->ʽʽ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

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
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lʼˊ/ˉˆ;->ʽ(Z)V

    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lʼˊ/ˉˆ;->ᵎˊ:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lʼˊ/ˉˆ;->read([BII)I

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
    .locals 10

    .prologue
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    if-ltz v0, :cond_a

    array-length v1, p1

    if-gt v0, v1, :cond_a

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lʼˊ/ˉˆ;->ٴʼ:Ljava/io/IOException;

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lʼˊ/ˉˆ;->ᵎⁱ:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    if-lez p3, :cond_7

    :try_start_0
    iget-object v0, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lʼˊ/ˉˆ;->ˉٴ:Lˊי/ﹳٴ;

    if-nez v0, :cond_4

    :try_start_1
    new-instance v4, Lʼˊ/ᵎﹶ;

    iget-object v5, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    iget-object v6, p0, Lʼˊ/ˉˆ;->ᴵᵔ:Lᵎᵎ/ʽ;

    iget-boolean v7, p0, Lʼˊ/ˉˆ;->ˊʻ:Z

    iget v8, p0, Lʼˊ/ˉˆ;->ʽʽ:I

    iget-object v9, p0, Lʼˊ/ˉˆ;->ᴵˊ:Lʼˊ/ﹳٴ;

    invoke-direct/range {v4 .. v9}, Lʼˊ/ᵎﹶ;-><init>(Ljava/io/InputStream;Lᵎᵎ/ʽ;ZILʼˊ/ﹳٴ;)V

    iput-object v4, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;
    :try_end_1
    .catch Lʼˊ/ﾞʻ; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_1
    :try_start_2
    iget-object p1, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    invoke-virtual {v3, p1}, Lˊי/ﹳٴ;->ⁱˊ(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lʼˊ/ˉˆ;->ᵎﹶ()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʼˊ/ˉˆ;->ᵎⁱ:Z

    if-lez v1, :cond_3

    move v2, v1

    :cond_3
    return v2

    :cond_4
    :goto_1
    iget-object v0, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;

    invoke-virtual {v0, p1, p2, p3}, Lʼˊ/ᵎﹶ;->read([BII)I

    move-result v0

    if-lez v0, :cond_5

    add-int/2addr v1, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_5
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;

    iget v4, v0, Lʼˊ/ᵎﹶ;->ᵎⁱ:I

    int-to-long v4, v4

    iget-object v6, v0, Lʼˊ/ᵎﹶ;->ᴵˊ:Lʼˊ/ᵔᵢ;

    iget-wide v6, v6, Lʼˊ/ᵔᵢ;->ʾˋ:J

    add-long/2addr v4, v6

    iget-object v6, v0, Lʼˊ/ᵎﹶ;->ˈٴ:Lᵎᵎ/ʽ;

    iget v6, v6, Lᵎᵎ/ʽ;->ﹳٴ:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-wide v6, v0, Lʼˊ/ᵎﹶ;->ٴʼ:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lˊי/ﹳٴ;->ﹳٴ(JJ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :goto_2
    iput-object p1, p0, Lʼˊ/ˉˆ;->ٴʼ:Ljava/io/IOException;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    throw p1

    :cond_7
    :goto_3
    return v1

    :cond_8
    throw v1

    :cond_9
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final ʽ(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʼˊ/ᵎﹶ;->close()V

    iput-object v1, p0, Lʼˊ/ˉˆ;->ٴᵢ:Lʼˊ/ᵎﹶ;

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    throw p1

    :cond_1
    :goto_0
    iput-object v1, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    :cond_2
    return-void
.end method

.method public final ᵎﹶ()V
    .locals 9

    .prologue
    const/16 v0, 0xc

    new-array v0, v0, [B

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lʼˊ/ˉˆ;->ʾˋ:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    const/16 v1, 0xa

    aget-byte v1, v0, v1

    sget-object v2, Lʼˊ/ʼᐧ;->ⁱˊ:[B

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    const-string v5, "XZ Stream Footer is corrupt"

    if-ne v1, v4, :cond_3

    const/16 v1, 0xb

    aget-byte v1, v0, v1

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v2, v1, v3, v0}, Lcom/google/android/gms/internal/play_billing/י;->ʻٴ(III[B)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    :try_start_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/י;->ʼᐧ(I[B)Lʼˊ/ⁱˊ;

    move-result-object v1
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lʼˊ/ⁱˊ;->ᴵˊ:J

    :goto_0
    if-ge v3, v2, :cond_0

    iget-wide v5, v1, Lʼˊ/ⁱˊ;->ᴵˊ:J

    add-int/lit8 v7, v3, 0x4

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    mul-int/lit8 v8, v3, 0x8

    shl-int/2addr v7, v8

    int-to-long v7, v7

    or-long/2addr v5, v7

    iput-wide v5, v1, Lʼˊ/ⁱˊ;->ᴵˊ:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lʼˊ/ⁱˊ;->ᴵˊ:J

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    const-wide/16 v5, 0x4

    mul-long/2addr v2, v5

    iput-wide v2, v1, Lʼˊ/ⁱˊ;->ᴵˊ:J

    iget-object v0, p0, Lʼˊ/ˉˆ;->ˈٴ:Lʼˊ/ⁱˊ;

    iget v0, v0, Lʼˊ/ⁱˊ;->ʾˋ:I

    iget v2, v1, Lʼˊ/ⁱˊ;->ʾˋ:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lʼˊ/ˉˆ;->ˉٴ:Lˊי/ﹳٴ;

    iget-wide v2, v0, Lˊי/ﹳٴ;->ˑﹳ:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/י;->ˏי(J)I

    move-result v2

    add-int/2addr v2, v4

    int-to-long v2, v2

    iget-wide v4, v0, Lˊי/ﹳٴ;->ˈ:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    const-wide/16 v4, -0x4

    and-long/2addr v2, v4

    iget-wide v0, v1, Lʼˊ/ⁱˊ;->ᴵˊ:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Unsupported options in XZ Stream Footer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
