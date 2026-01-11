.class public final enum Lᐧٴ/ʾᵎ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʾˋ:Lᐧٴ/ʾᵎ;

.field public static final synthetic ᴵˊ:[Lᐧٴ/ʾᵎ;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lᐧٴ/ʾᵎ;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lᐧٴ/ʾᵎ;

    const-string v3, "ANDROID_FIREBASE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lᐧٴ/ʾᵎ;->ʾˋ:Lᐧٴ/ʾᵎ;

    const/4 v3, 0x2

    new-array v3, v3, [Lᐧٴ/ʾᵎ;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lᐧٴ/ʾᵎ;->ᴵˊ:[Lᐧٴ/ʾᵎ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᐧٴ/ʾᵎ;
    .locals 1

    const-class v0, Lᐧٴ/ʾᵎ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᐧٴ/ʾᵎ;

    return-object p0
.end method

.method public static values()[Lᐧٴ/ʾᵎ;
    .locals 1

    sget-object v0, Lᐧٴ/ʾᵎ;->ᴵˊ:[Lᐧٴ/ʾᵎ;

    invoke-virtual {v0}, [Lᐧٴ/ʾᵎ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᐧٴ/ʾᵎ;

    return-object v0
.end method
