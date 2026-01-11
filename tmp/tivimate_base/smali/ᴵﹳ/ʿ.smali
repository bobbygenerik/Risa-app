.class public final enum Lᴵﹳ/ʿ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ʼʼ;


# static fields
.field public static final enum ʽʽ:Lᴵﹳ/ʿ;

.field public static final enum ˈٴ:Lᴵﹳ/ʿ;

.field public static final enum ˊʻ:Lᴵﹳ/ʿ;

.field public static final synthetic ٴᵢ:[Lᴵﹳ/ʿ;

.field public static final enum ᴵˊ:Lᴵﹳ/ʿ;

.field public static final enum ᴵᵔ:Lᴵﹳ/ʿ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lᴵﹳ/ʿ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_STATUS"

    invoke-direct {v0, v1, v1, v2}, Lᴵﹳ/ʿ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lᴵﹳ/ʿ;->ᴵˊ:Lᴵﹳ/ʿ;

    new-instance v2, Lᴵﹳ/ʿ;

    const/4 v3, 0x1

    const-string v4, "ENABLED"

    invoke-direct {v2, v3, v3, v4}, Lᴵﹳ/ʿ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lᴵﹳ/ʿ;->ʽʽ:Lᴵﹳ/ʿ;

    new-instance v4, Lᴵﹳ/ʿ;

    const/4 v5, 0x2

    const-string v6, "DISABLED"

    invoke-direct {v4, v5, v5, v6}, Lᴵﹳ/ʿ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lᴵﹳ/ʿ;->ˈٴ:Lᴵﹳ/ʿ;

    new-instance v6, Lᴵﹳ/ʿ;

    const/4 v7, 0x3

    const-string v8, "DESTROYED"

    invoke-direct {v6, v7, v7, v8}, Lᴵﹳ/ʿ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lᴵﹳ/ʿ;->ᴵᵔ:Lᴵﹳ/ʿ;

    new-instance v8, Lᴵﹳ/ʿ;

    const/4 v9, -0x1

    const/4 v10, 0x4

    const-string v11, "UNRECOGNIZED"

    invoke-direct {v8, v10, v9, v11}, Lᴵﹳ/ʿ;-><init>(IILjava/lang/String;)V

    sput-object v8, Lᴵﹳ/ʿ;->ˊʻ:Lᴵﹳ/ʿ;

    const/4 v9, 0x5

    new-array v9, v9, [Lᴵﹳ/ʿ;

    aput-object v0, v9, v1

    aput-object v2, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v10

    sput-object v9, Lᴵﹳ/ʿ;->ٴᵢ:[Lᴵﹳ/ʿ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lᴵﹳ/ʿ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᴵﹳ/ʿ;
    .locals 1

    const-class v0, Lᴵﹳ/ʿ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ʿ;

    return-object p0
.end method

.method public static values()[Lᴵﹳ/ʿ;
    .locals 1

    sget-object v0, Lᴵﹳ/ʿ;->ٴᵢ:[Lᴵﹳ/ʿ;

    invoke-virtual {v0}, [Lᴵﹳ/ʿ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᴵﹳ/ʿ;

    return-object v0
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 2

    .prologue
    sget-object v0, Lᴵﹳ/ʿ;->ˊʻ:Lᴵﹳ/ʿ;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lᴵﹳ/ʿ;->ʾˋ:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
