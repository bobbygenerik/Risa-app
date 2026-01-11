.class public final Lיٴ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʻ/ﹳٴ;


# static fields
.field public static final ˈ:[B

.field public static final ˑﹳ:[B

.field public static final ᵎﹶ:[B

.field public static final ᵔᵢ:[B

.field public static final ﾞᴵ:[B


# instance fields
.field public final ʽ:[B

.field public final ⁱˊ:Ljavax/crypto/spec/SecretKeySpec;

.field public final ﹳٴ:Lʾˈ/ˏי;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7a806c"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ﾞᴵ;->ˈ:[B

    const-string v0, "46bb91c3c5"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ﾞᴵ;->ˑﹳ:[B

    const-string v0, "36864200e0eaf5284d884a0e77d31646"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ﾞᴵ;->ﾞᴵ:[B

    const-string v0, "bae8e37fc83441b16034566b"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ﾞᴵ;->ᵎﹶ:[B

    const-string v0, "af60eb711bd85bc1e4d3e0a462e074eea428a8"

    invoke-static {v0}, Lʼ/ᵎﹶ;->ʼᐧ(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lיٴ/ﾞᴵ;->ᵔᵢ:[B

    return-void
.end method

.method public constructor <init>([B[BLʾˈ/ˏי;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lיٴ/ﾞᴵ;->ʽ:[B

    array-length p2, p1

    invoke-static {p2}, Lﹶˆ/ˉˆ;->ﹳٴ(I)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lיٴ/ﾞᴵ;->ⁱˊ:Ljavax/crypto/spec/SecretKeySpec;

    iput-object p3, p0, Lיٴ/ﾞᴵ;->ﹳٴ:Lʾˈ/ˏי;

    return-void
.end method

.method public static ʽ(Ljavax/crypto/Cipher;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lיٴ/ﾞᴵ;->ᵎﹶ:[B

    array-length v2, v1

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v1, v0, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lיٴ/ﾞᴵ;->ﾞᴵ:[B

    const-string v4, "AES"

    invoke-direct {v1, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v1, Lיٴ/ﾞᴵ;->ˑﹳ:[B

    invoke-virtual {p0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    sget-object v1, Lיٴ/ﾞᴵ;->ᵔᵢ:[B

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    sget-object v1, Lיٴ/ﾞᴵ;->ˈ:[B

    invoke-static {p0, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public final ⁱˊ([B[B)[B
    .locals 6

    .prologue
    array-length v0, p1

    iget-object v1, p0, Lיٴ/ﾞᴵ;->ʽ:[B

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1c

    if-lt v0, v2, :cond_2

    invoke-static {v1, p1}, Lﹳʽ/ᵔי;->ⁱˊ([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lיٴ/ﾞᴵ;->ﹳٴ:Lʾˈ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lʾˈ/ˏי;->ʽ()Ljavax/crypto/Cipher;

    move-result-object v0

    array-length v2, v1

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    const/16 v5, 0xc

    invoke-direct {v3, v4, p1, v2, v5}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const/4 v2, 0x2

    iget-object v4, p0, Lיٴ/ﾞᴵ;->ⁱˊ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v2, p2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    array-length p2, v1

    add-int/2addr p2, v5

    array-length v2, p1

    array-length v1, v1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v5

    invoke-virtual {v0, p1, p2, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

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
.end method

.method public final ﹳٴ([B[B)[B
    .locals 9

    .prologue
    iget-object v0, p0, Lיٴ/ﾞᴵ;->ﹳٴ:Lʾˈ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lʾˈ/ˏי;->ʽ()Ljavax/crypto/Cipher;

    move-result-object v1

    array-length v0, p1

    iget-object v2, p0, Lיٴ/ﾞᴵ;->ʽ:[B

    array-length v3, v2

    const v4, 0x7fffffe3

    sub-int/2addr v4, v3

    if-gt v0, v4, :cond_2

    array-length v0, v2

    const/16 v3, 0xc

    add-int/2addr v0, v3

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x10

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-static {v3}, Lﹳʽ/ٴᵢ;->ﹳٴ(I)[B

    move-result-object v0

    array-length v4, v2

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v0

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v0, v6, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    const/4 v0, 0x1

    iget-object v4, p0, Lיٴ/ﾞᴵ;->ⁱˊ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v0, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    array-length v4, p1

    array-length p2, v2

    add-int/lit8 v6, p2, 0xc

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    array-length p2, v2

    add-int/lit8 p2, p2, 0x10

    if-ne p1, p2, :cond_1

    return-object v5

    :cond_1
    array-length p2, v2

    sub-int/2addr p1, p2

    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v0, "encryption failed; AES-GCM-SIV tag must be 16 bytes, but got only "

    const-string v1, " bytes"

    invoke-static {p1, v0, v1}, Lʼﾞ/ˊˋ;->ʼᐧ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
