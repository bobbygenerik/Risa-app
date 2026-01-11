.class public final enum Lʻʽ/ᵎﹶ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final synthetic ᴵˊ:[Lʻʽ/ᵎﹶ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lʻʽ/ᵎﹶ;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "WINDOWS_MAJOR_VERSION_5"

    invoke-direct {v0, v2, v1, v3}, Lʻʽ/ᵎﹶ;-><init>(IILjava/lang/String;)V

    new-instance v1, Lʻʽ/ᵎﹶ;

    const/4 v3, 0x6

    const/4 v4, 0x1

    const-string v5, "WINDOWS_MAJOR_VERSION_6"

    invoke-direct {v1, v4, v3, v5}, Lʻʽ/ᵎﹶ;-><init>(IILjava/lang/String;)V

    new-instance v3, Lʻʽ/ᵎﹶ;

    const/16 v5, 0xa

    const/4 v6, 0x2

    const-string v7, "WINDOWS_MAJOR_VERSION_10"

    invoke-direct {v3, v6, v5, v7}, Lʻʽ/ᵎﹶ;-><init>(IILjava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lʻʽ/ᵎﹶ;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lʻʽ/ᵎﹶ;->ᴵˊ:[Lʻʽ/ᵎﹶ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-long p1, p2

    iput-wide p1, p0, Lʻʽ/ᵎﹶ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʻʽ/ᵎﹶ;
    .locals 1

    const-class v0, Lʻʽ/ᵎﹶ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʻʽ/ᵎﹶ;

    return-object p0
.end method

.method public static values()[Lʻʽ/ᵎﹶ;
    .locals 1

    sget-object v0, Lʻʽ/ᵎﹶ;->ᴵˊ:[Lʻʽ/ᵎﹶ;

    invoke-virtual {v0}, [Lʻʽ/ᵎﹶ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʻʽ/ᵎﹶ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lʻʽ/ᵎﹶ;->ʾˋ:J

    return-wide v0
.end method
