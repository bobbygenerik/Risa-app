.class public final enum Lﹶﾞ/ᵢˋ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lﹶﾞ/ᵢˋ;

.field public static final enum ˈٴ:Lﹶﾞ/ᵢˋ;

.field public static final synthetic ˊʻ:[Lﹶﾞ/ᵢˋ;

.field public static final enum ᴵˊ:Lﹶﾞ/ᵢˋ;

.field public static final enum ᴵᵔ:Lﹶﾞ/ᵢˋ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lﹶﾞ/ᵢˋ;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lﹶﾞ/ᵢˋ;-><init>(IILjava/lang/String;)V

    sput-object v0, Lﹶﾞ/ᵢˋ;->ᴵˊ:Lﹶﾞ/ᵢˋ;

    new-instance v2, Lﹶﾞ/ᵢˋ;

    const/4 v3, 0x1

    const-string v4, "SUCCESS"

    invoke-direct {v2, v3, v3, v4}, Lﹶﾞ/ᵢˋ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lﹶﾞ/ᵢˋ;->ʽʽ:Lﹶﾞ/ᵢˋ;

    new-instance v4, Lﹶﾞ/ᵢˋ;

    const/4 v5, 0x2

    const-string v6, "FAILURE"

    invoke-direct {v4, v5, v5, v6}, Lﹶﾞ/ᵢˋ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lﹶﾞ/ᵢˋ;->ˈٴ:Lﹶﾞ/ᵢˋ;

    new-instance v6, Lﹶﾞ/ᵢˋ;

    const/4 v7, 0x3

    const-string v8, "BACKOFF"

    invoke-direct {v6, v7, v7, v8}, Lﹶﾞ/ᵢˋ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lﹶﾞ/ᵢˋ;->ᴵᵔ:Lﹶﾞ/ᵢˋ;

    const/4 v8, 0x4

    new-array v8, v8, [Lﹶﾞ/ᵢˋ;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lﹶﾞ/ᵢˋ;->ˊʻ:[Lﹶﾞ/ᵢˋ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lﹶﾞ/ᵢˋ;->ʾˋ:I

    return-void
.end method

.method public static values()[Lﹶﾞ/ᵢˋ;
    .locals 1

    sget-object v0, Lﹶﾞ/ᵢˋ;->ˊʻ:[Lﹶﾞ/ᵢˋ;

    invoke-virtual {v0}, [Lﹶﾞ/ᵢˋ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lﹶﾞ/ᵢˋ;

    return-object v0
.end method
