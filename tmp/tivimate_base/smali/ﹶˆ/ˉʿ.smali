.class public final Lﹶˆ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴˆ/ﹳٴ;


# instance fields
.field public final ʽ:Ljavax/crypto/spec/SecretKeySpec;

.field public final ˈ:I

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lﹶˆ/ﾞʻ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹶˆ/ﾞʻ;

    invoke-direct {v0, p0}, Lﹶˆ/ﾞʻ;-><init>(Lﹶˆ/ˉʿ;)V

    iput-object v0, p0, Lﹶˆ/ˉʿ;->ﹳٴ:Lﹶˆ/ﾞʻ;

    const/4 v1, 0x2

    invoke-static {v1}, Lʼﾞ/ˊˋ;->ˑﹳ(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object p1, p0, Lﹶˆ/ˉʿ;->ⁱˊ:Ljava/lang/String;

    iput-object p2, p0, Lﹶˆ/ˉʿ;->ʽ:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object p2

    array-length p2, p2

    const/16 v2, 0x10

    if-lt p2, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move v1, v2

    goto :goto_1

    :sswitch_0
    const-string p2, "HMACSHA512"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "HMACSHA384"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "HMACSHA256"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :sswitch_3
    const-string p2, "HMACSHA224"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string p2, "HMACSHA1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "unknown Hmac algorithm: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/16 p1, 0x40

    iput p1, p0, Lﹶˆ/ˉʿ;->ˈ:I

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x30

    iput p1, p0, Lﹶˆ/ˉʿ;->ˈ:I

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x20

    iput p1, p0, Lﹶˆ/ˉʿ;->ˈ:I

    goto :goto_2

    :pswitch_3
    const/16 p1, 0x1c

    iput p1, p0, Lﹶˆ/ˉʿ;->ˈ:I

    goto :goto_2

    :pswitch_4
    const/16 p1, 0x14

    iput p1, p0, Lﹶˆ/ˉʿ;->ˈ:I

    :goto_2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    return-void

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "key size too small, need at least 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x6ca99674 -> :sswitch_4
        0x1762408f -> :sswitch_3
        0x176240ee -> :sswitch_2
        0x1762450a -> :sswitch_1
        0x17624bb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ﹳٴ(I[B)[B
    .locals 2

    .prologue
    iget v0, p0, Lﹶˆ/ˉʿ;->ˈ:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lﹶˆ/ˉʿ;->ﹳٴ:Lﹶˆ/ﾞʻ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Mac;

    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/Mac;

    invoke-virtual {p2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too big"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
