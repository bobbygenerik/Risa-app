.class public final Lﹶˆ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# static fields
.field public static final ˑﹳ:Lcom/parse/ˑ;


# instance fields
.field public final ʽ:Ljavax/crypto/spec/SecretKeySpec;

.field public final ˈ:I

.field public final ⁱˊ:Lﹶˆ/ٴﹶ;

.field public final ﹳٴ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ˑ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/parse/ˑ;-><init>(I)V

    sput-object v0, Lﹶˆ/ⁱˊ;->ˑﹳ:Lcom/parse/ˑ;

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV size should be either 12 or 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lﹶˆ/ⁱˊ;->ˈ:I

    array-length p1, p2

    invoke-static {p1}, Lﹶˆ/ˉˆ;->ﹳٴ(I)V

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lﹶˆ/ⁱˊ;->ʽ:Ljavax/crypto/spec/SecretKeySpec;

    new-instance p1, Lﹶˆ/ٴﹶ;

    invoke-direct {p1, p2}, Lﹶˆ/ٴﹶ;-><init>([B)V

    iput-object p1, p0, Lﹶˆ/ⁱˊ;->ⁱˊ:Lﹶˆ/ٴﹶ;

    iput-object p3, p0, Lﹶˆ/ⁱˊ;->ﹳٴ:[B

    return-void

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ʽ(III[B)[B
    .locals 2

    add-int/lit8 v0, p3, 0x10

    new-array v0, v0, [B

    const/16 v1, 0xf

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    const/16 p1, 0x10

    invoke-static {p4, p2, v0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lﹶˆ/ⁱˊ;->ⁱˊ:Lﹶˆ/ٴﹶ;

    invoke-virtual {p2, p1, v0}, Lﹶˆ/ٴﹶ;->ﹳٴ(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final ⁱˊ([B[B)[B
    .locals 12

    .prologue
    array-length v0, p1

    iget-object v1, p0, Lﹶˆ/ⁱˊ;->ﹳٴ:[B

    array-length v2, v1

    sub-int/2addr v0, v2

    iget v2, p0, Lﹶˆ/ⁱˊ;->ˈ:I

    sub-int/2addr v0, v2

    const/16 v3, 0x10

    sub-int/2addr v0, v3

    if-ltz v0, :cond_4

    invoke-static {v1, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v4, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4, v2, p1}, Lﹶˆ/ⁱˊ;->ʽ(III[B)[B

    move-result-object v4

    if-nez p2, :cond_0

    new-array p2, v5, [B

    :cond_0
    array-length v6, p2

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v5, v6, p2}, Lﹶˆ/ⁱˊ;->ʽ(III[B)[B

    move-result-object p2

    array-length v6, v1

    add-int/2addr v6, v2

    const/4 v8, 0x2

    invoke-virtual {p0, v8, v6, v0, p1}, Lﹶˆ/ⁱˊ;->ʽ(III[B)[B

    move-result-object v6

    array-length v8, p1

    sub-int/2addr v8, v3

    move v9, v5

    :goto_0
    if-ge v5, v3, :cond_1

    add-int v10, v8, v5

    aget-byte v10, p1, v10

    aget-byte v11, p2, v5

    xor-int/2addr v10, v11

    aget-byte v11, v4, v5

    xor-int/2addr v10, v11

    aget-byte v11, v6, v5

    xor-int/2addr v10, v11

    or-int/2addr v9, v10

    int-to-byte v9, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v9, :cond_2

    sget-object p2, Lﹶˆ/ⁱˊ;->ˑﹳ:Lcom/parse/ˑ;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/Cipher;

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v4, p0, Lﹶˆ/ⁱˊ;->ʽ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2, v7, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v1, v1

    add-int/2addr v1, v2

    invoke-virtual {p2, p1, v1, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljavax/crypto/AEADBadTagException;

    const-string p2, "tag mismatch"

    invoke-direct {p1, p2}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ([B[B)[B
    .locals 12

    .prologue
    array-length v0, p1

    iget-object v1, p0, Lﹶˆ/ⁱˊ;->ﹳٴ:[B

    array-length v2, v1

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    iget v2, p0, Lﹶˆ/ⁱˊ;->ˈ:I

    sub-int/2addr v3, v2

    const/16 v4, 0x10

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_2

    array-length v0, v1

    add-int/2addr v0, v2

    array-length v3, p1

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    invoke-static {v2}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v0

    array-length v3, v1

    const/4 v11, 0x0

    invoke-static {v0, v11, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    invoke-virtual {p0, v11, v11, v3, v0}, Lﹶˆ/ⁱˊ;->ʽ(III[B)[B

    move-result-object v0

    if-nez p2, :cond_0

    new-array p2, v11, [B

    :cond_0
    array-length v3, p2

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v11, v3, p2}, Lﹶˆ/ⁱˊ;->ʽ(III[B)[B

    move-result-object p2

    sget-object v3, Lﹶˆ/ⁱˊ;->ˑﹳ:Lcom/parse/ˑ;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v7, p0, Lﹶˆ/ⁱˊ;->ʽ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v5, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    array-length v8, p1

    array-length v5, v1

    add-int v10, v5, v2

    const/4 v7, 0x0

    move-object v6, p1

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    array-length p1, v1

    add-int/2addr p1, v2

    array-length v3, v6

    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1, v3, v9}, Lﹶˆ/ⁱˊ;->ʽ(III[B)[B

    move-result-object p1

    array-length v1, v1

    array-length v3, v6

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    :goto_0
    if-ge v11, v4, :cond_1

    add-int v2, v1, v11

    aget-byte v3, p2, v11

    aget-byte v5, v0, v11

    xor-int/2addr v3, v5

    aget-byte v5, p1, v11

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-object v9

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
