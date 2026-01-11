.class public final enum Lﹶﾞ/ⁱˉ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lﹶﾞ/ⁱˉ;

.field public static final enum ˈٴ:Lﹶﾞ/ⁱˉ;

.field public static final synthetic ˊʻ:[Lﹶﾞ/ⁱˉ;

.field public static final enum ᴵˊ:Lﹶﾞ/ⁱˉ;

.field public static final enum ᴵᵔ:Lﹶﾞ/ⁱˉ;


# instance fields
.field public final ʾˋ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lﹶﾞ/ⁱˉ;

    const/4 v1, 0x0

    const-string v2, "AD_STORAGE"

    const-string v3, "ad_storage"

    invoke-direct {v0, v1, v2, v3}, Lﹶﾞ/ⁱˉ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    new-instance v2, Lﹶﾞ/ⁱˉ;

    const/4 v3, 0x1

    const-string v4, "ANALYTICS_STORAGE"

    const-string v5, "analytics_storage"

    invoke-direct {v2, v3, v4, v5}, Lﹶﾞ/ⁱˉ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    new-instance v4, Lﹶﾞ/ⁱˉ;

    const/4 v5, 0x2

    const-string v6, "AD_USER_DATA"

    const-string v7, "ad_user_data"

    invoke-direct {v4, v5, v6, v7}, Lﹶﾞ/ⁱˉ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lﹶﾞ/ⁱˉ;->ˈٴ:Lﹶﾞ/ⁱˉ;

    new-instance v6, Lﹶﾞ/ⁱˉ;

    const/4 v7, 0x3

    const-string v8, "AD_PERSONALIZATION"

    const-string v9, "ad_personalization"

    invoke-direct {v6, v7, v8, v9}, Lﹶﾞ/ⁱˉ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lﹶﾞ/ⁱˉ;->ᴵᵔ:Lﹶﾞ/ⁱˉ;

    const/4 v8, 0x4

    new-array v8, v8, [Lﹶﾞ/ⁱˉ;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lﹶﾞ/ⁱˉ;->ˊʻ:[Lﹶﾞ/ⁱˉ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lﹶﾞ/ⁱˉ;->ʾˋ:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lﹶﾞ/ⁱˉ;
    .locals 1

    sget-object v0, Lﹶﾞ/ⁱˉ;->ˊʻ:[Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0}, [Lﹶﾞ/ⁱˉ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﹶﾞ/ⁱˉ;

    return-object v0
.end method
