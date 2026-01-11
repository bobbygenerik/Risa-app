.class public final Lﹶˆ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lcom/parse/ˑ;


# instance fields
.field public final ʽ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/parse/ˑ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/parse/ˑ;-><init>(I)V

    sput-object v0, Lﹶˆ/ﹳٴ;->ˈ:Lcom/parse/ˑ;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lʼﾞ/ˊˋ;->ˑﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p2

    invoke-static {v0}, Lﹶˆ/ˉˆ;->ﹳٴ(I)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lﹶˆ/ﹳٴ;->ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;

    sget-object p2, Lﹶˆ/ﹳٴ;->ˈ:Lcom/parse/ˑ;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p2

    iput p2, p0, Lﹶˆ/ﹳٴ;->ʽ:I

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    if-gt p1, p2, :cond_0

    iput p1, p0, Lﹶˆ/ﹳٴ;->ⁱˊ:I

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid IV size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ﹳٴ([BII[BI[BZ)V
    .locals 4

    .prologue
    sget-object v0, Lﹶˆ/ﹳٴ;->ˈ:Lcom/parse/ˑ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    iget v1, p0, Lﹶˆ/ﹳٴ;->ʽ:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget v3, p0, Lﹶˆ/ﹳٴ;->ⁱˊ:I

    invoke-static {p6, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p6, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v1, p0, Lﹶˆ/ﹳٴ;->ﹳٴ:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p7, :cond_0

    const/4 p7, 0x1

    invoke-virtual {v0, p7, v1, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    move p6, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_1

    :cond_0
    const/4 p7, 0x2

    invoke-virtual {v0, p7, v1, p6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p4, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "stored output\'s length does not match input\'s length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
