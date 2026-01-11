.class public final enum Lʻʽ/ᵔᵢ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lᴵʿ/ʽ;


# static fields
.field public static final synthetic ᴵˊ:[Lʻʽ/ᵔᵢ;


# instance fields
.field public final ʾˋ:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lʻʽ/ᵔᵢ;

    const/4 v1, 0x0

    const-string v2, "WINDOWS_MINOR_VERSION_0"

    invoke-direct {v0, v1, v1, v2}, Lʻʽ/ᵔᵢ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lʻʽ/ᵔᵢ;

    const/4 v3, 0x1

    const-string v4, "WINDOWS_MINOR_VERSION_1"

    invoke-direct {v2, v3, v3, v4}, Lʻʽ/ᵔᵢ;-><init>(IILjava/lang/String;)V

    new-instance v4, Lʻʽ/ᵔᵢ;

    const/4 v5, 0x2

    const-string v6, "WINDOWS_MINOR_VERSION_2"

    invoke-direct {v4, v5, v5, v6}, Lʻʽ/ᵔᵢ;-><init>(IILjava/lang/String;)V

    new-instance v6, Lʻʽ/ᵔᵢ;

    const/4 v7, 0x3

    const-string v8, "WINDOWS_MINOR_VERSION_3"

    invoke-direct {v6, v7, v7, v8}, Lʻʽ/ᵔᵢ;-><init>(IILjava/lang/String;)V

    const/4 v8, 0x4

    new-array v8, v8, [Lʻʽ/ᵔᵢ;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lʻʽ/ᵔᵢ;->ᴵˊ:[Lʻʽ/ᵔᵢ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-long p1, p2

    iput-wide p1, p0, Lʻʽ/ᵔᵢ;->ʾˋ:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʻʽ/ᵔᵢ;
    .locals 1

    const-class v0, Lʻʽ/ᵔᵢ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʻʽ/ᵔᵢ;

    return-object p0
.end method

.method public static values()[Lʻʽ/ᵔᵢ;
    .locals 1

    sget-object v0, Lʻʽ/ᵔᵢ;->ᴵˊ:[Lʻʽ/ᵔᵢ;

    invoke-virtual {v0}, [Lʻʽ/ᵔᵢ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʻʽ/ᵔᵢ;

    return-object v0
.end method


# virtual methods
.method public final getValue()J
    .locals 2

    iget-wide v0, p0, Lʻʽ/ᵔᵢ;->ʾˋ:J

    return-wide v0
.end method
