.class public final enum Lٴᐧ/ʽ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lٴᐧ/ʽ;

.field public static final enum ʾˋ:Lٴᐧ/ʽ;

.field public static final synthetic ˈٴ:[Lٴᐧ/ʽ;

.field public static final enum ᴵˊ:Lٴᐧ/ʽ;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lٴᐧ/ʽ;

    const-string v1, "NETWORK_UNMETERED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lٴᐧ/ʽ;->ʾˋ:Lٴᐧ/ʽ;

    new-instance v1, Lٴᐧ/ʽ;

    const-string v3, "DEVICE_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lٴᐧ/ʽ;->ᴵˊ:Lٴᐧ/ʽ;

    new-instance v3, Lٴᐧ/ʽ;

    const-string v5, "DEVICE_CHARGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lٴᐧ/ʽ;->ʽʽ:Lٴᐧ/ʽ;

    const/4 v5, 0x3

    new-array v5, v5, [Lٴᐧ/ʽ;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lٴᐧ/ʽ;->ˈٴ:[Lٴᐧ/ʽ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lٴᐧ/ʽ;
    .locals 1

    const-class v0, Lٴᐧ/ʽ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lٴᐧ/ʽ;

    return-object p0
.end method

.method public static values()[Lٴᐧ/ʽ;
    .locals 1

    sget-object v0, Lٴᐧ/ʽ;->ˈٴ:[Lٴᐧ/ʽ;

    invoke-virtual {v0}, [Lٴᐧ/ʽ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lٴᐧ/ʽ;

    return-object v0
.end method
