.class public final enum Lᴵﹳ/ᴵˑ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ʼʼ;


# static fields
.field public static final enum ʽʽ:Lᴵﹳ/ᴵˑ;

.field public static final enum ˈٴ:Lᴵﹳ/ᴵˑ;

.field public static final synthetic ˉٴ:[Lᴵﹳ/ᴵˑ;

.field public static final enum ˊʻ:Lᴵﹳ/ᴵˑ;

.field public static final enum ٴᵢ:Lᴵﹳ/ᴵˑ;

.field public static final enum ᴵˊ:Lᴵﹳ/ᴵˑ;

.field public static final enum ᴵᵔ:Lᴵﹳ/ᴵˑ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lᴵﹳ/ᴵˑ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_KEYMATERIAL"

    invoke-direct {v0, v1, v1, v2}, Lᴵﹳ/ᴵˑ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lᴵﹳ/ᴵˑ;->ᴵˊ:Lᴵﹳ/ᴵˑ;

    new-instance v2, Lᴵﹳ/ᴵˑ;

    const/4 v3, 0x1

    const-string v4, "SYMMETRIC"

    invoke-direct {v2, v3, v3, v4}, Lᴵﹳ/ᴵˑ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lᴵﹳ/ᴵˑ;->ʽʽ:Lᴵﹳ/ᴵˑ;

    new-instance v4, Lᴵﹳ/ᴵˑ;

    const/4 v5, 0x2

    const-string v6, "ASYMMETRIC_PRIVATE"

    invoke-direct {v4, v5, v5, v6}, Lᴵﹳ/ᴵˑ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lᴵﹳ/ᴵˑ;->ˈٴ:Lᴵﹳ/ᴵˑ;

    new-instance v6, Lᴵﹳ/ᴵˑ;

    const/4 v7, 0x3

    const-string v8, "ASYMMETRIC_PUBLIC"

    invoke-direct {v6, v7, v7, v8}, Lᴵﹳ/ᴵˑ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lᴵﹳ/ᴵˑ;->ᴵᵔ:Lᴵﹳ/ᴵˑ;

    new-instance v8, Lᴵﹳ/ᴵˑ;

    const/4 v9, 0x4

    const-string v10, "REMOTE"

    invoke-direct {v8, v9, v9, v10}, Lᴵﹳ/ᴵˑ;-><init>(IILjava/lang/String;)V

    sput-object v8, Lᴵﹳ/ᴵˑ;->ˊʻ:Lᴵﹳ/ᴵˑ;

    new-instance v10, Lᴵﹳ/ᴵˑ;

    const/4 v11, -0x1

    const/4 v12, 0x5

    const-string v13, "UNRECOGNIZED"

    invoke-direct {v10, v12, v11, v13}, Lᴵﹳ/ᴵˑ;-><init>(IILjava/lang/String;)V

    sput-object v10, Lᴵﹳ/ᴵˑ;->ٴᵢ:Lᴵﹳ/ᴵˑ;

    const/4 v11, 0x6

    new-array v11, v11, [Lᴵﹳ/ᴵˑ;

    aput-object v0, v11, v1

    aput-object v2, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    aput-object v10, v11, v12

    sput-object v11, Lᴵﹳ/ᴵˑ;->ˉٴ:[Lᴵﹳ/ᴵˑ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lᴵﹳ/ᴵˑ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᴵﹳ/ᴵˑ;
    .locals 1

    const-class v0, Lᴵﹳ/ᴵˑ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᴵﹳ/ᴵˑ;

    return-object p0
.end method

.method public static values()[Lᴵﹳ/ᴵˑ;
    .locals 1

    sget-object v0, Lᴵﹳ/ᴵˑ;->ˉٴ:[Lᴵﹳ/ᴵˑ;

    invoke-virtual {v0}, [Lᴵﹳ/ᴵˑ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᴵﹳ/ᴵˑ;

    return-object v0
.end method
