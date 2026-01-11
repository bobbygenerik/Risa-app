.class public final synthetic Lיٴ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳʽ/ـˆ;
.implements Lﹳʽ/ʽﹳ;
.implements Lﹳʽ/ﾞᴵ;
.implements Lﹳʽ/ˈ;
.implements Lˆʽ/ˑﹳ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lיٴ/ˈ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic ˈ()Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static synthetic ˑﹳ(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;
    .locals 0

    invoke-interface {p0}, Ljava/lang/CharSequence;->codePoints()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic ᵎﹶ()Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static synthetic ᵔᵢ(Ljava/lang/CharSequence;)Lj$/util/stream/IntStream;
    .locals 0

    invoke-interface {p0}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lᵢˋ/ᵔᵢ;

    iget p1, p1, Lᵢˋ/ᵔᵢ;->ʾˋ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object p1

    return-object p1
.end method

.method public ʽ(Lﹳʽ/ˊʻ;)Lٴʻ/ʼˎ;
    .locals 3

    .prologue
    iget v0, p0, Lיٴ/ˈ;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesSivKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ˉٴ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ˉٴ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ˉٴ;->ᴵˊ()I

    move-result v1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    invoke-static {}, Lˏˑ/ˑﹳ;->ⁱˊ()Lﾞˏ/ʽ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ˉٴ;->ʾˋ()I

    move-result v0

    invoke-virtual {v1, v0}, Lﾞˏ/ʽ;->ⁱˊ(I)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lـᵔ/ﹳٴ;->ⁱˊ(Lᴵﹳ/י;)Lˏˑ/ˈ;

    move-result-object p1

    iput-object p1, v1, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v1}, Lﾞˏ/ʽ;->ﹳٴ()Lˏˑ/ˑﹳ;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesSivParameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesSivParameters.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ʻᴵ;->ᴵˊ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ʻᴵ;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v0}, Lᴵﹳ/ʻᴵ;->ʾˋ()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיٴ/ʼᐧ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    new-instance v0, Lיʻ/ˆﾞ;

    invoke-direct {v0, p1}, Lיʻ/ˆﾞ;-><init>(Lיʻ/ˆʾ;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 parameters are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing XChaCha20Poly1305Parameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/יﹳ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/יﹳ;

    move-result-object v0
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v0}, Lᴵﹳ/יﹳ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיٴ/ˉˆ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    invoke-virtual {v0}, Lᴵﹳ/יﹳ;->ʾˋ()Lᴵﹳ/ʾﾞ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ʾﾞ;->ᴵˊ()I

    move-result v0

    invoke-static {v0, p1}, Lיʻ/ٴʼ;->ⁱˊ(ILיʻ/ˆʾ;)Lיʻ/ٴʼ;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 parameters are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing XAesGcmParameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ᵔי;->ʾˋ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)V
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיٴ/ʼˎ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    new-instance v0, Lיʻ/ـˆ;

    invoke-direct {v0, p1}, Lיʻ/ـˆ;-><init>(Lיʻ/ˆʾ;)V

    return-object v0

    :catch_3
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing ChaCha20Poly1305Parameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_5
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ˈٴ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ˈٴ;

    move-result-object v0
    :try_end_5
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-virtual {v0}, Lᴵﹳ/ˈٴ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lיʻ/ˏי;->ⁱˊ()Lˑʼ/ᵎˊ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ˈٴ;->ʾˋ()I

    move-result v0

    invoke-virtual {v1, v0}, Lˑʼ/ᵎˊ;->ˈⁱ(I)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיٴ/ᵎﹶ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    iput-object p1, v1, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˑʼ/ᵎˊ;->ˉˆ()Lיʻ/ˏי;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 parameters are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesGcmSivParameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    iget-object p1, p1, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ᵢˏ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᵢˏ;

    move-result-object v0
    :try_end_6
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_6} :catch_5

    invoke-virtual {v0}, Lᴵﹳ/ᵢˏ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lיʻ/ᵔﹳ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ᵢˏ;->ʾˋ()I

    move-result v0

    invoke-virtual {v1, v0}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˆﾞ()V

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˊˋ()V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ˈٴ()Lᴵﹳ/י;

    move-result-object p1

    invoke-static {p1}, Lיٴ/ˑﹳ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object p1

    iput-object p1, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˉʿ()Lיʻ/ᵔﹳ;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 parameters are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_5
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesGcmParameters failed: "

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to AesGcmProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x5 -> :sswitch_3
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public ⁱˊ(Lﹳʽ/ᴵᵔ;)Lﹳˋ/ʽʽ;
    .locals 5

    .prologue
    iget v0, p0, Lיٴ/ˈ;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesSivKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ˊʻ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ˊʻ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ˊʻ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lˏˑ/ˑﹳ;->ⁱˊ()Lﾞˏ/ʽ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ˊʻ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lﾞˏ/ʽ;->ⁱˊ(I)V

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/י;

    invoke-static {v2}, Lـᵔ/ﹳٴ;->ⁱˊ(Lᴵﹳ/י;)Lˏˑ/ˈ;

    move-result-object v2

    iput-object v2, v1, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v1}, Lﾞˏ/ʽ;->ﹳٴ()Lˏˑ/ˑﹳ;

    move-result-object v1

    new-instance v2, Lcom/parse/ٴʼ;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/parse/ٴʼ;-><init>(IZ)V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iput-object v3, v2, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᴵﹳ/ˊʻ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v1, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v1, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v2, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/parse/ٴʼ;->ᴵˊ()Lˏˑ/ﹳٴ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing AesSivKey failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to AesSivParameters.parseParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ᐧˎ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᐧˎ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ᐧˎ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/י;

    invoke-static {v1}, Lיٴ/ʼᐧ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ᐧˎ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v2, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v2, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v1, v2, p1}, Lיʻ/ᵎˊ;->ٴᵢ(Lיʻ/ˆʾ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ᵎˊ;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing XChaCha20Poly1305Key failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ʼـ;->ˊʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ʼـ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ʼـ;->ˈٴ()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lᴵﹳ/ʼـ;->ᴵˊ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/י;

    invoke-static {v1}, Lיٴ/ˉˆ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ʼـ;->ʽʽ()Lᴵﹳ/ʾﾞ;

    move-result-object v2

    invoke-virtual {v2}, Lᴵﹳ/ʾﾞ;->ᴵˊ()I

    move-result v2

    invoke-static {v2, v1}, Lיʻ/ٴʼ;->ⁱˊ(ILיʻ/ˆʾ;)Lיʻ/ٴʼ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ʼـ;->ᴵˊ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v2, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v2, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v1, v2, p1}, Lיʻ/ˉٴ;->ٴᵢ(Lיʻ/ٴʼ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ˉٴ;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only 32 byte key size is accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing XAesGcmKey failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to XAesGcmProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_2
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_3
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ٴʼ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ٴʼ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ٴʼ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵﹳ/י;

    invoke-static {v1}, Lיٴ/ʼˎ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ٴʼ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v2, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v2, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v1, v2, p1}, Lיʻ/ʽﹳ;->ٴᵢ(Lיʻ/ˆʾ;Landroidx/leanback/widget/ˉˆ;Ljava/lang/Integer;)Lיʻ/ʽﹳ;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing ChaCha20Poly1305Key failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_3
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_4
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ᴵˊ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᴵˊ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ᴵˊ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lיʻ/ˏי;->ⁱˊ()Lˑʼ/ᵎˊ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ᴵˊ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lˑʼ/ᵎˊ;->ˈⁱ(I)V

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/י;

    invoke-static {v2}, Lיٴ/ᵎﹶ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v2

    iput-object v2, v1, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˑʼ/ᵎˊ;->ˉˆ()Lיʻ/ˏי;

    move-result-object v1

    new-instance v2, Lcom/parse/ٴʼ;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/parse/ٴʼ;-><init>(IZ)V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iput-object v3, v2, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v2, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᴵﹳ/ᴵˊ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v1, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v1, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v2, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/parse/ٴʼ;->ʽʽ()Lיʻ/ﹳᐧ;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing AesGcmSivKey failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to AesGcmSivProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_4
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, p1, Lﹳʽ/ᴵᵔ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ʾᵎ;->ˈٴ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ʾᵎ;

    move-result-object v0

    invoke-virtual {v0}, Lᴵﹳ/ʾᵎ;->ᴵˊ()I

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lיʻ/ᵔﹳ;->ⁱˊ()Lˏˆ/ﹳٴ;

    move-result-object v1

    invoke-virtual {v0}, Lᴵﹳ/ʾᵎ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lˏˆ/ﹳٴ;->ˈʿ(I)V

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˆﾞ()V

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˊˋ()V

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lᴵﹳ/י;

    invoke-static {v2}, Lיٴ/ˑﹳ;->ⁱˊ(Lᴵﹳ/י;)Lיʻ/ˆʾ;

    move-result-object v2

    iput-object v2, v1, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    invoke-virtual {v1}, Lˏˆ/ﹳٴ;->ˉʿ()Lיʻ/ᵔﹳ;

    move-result-object v1

    new-instance v2, Lᵢ/ﹳٴ;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lᵢ/ﹳٴ;-><init>(IZ)V

    const/4 v3, 0x0

    iput-object v3, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object v3, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v2, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᴵﹳ/ʾᵎ;->ʾˋ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ﾞᴵ()[B

    move-result-object v0

    new-instance v1, Landroidx/leanback/widget/ˉˆ;

    invoke-static {v0}, Lʾᐧ/ﹳٴ;->ﹳٴ([B)Lʾᐧ/ﹳٴ;

    move-result-object v0

    const/16 v3, 0xd

    invoke-direct {v1, v3, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iput-object v1, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iget-object p1, p1, Lﹳʽ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v2, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    invoke-virtual {v2}, Lᵢ/ﹳٴ;->ᵔᵢ()Lיʻ/ˉˆ;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing AesGcmKey failed"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type URL in call to AesGcmProtoSerialization.parseKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x7 -> :sswitch_3
        0xb -> :sswitch_2
        0xf -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public ﹳٴ(Lٴʻ/ʼˎ;)Lﹳʽ/ˊʻ;
    .locals 5

    .prologue
    iget v0, p0, Lיٴ/ˈ;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lˏˑ/ˑﹳ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesSivKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ˉٴ;->ʽʽ()Lᴵﹳ/ٴᵢ;

    move-result-object v1

    iget v2, p1, Lˏˑ/ˑﹳ;->ﹳٴ:I

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˉٴ;

    invoke-static {v3, v2}, Lᴵﹳ/ˉٴ;->ᵢˏ(Lᴵﹳ/ˉٴ;I)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ˉٴ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    invoke-static {p1}, Lـᵔ/ﹳٴ;->ﹳٴ(Lˏˑ/ˈ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Lיʻ/ˆﾞ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ʻᴵ;->ᵢˏ()Lᴵﹳ/ʻᴵ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיٴ/ʼᐧ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Lיʻ/ٴʼ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/יﹳ;->ʽʽ()Lᴵﹳ/ˎᐧ;

    move-result-object v1

    invoke-static {}, Lᴵﹳ/ʾﾞ;->ʽʽ()Lᴵﹳ/ʽⁱ;

    move-result-object v2

    iget v3, p1, Lיʻ/ٴʼ;->ⁱˊ:I

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ʾﾞ;

    invoke-static {v4, v3}, Lᴵﹳ/ʾﾞ;->ᵢˏ(Lᴵﹳ/ʾﾞ;I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v2

    check-cast v2, Lᴵﹳ/ʾﾞ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/יﹳ;

    invoke-static {v3, v2}, Lᴵﹳ/יﹳ;->ᵢˏ(Lᴵﹳ/יﹳ;Lᴵﹳ/ʾﾞ;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/יﹳ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיٴ/ˉˆ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Lיʻ/ـˆ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ᵔי;->ᵢˏ()Lᴵﹳ/ᵔי;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ـˆ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיٴ/ʼˎ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_3
    check-cast p1, Lיʻ/ˏי;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ˈٴ;->ʽʽ()Lᴵﹳ/ʽʽ;

    move-result-object v1

    iget v2, p1, Lיʻ/ˏי;->ﹳٴ:I

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ˈٴ;

    invoke-static {v3, v2}, Lᴵﹳ/ˈٴ;->ᵢˏ(Lᴵﹳ/ˈٴ;I)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ˈٴ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ˏי;->ⁱˊ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיٴ/ᵎﹶ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_4
    check-cast p1, Lיʻ/ᵔﹳ;

    invoke-static {p1}, Lיٴ/ˑﹳ;->ʽ(Lיʻ/ᵔﹳ;)V

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-static {}, Lᴵﹳ/ᵢˏ;->ʽʽ()Lᴵﹳ/ʼʼ;

    move-result-object v1

    iget v2, p1, Lיʻ/ᵔﹳ;->ﹳٴ:I

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ᵢˏ;

    invoke-static {v3, v2}, Lᴵﹳ/ᵢˏ;->ᵢˏ(Lᴵﹳ/ᵢˏ;I)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ᵢˏ;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    iget-object p1, p1, Lיʻ/ᵔﹳ;->ˈ:Lיʻ/ˆʾ;

    invoke-static {p1}, Lיٴ/ˑﹳ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object p1

    invoke-virtual {v0, p1}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p1

    check-cast p1, Lᴵﹳ/ᵎᵔ;

    invoke-static {p1}, Lﹳʽ/ˊʻ;->ˉʿ(Lᴵﹳ/ᵎᵔ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x4 -> :sswitch_3
        0x8 -> :sswitch_2
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public ﾞᴵ(Lﹳˋ/ʽʽ;)Lﹳʽ/ᴵᵔ;
    .locals 5

    .prologue
    iget v0, p0, Lיٴ/ˈ;->ʾˋ:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Lˏˑ/ﹳٴ;

    invoke-static {}, Lᴵﹳ/ˊʻ;->ʽʽ()Lᴵﹳ/ᴵᵔ;

    move-result-object v0

    iget-object v1, p1, Lˏˑ/ﹳٴ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ˊʻ;

    invoke-static {v2, v1}, Lᴵﹳ/ˊʻ;->ᵢˏ(Lᴵﹳ/ˊʻ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ˊʻ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lˏˑ/ﹳٴ;->ˈٴ:Lˏˑ/ˑﹳ;

    iget-object v1, v1, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    invoke-static {v1}, Lـᵔ/ﹳٴ;->ﹳٴ(Lˏˑ/ˈ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lˏˑ/ﹳٴ;->ٴᵢ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Lיʻ/ᵎˊ;

    invoke-static {}, Lᴵﹳ/ᐧˎ;->ʽʽ()Lᴵﹳ/ⁱˉ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ᵎˊ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ᐧˎ;

    invoke-static {v2, v1}, Lᴵﹳ/ᐧˎ;->ᵢˏ(Lᴵﹳ/ᐧˎ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᐧˎ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ᵎˊ;->ˈٴ:Lיʻ/ˆﾞ;

    iget-object v1, v1, Lיʻ/ˆﾞ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיٴ/ʼᐧ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ᵎˊ;->ٴᵢ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Lיʻ/ˉٴ;

    invoke-static {}, Lᴵﹳ/ʼـ;->ᴵᵔ()Lᴵﹳ/ˑ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ˉٴ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ʼـ;

    invoke-static {v2, v1}, Lᴵﹳ/ʼـ;->ʾˋ(Lᴵﹳ/ʼـ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-static {}, Lᴵﹳ/ʾﾞ;->ʽʽ()Lᴵﹳ/ʽⁱ;

    move-result-object v1

    iget-object v2, p1, Lיʻ/ˉٴ;->ˈٴ:Lיʻ/ٴʼ;

    iget v3, v2, Lיʻ/ٴʼ;->ⁱˊ:I

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v4, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v4, Lᴵﹳ/ʾﾞ;

    invoke-static {v4, v3}, Lᴵﹳ/ʾﾞ;->ᵢˏ(Lᴵﹳ/ʾﾞ;I)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v1

    check-cast v1, Lᴵﹳ/ʾﾞ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v3, Lᴵﹳ/ʼـ;

    invoke-static {v3, v1}, Lᴵﹳ/ʼـ;->ᵢˏ(Lᴵﹳ/ʼـ;Lᴵﹳ/ʾﾞ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ʼـ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, v2, Lיʻ/ٴʼ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיٴ/ˉˆ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ˉٴ;->ٴᵢ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Lיʻ/ʽﹳ;

    invoke-static {}, Lᴵﹳ/ٴʼ;->ʽʽ()Lᴵﹳ/ᵎⁱ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ʽﹳ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ٴʼ;

    invoke-static {v2, v1}, Lᴵﹳ/ٴʼ;->ᵢˏ(Lᴵﹳ/ٴʼ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ٴʼ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ʽﹳ;->ˈٴ:Lיʻ/ـˆ;

    iget-object v1, v1, Lיʻ/ـˆ;->ﹳٴ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיٴ/ʼˎ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ʽﹳ;->ٴᵢ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_3
    check-cast p1, Lיʻ/ﹳᐧ;

    invoke-static {}, Lᴵﹳ/ᴵˊ;->ʽʽ()Lᴵﹳ/ʾˋ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ﹳᐧ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ᴵˊ;

    invoke-static {v2, v1}, Lᴵﹳ/ᴵˊ;->ᵢˏ(Lᴵﹳ/ᴵˊ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ᴵˊ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ﹳᐧ;->ˈٴ:Lיʻ/ˏי;

    iget-object v1, v1, Lיʻ/ˏי;->ⁱˊ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיٴ/ᵎﹶ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ﹳᐧ;->ٴᵢ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_4
    check-cast p1, Lיʻ/ˉˆ;

    iget-object v0, p1, Lיʻ/ˉˆ;->ˈٴ:Lיʻ/ᵔﹳ;

    invoke-static {v0}, Lיٴ/ˑﹳ;->ʽ(Lיʻ/ᵔﹳ;)V

    invoke-static {}, Lᴵﹳ/ʾᵎ;->ʽʽ()Lᴵﹳ/ـˆ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ˉˆ;->ᴵᵔ:Landroidx/leanback/widget/ˉˆ;

    iget-object v1, v1, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʾᐧ/ﹳٴ;

    invoke-virtual {v1}, Lʾᐧ/ﹳٴ;->ⁱˊ()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;->ˈ([BII)Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ʾᵎ;

    invoke-static {v2, v1}, Lᴵﹳ/ʾᵎ;->ᵢˏ(Lᴵﹳ/ʾᵎ;Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v0

    check-cast v0, Lᴵﹳ/ʾᵎ;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ﾞᴵ()Lcom/google/crypto/tink/shaded/protobuf/ᵎﹶ;

    move-result-object v0

    iget-object v1, p1, Lיʻ/ˉˆ;->ˈٴ:Lיʻ/ᵔﹳ;

    iget-object v1, v1, Lיʻ/ᵔﹳ;->ˈ:Lיʻ/ˆʾ;

    invoke-static {v1}, Lיٴ/ˑﹳ;->ﹳٴ(Lיʻ/ˆʾ;)Lᴵﹳ/י;

    move-result-object v1

    iget-object p1, p1, Lיʻ/ˉˆ;->ٴᵢ:Ljava/lang/Integer;

    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-static {v2, v0, v3, v1, p1}, Lﹳʽ/ᴵᵔ;->ᵔᵢ(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;Lᴵﹳ/ᴵˑ;Lᴵﹳ/י;Ljava/lang/Integer;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0xe -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method
