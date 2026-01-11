.class public abstract Lיʻ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ˑﹳ;

.field public static final ˈ:Lﹳʽ/ʽ;

.field public static final ⁱˊ:Lﹳʽ/ˏי;

.field public static final ﹳٴ:Lﹳʽ/ʻٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-static {v0}, Lﹳʽ/ᵔי;->ʽ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v0

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ʻٴ;

    const-class v3, Lיʻ/ᴵᵔ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ʻٴ;-><init>(Ljava/lang/Class;Lﹳʽ/ـˆ;)V

    sput-object v2, Lיʻ/ˊʻ;->ﹳٴ:Lﹳʽ/ʻٴ;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ˏי;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ˏי;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ʽﹳ;)V

    sput-object v2, Lיʻ/ˊʻ;->ⁱˊ:Lﹳʽ/ˏי;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ˑﹳ;

    const-class v3, Lיʻ/ˈٴ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ˑﹳ;-><init>(Ljava/lang/Class;Lﹳʽ/ﾞᴵ;)V

    sput-object v2, Lיʻ/ˊʻ;->ʽ:Lﹳʽ/ˑﹳ;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ʽ;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ʽ;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ˈ;)V

    sput-object v2, Lיʻ/ˊʻ;->ˈ:Lﹳʽ/ʽ;

    return-void
.end method

