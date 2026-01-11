.class public abstract Lﹳʾ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʽ/ᵎﹶ;

.field public static final ˈ:Lיʻ/ᵔᵢ;

.field public static final ˑﹳ:Lˏˑ/ⁱˊ;

.field public static final ⁱˊ:Lﹳʽ/ᵢˏ;

.field public static final ﹳٴ:Lﹳʽ/ᵢˏ;

.field public static final ﾞᴵ:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v2, Lﹳʾ/ᵔᵢ;

    const-class v3, Lﹳʾ/ˑﹳ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lﹳʾ/ʼˎ;->ﹳٴ:Lﹳʽ/ᵢˏ;

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    new-instance v1, Lﹳʽ/ᵢˏ;

    const-class v3, Lٴʻ/ᵔᵢ;

    invoke-direct {v1, v2, v3, v0}, Lﹳʽ/ᵢˏ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lﹳʽ/ʾˋ;)V

    sput-object v1, Lﹳʾ/ʼˎ;->ⁱˊ:Lﹳʽ/ᵢˏ;

    invoke-static {}, Lᴵﹳ/ˋᵔ;->ˉٴ()Lcom/google/crypto/tink/shaded/protobuf/ˊˋ;

    new-instance v0, Lﹳʽ/ᵎﹶ;

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    sget-object v2, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    invoke-direct {v0, v1, v3, v2}, Lﹳʽ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Class;Lᴵﹳ/ᴵˑ;)V

    sput-object v0, Lﹳʾ/ʼˎ;->ʽ:Lﹳʽ/ᵎﹶ;

    new-instance v0, Lיʻ/ᵔᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lﹳʾ/ʼˎ;->ˈ:Lיʻ/ᵔᵢ;

    new-instance v0, Lˏˑ/ⁱˊ;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lˏˑ/ⁱˊ;-><init>(I)V

    sput-object v0, Lﹳʾ/ʼˎ;->ˑﹳ:Lˏˑ/ⁱˊ;

    const/4 v0, 0x2

    sput v0, Lﹳʾ/ʼˎ;->ﾞᴵ:I

    return-void
.end method
