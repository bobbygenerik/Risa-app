.class public final Lٴـ/ﹳٴ;
.super Lٴـ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public ˉٴ:I

.field public ˊʻ:[B

.field public ٴʼ:I

.field public ٴᵢ:I

.field public ᴵᵔ:[B

.field public ᵎˊ:I

.field public ᵎⁱ:I

.field public ᵔי:I


# virtual methods
.method public final read()I
    .locals 4

    .prologue
    iget-object v0, p0, Lٴـ/ﹳٴ;->ᴵᵔ:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lٴـ/ﹳٴ;->read([BII)I

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

    invoke-virtual {p0, p1, v0, v1}, Lٴـ/ﹳٴ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    iput p3, p0, Lٴـ/ﹳٴ;->ᵎⁱ:I

    iput p2, p0, Lٴـ/ﹳٴ;->ٴʼ:I

    const/4 v0, 0x0

    iput v0, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    iget v1, p0, Lٴـ/ﹳٴ;->ˉٴ:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p1}, Lٴـ/ﹳٴ;->ﹳᐧ(I[B)V

    iget p2, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    if-ne p2, p3, :cond_0

    return p2

    :cond_0
    iget p2, p0, Lٴـ/ﹳٴ;->ᵎⁱ:I

    const/16 v1, 0x10

    const/4 v2, -0x1

    if-ge p2, v1, :cond_2

    iget-object p2, p0, Lٴـ/ﹳٴ;->ˊʻ:[B

    array-length v1, p2

    invoke-super {p0, p2, v0, v1}, Lٴـ/ⁱˊ;->read([BII)I

    move-result p2

    iput v0, p0, Lٴـ/ﹳٴ;->ٴᵢ:I

    if-ne p2, v2, :cond_1

    iput v0, p0, Lٴـ/ﹳٴ;->ˉٴ:I

    iget p1, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    if-lez p1, :cond_3

    return p1

    :cond_1
    iput p2, p0, Lٴـ/ﹳٴ;->ˉٴ:I

    iget p2, p0, Lٴـ/ﹳٴ;->ٴʼ:I

    invoke-virtual {p0, p2, p1}, Lٴـ/ﹳٴ;->ﹳᐧ(I[B)V

    iget p2, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    if-ne p2, p3, :cond_2

    return p2

    :cond_2
    iget p2, p0, Lٴـ/ﹳٴ;->ٴʼ:I

    iget p3, p0, Lٴـ/ﹳٴ;->ᵎⁱ:I

    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lٴـ/ⁱˊ;->read([BII)I

    move-result p1

    if-ne p1, v2, :cond_4

    iget p1, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    if-lez p1, :cond_3

    return p1

    :cond_3
    return v2

    :cond_4
    iget p2, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    add-int/2addr p1, p2

    return p1
.end method

.method public final ʽ(Ljava/io/InputStream;I)V
    .locals 3

    .prologue
    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-static {p1, v1}, Lᴵﾞ/ﹳٴ;->ᵔᵢ(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lٴـ/ⁱˊ;->ᴵˊ:Lˊⁱ/ʽ;

    check-cast p1, Lˊⁱ/ﹳٴ;

    iget-object p1, p1, Lˊⁱ/ﹳٴ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v2, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˆʾ(I)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    new-array p2, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Reached end of data for this entry, but aes verification failed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid AES Mac bytes. Could not read sufficient data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵎﹶ(Lـʽ/ﾞᴵ;[CZ)Lˊⁱ/ʽ;
    .locals 6

    .prologue
    new-instance v0, Lˊⁱ/ﹳٴ;

    iget-object p1, p1, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    if-eqz p1, :cond_3

    iget v1, p1, Lـʽ/ﹳٴ;->ˊʻ:I

    if-eqz v1, :cond_2

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˆʾ(I)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lٴـ/ⁱˊ;->ˉˆ([B)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    invoke-virtual {p0, v3}, Lٴـ/ⁱˊ;->ˉˆ([B)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    iput v4, v0, Lˊⁱ/ﹳٴ;->ʽʽ:I

    const/16 v4, 0x10

    new-array v5, v4, [B

    iput-object v5, v0, Lˊⁱ/ﹳٴ;->ˈٴ:[B

    new-array v4, v4, [B

    iput-object v4, v0, Lˊⁱ/ﹳٴ;->ᴵᵔ:[B

    if-eqz p2, :cond_1

    array-length v4, p2

    if-lez v4, :cond_1

    iget p1, p1, Lـʽ/ﹳٴ;->ˊʻ:I

    invoke-static {v1, p2, p1, p3}, Lʼ/ᵎﹶ;->ᵔﹳ([B[CIZ)[B

    move-result-object p2

    new-array p3, v2, [B

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ᵎﹶ(I)I

    move-result v1

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ᵔᵢ(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v1, 0x0

    invoke-static {p2, v4, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lʼ/ᵎﹶ;->יـ(I[B)Lﹶᵎ/ﹳٴ;

    move-result-object p3

    iput-object p3, v0, Lˊⁱ/ﹳٴ;->ʾˋ:Lﹶᵎ/ﹳٴ;

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ᵔᵢ(I)I

    move-result p3

    new-array v2, p3, [B

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ᵎﹶ(I)I

    move-result p1

    invoke-static {p2, p1, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼᐧ([B)V

    iput-object p1, v0, Lˊⁱ/ﹳٴ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    return-object v0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Wrong Password"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "empty or null password provided for AES decryption"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid aes key strength in aes extra data record"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid aes extra data record"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳᐧ(I[B)V
    .locals 3

    .prologue
    iget v0, p0, Lٴـ/ﹳٴ;->ᵎⁱ:I

    iget v1, p0, Lٴـ/ﹳٴ;->ˉٴ:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lٴـ/ﹳٴ;->ᵔי:I

    iget-object v1, p0, Lٴـ/ﹳٴ;->ˊʻ:[B

    iget v2, p0, Lٴـ/ﹳٴ;->ٴᵢ:I

    invoke-static {v1, v2, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lٴـ/ﹳٴ;->ᵔי:I

    iget p2, p0, Lٴـ/ﹳٴ;->ٴᵢ:I

    add-int/2addr p2, p1

    iput p2, p0, Lٴـ/ﹳٴ;->ٴᵢ:I

    const/16 v0, 0xf

    if-lt p2, v0, :cond_1

    iput v0, p0, Lٴـ/ﹳٴ;->ٴᵢ:I

    :cond_1
    iget p2, p0, Lٴـ/ﹳٴ;->ˉٴ:I

    sub-int/2addr p2, p1

    iput p2, p0, Lٴـ/ﹳٴ;->ˉٴ:I

    if-gtz p2, :cond_2

    const/4 p2, 0x0

    iput p2, p0, Lٴـ/ﹳٴ;->ˉٴ:I

    :cond_2
    iget p2, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    add-int/2addr p2, p1

    iput p2, p0, Lٴـ/ﹳٴ;->ᵎˊ:I

    iget p2, p0, Lٴـ/ﹳٴ;->ᵎⁱ:I

    sub-int/2addr p2, p1

    iput p2, p0, Lٴـ/ﹳٴ;->ᵎⁱ:I

    iget p2, p0, Lٴـ/ﹳٴ;->ٴʼ:I

    add-int/2addr p2, p1

    iput p2, p0, Lٴـ/ﹳٴ;->ٴʼ:I

    return-void
.end method
