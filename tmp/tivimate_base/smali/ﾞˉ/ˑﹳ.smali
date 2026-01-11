.class public final enum Lﾞˉ/ˑﹳ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final enum ʽʽ:Lﾞˉ/ˑﹳ;

.field public static final enum ˈٴ:Lﾞˉ/ˑﹳ;

.field public static final enum ᴵˊ:Lﾞˉ/ˑﹳ;

.field public static final synthetic ᴵᵔ:[Lﾞˉ/ˑﹳ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lﾞˉ/ˑﹳ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FIRST_FRAGMENT"

    invoke-direct {v0, v1, v2, v3}, Lﾞˉ/ˑﹳ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lﾞˉ/ˑﹳ;->ᴵˊ:Lﾞˉ/ˑﹳ;

    new-instance v3, Lﾞˉ/ˑﹳ;

    const/4 v4, 0x2

    const-string v5, "LAST_FRAGMENT"

    invoke-direct {v3, v2, v4, v5}, Lﾞˉ/ˑﹳ;-><init>(IILjava/lang/String;)V

    sput-object v3, Lﾞˉ/ˑﹳ;->ʽʽ:Lﾞˉ/ˑﹳ;

    new-instance v5, Lﾞˉ/ˑﹳ;

    const/4 v6, 0x4

    const-string v7, "PENDING_CANCEL"

    invoke-direct {v5, v4, v6, v7}, Lﾞˉ/ˑﹳ;-><init>(IILjava/lang/String;)V

    new-instance v7, Lﾞˉ/ˑﹳ;

    const/16 v8, 0x10

    const/4 v9, 0x3

    const-string v10, "CONCURRENT_MULTIPLEXING"

    invoke-direct {v7, v9, v8, v10}, Lﾞˉ/ˑﹳ;-><init>(IILjava/lang/String;)V

    new-instance v8, Lﾞˉ/ˑﹳ;

    const-string v10, "DID_NOT_EXECUTE"

    const/16 v11, 0x20

    invoke-direct {v8, v6, v11, v10}, Lﾞˉ/ˑﹳ;-><init>(IILjava/lang/String;)V

    new-instance v10, Lﾞˉ/ˑﹳ;

    const/16 v11, 0x40

    const/4 v12, 0x5

    const-string v13, "MAYBE"

    invoke-direct {v10, v12, v11, v13}, Lﾞˉ/ˑﹳ;-><init>(IILjava/lang/String;)V

    new-instance v11, Lﾞˉ/ˑﹳ;

    const/16 v13, 0x80

    const/4 v14, 0x6

    const-string v15, "OBJECT_UUID"

    invoke-direct {v11, v14, v13, v15}, Lﾞˉ/ˑﹳ;-><init>(IILjava/lang/String;)V

    sput-object v11, Lﾞˉ/ˑﹳ;->ˈٴ:Lﾞˉ/ˑﹳ;

    const/4 v13, 0x7

    new-array v13, v13, [Lﾞˉ/ˑﹳ;

    aput-object v0, v13, v1

    aput-object v3, v13, v2

    aput-object v5, v13, v4

    aput-object v7, v13, v9

    aput-object v8, v13, v6

    aput-object v10, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lﾞˉ/ˑﹳ;->ᴵᵔ:[Lﾞˉ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lﾞˉ/ˑﹳ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lﾞˉ/ˑﹳ;
    .locals 1

    const-class v0, Lﾞˉ/ˑﹳ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lﾞˉ/ˑﹳ;

    return-object p0
.end method

.method public static values()[Lﾞˉ/ˑﹳ;
    .locals 1

    sget-object v0, Lﾞˉ/ˑﹳ;->ᴵᵔ:[Lﾞˉ/ˑﹳ;

    invoke-virtual {v0}, [Lﾞˉ/ˑﹳ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﾞˉ/ˑﹳ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget v0, p0, Lﾞˉ/ˑﹳ;->ʾˋ:I

    int-to-long v0, v0

    return-wide v0
.end method
