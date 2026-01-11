.class public final enum Lﹶﾞ/ᴵٴ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic ʽʽ:[Lﹶﾞ/ᴵٴ;

.field public static final enum ʾˋ:Lﹶﾞ/ᴵٴ;

.field public static final enum ᴵˊ:Lﹶﾞ/ᴵٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lﹶﾞ/ᴵٴ;

    const-string v1, "CONSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lﹶﾞ/ᴵٴ;->ʾˋ:Lﹶﾞ/ᴵٴ;

    new-instance v1, Lﹶﾞ/ᴵٴ;

    const-string v3, "LEGITIMATE_INTEREST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lﹶﾞ/ᴵٴ;

    const-string v5, "FLEXIBLE_CONSENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lﹶﾞ/ᴵٴ;

    const-string v7, "FLEXIBLE_LEGITIMATE_INTEREST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lﹶﾞ/ᴵٴ;->ᴵˊ:Lﹶﾞ/ᴵٴ;

    const/4 v7, 0x4

    new-array v7, v7, [Lﹶﾞ/ᴵٴ;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lﹶﾞ/ᴵٴ;->ʽʽ:[Lﹶﾞ/ᴵٴ;

    return-void
.end method

.method public static values()[Lﹶﾞ/ᴵٴ;
    .locals 1

    sget-object v0, Lﹶﾞ/ᴵٴ;->ʽʽ:[Lﹶﾞ/ᴵٴ;

    invoke-virtual {v0}, [Lﹶﾞ/ᴵٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﹶﾞ/ᴵٴ;

    return-object v0
.end method
