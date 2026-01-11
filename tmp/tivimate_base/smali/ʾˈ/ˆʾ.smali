.class public final enum Lʾˈ/ˆʾ;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lˆˉ/ﾞᴵ;


# static fields
.field public static final enum ʽʽ:Lʾˈ/ˆʾ;

.field public static final enum ˈٴ:Lʾˈ/ˆʾ;

.field public static final enum ᴵˊ:Lʾˈ/ˆʾ;

.field public static final synthetic ᴵᵔ:[Lʾˈ/ˆʾ;


# instance fields
.field public final ʾˋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lʾˈ/ˆʾ;

    const/4 v1, 0x0

    const-string v2, "COLLECTION_UNKNOWN"

    invoke-direct {v0, v1, v1, v2}, Lʾˈ/ˆʾ;-><init>(IILjava/lang/String;)V

    new-instance v2, Lʾˈ/ˆʾ;

    const/4 v3, 0x1

    const-string v4, "COLLECTION_SDK_NOT_INSTALLED"

    invoke-direct {v2, v3, v3, v4}, Lʾˈ/ˆʾ;-><init>(IILjava/lang/String;)V

    sput-object v2, Lʾˈ/ˆʾ;->ᴵˊ:Lʾˈ/ˆʾ;

    new-instance v4, Lʾˈ/ˆʾ;

    const/4 v5, 0x2

    const-string v6, "COLLECTION_ENABLED"

    invoke-direct {v4, v5, v5, v6}, Lʾˈ/ˆʾ;-><init>(IILjava/lang/String;)V

    sput-object v4, Lʾˈ/ˆʾ;->ʽʽ:Lʾˈ/ˆʾ;

    new-instance v6, Lʾˈ/ˆʾ;

    const/4 v7, 0x3

    const-string v8, "COLLECTION_DISABLED"

    invoke-direct {v6, v7, v7, v8}, Lʾˈ/ˆʾ;-><init>(IILjava/lang/String;)V

    sput-object v6, Lʾˈ/ˆʾ;->ˈٴ:Lʾˈ/ˆʾ;

    new-instance v8, Lʾˈ/ˆʾ;

    const/4 v9, 0x4

    const-string v10, "COLLECTION_DISABLED_REMOTE"

    invoke-direct {v8, v9, v9, v10}, Lʾˈ/ˆʾ;-><init>(IILjava/lang/String;)V

    new-instance v10, Lʾˈ/ˆʾ;

    const/4 v11, 0x5

    const-string v12, "COLLECTION_SAMPLED"

    invoke-direct {v10, v11, v11, v12}, Lʾˈ/ˆʾ;-><init>(IILjava/lang/String;)V

    const/4 v12, 0x6

    new-array v12, v12, [Lʾˈ/ˆʾ;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lʾˈ/ˆʾ;->ᴵᵔ:[Lʾˈ/ˆʾ;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lʾˈ/ˆʾ;->ʾˋ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lʾˈ/ˆʾ;
    .locals 1

    const-class v0, Lʾˈ/ˆʾ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lʾˈ/ˆʾ;

    return-object p0
.end method

.method public static values()[Lʾˈ/ˆʾ;
    .locals 1

    sget-object v0, Lʾˈ/ˆʾ;->ᴵᵔ:[Lʾˈ/ˆʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lʾˈ/ˆʾ;

    return-object v0
.end method


# virtual methods
.method public final ﹳٴ()I
    .locals 1

    iget v0, p0, Lʾˈ/ˆʾ;->ʾˋ:I

    return v0
.end method
