.class public final Lיʻ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 1

    .prologue
    iput p1, p0, Lיʻ/ˑﹳ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    if-eqz p1, :cond_1

    array-length p1, p2

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

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

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lיٴ/ﾞʻ;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lיٴ/ﾞʻ;-><init>(I[B)V

    iput-object p1, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lיٴ/ﾞʻ;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lיٴ/ﾞʻ;-><init>(I[B)V

    iput-object p1, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lיʻ/ˈ;Lﹳʽ/ʼʼ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lיʻ/ˑﹳ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lٴʻ/ﹳٴ;[B)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lיʻ/ˑﹳ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    array-length p1, p2

    if-eqz p1, :cond_1

    array-length p1, p2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "identifier has an invalid length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([BLʾᐧ/ﹳٴ;)V
    .locals 2

    .prologue
    const/4 v0, 0x3

    iput v0, p0, Lיʻ/ˑﹳ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lʼﾞ/ˊˋ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lיٴ/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    array-length v0, p1

    invoke-static {v0}, Lﹶˆ/ˉˆ;->ﹳٴ(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {p2}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object p1

    iput-object p1, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public ʽ([B[B)[B
    .locals 3

    .prologue
    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lיٴ/ﾞʻ;

    invoke-virtual {v0, p1, v1, p2}, Lיٴ/ˉʿ;->ˑﹳ(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ˈ([B[B)[B
    .locals 3

    .prologue
    array-length v0, p1

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lיٴ/ﾞʻ;

    invoke-virtual {v0, p1, v1, p2}, Lיٴ/ˉʿ;->ˑﹳ(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ([B[B)[B
    .locals 9

    .prologue
    iget v0, p0, Lיʻ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lיʻ/ˑﹳ;->ˈ([B[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v0, v0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lיʻ/ˑﹳ;->ˈ([B[B)[B

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v0, [B

    array-length v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lיʻ/ˑﹳ;->ʽ([B[B)[B

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {v0, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v0, v0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lיʻ/ˑﹳ;->ʽ([B[B)[B

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz p1, :cond_7

    array-length v1, p1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1c

    if-lt v1, v2, :cond_6

    invoke-static {v0, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, v0

    const/16 v2, 0xc

    invoke-static {p1, v1, v2}, Lיٴ/ʽ;->ﹳٴ([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    sget-object v3, Lיٴ/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    iget-object v4, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v4, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_4

    array-length v1, p2

    if-eqz v1, :cond_4

    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_4
    array-length p2, v0

    add-int/2addr p2, v2

    array-length v1, p1

    array-length v0, v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {v3, p1, p2, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    iget-object v0, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz p1, :cond_b

    array-length v1, p1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x28

    if-lt v1, v2, :cond_a

    invoke-static {v0, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x18

    new-array v2, v1, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {p1, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v3, v2}, Lיٴ/ˆʾ;->ﹳٴ([B[B)[B

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "ChaCha20"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v5, 0xc

    new-array v5, v5, [B

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, 0x10

    invoke-static {v2, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v2, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_8

    array-length v3, p2

    if-eqz v3, :cond_8

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_8
    array-length p2, v0

    add-int/2addr p2, v1

    array-length v3, p1

    array-length v0, v0

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, p2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget-object v0, p0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lٴʻ/ﹳٴ;

    iget-object v1, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v1, [B

    array-length v2, v1

    if-nez v2, :cond_c

    invoke-interface {v0, p1, p2}, Lٴʻ/ﹳٴ;->ⁱˊ([B[B)[B

    move-result-object p1

    goto :goto_2

    :cond_c
    invoke-static {v1, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lٴʻ/ﹳٴ;->ⁱˊ([B[B)[B

    move-result-object p1

    :goto_2
    return-object p1

    :cond_d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "wrong prefix"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    iget-object v0, p0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lﹳʽ/ʼʼ;

    invoke-virtual {v0, p1}, Lﹳʽ/ʼʼ;->ﹳٴ([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lיʻ/ˈ;

    :try_start_0
    iget-object v1, v1, Lיʻ/ˈ;->ﹳٴ:Lٴʻ/ﹳٴ;

    invoke-interface {v1, p1, p2}, Lٴʻ/ﹳٴ;->ⁱˊ([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "decryption failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ([B[B)[B
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    iget v3, v0, Lיʻ/ˑﹳ;->ﹳٴ:I

    const-string v4, "plaintext is null"

    const-string v5, "plaintext too long"

    const-string v7, "not enough data written"

    const/16 v6, 0x18

    const/16 v8, 0xc

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, v0, Lיʻ/ˑﹳ;->ʽ:Ljava/lang/Object;

    iget-object v13, v0, Lיʻ/ˑﹳ;->ⁱˊ:Ljava/lang/Object;

    packed-switch v3, :pswitch_data_0

    array-length v3, v2

    add-int/lit8 v3, v3, 0x28

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v6}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    check-cast v13, Lיٴ/ﾞʻ;

    invoke-virtual {v13, v3, v4, v2, v1}, Lיٴ/ˉʿ;->ﾞᴵ(Ljava/nio/ByteBuffer;[B[B[B)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    check-cast v12, [B

    array-length v2, v12

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v2, v9, [[B

    aput-object v12, v2, v11

    aput-object v1, v2, v10

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1c

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v8}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    check-cast v13, Lיٴ/ﾞʻ;

    invoke-virtual {v13, v3, v4, v2, v1}, Lיٴ/ˉʿ;->ﾞᴵ(Ljava/nio/ByteBuffer;[B[B[B)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    check-cast v12, [B

    array-length v2, v12

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-array v2, v9, [[B

    aput-object v12, v2, v11

    aput-object v1, v2, v10

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_1
    check-cast v12, [B

    if-eqz v2, :cond_5

    invoke-static {v8}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v11, v4}, Lיٴ/ʽ;->ﹳٴ([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    sget-object v6, Lיٴ/ʽ;->ﹳٴ:Lcom/parse/ˑ;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/crypto/Cipher;

    check-cast v13, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v6, v10, v13, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz v1, :cond_2

    array-length v4, v1

    if-eqz v4, :cond_2

    invoke-virtual {v6, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_2
    array-length v1, v2

    invoke-virtual {v6, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v9

    array-length v1, v12

    const v4, 0x7ffffff3

    sub-int/2addr v4, v1

    if-gt v9, v4, :cond_4

    array-length v1, v12

    add-int/2addr v1, v8

    add-int/2addr v1, v9

    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    array-length v1, v12

    invoke-static {v3, v11, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    array-length v1, v12

    add-int/2addr v1, v8

    const/4 v3, 0x0

    move-object/from16 v16, v6

    move v6, v1

    move-object/from16 v1, v16

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v1

    if-ne v1, v9, :cond_3

    return-object v5

    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    check-cast v12, [B

    if-eqz v2, :cond_9

    invoke-static {v6}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v3

    check-cast v13, [B

    invoke-static {v13, v3}, Lיٴ/ˆʾ;->ﹳٴ([B[B)[B

    move-result-object v4

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v13, "ChaCha20"

    invoke-direct {v9, v4, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    new-array v8, v8, [B

    const/4 v13, 0x4

    const/16 v14, 0x8

    const/16 v15, 0x10

    invoke-static {v3, v15, v8, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v4, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sget-object v8, Lיٴ/ᵔᵢ;->ﾞᴵ:Lcom/parse/ˑ;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/crypto/Cipher;

    invoke-virtual {v8, v10, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz v1, :cond_6

    array-length v4, v1

    if-eqz v4, :cond_6

    invoke-virtual {v8, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_6
    array-length v1, v2

    invoke-virtual {v8, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v9

    array-length v1, v12

    const v4, 0x7fffffe7

    sub-int/2addr v4, v1

    if-gt v9, v4, :cond_8

    array-length v1, v12

    add-int/2addr v1, v6

    add-int/2addr v1, v9

    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    array-length v1, v12

    invoke-static {v3, v11, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    array-length v1, v12

    add-int/2addr v6, v1

    const/4 v3, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v1

    if-ne v1, v9, :cond_7

    return-object v5

    :cond_7
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    check-cast v13, Lٴʻ/ﹳٴ;

    check-cast v12, [B

    array-length v3, v12

    if-nez v3, :cond_a

    invoke-interface {v13, v2, v1}, Lٴʻ/ﹳٴ;->ﹳٴ([B[B)[B

    move-result-object v1

    goto :goto_2

    :cond_a
    invoke-interface {v13, v2, v1}, Lٴʻ/ﹳٴ;->ﹳٴ([B[B)[B

    move-result-object v1

    new-array v2, v9, [[B

    aput-object v12, v2, v11

    aput-object v1, v2, v10

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/י;->ﾞʻ([[B)[B

    move-result-object v1

    :goto_2
    return-object v1

    :pswitch_4
    check-cast v13, Lיʻ/ˈ;

    iget-object v3, v13, Lיʻ/ˈ;->ﹳٴ:Lٴʻ/ﹳٴ;

    invoke-interface {v3, v2, v1}, Lٴʻ/ﹳٴ;->ﹳٴ([B[B)[B

    move-result-object v1

    array-length v2, v2

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
