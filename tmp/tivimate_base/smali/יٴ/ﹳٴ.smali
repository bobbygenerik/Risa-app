.class public abstract Lיٴ/ﹳٴ;
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

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v0}, Lﹳʽ/ᵔי;->ʽ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v0

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ʻٴ;

    const-class v3, Lיʻ/ٴﹶ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ʻٴ;-><init>(Ljava/lang/Class;Lﹳʽ/ـˆ;)V

    sput-object v2, Lיٴ/ﹳٴ;->ﹳٴ:Lﹳʽ/ʻٴ;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ˏי;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ˏי;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ʽﹳ;)V

    sput-object v2, Lיٴ/ﹳٴ;->ⁱˊ:Lﹳʽ/ˏי;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ˑﹳ;

    const-class v3, Lיʻ/ᵎﹶ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ˑﹳ;-><init>(Ljava/lang/Class;Lﹳʽ/ﾞᴵ;)V

    sput-object v2, Lיٴ/ﹳٴ;->ʽ:Lﹳʽ/ˑﹳ;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ʽ;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ʽ;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ˈ;)V

    sput-object v2, Lיٴ/ﹳٴ;->ˈ:Lﹳʽ/ʽ;

    return-void
.end method

.method public static ʽ(Lיʻ/ˆʾ;)Lᴵﹳ/י;
    .locals 3

    .prologue
    sget-object v0, Lיʻ/ˆʾ;->ᵔᵢ:Lיʻ/ˆʾ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    return-object p0

    :cond_0
    sget-object v0, Lיʻ/ˆʾ;->ʼˎ:Lיʻ/ˆʾ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    return-object p0

    :cond_1
    sget-object v0, Lיʻ/ˆʾ;->ˆʾ:Lיʻ/ˆʾ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    return-object p0

    :cond_2
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

.method public static ˈ(Lᴵﹳ/י;)Lיʻ/ˆʾ;
    .locals 3

    .prologue
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lᴵﹳ/י;->ⁱˊ()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lיʻ/ˆʾ;->ˆʾ:Lיʻ/ˆʾ;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lיʻ/ˆʾ;->ʼˎ:Lיʻ/ˆʾ;

    return-object p0

    :cond_3
    sget-object p0, Lיʻ/ˆʾ;->ᵔᵢ:Lיʻ/ˆʾ;

    return-object p0
.end method

.method public static ⁱˊ(Lᴵﹳ/ˈʿ;)Lיʻ/ˆʾ;
    .locals 3

    .prologue
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object p0, Lיʻ/ˆʾ;->ˈ:Lיʻ/ˆʾ;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse HashType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lᴵﹳ/ˈʿ;->ﹳٴ()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lיʻ/ˆʾ;->ᵎﹶ:Lיʻ/ˆʾ;

    return-object p0

    :cond_2
    sget-object p0, Lיʻ/ˆʾ;->ˑﹳ:Lיʻ/ˆʾ;

    return-object p0

    :cond_3
    sget-object p0, Lיʻ/ˆʾ;->ﾞᴵ:Lיʻ/ˆʾ;

    return-object p0

    :cond_4
    sget-object p0, Lיʻ/ˆʾ;->ʽ:Lיʻ/ˆʾ;

    return-object p0
.end method

.method public static ﹳٴ(Lיʻ/ٴﹶ;)Lᴵﹳ/ﹳـ;
    .locals 3

    .prologue
    invoke-static {}, Lᴵﹳ/ﹳـ;->ᴵᵔ()Lᴵﹳ/ـˏ;

    move-result-object v0

    iget v1, p0, Lיʻ/ٴﹶ;->ˈ:I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v2, Lᴵﹳ/ﹳـ;

    invoke-static {v2, v1}, Lᴵﹳ/ﹳـ;->ʾˋ(Lᴵﹳ/ﹳـ;I)V

    iget-object p0, p0, Lיʻ/ٴﹶ;->ﾞᴵ:Lיʻ/ˆʾ;

    sget-object v1, Lיʻ/ˆʾ;->ʽ:Lיʻ/ˆʾ;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lᴵﹳ/ˈʿ;->ʽʽ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_0
    sget-object v1, Lיʻ/ˆʾ;->ˈ:Lיʻ/ˆʾ;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lᴵﹳ/ˈʿ;->ٴᵢ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_1
    sget-object v1, Lיʻ/ˆʾ;->ˑﹳ:Lיʻ/ˆʾ;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lᴵﹳ/ˈʿ;->ᴵᵔ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_2
    sget-object v1, Lיʻ/ˆʾ;->ﾞᴵ:Lיʻ/ˆʾ;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lᴵﹳ/ˈʿ;->ˈٴ:Lᴵﹳ/ˈʿ;

    goto :goto_0

    :cond_3
    sget-object v1, Lיʻ/ˆʾ;->ᵎﹶ:Lיʻ/ˆʾ;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Lᴵﹳ/ˈʿ;->ˊʻ:Lᴵﹳ/ˈʿ;

    :goto_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v1, Lᴵﹳ/ﹳـ;

    invoke-static {v1, p0}, Lᴵﹳ/ﹳـ;->ᵢˏ(Lᴵﹳ/ﹳـ;Lᴵﹳ/ˈʿ;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ﹳـ;

    return-object p0

    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize HashType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
