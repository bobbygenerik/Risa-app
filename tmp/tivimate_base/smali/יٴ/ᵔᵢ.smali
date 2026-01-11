.class public final Lיٴ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# static fields
.field public static final ʽ:[B

.field public static final ˈ:[B

.field public static final ˑﹳ:[B

.field public static final ﾞᴵ:Lcom/parse/ˑ;


# instance fields
.field public final ⁱˊ:[B

.field public final ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ᵔᵢ;->ʽ:[B

    const-string v0, "070000004041424344454647"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ᵔᵢ;->ˈ:[B

    const-string v0, "a0784d7a4716f3feb4f64e7f4b39bf04"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ᵔᵢ;->ˑﹳ:[B

    new-instance v0, Lcom/parse/ˑ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/parse/ˑ;-><init>(I)V

    sput-object v0, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha20"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lיٴ/ᵔᵢ;->ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;

    iput-object p2, p0, Lיٴ/ᵔᵢ;->ⁱˊ:[B

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "JCE does not support algorithm: ChaCha20-Poly1305"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static ʽ(Ljavax/crypto/Cipher;)Z
    .locals 6

    .prologue
    const-string v0, "ChaCha20"

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lיٴ/ᵔᵢ;->ˈ:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lיٴ/ᵔᵢ;->ʽ:[B

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v2, Lיٴ/ᵔᵢ;->ˑﹳ:[B

    invoke-virtual {p0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v4, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ⁱˊ([B[B)[B
    .locals 6

    .prologue
    if-eqz p1, :cond_3

    array-length v0, p1

    iget-object v1, p0, Lיٴ/ᵔᵢ;->ⁱˊ:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1c

    if-lt v0, v2, :cond_2

    invoke-static {v1, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    new-array v2, v0, [B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v2, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    iget-object v5, p0, Lיٴ/ᵔᵢ;->ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v3, p2

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    array-length p2, v1

    add-int/2addr p2, v0

    array-length v3, p1

    array-length v1, v1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, p2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ([B[B)[B
    .locals 10

    .prologue
    if-eqz p1, :cond_3

    const/16 v0, 0xc

    invoke-static {v0}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v3, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    iget-object v5, p0, Lיٴ/ᵔᵢ;->ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, v3, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v2, p2

    if-eqz v2, :cond_0

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    array-length p2, p1

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    iget-object v2, p0, Lיٴ/ᵔᵢ;->ⁱˊ:[B

    array-length v3, v2

    const v5, 0x7ffffff3

    sub-int/2addr v5, v3

    if-gt p2, v5, :cond_2

    array-length v3, v2

    add-int/2addr v3, v0

    add-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    const/4 v3, 0x0

    array-length v5, v2

    invoke-static {v1, v3, v8, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, p1

    array-length v1, v2

    add-int/lit8 v9, v1, 0xc

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p2, :cond_1

    return-object v8

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
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
