.class public final Lיٴ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# instance fields
.field public final ʽ:Lﹶˆ/ٴﹶ;

.field public final ⁱˊ:I

.field public final ﹳٴ:[B


# direct methods
.method public constructor <init>([BLʾᐧ/ﹳٴ;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹶˆ/ٴﹶ;

    invoke-direct {v0, p1}, Lﹶˆ/ٴﹶ;-><init>([B)V

    iput-object v0, p0, Lיٴ/ᵔʾ;->ʽ:Lﹶˆ/ٴﹶ;

    invoke-virtual {p2}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    iput-object p1, p0, Lיٴ/ᵔʾ;->ﹳٴ:[B

    iput p3, p0, Lיٴ/ᵔʾ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final ʽ([B)[B
    .locals 6

    .prologue
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    array-length v3, p1

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    array-length v3, p1

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {p1, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x20

    new-array p1, p1, [B

    iget-object v3, p0, Lיٴ/ᵔʾ;->ʽ:Lﹶˆ/ٴﹶ;

    invoke-virtual {v3, v0, v1}, Lﹶˆ/ٴﹶ;->ﹳٴ(I[B)[B

    move-result-object v1

    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v0, v2}, Lﹶˆ/ٴﹶ;->ﹳٴ(I[B)[B

    move-result-object v1

    invoke-static {v1, v4, p1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid salt size"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final ⁱˊ([B[B)[B
    .locals 8

    .prologue
    if-eqz p1, :cond_6

    array-length v0, p1

    iget-object v1, p0, Lיٴ/ᵔʾ;->ﹳٴ:[B

    array-length v2, v1

    iget v3, p0, Lיٴ/ᵔʾ;->ⁱˊ:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1c

    const-string v4, "ciphertext too short"

    if-lt v0, v2, :cond_5

    invoke-static {v1, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v1

    add-int/2addr v0, v3

    array-length v1, v1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lיٴ/ᵔʾ;->ʽ([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Lʼﾞ/ˊˋ;->ˑﹳ(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lיٴ/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    const/16 v3, 0x20

    invoke-static {v3}, Lﹶˆ/ˉˆ;->ﹳٴ(I)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v3, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    add-int/lit8 v1, v0, 0xc

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    array-length v6, v5

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    array-length v6, p1

    add-int/lit8 v0, v0, 0x1c

    if-lt v6, v0, :cond_1

    const/4 v0, 0x0

    array-length v4, v5

    invoke-static {v5, v0, v4}, Lיٴ/ʽ;->ﹳٴ([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    sget-object v4, Lיٴ/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    invoke-virtual {v4, v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    array-length p2, p1

    sub-int/2addr p2, v1

    invoke-virtual {v4, p1, v1, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ([B[B)[B
    .locals 12

    .prologue
    if-eqz p1, :cond_5

    iget v0, p0, Lיٴ/ᵔʾ;->ⁱˊ:I

    add-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v3}, Lיٴ/ᵔʾ;->ʽ([B)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lʼﾞ/ˊˋ;->ˑﹳ(I)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lיٴ/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    const/16 v4, 0x20

    invoke-static {v4}, Lﹶˆ/ˉˆ;->ﹳٴ(I)V

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v3, p0, Lיٴ/ᵔʾ;->ﹳٴ:[B

    array-length v5, v3

    add-int/2addr v5, v0

    array-length v0, v1

    add-int v11, v5, v0

    array-length v0, v1

    const/16 v5, 0xc

    if-ne v0, v5, :cond_3

    array-length v0, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0}, Lיٴ/ʽ;->ﹳٴ([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    sget-object v1, Lיٴ/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v6, v1, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {v6, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    array-length p2, p1

    invoke-virtual {v6, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    const v0, 0x7fffffff

    sub-int/2addr v0, v11

    if-gt p2, v0, :cond_2

    add-int v0, v11, p2

    new-array v10, v0, [B

    const/4 v8, 0x0

    array-length v9, p1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p2, :cond_1

    array-length p1, v3

    invoke-static {v3, v5, v10, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v3

    array-length p2, v2

    invoke-static {v2, v5, v10, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v10

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
