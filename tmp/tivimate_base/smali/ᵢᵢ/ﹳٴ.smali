.class public final Lᵢᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lᵢᵢ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(I[B[B)I
    .locals 7

    .prologue
    iget v0, p0, Lᵢᵢ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljavax/crypto/Cipher;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v4, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result p1
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Lcom/hierynomus/security/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_0
    move v4, p1

    move-object v2, p2

    move-object v5, p3

    iget-object p1, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lˏˉ/ⁱˊ;

    array-length p2, v2

    if-gt v4, p2, :cond_2

    array-length p2, v5

    if-gt v4, p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v4, :cond_0

    iget p3, p1, Lˏˉ/ⁱˊ;->ⁱˊ:I

    add-int/lit8 p3, p3, 0x1

    and-int/lit16 p3, p3, 0xff

    iput p3, p1, Lˏˉ/ⁱˊ;->ⁱˊ:I

    iget-object v0, p1, Lˏˉ/ⁱˊ;->ﹳٴ:[B

    aget-byte v1, v0, p3

    iget v3, p1, Lˏˉ/ⁱˊ;->ʽ:I

    add-int/2addr v3, v1

    and-int/lit16 v3, v3, 0xff

    iput v3, p1, Lˏˉ/ⁱˊ;->ʽ:I

    aget-byte v6, v0, v3

    aput-byte v6, v0, p3

    aput-byte v1, v0, v3

    aget-byte v3, v2, p2

    aget-byte p3, v0, p3

    add-int/2addr p3, v1

    and-int/lit16 p3, p3, 0xff

    aget-byte p3, v0, p3

    xor-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, v5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    move v4, p1

    move-object v2, p2

    move-object v5, p3

    iget-object p1, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lʻˑ/ﹳٴ;

    iget-object p2, p1, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast p2, Lˏˉ/ﹳٴ;

    iget-object p3, p1, Lʻˑ/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast p3, [B

    if-ltz v4, :cond_8

    iget v0, p1, Lʻˑ/ﹳٴ;->ⁱˊ:I

    add-int v1, v4, v0

    array-length v3, p3

    rem-int v3, v1, v3

    sub-int/2addr v1, v3

    if-lez v1, :cond_4

    array-length v3, v5

    if-gt v1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    array-length v1, p3

    sub-int/2addr v1, v0

    const/4 v3, 0x0

    if-le v4, v1, :cond_5

    invoke-static {v2, v3, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2, v3, v3, p3, v5}, Lˏˉ/ﹳٴ;->ﹳٴ(II[B[B)V

    iput v3, p1, Lʻˑ/ﹳٴ;->ⁱˊ:I

    sub-int v0, v4, v1

    const/16 v4, 0x8

    :goto_2
    array-length v6, p3

    if-le v0, v6, :cond_6

    invoke-virtual {p2, v1, v4, v2, v5}, Lˏˉ/ﹳٴ;->ﹳٴ(II[B[B)V

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v1, v1, 0x8

    goto :goto_2

    :cond_5
    move v1, v3

    move v0, v4

    move v4, v1

    :cond_6
    iget v6, p1, Lʻˑ/ﹳٴ;->ⁱˊ:I

    invoke-static {v2, v1, p3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p1, Lʻˑ/ﹳٴ;->ⁱˊ:I

    add-int/2addr v1, v0

    iput v1, p1, Lʻˑ/ﹳٴ;->ⁱˊ:I

    array-length v0, p3

    if-ne v1, v0, :cond_7

    invoke-virtual {p2, v3, v4, p3, v5}, Lˏˉ/ﹳٴ;->ﹳٴ(II[B[B)V

    add-int/lit8 v4, v4, 0x8

    iput v3, p1, Lʻˑ/ﹳٴ;->ⁱˊ:I

    :cond_7
    return v4

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ([B)V
    .locals 14

    .prologue
    iget v0, p0, Lᵢᵢ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "/"

    iget-object v1, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/Cipher;

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/hierynomus/security/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˏˉ/ⁱˊ;

    array-length v1, p1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lˏˉ/ⁱˊ;->ˈ:[B

    invoke-virtual {v0, v2}, Lˏˉ/ⁱˊ;->ﹳٴ([B)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʻˑ/ﹳٴ;

    array-length v1, p1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, p1}, Lˎˆ/ﹳٴ;->ﹳٴ(I[B)Z

    move-result v4

    if-nez v4, :cond_e

    array-length v4, p1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-static {v5, p1}, Lˎˆ/ﹳٴ;->ﹳٴ(I[B)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attempt to create weak DESede key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Lʻˑ/ﹳٴ;->ʽ()V

    iget-object p1, v0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast p1, Lˏˉ/ﹳٴ;

    const/16 v0, 0x8

    if-gt v1, v0, :cond_d

    const/16 v0, 0x20

    new-array v1, v0, [I

    const/16 v4, 0x38

    new-array v5, v4, [Z

    new-array v6, v4, [Z

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_3

    sget-object v8, Lˏˉ/ﹳٴ;->ˈ:[B

    aget-byte v8, v8, v7

    ushr-int/lit8 v9, v8, 0x3

    aget-byte v9, v2, v9

    and-int/lit8 v8, v8, 0x7

    sget-object v10, Lˏˉ/ﹳٴ;->ⁱˊ:[S

    aget-short v8, v10, v8

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    move v8, v3

    :goto_2
    aput-boolean v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_3
    const/16 v7, 0x10

    if-ge v2, v7, :cond_b

    shl-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v7, 0x1

    aput v3, v1, v8

    aput v3, v1, v7

    move v9, v3

    :goto_4
    sget-object v10, Lˏˉ/ﹳٴ;->ˑﹳ:[B

    const/16 v11, 0x1c

    if-ge v9, v11, :cond_5

    aget-byte v10, v10, v2

    add-int/2addr v10, v9

    if-ge v10, v11, :cond_4

    aget-boolean v10, v5, v10

    aput-boolean v10, v6, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v10, -0x1c

    aget-boolean v10, v5, v10

    aput-boolean v10, v6, v9

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    :goto_6
    if-ge v11, v4, :cond_7

    aget-byte v9, v10, v2

    add-int/2addr v9, v11

    if-ge v9, v4, :cond_6

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v11

    goto :goto_7

    :cond_6
    add-int/lit8 v9, v9, -0x1c

    aget-boolean v9, v5, v9

    aput-boolean v9, v6, v11

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    move v9, v3

    :goto_8
    const/16 v10, 0x18

    if-ge v9, v10, :cond_a

    sget-object v10, Lˏˉ/ﹳٴ;->ﾞᴵ:[B

    aget-byte v11, v10, v9

    aget-boolean v11, v6, v11

    sget-object v12, Lˏˉ/ﹳٴ;->ʽ:[I

    if-eqz v11, :cond_8

    aget v11, v1, v7

    aget v13, v12, v9

    or-int/2addr v11, v13

    aput v11, v1, v7

    :cond_8
    add-int/lit8 v11, v9, 0x18

    aget-byte v10, v10, v11

    aget-boolean v10, v6, v10

    if-eqz v10, :cond_9

    aget v10, v1, v8

    aget v11, v12, v9

    or-int/2addr v10, v11

    aput v10, v1, v8

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    :goto_9
    if-eq v3, v0, :cond_c

    aget v2, v1, v3

    add-int/lit8 v4, v3, 0x1

    aget v5, v1, v4

    const/high16 v6, 0xfc0000

    and-int v8, v2, v6

    shl-int/lit8 v8, v8, 0x6

    and-int/lit16 v9, v2, 0xfc0

    shl-int/lit8 v9, v9, 0xa

    or-int/2addr v8, v9

    and-int/2addr v6, v5

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v8

    and-int/lit16 v8, v5, 0xfc0

    ushr-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    aput v6, v1, v3

    const v6, 0x3f000

    and-int v8, v2, v6

    shl-int/lit8 v8, v8, 0xc

    and-int/lit8 v2, v2, 0x3f

    shl-int/2addr v2, v7

    or-int/2addr v2, v8

    and-int/2addr v6, v5

    ushr-int/lit8 v6, v6, 0x4

    or-int/2addr v2, v6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v2, v5

    aput v2, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_c
    iput-object v1, p1, Lˏˉ/ﹳٴ;->ﹳٴ:[I

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DES key too long - should be 8 bytes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attempt to create weak DES key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(I[B)I
    .locals 1

    .prologue
    iget v0, p0, Lᵢᵢ/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0, p2, p1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    new-instance p2, Lcom/hierynomus/security/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_0
    iget-object p1, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lˏˉ/ⁱˊ;

    iget-object p2, p1, Lˏˉ/ⁱˊ;->ˈ:[B

    invoke-virtual {p1, p2}, Lˏˉ/ⁱˊ;->ﹳٴ([B)V

    const/4 p1, 0x0

    return p1

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lᵢᵢ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lʻˑ/ﹳٴ;

    invoke-virtual {v0, p1, p2}, Lʻˑ/ﹳٴ;->ⁱˊ(I[B)I

    move-result p1
    :try_end_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_3

    return p1

    :catch_3
    move-exception p1

    new-instance p2, Lcom/hierynomus/security/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
