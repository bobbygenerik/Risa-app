.class public final Lˆـ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lˆـ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˆـ/ⁱˊ;

    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, p1, v1}, Lˆـ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    iput-object v0, p0, Lˆـ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lˆـ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lˆـ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/security/InvalidKeyException;

    const-string v0, "Keystore cannot load the key with ID: "

    invoke-static {v0, p1}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final ⁱˊ([B[B)[B
    .locals 6

    .prologue
    iget v0, p0, Lˆـ/ⁱˊ;->ﹳٴ:I

    iget-object v1, p0, Lˆـ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lˆـ/ⁱˊ;

    :try_start_0
    invoke-virtual {v1, p1, p2}, Lˆـ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v2, "\u2071\u02ca"

    const-string v3, "encountered a potentially transient KeyStore error, will wait and retry"

    nop

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    invoke-virtual {v1, p1, p2}, Lˆـ/ⁱˊ;->ⁱˊ([B[B)[B

    move-result-object p1

    :goto_1
    return-object p1

    :catch_3
    move-exception p1

    throw p1

    :pswitch_0
    array-length v0, p1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-direct {v0, v2, p1, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    array-length p2, p1

    sub-int/2addr p2, v4

    invoke-virtual {v2, p1, v4, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ([B[B)[B
    .locals 8

    .prologue
    iget v0, p0, Lˆـ/ⁱˊ;->ﹳٴ:I

    iget-object v1, p0, Lˆـ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lˆـ/ⁱˊ;

    :try_start_0
    invoke-virtual {v1, p1, p2}, Lˆـ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v2, "\u2071\u02ca"

    const-string v3, "encountered a potentially transient KeyStore error, will wait and retry"

    nop

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    invoke-virtual {v1, p1, p2}, Lˆـ/ⁱˊ;->ﹳٴ([B[B)[B

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_0
    array-length v0, p1

    const v2, 0x7fffffe3

    if-gt v0, v2, :cond_2

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1c

    new-array v6, v0, [B

    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v0, 0x1

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    array-length v5, p1

    const/16 v7, 0xc

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    array-length p2, v3

    add-int/lit8 p2, p2, 0x10

    if-ne p1, p2, :cond_1

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    array-length p2, p1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2, v6, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "IV has unexpected length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "encryption failed: bytesWritten is wrong"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
