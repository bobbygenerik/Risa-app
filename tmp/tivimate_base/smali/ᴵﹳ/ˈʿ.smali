.class public final enum Lᴵﹳ/ˈʿ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ʼʼ;


# static fields
.field public static final enum ʽʽ:Lᴵﹳ/ˈʿ;

.field public static final enum ˈٴ:Lᴵﹳ/ˈʿ;

.field public static final enum ˉٴ:Lᴵﹳ/ˈʿ;

.field public static final enum ˊʻ:Lᴵﹳ/ˈʿ;

.field public static final enum ٴᵢ:Lᴵﹳ/ˈʿ;

.field public static final enum ᴵˊ:Lᴵﹳ/ˈʿ;

.field public static final enum ᴵᵔ:Lᴵﹳ/ˈʿ;

.field public static final synthetic ᵎⁱ:[Lᴵﹳ/ˈʿ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lᴵﹳ/ˈʿ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_HASH"

    invoke-direct {v0, v1, v1, v2}, Lᴵﹳ/ˈʿ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lᴵﹳ/ˈʿ;->ᴵˊ:Lᴵﹳ/ˈʿ;

    new-instance v2, Lᴵﹳ/ˈʿ;

    const/4 v3, 0x1

    const-string v4, "SHA1"

    invoke-direct {v2, v3, v3, v4}, Lᴵﹳ/ˈʿ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lᴵﹳ/ˈʿ;->ʽʽ:Lᴵﹳ/ˈʿ;

    new-instance v4, Lᴵﹳ/ˈʿ;

    const/4 v5, 0x2

    const-string v6, "SHA384"

    invoke-direct {v4, v5, v5, v6}, Lᴵﹳ/ˈʿ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lᴵﹳ/ˈʿ;->ˈٴ:Lᴵﹳ/ˈʿ;

    new-instance v6, Lᴵﹳ/ˈʿ;

    const/4 v7, 0x3

    const-string v8, "SHA256"

    invoke-direct {v6, v7, v7, v8}, Lᴵﹳ/ˈʿ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lᴵﹳ/ˈʿ;->ᴵᵔ:Lᴵﹳ/ˈʿ;

    new-instance v8, Lᴵﹳ/ˈʿ;

    const/4 v9, 0x4

    const-string v10, "SHA512"

    invoke-direct {v8, v9, v9, v10}, Lᴵﹳ/ˈʿ;-><init>(IILjava/lang/String;)V

    sput-object v8, Lᴵﹳ/ˈʿ;->ˊʻ:Lᴵﹳ/ˈʿ;

    new-instance v10, Lᴵﹳ/ˈʿ;

    const/4 v11, 0x5

    const-string v12, "SHA224"

    invoke-direct {v10, v11, v11, v12}, Lᴵﹳ/ˈʿ;-><init>(IILjava/lang/String;)V

    sput-object v10, Lᴵﹳ/ˈʿ;->ٴᵢ:Lᴵﹳ/ˈʿ;

    new-instance v12, Lᴵﹳ/ˈʿ;

    const/4 v13, -0x1

    const/4 v14, 0x6

    const-string v15, "UNRECOGNIZED"

    invoke-direct {v12, v14, v13, v15}, Lᴵﹳ/ˈʿ;-><init>(IILjava/lang/String;)V

    sput-object v12, Lᴵﹳ/ˈʿ;->ˉٴ:Lᴵﹳ/ˈʿ;

    const/4 v13, 0x7

    new-array v13, v13, [Lᴵﹳ/ˈʿ;

    aput-object v0, v13, v1

    aput-object v2, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    aput-object v12, v13, v14

    sput-object v13, Lᴵﹳ/ˈʿ;->ᵎⁱ:[Lᴵﹳ/ˈʿ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lᴵﹳ/ˈʿ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᴵﹳ/ˈʿ;
    .locals 1

    const-class v0, Lᴵﹳ/ˈʿ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ˈʿ;

    return-object p0
.end method

.method public static values()[Lᴵﹳ/ˈʿ;
    .locals 1

    sget-object v0, Lᴵﹳ/ˈʿ;->ᵎⁱ:[Lᴵﹳ/ˈʿ;

    invoke-virtual {v0}, [Lᴵﹳ/ˈʿ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᴵﹳ/ˈʿ;

    return-object v0
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 2

    .prologue
    sget-object v0, Lᴵﹳ/ˈʿ;->ˉٴ:Lᴵﹳ/ˈʿ;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lᴵﹳ/ˈʿ;->ʾˋ:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
