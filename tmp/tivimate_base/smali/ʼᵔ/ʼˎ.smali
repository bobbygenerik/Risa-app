.class public final enum Lʼᵔ/ʼˎ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʾˋ:Lʼᵔ/ʼˎ;

.field public static final synthetic ᴵˊ:[Lʼᵔ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lʼᵔ/ʼˎ;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lʼᵔ/ʼˎ;

    const-string v3, "DISPLAY_P3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lʼᵔ/ʼˎ;->ʾˋ:Lʼᵔ/ʼˎ;

    const/4 v3, 0x2

    new-array v3, v3, [Lʼᵔ/ʼˎ;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lʼᵔ/ʼˎ;->ᴵˊ:[Lʼᵔ/ʼˎ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʼᵔ/ʼˎ;
    .locals 1

    const-class v0, Lʼᵔ/ʼˎ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʼᵔ/ʼˎ;

    return-object p0
.end method

.method public static values()[Lʼᵔ/ʼˎ;
    .locals 1

    sget-object v0, Lʼᵔ/ʼˎ;->ᴵˊ:[Lʼᵔ/ʼˎ;

    invoke-virtual {v0}, [Lʼᵔ/ʼˎ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʼᵔ/ʼˎ;

    return-object v0
.end method
