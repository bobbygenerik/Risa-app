.class public final enum Lﹶﾞ/ˋـ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lﹶﾞ/ˋـ;

.field public static final enum ˈٴ:Lﹶﾞ/ˋـ;

.field public static final synthetic ˉٴ:[Lﹶﾞ/ˋـ;

.field public static final enum ˊʻ:Lﹶﾞ/ˋـ;

.field public static final enum ٴᵢ:Lﹶﾞ/ˋـ;

.field public static final enum ᴵˊ:Lﹶﾞ/ˋـ;

.field public static final enum ᴵᵔ:Lﹶﾞ/ˋـ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lﹶﾞ/ˋـ;

    const/4 v1, 0x0

    const-string v2, "GOOGLE_ANALYTICS"

    invoke-direct {v0, v1, v1, v2}, Lﹶﾞ/ˋـ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lﹶﾞ/ˋـ;->ᴵˊ:Lﹶﾞ/ˋـ;

    new-instance v2, Lﹶﾞ/ˋـ;

    const/4 v3, 0x1

    const-string v4, "GOOGLE_SIGNAL"

    invoke-direct {v2, v3, v3, v4}, Lﹶﾞ/ˋـ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lﹶﾞ/ˋـ;->ʽʽ:Lﹶﾞ/ˋـ;

    new-instance v4, Lﹶﾞ/ˋـ;

    const/4 v5, 0x2

    const-string v6, "SGTM"

    invoke-direct {v4, v5, v5, v6}, Lﹶﾞ/ˋـ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lﹶﾞ/ˋـ;->ˈٴ:Lﹶﾞ/ˋـ;

    new-instance v6, Lﹶﾞ/ˋـ;

    const/4 v7, 0x3

    const-string v8, "SGTM_CLIENT"

    invoke-direct {v6, v7, v7, v8}, Lﹶﾞ/ˋـ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lﹶﾞ/ˋـ;->ᴵᵔ:Lﹶﾞ/ˋـ;

    new-instance v8, Lﹶﾞ/ˋـ;

    const/4 v9, 0x4

    const-string v10, "GOOGLE_SIGNAL_PENDING"

    invoke-direct {v8, v9, v9, v10}, Lﹶﾞ/ˋـ;-><init>(IILjava/lang/String;)V

    sput-object v8, Lﹶﾞ/ˋـ;->ˊʻ:Lﹶﾞ/ˋـ;

    new-instance v10, Lﹶﾞ/ˋـ;

    const/16 v11, 0x63

    const/4 v12, 0x5

    const-string v13, "UNKNOWN"

    invoke-direct {v10, v12, v11, v13}, Lﹶﾞ/ˋـ;-><init>(IILjava/lang/String;)V

    sput-object v10, Lﹶﾞ/ˋـ;->ٴᵢ:Lﹶﾞ/ˋـ;

    const/4 v11, 0x6

    new-array v11, v11, [Lﹶﾞ/ˋـ;

    aput-object v0, v11, v1

    aput-object v2, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    aput-object v10, v11, v12

    sput-object v11, Lﹶﾞ/ˋـ;->ˉٴ:[Lﹶﾞ/ˋـ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lﹶﾞ/ˋـ;->ʾˋ:I

    return-void
.end method

.method public static values()[Lﹶﾞ/ˋـ;
    .locals 1

    sget-object v0, Lﹶﾞ/ˋـ;->ˉٴ:[Lﹶﾞ/ˋـ;

    invoke-virtual {v0}, [Lﹶﾞ/ˋـ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﹶﾞ/ˋـ;

    return-object v0
.end method
