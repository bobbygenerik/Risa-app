.class public abstract Lיʻ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lיʻ/ᵔᵢ;

.field public static final ˈ:Lﹳʽ/ᵎﹶ;

.field public static final ⁱˊ:Lˏˑ/ⁱˊ;

.field public static final ﹳٴ:Lﹳʽ/ᵢˏ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lˑʿ/ˏי;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v2, Lיʻ/ﹳᐧ;

    const-class v3, Lٴʻ/ﹳٴ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lיʻ/יـ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    new-instance v0, Lˏˑ/ⁱˊ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lˏˑ/ⁱˊ;-><init>(I)V

    sput-object v0, Lיʻ/יـ;->ⁱˊ:Lˏˑ/ⁱˊ;

    new-instance v0, Lיʻ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lיʻ/יـ;->ʽ:Lיʻ/ᵔᵢ;

    invoke-static {}, Lᴵﹳ/ᴵˊ;->ᴵᵔ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    new-instance v0, Lﹳʽ/ᵎﹶ;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    sget-object v2, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-direct {v0, v1, v3, v2}, Lﹳʽ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Class;Lᴵﹳ/ᴵˑ;)V

    sput-object v0, Lיʻ/יـ;->ˈ:Lﹳʽ/ᵎﹶ;

    return-void
.end method
