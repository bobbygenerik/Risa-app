.class public final enum Lʾˈ/ᐧﾞ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic ʽʽ:[Lʾˈ/ᐧﾞ;

.field public static final enum ʾˋ:Lʾˈ/ᐧﾞ;

.field public static final enum ᴵˊ:Lʾˈ/ᐧﾞ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lʾˈ/ᐧﾞ;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lʾˈ/ᐧﾞ;->ʾˋ:Lʾˈ/ᐧﾞ;

    new-instance v1, Lʾˈ/ᐧﾞ;

    const-string v3, "FALLBACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lʾˈ/ᐧﾞ;->ᴵˊ:Lʾˈ/ᐧﾞ;

    const/4 v3, 0x2

    new-array v3, v3, [Lʾˈ/ᐧﾞ;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lʾˈ/ᐧﾞ;->ʽʽ:[Lʾˈ/ᐧﾞ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʾˈ/ᐧﾞ;
    .locals 1

    const-class v0, Lʾˈ/ᐧﾞ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʾˈ/ᐧﾞ;

    return-object p0
.end method

.method public static values()[Lʾˈ/ᐧﾞ;
    .locals 1

    sget-object v0, Lʾˈ/ᐧﾞ;->ʽʽ:[Lʾˈ/ᐧﾞ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʾˈ/ᐧﾞ;

    return-object v0
.end method
