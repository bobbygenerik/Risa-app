.class public abstract Lﹳʾ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ᵢˏ;

.field public static final ˈ:Lﹳʽ/ᵎﹶ;

.field public static final ⁱˊ:Lﹳʽ/ᵢˏ;

.field public static final ﹳٴ:Lˏˑ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lˏˑ/ⁱˊ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lˏˑ/ⁱˊ;-><init>(I)V

    sput-object v0, Lﹳʾ/ⁱˊ;->ﹳٴ:Lˏˑ/ⁱˊ;

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v2, Lﹳʾ/ﹳٴ;

    const-class v3, Lﹳʾ/ˑﹳ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lﹳʾ/ⁱˊ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v3, Lٴʻ/ᵔᵢ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lﹳʾ/ⁱˊ;->ʽ:Lﹳʽ/ᵢˏ;

    invoke-static {}, Lᴵﹳ/ⁱˊ;->ٴᵢ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    new-instance v0, Lﹳʽ/ᵎﹶ;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    sget-object v2, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-direct {v0, v1, v3, v2}, Lﹳʽ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Class;Lᴵﹳ/ᴵˑ;)V

    sput-object v0, Lﹳʾ/ⁱˊ;->ˈ:Lﹳʽ/ᵎﹶ;

    return-void
.end method
