.class public abstract Lיʻ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lיʻ/ᵔᵢ;

.field public static final ˈ:Lˏˑ/ⁱˊ;

.field public static final ˑﹳ:I

.field public static final ⁱˊ:Lﹳʽ/ᵎﹶ;

.field public static final ﹳٴ:Lﹳʽ/ᵢˏ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lˑʿ/ˏי;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lˑʿ/ˏי;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v2, Lיʻ/ˉˆ;

    const-class v3, Lٴʻ/ﹳٴ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lיʻ/ʼᐧ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    invoke-static {}, Lᴵﹳ/ʾᵎ;->ᴵᵔ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    new-instance v0, Lﹳʽ/ᵎﹶ;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sget-object v2, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-direct {v0, v1, v3, v2}, Lﹳʽ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Class;Lᴵﹳ/ᴵˑ;)V

    sput-object v0, Lיʻ/ʼᐧ;->ⁱˊ:Lﹳʽ/ᵎﹶ;

    new-instance v0, Lיʻ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lיʻ/ʼᐧ;->ʽ:Lיʻ/ᵔᵢ;

    new-instance v0, Lˏˑ/ⁱˊ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lˏˑ/ⁱˊ;-><init>(I)V

    sput-object v0, Lיʻ/ʼᐧ;->ˈ:Lˏˑ/ⁱˊ;

    const/4 v0, 0x2

    sput v0, Lיʻ/ʼᐧ;->ˑﹳ:I

    return-void
.end method
