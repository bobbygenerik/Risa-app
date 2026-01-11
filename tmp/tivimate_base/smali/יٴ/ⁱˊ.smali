.class public abstract Lיٴ/ⁱˊ;
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

    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-static {v0}, Lﹳʽ/ᵔי;->ʽ(Ljava/lang/String;)Lʾᐧ/ﹳٴ;

    move-result-object v0

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ʻٴ;

    const-class v3, Lיʻ/ᵔʾ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ʻٴ;-><init>(Ljava/lang/Class;Lﹳʽ/ـˆ;)V

    sput-object v2, Lיٴ/ⁱˊ;->ﹳٴ:Lﹳʽ/ʻٴ;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ˏי;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ˏי;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ʽﹳ;)V

    sput-object v2, Lיٴ/ⁱˊ;->ⁱˊ:Lﹳʽ/ˏי;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ˑﹳ;

    const-class v3, Lיʻ/ﾞʻ;

    invoke-direct {v2, v3, v1}, Lﹳʽ/ˑﹳ;-><init>(Ljava/lang/Class;Lﹳʽ/ﾞᴵ;)V

    sput-object v2, Lיٴ/ⁱˊ;->ʽ:Lﹳʽ/ˑﹳ;

    new-instance v1, Lˑʿ/ˏי;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v2, Lﹳʽ/ʽ;

    invoke-direct {v2, v0, v1}, Lﹳʽ/ʽ;-><init>(Lʾᐧ/ﹳٴ;Lﹳʽ/ˈ;)V

    sput-object v2, Lיٴ/ⁱˊ;->ˈ:Lﹳʽ/ʽ;

    return-void
.end method

.method public static ʽ(Lᴵﹳ/י;)Lיʻ/ˆʾ;
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
    sget-object p0, Lיʻ/ˆʾ;->ˉʿ:Lיʻ/ˆʾ;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lיʻ/ˆʾ;->ﾞʻ:Lיʻ/ˆʾ;

    return-object p0

    :cond_3
    sget-object p0, Lיʻ/ˆʾ;->ٴﹶ:Lיʻ/ˆʾ;

    return-object p0
.end method

.method public static ⁱˊ(Lיʻ/ˆʾ;)Lᴵﹳ/י;
    .locals 3

    .prologue
    sget-object v0, Lיʻ/ˆʾ;->ٴﹶ:Lיʻ/ˆʾ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    return-object p0

    :cond_0
    sget-object v0, Lיʻ/ˆʾ;->ﾞʻ:Lיʻ/ˆʾ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    return-object p0

    :cond_1
    sget-object v0, Lיʻ/ˆʾ;->ˉʿ:Lיʻ/ˆʾ;

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

.method public static ﹳٴ(Lיʻ/ᵔʾ;)Lᴵﹳ/ʻٴ;
    .locals 3

    .prologue
    iget v0, p0, Lיʻ/ᵔʾ;->ʽ:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-static {}, Lᴵﹳ/ʻٴ;->ʽʽ()Lᴵﹳ/ʽﹳ;

    move-result-object v0

    iget p0, p0, Lיʻ/ᵔʾ;->ⁱˊ:I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ﾞᴵ()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ᴵˊ:Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    check-cast v1, Lᴵﹳ/ʻٴ;

    invoke-static {v1, p0}, Lᴵﹳ/ʻٴ;->ᵢˏ(Lᴵﹳ/ʻٴ;I)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ʽﹳ;->ⁱˊ()Lcom/google/crypto/tink/shaded/protobuf/ـˆ;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ʻٴ;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    iget p0, p0, Lיʻ/ᵔʾ;->ʽ:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Invalid tag size in bytes %d. Currently Tink only supports aes eax keys with tag size equal to 16 bytes."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
