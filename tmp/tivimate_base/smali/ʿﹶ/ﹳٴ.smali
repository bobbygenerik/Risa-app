.class public final enum Lʿﹶ/ﹳٴ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lʿﹶ/ﹳٴ;

.field public static final enum ˈٴ:Lʿﹶ/ﹳٴ;

.field public static final enum ᴵˊ:Lʿﹶ/ﹳٴ;

.field public static final synthetic ᴵᵔ:[Lʿﹶ/ﹳٴ;


# instance fields
.field public final ʾˋ:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lʿﹶ/ﹳٴ;

    const-string v1, "ONE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lʿﹶ/ﹳٴ;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lʿﹶ/ﹳٴ;->ᴵˊ:Lʿﹶ/ﹳٴ;

    new-instance v1, Lʿﹶ/ﹳٴ;

    const-string v4, "TWO"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lʿﹶ/ﹳٴ;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lʿﹶ/ﹳٴ;->ʽʽ:Lʿﹶ/ﹳٴ;

    new-instance v4, Lʿﹶ/ﹳٴ;

    const-string v6, "FOUR"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lʿﹶ/ﹳٴ;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lʿﹶ/ﹳٴ;->ˈٴ:Lʿﹶ/ﹳٴ;

    new-instance v6, Lʿﹶ/ﹳٴ;

    const/16 v8, 0x8

    const-string v9, "EIGHT"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v8}, Lʿﹶ/ﹳٴ;-><init>(Ljava/lang/String;IB)V

    new-array v7, v7, [Lʿﹶ/ﹳٴ;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v10

    sput-object v7, Lʿﹶ/ﹳٴ;->ᴵᵔ:[Lʿﹶ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    add-int/lit8 p3, p3, -0x1

    int-to-byte p1, p3

    iput-byte p1, p0, Lʿﹶ/ﹳٴ;->ʾˋ:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʿﹶ/ﹳٴ;
    .locals 1

    const-class v0, Lʿﹶ/ﹳٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʿﹶ/ﹳٴ;

    return-object p0
.end method

.method public static values()[Lʿﹶ/ﹳٴ;
    .locals 1

    sget-object v0, Lʿﹶ/ﹳٴ;->ᴵᵔ:[Lʿﹶ/ﹳٴ;

    invoke-virtual {v0}, [Lʿﹶ/ﹳٴ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʿﹶ/ﹳٴ;

    return-object v0
.end method
