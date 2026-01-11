.class public final enum Lˎᵢ/ٴᵢ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lˎᵢ/ٴᵢ;

.field public static final enum ˈٴ:Lˎᵢ/ٴᵢ;

.field public static final enum ˊʻ:Lˎᵢ/ٴᵢ;

.field public static final synthetic ٴᵢ:[Lˎᵢ/ٴᵢ;

.field public static final enum ᴵˊ:Lˎᵢ/ٴᵢ;

.field public static final enum ᴵᵔ:Lˎᵢ/ٴᵢ;


# instance fields
.field public final ʾˋ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lˎᵢ/ٴᵢ;

    const-string v1, "TLSv1.3"

    const/4 v2, 0x0

    const-string v3, "TLS_1_3"

    invoke-direct {v0, v2, v3, v1}, Lˎᵢ/ٴᵢ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lˎᵢ/ٴᵢ;->ᴵˊ:Lˎᵢ/ٴᵢ;

    new-instance v1, Lˎᵢ/ٴᵢ;

    const-string v3, "TLSv1.2"

    const/4 v4, 0x1

    const-string v5, "TLS_1_2"

    invoke-direct {v1, v4, v5, v3}, Lˎᵢ/ٴᵢ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lˎᵢ/ٴᵢ;->ʽʽ:Lˎᵢ/ٴᵢ;

    new-instance v3, Lˎᵢ/ٴᵢ;

    const-string v5, "TLSv1.1"

    const/4 v6, 0x2

    const-string v7, "TLS_1_1"

    invoke-direct {v3, v6, v7, v5}, Lˎᵢ/ٴᵢ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lˎᵢ/ٴᵢ;->ˈٴ:Lˎᵢ/ٴᵢ;

    new-instance v5, Lˎᵢ/ٴᵢ;

    const-string v7, "TLSv1"

    const/4 v8, 0x3

    const-string v9, "TLS_1_0"

    invoke-direct {v5, v8, v9, v7}, Lˎᵢ/ٴᵢ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lˎᵢ/ٴᵢ;->ᴵᵔ:Lˎᵢ/ٴᵢ;

    new-instance v7, Lˎᵢ/ٴᵢ;

    const-string v9, "SSLv3"

    const/4 v10, 0x4

    const-string v11, "SSL_3_0"

    invoke-direct {v7, v10, v11, v9}, Lˎᵢ/ٴᵢ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lˎᵢ/ٴᵢ;->ˊʻ:Lˎᵢ/ٴᵢ;

    const/4 v9, 0x5

    new-array v9, v9, [Lˎᵢ/ٴᵢ;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lˎᵢ/ٴᵢ;->ٴᵢ:[Lˎᵢ/ٴᵢ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lˎᵢ/ٴᵢ;->ʾˋ:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˎᵢ/ٴᵢ;
    .locals 1

    const-class v0, Lˎᵢ/ٴᵢ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˎᵢ/ٴᵢ;

    return-object p0
.end method

.method public static values()[Lˎᵢ/ٴᵢ;
    .locals 1

    sget-object v0, Lˎᵢ/ٴᵢ;->ٴᵢ:[Lˎᵢ/ٴᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˎᵢ/ٴᵢ;

    return-object v0
.end method
