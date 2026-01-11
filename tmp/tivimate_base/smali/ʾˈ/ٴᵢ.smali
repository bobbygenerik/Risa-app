.class public final synthetic Lʾˈ/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶٴ/ˑﹳ;


# static fields
.field private static final descriptor:Lˉﾞ/ˈ;

.field public static final ﹳٴ:Lʾˈ/ٴᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lʾˈ/ٴᵢ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʾˈ/ٴᵢ;->ﹳٴ:Lʾˈ/ٴᵢ;

    new-instance v1, Lﹶٴ/ˉʿ;

    const-string v2, "com.google.firebase.sessions.SessionData"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lﹶٴ/ˉʿ;-><init>(Ljava/lang/String;Lﹶٴ/ˑﹳ;I)V

    const-string v0, "sessionDetails"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "backgroundTime"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "processDataMap"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    sput-object v1, Lʾˈ/ٴᵢ;->descriptor:Lˉﾞ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 11

    .prologue
    sget-object v0, Lʾˈ/ٴᵢ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ᵎﹶ(Lˉﾞ/ˈ;)Lcom/parse/ʽˑ;

    move-result-object p1

    sget-object v1, Lʾˈ/ᵎⁱ;->ˈ:[Lיʼ/ﹳٴ;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v2

    move v8, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ˉˆ(Lˉﾞ/ˈ;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    if-eqz v9, :cond_2

    if-eq v9, v2, :cond_1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    aget-object v9, v1, v10

    invoke-virtual {p1, v0, v10, v9, v6}, Lcom/parse/ʽˑ;->ʽﹳ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    or-int/lit8 v8, v8, 0x4

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_1
    sget-object v9, Lʾˈ/ʻᵎ;->ﹳٴ:Lʾˈ/ʻᵎ;

    invoke-virtual {p1, v0, v2, v9, v5}, Lcom/parse/ʽˑ;->ʽﹳ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʾˈ/ـﹶ;

    or-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_2
    sget-object v9, Lʾˈ/ᵔי;->ﹳٴ:Lʾˈ/ᵔי;

    invoke-virtual {p1, v0, v3, v9, v4}, Lcom/parse/ʽˑ;->ʻٴ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʾˈ/ᵔٴ;

    or-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v7, v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ʾˋ(Lˉﾞ/ˈ;)V

    new-instance p1, Lʾˈ/ᵎⁱ;

    invoke-direct {p1, v8, v4, v5, v6}, Lʾˈ/ᵎⁱ;-><init>(ILʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;)V

    return-object p1
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lʾˈ/ٴᵢ;->descriptor:Lˉﾞ/ˈ;

    return-object v0
.end method

.method public final ⁱˊ()[Lיʼ/ﹳٴ;
    .locals 6

    sget-object v0, Lʾˈ/ᵎⁱ;->ˈ:[Lיʼ/ﹳٴ;

    sget-object v1, Lʾˈ/ʻᵎ;->ﹳٴ:Lʾˈ/ʻᵎ;

    invoke-static {v1}, Lʽٴ/ˈ;->ᵔʾ(Lיʼ/ﹳٴ;)Lיʼ/ﹳٴ;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Lʽٴ/ˈ;->ᵔʾ(Lיʼ/ﹳٴ;)Lיʼ/ﹳٴ;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lיʼ/ﹳٴ;

    sget-object v4, Lʾˈ/ᵔי;->ﹳٴ:Lʾˈ/ᵔי;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    aput-object v0, v3, v2

    return-object v3
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 6

    .prologue
    check-cast p2, Lʾˈ/ᵎⁱ;

    sget-object v0, Lʾˈ/ٴᵢ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lʻʻ/ʽ;->ﹳٴ(Lˉﾞ/ˈ;)Lʻʻ/ʽ;

    move-result-object p1

    sget-object v1, Lʾˈ/ᵎⁱ;->ˈ:[Lיʼ/ﹳٴ;

    sget-object v2, Lʾˈ/ᵔי;->ﹳٴ:Lʾˈ/ᵔי;

    iget-object v3, p2, Lʾˈ/ᵎⁱ;->ﹳٴ:Lʾˈ/ᵔٴ;

    iget-object v4, p2, Lʾˈ/ᵎⁱ;->ʽ:Ljava/util/Map;

    iget-object p2, p2, Lʾˈ/ᵎⁱ;->ⁱˊ:Lʾˈ/ـﹶ;

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v2, v3}, Lʻʻ/ʽ;->ᵎﹶ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lʻʻ/ʽ;->ᵔʾ()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    sget-object v2, Lʾˈ/ʻᵎ;->ﹳٴ:Lʾˈ/ʻᵎ;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, v2, p2}, Lʻʻ/ʽ;->ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lʻʻ/ʽ;->ᵔʾ()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    const/4 p2, 0x2

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, p2, v1, v4}, Lʻʻ/ʽ;->ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lʻʻ/ʽ;->ˆʾ()V

    return-void
.end method