.method public static ʽ(Lיʻ/ˆʾ;)Lᴵﹳ/י;
    .locals 3

    .prologue
    sget-object v0, Lיʻ/ˆʾ;->ᴵᵔ:Lיʻ/ˆʾ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    return-object p0

    :cond_0
    sget-object v0, Lיʻ/ˆʾ;->ˊʻ:Lיʻ/ˆʾ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    return-object p0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ⁱˊ(Lיʻ/ᴵᵔ;)Lᴵﹳ/ᐧﹶ;
    .locals 3

    .prologue
    iget-object v0, p0, Lיʻ/ᴵᵔ;->ˈ:Lיʻ/ʽ;

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ʾᵎ(Lٴʻ/ʼˎ;)[B

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;->ﹳٴ()Lcom/google/crypto/tink/shaded/protobuf/ˉˆ;

    move-result-object v1

    invoke-static {v0, v1}, Lᴵﹳ/ᵎᵔ;->ᵎⁱ([BLcom/google/crypto/tink/shaded/protobuf/ˉˆ;)Lᴵﹳ/ᵎᵔ;

    move-result-object v0

    invoke-static {}, Lᴵﹳ/ᐧﹶ;->ᴵᵔ()Lᴵﹳ/ʽᵔ;

    move-result-object v1

    iget-object p0, p0, Lיʻ/ᴵᵔ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ᐧﹶ;

    invoke-static {v2, p0}, Lᴵﹳ/ᐧﹶ;->ᵢˏ(Lᴵﹳ/ᐧﹶ;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object p0, v1, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast p0, Lᴵﹳ/ᐧﹶ;

    invoke-static {p0, v0}, Lᴵﹳ/ᐧﹶ;->ʾˋ(Lᴵﹳ/ᐧﹶ;Lᴵﹳ/ᵎᵔ;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ᐧﹶ;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static ﹳٴ(Lᴵﹳ/ᐧﹶ;Lᴵﹳ/י;)Lיʻ/ᴵᵔ;
    .locals 11

    .prologue
    sget-object v0, Lיʻ/ˆʾ;->ˊʻ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ˈٴ:Lיʻ/ˆʾ;

    sget-object v2, Lיʻ/ˆʾ;->ʽʽ:Lיʻ/ˆʾ;

    sget-object v3, Lיʻ/ˆʾ;->ᴵˊ:Lיʻ/ˆʾ;

    sget-object v4, Lיʻ/ˆʾ;->ᵢˏ:Lיʻ/ˆʾ;

    sget-object v5, Lיʻ/ˆʾ;->ʾˋ:Lיʻ/ˆʾ;

    sget-object v6, Lיʻ/ˆʾ;->ʼʼ:Lיʻ/ˆʾ;

    invoke-static {}, Lᴵﹳ/ᵎᵔ;->ٴᵢ()Lᴵﹳ/ʿᵢ;

    move-result-object v7

    invoke-virtual {p0}, Lᴵﹳ/ᐧﹶ;->ʽʽ()Lᴵﹳ/ᵎᵔ;

    move-result-object v8

    invoke-virtual {v8}, Lᴵﹳ/ᵎᵔ;->ᴵᵔ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lᴵﹳ/ʿᵢ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {p0}, Lᴵﹳ/ᐧﹶ;->ʽʽ()Lᴵﹳ/ᵎᵔ;

    move-result-object v8

    invoke-virtual {v8}, Lᴵﹳ/ᵎᵔ;->ˊʻ()Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;

    move-result-object v8

    invoke-virtual {v7, v8}, Lᴵﹳ/ʿᵢ;->ﾞʻ(Lcom/google/crypto/tink/shaded/protobuf/ᵔᵢ;)V

    sget-object v8, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    invoke-virtual {v7, v8}, Lᴵﹳ/ʿᵢ;->ˆʾ(Lᴵﹳ/י;)V

    invoke-virtual {v7}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object v7

    check-cast v7, Lᴵﹳ/ᵎᵔ;

    invoke-virtual {v7}, Lcom/google/crypto/tink/shaded/protobuf/ﹳٴ;->ˑﹳ()[B

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/ʽ;->יـ([B)Lٴʻ/ʼˎ;

    move-result-object v7

    instance-of v8, v7, Lיʻ/ᵔﹳ;

    if-eqz v8, :cond_0

    move-object v8, v6

    goto :goto_0

    :cond_0
    instance-of v8, v7, Lיʻ/ـˆ;

    if-eqz v8, :cond_1

    move-object v8, v5

    goto :goto_0

    :cond_1
    instance-of v8, v7, Lיʻ/ˆﾞ;

    if-eqz v8, :cond_2

    move-object v8, v4

    goto :goto_0

    :cond_2
    instance-of v8, v7, Lיʻ/ٴﹶ;

    if-eqz v8, :cond_3

    move-object v8, v3

    goto :goto_0

    :cond_3
    instance-of v8, v7, Lיʻ/ᵔʾ;

    if-eqz v8, :cond_4

    move-object v8, v2

    goto :goto_0

    :cond_4
    instance-of v8, v7, Lיʻ/ˏי;

    if-eqz v8, :cond_10

    move-object v8, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse OutputPrefixType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lᴵﹳ/י;->ⁱˊ()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object v0, Lיʻ/ˆʾ;->ᴵᵔ:Lיʻ/ˆʾ;

    :goto_1
    invoke-virtual {p0}, Lᴵﹳ/ᐧﹶ;->ˈٴ()Ljava/lang/String;

    move-result-object p0

    check-cast v7, Lיʻ/ʽ;

    if-eqz p0, :cond_f

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lٴʻ/ʼˎ;->ﹳٴ()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    instance-of p1, v7, Lיʻ/ᵔﹳ;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    instance-of p1, v7, Lיʻ/ـˆ;

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    instance-of p1, v7, Lיʻ/ˆﾞ;

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    instance-of p1, v7, Lיʻ/ٴﹶ;

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    instance-of p1, v7, Lיʻ/ᵔʾ;

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    instance-of p1, v7, Lיʻ/ˏי;

    if-eqz p1, :cond_c

    :goto_2
    new-instance p1, Lיʻ/ᴵᵔ;

    invoke-direct {p1, v0, p0, v8, v7}, Lיʻ/ᴵᵔ;-><init>(Lיʻ/ˆʾ;Ljava/lang/String;Lיʻ/ˆʾ;Lיʻ/ʽ;)V

    return-object p1

    :cond_c
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot use parsing strategy "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lיʻ/ˆʾ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when new keys are picked according to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "dekParametersForNewKeys must not have ID Requirements"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "dekParametersForNewKeys must be set"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "kekUri must be set"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported DEK parameters when parsing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
