.class public final Lʼˊ/ˉʿ;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public ʽʽ:Lˑⁱ/ﹳٴ;

.field public final ʾˋ:Lʼˊ/ﹳٴ;

.field public ˈٴ:Lʻᴵ/ʻٴ;

.field public ˉٴ:Z

.field public ˊʻ:I

.field public ٴʼ:Z

.field public ٴᵢ:Z

.field public ᴵˊ:Ljava/io/DataInputStream;

.field public ᴵᵔ:Lˉⁱ/ﹳٴ;

.field public ᵎˊ:Ljava/io/IOException;

.field public ᵎⁱ:Z

.field public final ᵔי:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILʼˊ/ﹳٴ;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    iput-boolean v0, p0, Lʼˊ/ˉʿ;->ٴᵢ:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lʼˊ/ˉʿ;->ˉٴ:Z

    iput-boolean v1, p0, Lʼˊ/ˉʿ;->ᵎⁱ:Z

    iput-boolean v0, p0, Lʼˊ/ˉʿ;->ٴʼ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lʼˊ/ˉʿ;->ᵎˊ:Ljava/io/IOException;

    new-array v0, v1, [B

    iput-object v0, p0, Lʼˊ/ˉʿ;->ᵔי:[B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lʼˊ/ˉʿ;->ʾˋ:Lʼˊ/ﹳٴ;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    new-instance p1, Lʻᴵ/ʻٴ;

    invoke-direct {p1, p3}, Lʻᴵ/ʻٴ;-><init>(Lʼˊ/ﹳٴ;)V

    iput-object p1, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    new-instance p1, Lˑⁱ/ﹳٴ;

    invoke-static {p2}, Lʼˊ/ˉʿ;->ᵎﹶ(I)I

    move-result p2

    invoke-direct {p1, p2, p3}, Lˑⁱ/ﹳٴ;-><init>(ILʼˊ/ﹳٴ;)V

    iput-object p1, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    return-void
.end method

.method public static ᵎﹶ(I)I
    .locals 2

    .prologue
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0xf

    and-int/lit8 p0, p0, -0x10

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported dictionary size "

    invoke-static {p0, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    iget-object v0, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lʼˊ/ˉʿ;->ᵎˊ:Ljava/io/IOException;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lʼˊ/ˉʿ;->ٴᵢ:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    return v0

    :cond_0
    iget v1, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    throw v1

    :cond_2
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    iget-object v2, p0, Lʼˊ/ˉʿ;->ʾˋ:Lʼˊ/ﹳٴ;

    invoke-virtual {v2, v0}, Lʼˊ/ﹳٴ;->ⁱˊ([B)V

    iput-object v1, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iget-object v0, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    iget-object v0, v0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-virtual {v2, v0}, Lʼˊ/ﹳٴ;->ⁱˊ([B)V

    iput-object v1, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    throw v0

    :cond_1
    return-void
.end method

.method public final read()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lʼˊ/ˉʿ;->ᵔי:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lʼˊ/ˉʿ;->read([BII)I

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
    .locals 7

    .prologue
    if-ltz p2, :cond_c

    if-ltz p3, :cond_c

    add-int v0, p2, p3

    if-ltz v0, :cond_c

    array-length v1, p1

    if-gt v0, v1, :cond_c

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lʼˊ/ˉʿ;->ᵎˊ:Ljava/io/IOException;

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lʼˊ/ˉʿ;->ٴʼ:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    if-lez p3, :cond_9

    :try_start_0
    iget v2, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lʼˊ/ˉʿ;->ʽ()V

    iget-boolean v2, p0, Lʼˊ/ˉʿ;->ٴʼ:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_9

    :goto_1
    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_3
    iget v2, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-boolean v3, p0, Lʼˊ/ˉʿ;->ٴᵢ:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iget-object v4, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    iget v5, v3, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    iget v6, v3, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int/2addr v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, v3, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    iget v6, v3, Lˑⁱ/ﹳٴ;->ˈ:I

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    iget v4, v3, Lˑⁱ/ﹳٴ;->ˈ:I

    add-int/2addr v4, v2

    iput v4, v3, Lˑⁱ/ﹳٴ;->ˈ:I

    iget v2, v3, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    if-ge v2, v4, :cond_6

    iput v4, v3, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iget v4, v3, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    iget v5, v3, Lˑⁱ/ﹳٴ;->ˈ:I

    sub-int v6, v4, v5

    if-gt v6, v2, :cond_5

    iput v4, v3, Lˑⁱ/ﹳٴ;->ﾞᴵ:I

    goto :goto_2

    :cond_5
    add-int/2addr v5, v2

    iput v5, v3, Lˑⁱ/ﹳٴ;->ﾞᴵ:I

    :goto_2
    iget-object v2, p0, Lʼˊ/ˉʿ;->ᴵᵔ:Lˉⁱ/ﹳٴ;

    invoke-virtual {v2}, Lˉⁱ/ﹳٴ;->ﹳٴ()V

    :cond_6
    :goto_3
    iget-object v2, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iget v3, v2, Lˑⁱ/ﹳٴ;->ˈ:I

    iget v4, v2, Lˑⁱ/ﹳٴ;->ʽ:I

    sub-int v5, v3, v4

    iget v6, v2, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    if-ne v3, v6, :cond_7

    iput v0, v2, Lˑⁱ/ﹳٴ;->ˈ:I

    :cond_7
    iget-object v3, v2, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    invoke-static {v3, v4, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v2, Lˑⁱ/ﹳٴ;->ˈ:I

    iput v3, v2, Lˑⁱ/ﹳٴ;->ʽ:I

    add-int/2addr p2, v5

    sub-int/2addr p3, v5

    add-int/2addr v1, v5

    iget v2, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    sub-int/2addr v2, v5

    iput v2, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    iget v3, v2, Lʻᴵ/ʻٴ;->ˑﹳ:I

    iget-object v4, v2, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length v4, v4

    if-ne v3, v4, :cond_8

    iget v2, v2, Lʻᴵ/ʻٴ;->ˈ:I

    if-nez v2, :cond_8

    iget-object v2, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iget v2, v2, Lˑⁱ/ﹳٴ;->ᵎﹶ:I

    if-gtz v2, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iput-object p1, p0, Lʼˊ/ˉʿ;->ᵎˊ:Ljava/io/IOException;

    throw p1

    :cond_9
    return v1

    :cond_a
    throw v1

    :cond_b
    new-instance p1, Lorg/tukaani/xz/XZIOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final ʽ()V
    .locals 11

    .prologue
    iget-object v0, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lʼˊ/ˉʿ;->ٴʼ:Z

    iget-object v0, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    iget-object v1, p0, Lʼˊ/ˉʿ;->ʾˋ:Lʼˊ/ﹳٴ;

    invoke-virtual {v1, v0}, Lʼˊ/ﹳٴ;->ⁱˊ([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iget-object v2, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    iget-object v2, v2, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    invoke-virtual {v1, v2}, Lʼˊ/ﹳٴ;->ⁱˊ([B)V

    iput-object v0, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0xe0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lʼˊ/ˉʿ;->ˉٴ:Z

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lʼˊ/ˉʿ;->ᵎⁱ:Z

    iput-boolean v3, p0, Lʼˊ/ˉʿ;->ˉٴ:Z

    iget-object v4, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iput v3, v4, Lˑⁱ/ﹳٴ;->ʽ:I

    iput v3, v4, Lˑⁱ/ﹳٴ;->ˈ:I

    iput v3, v4, Lˑⁱ/ﹳٴ;->ˑﹳ:I

    iput v3, v4, Lˑⁱ/ﹳٴ;->ﾞᴵ:I

    iget-object v5, v4, Lˑⁱ/ﹳٴ;->ﹳٴ:[B

    iget v4, v4, Lˑⁱ/ﹳٴ;->ⁱˊ:I

    sub-int/2addr v4, v1

    aput-byte v3, v5, v4

    :goto_1
    const/16 v4, 0x80

    if-lt v0, v4, :cond_c

    iput-boolean v1, p0, Lʼˊ/ˉʿ;->ٴᵢ:Z

    and-int/lit8 v4, v0, 0x1f

    shl-int/lit8 v4, v4, 0x10

    iput v4, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    iget-object v5, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v4

    iput v5, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    iget-object v1, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0xc0

    if-lt v0, v5, :cond_7

    iput-boolean v3, p0, Lʼˊ/ˉʿ;->ᵎⁱ:Z

    iget-object v0, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-gt v0, v2, :cond_6

    div-int/lit8 v10, v0, 0x2d

    mul-int/lit8 v2, v10, 0x2d

    sub-int/2addr v0, v2

    div-int/lit8 v9, v0, 0x9

    mul-int/lit8 v2, v9, 0x9

    sub-int v8, v0, v2

    add-int v0, v8, v9

    const/4 v2, 0x4

    if-gt v0, v2, :cond_5

    new-instance v5, Lˉⁱ/ﹳٴ;

    iget-object v6, p0, Lʼˊ/ˉʿ;->ʽʽ:Lˑⁱ/ﹳٴ;

    iget-object v7, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    invoke-direct/range {v5 .. v10}, Lˉⁱ/ﹳٴ;-><init>(Lˑⁱ/ﹳٴ;Lʻᴵ/ʻٴ;III)V

    iput-object v5, p0, Lʼˊ/ˉʿ;->ᴵᵔ:Lˉⁱ/ﹳٴ;

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_7
    iget-boolean v2, p0, Lʼˊ/ˉʿ;->ᵎⁱ:Z

    if-nez v2, :cond_b

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_8

    iget-object v0, p0, Lʼˊ/ˉʿ;->ᴵᵔ:Lˉⁱ/ﹳٴ;

    invoke-virtual {v0}, Lˉⁱ/ﹳٴ;->ⁱˊ()V

    :cond_8
    :goto_2
    iget-object v0, p0, Lʼˊ/ˉʿ;->ˈٴ:Lʻᴵ/ʻٴ;

    iget-object v2, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x5

    if-lt v4, v3, :cond_a

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v0, Lʻᴵ/ʻٴ;->ˈ:I

    const/4 v3, -0x1

    iput v3, v0, Lʻᴵ/ʻٴ;->ʽ:I

    add-int/lit8 v1, v1, -0x4

    iget-object v3, v0, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    iput v4, v0, Lʻᴵ/ʻٴ;->ˑﹳ:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void

    :cond_9
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_a
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_c
    const/4 v2, 0x2

    if-gt v0, v2, :cond_d

    iput-boolean v3, p0, Lʼˊ/ˉʿ;->ٴᵢ:Z

    iget-object v0, p0, Lʼˊ/ˉʿ;->ᴵˊ:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lʼˊ/ˉʿ;->ˊʻ:I

    return-void

    :cond_d
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
.end method
