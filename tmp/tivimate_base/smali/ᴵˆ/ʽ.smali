.class public final enum Lᴵˆ/ʽ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lᴵˆ/ʽ;

.field public static final enum ʾˋ:Lᴵˆ/ʽ;

.field public static final synthetic ˈٴ:[Lᴵˆ/ʽ;

.field public static final enum ᴵˊ:Lᴵˆ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lᴵˆ/ʽ;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lᴵˆ/ʽ;->ʾˋ:Lᴵˆ/ʽ;

    new-instance v1, Lᴵˆ/ʽ;

    const-string v3, "VERY_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lᴵˆ/ʽ;->ᴵˊ:Lᴵˆ/ʽ;

    new-instance v3, Lᴵˆ/ʽ;

    const-string v5, "HIGHEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lᴵˆ/ʽ;->ʽʽ:Lᴵˆ/ʽ;

    const/4 v5, 0x3

    new-array v5, v5, [Lᴵˆ/ʽ;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lᴵˆ/ʽ;->ˈٴ:[Lᴵˆ/ʽ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᴵˆ/ʽ;
    .locals 1

    const-class v0, Lᴵˆ/ʽ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᴵˆ/ʽ;

    return-object p0
.end method

.method public static values()[Lᴵˆ/ʽ;
    .locals 1

    sget-object v0, Lᴵˆ/ʽ;->ˈٴ:[Lᴵˆ/ʽ;

    invoke-virtual {v0}, [Lᴵˆ/ʽ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᴵˆ/ʽ;

    return-object v0
.end method
