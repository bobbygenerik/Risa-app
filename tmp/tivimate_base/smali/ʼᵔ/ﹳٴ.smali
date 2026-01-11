.class public final enum Lʼᵔ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final ʽʽ:Lʼᵔ/ﹳٴ;

.field public static final enum ʾˋ:Lʼᵔ/ﹳٴ;

.field public static final synthetic ˈٴ:[Lʼᵔ/ﹳٴ;

.field public static final enum ᴵˊ:Lʼᵔ/ﹳٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lʼᵔ/ﹳٴ;

    const-string v1, "PREFER_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lʼᵔ/ﹳٴ;->ʾˋ:Lʼᵔ/ﹳٴ;

    new-instance v1, Lʼᵔ/ﹳٴ;

    const-string v3, "PREFER_RGB_565"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lʼᵔ/ﹳٴ;->ᴵˊ:Lʼᵔ/ﹳٴ;

    const/4 v3, 0x2

    new-array v3, v3, [Lʼᵔ/ﹳٴ;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lʼᵔ/ﹳٴ;->ˈٴ:[Lʼᵔ/ﹳٴ;

    sput-object v0, Lʼᵔ/ﹳٴ;->ʽʽ:Lʼᵔ/ﹳٴ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʼᵔ/ﹳٴ;
    .locals 1

    const-class v0, Lʼᵔ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʼᵔ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lʼᵔ/ﹳٴ;
    .locals 1

    sget-object v0, Lʼᵔ/ﹳٴ;->ˈٴ:[Lʼᵔ/ﹳٴ;

    invoke-virtual {v0}, [Lʼᵔ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʼᵔ/ﹳٴ;

    return-object v0
.end method
