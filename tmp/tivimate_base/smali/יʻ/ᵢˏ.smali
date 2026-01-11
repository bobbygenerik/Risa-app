.class public abstract Lיʻ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ᵢˏ;

.field public static final ⁱˊ:Lˏˑ/ⁱˊ;

.field public static final ﹳٴ:Lﹳʽ/ᵎﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lᴵﹳ/ـᵎ;->ᴵᵔ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    new-instance v0, Lﹳʽ/ᵎﹶ;

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    const-class v2, Lٴʻ/ﹳٴ;

    sget-object v3, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-direct {v0, v1, v2, v3}, Lﹳʽ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Class;Lᴵﹳ/ᴵˑ;)V

    sput-object v0, Lיʻ/ᵢˏ;->ﹳٴ:Lﹳʽ/ᵎﹶ;

    new-instance v0, Lˏˑ/ⁱˊ;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lˏˑ/ⁱˊ;-><init>(I)V

    sput-object v0, Lיʻ/ᵢˏ;->ⁱˊ:Lˏˑ/ⁱˊ;

    new-instance v0, Lˑʿ/ˏי;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v3, Lיʻ/ˈٴ;

    invoke-direct {v1, v3, v2, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lיʻ/ᵢˏ;->ʽ:Lﹳʽ/ᵢˏ;

    return-void
.end method
