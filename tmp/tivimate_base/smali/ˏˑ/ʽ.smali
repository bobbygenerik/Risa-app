.class public abstract Lˏˑ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lיʻ/ᵔᵢ;

.field public static final ˈ:Lˏˑ/ⁱˊ;

.field public static final ⁱˊ:Lﹳʽ/ᵎﹶ;

.field public static final ﹳٴ:Lﹳʽ/ᵢˏ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lˊˋ/ⁱˊ;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lˊˋ/ⁱˊ;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v2, Lˏˑ/ﹳٴ;

    const-class v3, Lٴʻ/ⁱˊ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lˏˑ/ʽ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-static {}, Lᴵﹳ/ˊʻ;->ᴵᵔ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    new-instance v0, Lﹳʽ/ᵎﹶ;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sget-object v2, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-direct {v0, v1, v3, v2}, Lﹳʽ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Class;Lᴵﹳ/ᴵˑ;)V

    sput-object v0, Lˏˑ/ʽ;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    new-instance v0, Lיʻ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˏˑ/ʽ;->ʽ:Lיʻ/ᵔᵢ;

    new-instance v0, Lˏˑ/ⁱˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lˏˑ/ⁱˊ;-><init>(I)V

    sput-object v0, Lˏˑ/ʽ;->ˈ:Lˏˑ/ⁱˊ;

    return-void
.end method

.method public static ﹳٴ(Lˏˑ/ˑﹳ;)V
    .locals 3

    .prologue
    iget v0, p0, Lˏˑ/ˑﹳ;->ﹳٴ:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid key size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lˏˑ/ˑﹳ;->ﹳٴ:I

    const-string v2, ". Valid keys must have 64 bytes."

    invoke-static {v1, p0, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
