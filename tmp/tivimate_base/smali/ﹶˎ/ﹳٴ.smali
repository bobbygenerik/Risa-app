.class public final Lﹶˎ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـˊ/ﾞᴵ;


# instance fields
.field public final ʽʽ:[B

.field public final ʾˋ:Lـˊ/ﾞᴵ;

.field public ˈٴ:Ljavax/crypto/CipherInputStream;

.field public final ᴵˊ:[B


# direct methods
.method public constructor <init>(Lـˊ/ﾞᴵ;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˎ/ﹳٴ;->ʾˋ:Lـˊ/ﾞᴵ;

    iput-object p2, p0, Lﹶˎ/ﹳٴ;->ᴵˊ:[B

    iput-object p3, p0, Lﹶˎ/ﹳٴ;->ʽʽ:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶˎ/ﹳٴ;->ˈٴ:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lﹶˎ/ﹳٴ;->ˈٴ:Ljavax/crypto/CipherInputStream;

    iget-object v0, p0, Lﹶˎ/ﹳٴ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->close()V

    :cond_0
    return-void
.end method

.method public final read([BII)I
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶˎ/ﹳٴ;->ˈٴ:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹶˎ/ﹳٴ;->ˈٴ:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public final ʽʽ(Lـˊ/ᵔᵢ;)J
    .locals 4

    .prologue
    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lﹶˎ/ﹳٴ;->ᴵˊ:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lﹶˎ/ﹳٴ;->ʽʽ:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Lـˊ/ᵎﹶ;

    iget-object v2, p0, Lﹶˎ/ﹳٴ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-direct {v1, v2, p1}, Lـˊ/ᵎﹶ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;)V

    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lﹶˎ/ﹳٴ;->ˈٴ:Ljavax/crypto/CipherInputStream;

    iget-boolean p1, v1, Lـˊ/ᵎﹶ;->ˈٴ:Z

    if-nez p1, :cond_0

    iget-object p1, v1, Lـˊ/ᵎﹶ;->ʾˋ:Lـˊ/ﾞᴵ;

    iget-object v0, v1, Lـˊ/ᵎﹶ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-interface {p1, v0}, Lـˊ/ﾞᴵ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    const/4 p1, 0x1

    iput-boolean p1, v1, Lـˊ/ᵎﹶ;->ˈٴ:Z

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ˉʿ(Lـˊ/ᵔﹳ;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹶˎ/ﹳٴ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0, p1}, Lـˊ/ﾞᴵ;->ˉʿ(Lـˊ/ᵔﹳ;)V

    return-void
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lﹶˎ/ﹳٴ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->יـ()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final ٴﹶ()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lﹶˎ/ﹳٴ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v0}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
