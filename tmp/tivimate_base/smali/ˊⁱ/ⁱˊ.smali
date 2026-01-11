.class public final Lˊⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊⁱ/ˈ;


# instance fields
.field public final ʽʽ:Ljava/security/SecureRandom;

.field public final ʾˋ:Lﹶᵎ/ﹳٴ;

.field public ˈٴ:Z

.field public final ˉٴ:[B

.field public ˊʻ:I

.field public final ٴʼ:[B

.field public final ٴᵢ:[B

.field public final ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ᴵᵔ:I

.field public final ᵎⁱ:[B


# direct methods
.method public constructor <init>([CIZ)V
    .locals 10

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lˊⁱ/ⁱˊ;->ʽʽ:Ljava/security/SecureRandom;

    const/4 v0, 0x1

    iput v0, p0, Lˊⁱ/ⁱˊ;->ᴵᵔ:I

    const/4 v1, 0x0

    iput v1, p0, Lˊⁱ/ⁱˊ;->ˊʻ:I

    if-eqz p1, :cond_6

    array-length v2, p1

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    if-eq p2, v0, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid AES key strength"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lˊⁱ/ⁱˊ;->ˈٴ:Z

    const/16 v0, 0x10

    new-array v3, v0, [B

    iput-object v3, p0, Lˊⁱ/ⁱˊ;->ˉٴ:[B

    new-array v3, v0, [B

    iput-object v3, p0, Lˊⁱ/ⁱˊ;->ٴᵢ:[B

    invoke-static {p2}, Lʼﾞ/ˊˋ;->ˆʾ(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid salt size, cannot generate salt"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x2

    if-ne v3, v4, :cond_4

    move v4, v0

    goto :goto_2

    :cond_4
    const/4 v4, 0x4

    :goto_2
    new-array v3, v3, [B

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_5

    iget-object v6, p0, Lˊⁱ/ⁱˊ;->ʽʽ:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    mul-int/lit8 v7, v5, 0x4

    shr-int/lit8 v8, v6, 0x18

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v9, v6, 0x10

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    add-int/lit8 v8, v7, 0x2

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    add-int/2addr v7, v2

    int-to-byte v6, v6

    aput-byte v6, v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lˊⁱ/ⁱˊ;->ٴʼ:[B

    invoke-static {v3, p1, p2, p3}, Lʼ/ᵎﹶ;->ᵔﹳ([B[CIZ)[B

    move-result-object p1

    new-array p3, v0, [B

    invoke-static {p2}, Lʼﾞ/ˊˋ;->ᵎﹶ(I)I

    move-result v2

    invoke-static {p2}, Lʼﾞ/ˊˋ;->ᵔᵢ(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {p1, v3, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p3, p0, Lˊⁱ/ⁱˊ;->ᵎⁱ:[B

    invoke-static {p2, p1}, Lʼ/ᵎﹶ;->יـ(I[B)Lﹶᵎ/ﹳٴ;

    move-result-object p3

    iput-object p3, p0, Lˊⁱ/ⁱˊ;->ʾˋ:Lﹶᵎ/ﹳٴ;

    invoke-static {p2}, Lʼﾞ/ˊˋ;->ᵔᵢ(I)I

    move-result p3

    new-array v0, p3, [B

    invoke-static {p2}, Lʼﾞ/ˊˋ;->ᵎﹶ(I)I

    move-result p2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼᐧ([B)V

    iput-object p1, p0, Lˊⁱ/ⁱˊ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    return-void

    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is empty or null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ˉʿ([BII)I
    .locals 8

    .prologue
    iget-boolean v0, p0, Lˊⁱ/ⁱˊ;->ˈٴ:Z

    if-nez v0, :cond_4

    rem-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lˊⁱ/ⁱˊ;->ˈٴ:Z

    :cond_0
    move v0, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_3

    add-int/lit8 v3, v0, 0x10

    if-gt v3, v2, :cond_1

    const/16 v2, 0x10

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v0

    :goto_1
    iput v2, p0, Lˊⁱ/ⁱˊ;->ˊʻ:I

    iget v2, p0, Lˊⁱ/ⁱˊ;->ᴵᵔ:I

    iget-object v4, p0, Lˊⁱ/ⁱˊ;->ٴᵢ:[B

    invoke-static {v2, v4}, Lʼ/ᵎﹶ;->ᴵˊ(I[B)V

    iget-object v2, p0, Lˊⁱ/ⁱˊ;->ʾˋ:Lﹶᵎ/ﹳٴ;

    iget-object v5, p0, Lˊⁱ/ⁱˊ;->ˉٴ:[B

    invoke-virtual {v2, v4, v5}, Lﹶᵎ/ﹳٴ;->ﹳٴ([B[B)V

    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lˊⁱ/ⁱˊ;->ˊʻ:I

    if-ge v2, v4, :cond_2

    add-int v4, v0, v2

    aget-byte v6, p1, v4

    aget-byte v7, v5, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lˊⁱ/ⁱˊ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v2, p1, v0, v4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵᵔ([BII)V

    iget v0, p0, Lˊⁱ/ⁱˊ;->ᴵᵔ:I

    add-int/2addr v0, v1

    iput v0, p0, Lˊⁱ/ⁱˊ;->ᴵᵔ:I

    move v0, v3

    goto :goto_0

    :cond_3
    return p3

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
