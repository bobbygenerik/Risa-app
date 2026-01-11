.class public final Lﹶˆ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴˆ/ﹳٴ;


# static fields
.field public static final ˈ:Lcom/parse/ˑ;


# instance fields
.field public final ʽ:[B

.field public final ⁱˊ:[B

.field public final ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ˑ;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/parse/ˑ;-><init>(I)V

    sput-object v0, Lﹶˆ/ٴﹶ;->ˈ:Lcom/parse/ˑ;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lﹶˆ/ˉˆ;->ﹳٴ(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lﹶˆ/ٴﹶ;->ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;

    const/4 p1, 0x1

    invoke-static {p1}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lﹶˆ/ٴﹶ;->ˈ:Lcom/parse/ˑ;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lﹳˋ/ٴﹶ;->ﹳᐧ([B)[B

    move-result-object p1

    iput-object p1, p0, Lﹶˆ/ٴﹶ;->ⁱˊ:[B

    invoke-static {p1}, Lﹳˋ/ٴﹶ;->ﹳᐧ([B)[B

    move-result-object p1

    iput-object p1, p0, Lﹶˆ/ٴﹶ;->ʽ:[B

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ﹳٴ(I[B)[B
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x10

    if-gt v1, v3, :cond_a

    const/4 v4, 0x1

    invoke-static {v4}, Lʼﾞ/ˊˋ;->ˈ(I)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lﹶˆ/ٴﹶ;->ˈ:Lcom/parse/ˑ;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher;

    iget-object v6, v0, Lﹶˆ/ٴﹶ;->ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v6, v2

    if-nez v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    sub-int/2addr v6, v4

    div-int/2addr v6, v3

    add-int/2addr v6, v4

    :goto_0
    mul-int/lit8 v7, v6, 0x10

    array-length v8, v2

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v3

    iget-object v8, v0, Lﹶˆ/ٴﹶ;->ⁱˊ:[B

    invoke-static {v7, v3, v2, v8}, Lcom/google/android/gms/internal/play_billing/י;->ٴᵢ(II[B[B)[B

    move-result-object v7

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v6, -0x1

    mul-int/2addr v7, v3

    array-length v8, v2

    invoke-static {v2, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    array-length v8, v7

    if-ge v8, v3, :cond_8

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    array-length v7, v7

    const/16 v9, -0x80

    aput-byte v9, v8, v7

    iget-object v7, v0, Lﹶˆ/ٴﹶ;->ʽ:[B

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/play_billing/י;->ˉٴ([B[B)[B

    move-result-object v7

    :goto_1
    new-array v8, v3, [B

    new-array v9, v3, [B

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    add-int/lit8 v12, v6, -0x1

    const-string v13, "Cipher didn\'t write full block"

    if-ge v11, v12, :cond_4

    mul-int/lit8 v12, v11, 0x10

    move v14, v10

    :goto_3
    if-ge v14, v3, :cond_2

    aget-byte v15, v8, v14

    add-int v16, v14, v12

    aget-byte v16, v2, v16

    xor-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v9, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v9, v10, v3, v8}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v12

    if-ne v12, v3, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move v2, v10

    :goto_4
    if-ge v2, v3, :cond_5

    aget-byte v4, v8, v2

    aget-byte v6, v7, v2

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v9, v10, v3, v8}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v2

    if-ne v2, v3, :cond_7

    if-ne v3, v1, :cond_6

    return-object v8

    :cond_6
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "x must be smaller than a block."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Can not use AES-CMAC in FIPS-mode."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "outputLength too large, max is 16 bytes"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
