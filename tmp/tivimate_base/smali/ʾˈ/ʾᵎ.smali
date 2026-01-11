.class public final enum Lʾˈ/ʾᵎ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lˆˉ/ﾞᴵ;


# static fields
.field public static final synthetic ʽʽ:[Lʾˈ/ʾᵎ;

.field public static final enum ᴵˊ:Lʾˈ/ʾᵎ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lʾˈ/ʾᵎ;

    const/4 v1, 0x0

    const-string v2, "LOG_ENVIRONMENT_UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lʾˈ/ʾᵎ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lʾˈ/ʾᵎ;

    const/4 v3, 0x1

    const-string v4, "LOG_ENVIRONMENT_AUTOPUSH"

    invoke-direct {v2, v3, v3, v4}, Lʾˈ/ʾᵎ;-><init>(IILjava/lang/String;)V

    new-instance v4, Lʾˈ/ʾᵎ;

    const/4 v5, 0x2

    const-string v6, "LOG_ENVIRONMENT_STAGING"

    invoke-direct {v4, v5, v5, v6}, Lʾˈ/ʾᵎ;-><init>(IILjava/lang/String;)V

    new-instance v6, Lʾˈ/ʾᵎ;

    const/4 v7, 0x3

    const-string v8, "LOG_ENVIRONMENT_PROD"

    invoke-direct {v6, v7, v7, v8}, Lʾˈ/ʾᵎ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lʾˈ/ʾᵎ;->ᴵˊ:Lʾˈ/ʾᵎ;

    const/4 v8, 0x4

    new-array v8, v8, [Lʾˈ/ʾᵎ;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lʾˈ/ʾᵎ;->ʽʽ:[Lʾˈ/ʾᵎ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lʾˈ/ʾᵎ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʾˈ/ʾᵎ;
    .locals 1

    const-class v0, Lʾˈ/ʾᵎ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʾˈ/ʾᵎ;

    return-object p0
.end method

.method public static values()[Lʾˈ/ʾᵎ;
    .locals 1

    sget-object v0, Lʾˈ/ʾᵎ;->ʽʽ:[Lʾˈ/ʾᵎ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʾˈ/ʾᵎ;

    return-object v0
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lʾˈ/ʾᵎ;->ʾˋ:I

    return v0
.end method
