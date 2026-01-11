.class public final enum Lˎᵢ/ـˆ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lˎᵢ/ـˆ;

.field public static final enum ˈٴ:Lˎᵢ/ـˆ;

.field public static final enum ˉٴ:Lˎᵢ/ـˆ;

.field public static final enum ˊʻ:Lˎᵢ/ـˆ;

.field public static final enum ٴᵢ:Lˎᵢ/ـˆ;

.field public static final enum ᴵˊ:Lˎᵢ/ـˆ;

.field public static final enum ᴵᵔ:Lˎᵢ/ـˆ;

.field public static final synthetic ᵎⁱ:[Lˎᵢ/ـˆ;


# instance fields
.field public final ʾˋ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lˎᵢ/ـˆ;

    const-string v1, "http/1.0"

    const/4 v2, 0x0

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v2, v3, v1}, Lˎᵢ/ـˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lˎᵢ/ـˆ;->ᴵˊ:Lˎᵢ/ـˆ;

    new-instance v1, Lˎᵢ/ـˆ;

    const-string v3, "http/1.1"

    const/4 v4, 0x1

    const-string v5, "HTTP_1_1"

    invoke-direct {v1, v4, v5, v3}, Lˎᵢ/ـˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lˎᵢ/ـˆ;->ʽʽ:Lˎᵢ/ـˆ;

    new-instance v3, Lˎᵢ/ـˆ;

    const-string v5, "spdy/3.1"

    const/4 v6, 0x2

    const-string v7, "SPDY_3"

    invoke-direct {v3, v6, v7, v5}, Lˎᵢ/ـˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lˎᵢ/ـˆ;->ˈٴ:Lˎᵢ/ـˆ;

    new-instance v5, Lˎᵢ/ـˆ;

    const-string v7, "h2"

    const/4 v8, 0x3

    const-string v9, "HTTP_2"

    invoke-direct {v5, v8, v9, v7}, Lˎᵢ/ـˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lˎᵢ/ـˆ;->ᴵᵔ:Lˎᵢ/ـˆ;

    new-instance v7, Lˎᵢ/ـˆ;

    const-string v9, "h2_prior_knowledge"

    const/4 v10, 0x4

    const-string v11, "H2_PRIOR_KNOWLEDGE"

    invoke-direct {v7, v10, v11, v9}, Lˎᵢ/ـˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lˎᵢ/ـˆ;->ˊʻ:Lˎᵢ/ـˆ;

    new-instance v9, Lˎᵢ/ـˆ;

    const-string v11, "quic"

    const/4 v12, 0x5

    const-string v13, "QUIC"

    invoke-direct {v9, v12, v13, v11}, Lˎᵢ/ـˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lˎᵢ/ـˆ;->ٴᵢ:Lˎᵢ/ـˆ;

    new-instance v11, Lˎᵢ/ـˆ;

    const-string v13, "h3"

    const/4 v14, 0x6

    const-string v15, "HTTP_3"

    invoke-direct {v11, v14, v15, v13}, Lˎᵢ/ـˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lˎᵢ/ـˆ;->ˉٴ:Lˎᵢ/ـˆ;

    const/4 v13, 0x7

    new-array v13, v13, [Lˎᵢ/ـˆ;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lˎᵢ/ـˆ;->ᵎⁱ:[Lˎᵢ/ـˆ;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lˎᵢ/ـˆ;->ʾˋ:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lˎᵢ/ـˆ;
    .locals 1

    const-class v0, Lˎᵢ/ـˆ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lˎᵢ/ـˆ;

    return-object p0
.end method

.method public static values()[Lˎᵢ/ـˆ;
    .locals 1

    sget-object v0, Lˎᵢ/ـˆ;->ᵎⁱ:[Lˎᵢ/ـˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lˎᵢ/ـˆ;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lˎᵢ/ـˆ;->ʾˋ:Ljava/lang/String;

    return-object v0
.end method
