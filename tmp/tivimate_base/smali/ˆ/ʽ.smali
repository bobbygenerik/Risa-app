.class public final enum Lˆ/ʽ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lˆ/ʽ;

.field public static final enum ˈٴ:Lˆ/ʽ;

.field public static final enum ˉٴ:Lˆ/ʽ;

.field public static final enum ˊʻ:Lˆ/ʽ;

.field public static final enum ٴᵢ:Lˆ/ʽ;

.field public static final enum ᴵˊ:Lˆ/ʽ;

.field public static final enum ᴵᵔ:Lˆ/ʽ;

.field public static final synthetic ᵎⁱ:[Lˆ/ʽ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lˆ/ʽ;

    const/4 v1, 0x0

    const-string v2, "REASON_UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lˆ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lˆ/ʽ;->ᴵˊ:Lˆ/ʽ;

    new-instance v2, Lˆ/ʽ;

    const/4 v3, 0x1

    const-string v4, "MESSAGE_TOO_OLD"

    invoke-direct {v2, v3, v3, v4}, Lˆ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lˆ/ʽ;->ʽʽ:Lˆ/ʽ;

    new-instance v4, Lˆ/ʽ;

    const/4 v5, 0x2

    const-string v6, "CACHE_FULL"

    invoke-direct {v4, v5, v5, v6}, Lˆ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lˆ/ʽ;->ˈٴ:Lˆ/ʽ;

    new-instance v6, Lˆ/ʽ;

    const/4 v7, 0x3

    const-string v8, "PAYLOAD_TOO_BIG"

    invoke-direct {v6, v7, v7, v8}, Lˆ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lˆ/ʽ;->ᴵᵔ:Lˆ/ʽ;

    new-instance v8, Lˆ/ʽ;

    const/4 v9, 0x4

    const-string v10, "MAX_RETRIES_REACHED"

    invoke-direct {v8, v9, v9, v10}, Lˆ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v8, Lˆ/ʽ;->ˊʻ:Lˆ/ʽ;

    new-instance v10, Lˆ/ʽ;

    const/4 v11, 0x5

    const-string v12, "INVALID_PAYLOD"

    invoke-direct {v10, v11, v11, v12}, Lˆ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v10, Lˆ/ʽ;->ٴᵢ:Lˆ/ʽ;

    new-instance v12, Lˆ/ʽ;

    const/4 v13, 0x6

    const-string v14, "SERVER_ERROR"

    invoke-direct {v12, v13, v13, v14}, Lˆ/ʽ;-><init>(IILjava/lang/String;)V

    sput-object v12, Lˆ/ʽ;->ˉٴ:Lˆ/ʽ;

    const/4 v14, 0x7

    new-array v14, v14, [Lˆ/ʽ;

    aput-object v0, v14, v1

    aput-object v2, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lˆ/ʽ;->ᵎⁱ:[Lˆ/ʽ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lˆ/ʽ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˆ/ʽ;
    .locals 1

    const-class v0, Lˆ/ʽ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˆ/ʽ;

    return-object p0
.end method

.method public static values()[Lˆ/ʽ;
    .locals 1

    sget-object v0, Lˆ/ʽ;->ᵎⁱ:[Lˆ/ʽ;

    invoke-virtual {v0}, [Lˆ/ʽ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˆ/ʽ;

    return-object v0
.end method
