.class public final enum Lᴵˋ/ˈٴ;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ʽʽ:Lᴵˋ/ˈٴ;

.field public static final enum ʾˋ:Lᴵˋ/ˈٴ;

.field public static final enum ˈٴ:Lᴵˋ/ˈٴ;

.field public static final enum ˊʻ:Lᴵˋ/ˈٴ;

.field public static final synthetic ٴᵢ:[Lᴵˋ/ˈٴ;

.field public static final enum ᴵˊ:Lᴵˋ/ˈٴ;

.field public static final enum ᴵᵔ:Lᴵˋ/ˈٴ;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lᴵˋ/ˈٴ;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    new-instance v1, Lᴵˋ/ˈٴ;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lᴵˋ/ˈٴ;->ᴵˊ:Lᴵˋ/ˈٴ;

    new-instance v3, Lᴵˋ/ˈٴ;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lᴵˋ/ˈٴ;->ʽʽ:Lᴵˋ/ˈٴ;

    new-instance v5, Lᴵˋ/ˈٴ;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lᴵˋ/ˈٴ;->ˈٴ:Lᴵˋ/ˈٴ;

    new-instance v7, Lᴵˋ/ˈٴ;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lᴵˋ/ˈٴ;->ᴵᵔ:Lᴵˋ/ˈٴ;

    new-instance v9, Lᴵˋ/ˈٴ;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lᴵˋ/ˈٴ;->ˊʻ:Lᴵˋ/ˈٴ;

    const/4 v11, 0x6

    new-array v11, v11, [Lᴵˋ/ˈٴ;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lᴵˋ/ˈٴ;->ٴᵢ:[Lᴵˋ/ˈٴ;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lᴵˋ/ˈٴ;
    .locals 1

    const-class v0, Lᴵˋ/ˈٴ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lᴵˋ/ˈٴ;

    return-object p0
.end method

.method public static values()[Lᴵˋ/ˈٴ;
    .locals 1

    sget-object v0, Lᴵˋ/ˈٴ;->ٴᵢ:[Lᴵˋ/ˈٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lᴵˋ/ˈٴ;

    return-object v0
.end method


# virtual methods
.method public final ﹳٴ()Z
    .locals 1

    .prologue
    sget-object v0, Lᴵˋ/ˈٴ;->ʽʽ:Lᴵˋ/ˈٴ;

    if-eq p0, v0, :cond_1

    sget-object v0, Lᴵˋ/ˈٴ;->ˈٴ:Lᴵˋ/ˈٴ;

    if-eq p0, v0, :cond_1

    sget-object v0, Lᴵˋ/ˈٴ;->ˊʻ:Lᴵˋ/ˈٴ;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
