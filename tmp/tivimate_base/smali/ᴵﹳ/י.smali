.class public final enum Lᴵﹳ/י;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ʼʼ;


# static fields
.field public static final enum ʽʽ:Lᴵﹳ/י;

.field public static final enum ˈٴ:Lᴵﹳ/י;

.field public static final enum ˉٴ:Lᴵﹳ/י;

.field public static final enum ˊʻ:Lᴵﹳ/י;

.field public static final enum ٴᵢ:Lᴵﹳ/י;

.field public static final enum ᴵˊ:Lᴵﹳ/י;

.field public static final enum ᴵᵔ:Lᴵﹳ/י;

.field public static final synthetic ᵎⁱ:[Lᴵﹳ/י;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lᴵﹳ/י;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_PREFIX"

    invoke-direct {v0, v1, v1, v2}, Lᴵﹳ/י;-><init>(IILjava/lang/String;)V

    sput-object v0, Lᴵﹳ/י;->ᴵˊ:Lᴵﹳ/י;

    new-instance v2, Lᴵﹳ/י;

    const/4 v3, 0x1

    const-string v4, "TINK"

    invoke-direct {v2, v3, v3, v4}, Lᴵﹳ/י;-><init>(IILjava/lang/String;)V

    sput-object v2, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    new-instance v4, Lᴵﹳ/י;

    const/4 v5, 0x2

    const-string v6, "LEGACY"

    invoke-direct {v4, v5, v5, v6}, Lᴵﹳ/י;-><init>(IILjava/lang/String;)V

    sput-object v4, Lᴵﹳ/י;->ˈٴ:Lᴵﹳ/י;

    new-instance v6, Lᴵﹳ/י;

    const/4 v7, 0x3

    const-string v8, "RAW"

    invoke-direct {v6, v7, v7, v8}, Lᴵﹳ/י;-><init>(IILjava/lang/String;)V

    sput-object v6, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    new-instance v8, Lᴵﹳ/י;

    const/4 v9, 0x4

    const-string v10, "CRUNCHY"

    invoke-direct {v8, v9, v9, v10}, Lᴵﹳ/י;-><init>(IILjava/lang/String;)V

    sput-object v8, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    new-instance v10, Lᴵﹳ/י;

    const/4 v11, 0x5

    const-string v12, "WITH_ID_REQUIREMENT"

    invoke-direct {v10, v11, v11, v12}, Lᴵﹳ/י;-><init>(IILjava/lang/String;)V

    sput-object v10, Lᴵﹳ/י;->ٴᵢ:Lᴵﹳ/י;

    new-instance v12, Lᴵﹳ/י;

    const/4 v13, -0x1

    const/4 v14, 0x6

    const-string v15, "UNRECOGNIZED"

    invoke-direct {v12, v14, v13, v15}, Lᴵﹳ/י;-><init>(IILjava/lang/String;)V

    sput-object v12, Lᴵﹳ/י;->ˉٴ:Lᴵﹳ/י;

    const/4 v13, 0x7

    new-array v13, v13, [Lᴵﹳ/י;

    aput-object v0, v13, v1

    aput-object v2, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    aput-object v12, v13, v14

    sput-object v13, Lᴵﹳ/י;->ᵎⁱ:[Lᴵﹳ/י;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lᴵﹳ/י;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᴵﹳ/י;
    .locals 1

    const-class v0, Lᴵﹳ/י;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᴵﹳ/י;

    return-object p0
.end method

.method public static values()[Lᴵﹳ/י;
    .locals 1

    sget-object v0, Lᴵﹳ/י;->ᵎⁱ:[Lᴵﹳ/י;

    invoke-virtual {v0}, [Lᴵﹳ/י;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᴵﹳ/י;

    return-object v0
.end method

.method public static ﹳٴ(I)Lᴵﹳ/י;
    .locals 1

    .prologue
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lᴵﹳ/י;->ٴᵢ:Lᴵﹳ/י;

    return-object p0

    :cond_1
    sget-object p0, Lᴵﹳ/י;->ˊʻ:Lᴵﹳ/י;

    return-object p0

    :cond_2
    sget-object p0, Lᴵﹳ/י;->ᴵᵔ:Lᴵﹳ/י;

    return-object p0

    :cond_3
    sget-object p0, Lᴵﹳ/י;->ˈٴ:Lᴵﹳ/י;

    return-object p0

    :cond_4
    sget-object p0, Lᴵﹳ/י;->ʽʽ:Lᴵﹳ/י;

    return-object p0

    :cond_5
    sget-object p0, Lᴵﹳ/י;->ᴵˊ:Lᴵﹳ/י;

    return-object p0
.end method


# virtual methods
.method public final ⁱˊ()I
    .locals 2

    .prologue
    sget-object v0, Lᴵﹳ/י;->ˉٴ:Lᴵﹳ/י;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lᴵﹳ/י;->ʾˋ:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
