.class public abstract Lˆי/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lﹳי/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˆˉ/ˈ;

    invoke-direct {v0}, Lˆˉ/ˈ;-><init>()V

    sget-object v1, Lˆי/ﹳٴ;->ﹳٴ:Lˆי/ﹳٴ;

    const-class v2, Lˆי/ᵔʾ;

    invoke-virtual {v0, v2, v1}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    const-class v2, Lˆי/ⁱˊ;

    invoke-virtual {v0, v2, v1}, Lˆˉ/ˈ;->ﹳٴ(Ljava/lang/Class;Lʿˑ/ʽ;)Lˊʿ/ﹳٴ;

    new-instance v1, Lﹳי/ʽ;

    invoke-direct {v1, v0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lˆי/ᵔʾ;->ﹳٴ:Lﹳי/ʽ;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/String;)Lˆי/ⁱˊ;
    .locals 8

    .prologue
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rolloutId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "parameterKey"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "parameterValue"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "variantId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "templateVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    move-object v6, p0

    new-instance v1, Lˆי/ⁱˊ;

    invoke-direct/range {v1 .. v7}, Lˆי/ⁱˊ;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
