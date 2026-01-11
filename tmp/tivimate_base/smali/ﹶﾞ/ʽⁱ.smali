.class public final enum Lﹶﾞ/ʽⁱ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lﹶﾞ/ʽⁱ;

.field public static final enum ˈٴ:Lﹶﾞ/ʽⁱ;

.field public static final synthetic ˊʻ:[Lﹶﾞ/ʽⁱ;

.field public static final enum ᴵˊ:Lﹶﾞ/ʽⁱ;

.field public static final enum ᴵᵔ:Lﹶﾞ/ʽⁱ;


# instance fields
.field public final ʾˋ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lﹶﾞ/ʽⁱ;

    const/4 v1, 0x0

    const-string v2, "UNINITIALIZED"

    const-string v3, "uninitialized"

    invoke-direct {v0, v1, v2, v3}, Lﹶﾞ/ʽⁱ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    new-instance v2, Lﹶﾞ/ʽⁱ;

    const/4 v3, 0x1

    const-string v4, "POLICY"

    const-string v5, "eu_consent_policy"

    invoke-direct {v2, v3, v4, v5}, Lﹶﾞ/ʽⁱ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lﹶﾞ/ʽⁱ;->ʽʽ:Lﹶﾞ/ʽⁱ;

    new-instance v4, Lﹶﾞ/ʽⁱ;

    const/4 v5, 0x2

    const-string v6, "DENIED"

    const-string v7, "denied"

    invoke-direct {v4, v5, v6, v7}, Lﹶﾞ/ʽⁱ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lﹶﾞ/ʽⁱ;->ˈٴ:Lﹶﾞ/ʽⁱ;

    new-instance v6, Lﹶﾞ/ʽⁱ;

    const/4 v7, 0x3

    const-string v8, "GRANTED"

    const-string v9, "granted"

    invoke-direct {v6, v7, v8, v9}, Lﹶﾞ/ʽⁱ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    const/4 v8, 0x4

    new-array v8, v8, [Lﹶﾞ/ʽⁱ;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lﹶﾞ/ʽⁱ;->ˊʻ:[Lﹶﾞ/ʽⁱ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lﹶﾞ/ʽⁱ;->ʾˋ:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lﹶﾞ/ʽⁱ;
    .locals 1

    sget-object v0, Lﹶﾞ/ʽⁱ;->ˊʻ:[Lﹶﾞ/ʽⁱ;

    invoke-virtual {v0}, [Lﹶﾞ/ʽⁱ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﹶﾞ/ʽⁱ;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹶﾞ/ʽⁱ;->ʾˋ:Ljava/lang/String;

    return-object v0
.end method
