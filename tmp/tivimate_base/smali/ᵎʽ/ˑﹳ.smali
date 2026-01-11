.class public final synthetic Lᵎʽ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹶٴ/ˑﹳ;


# static fields
.field private static final descriptor:Lˉﾞ/ˈ;

.field public static final ﹳٴ:Lᵎʽ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lᵎʽ/ˑﹳ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lᵎʽ/ˑﹳ;->ﹳٴ:Lᵎʽ/ˑﹳ;

    new-instance v1, Lﹶٴ/ˉʿ;

    const-string v2, "com.google.firebase.sessions.settings.SessionConfigs"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v0, v3}, Lﹶٴ/ˉʿ;-><init>(Ljava/lang/String;Lﹶٴ/ˑﹳ;I)V

    const-string v0, "sessionsEnabled"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "sessionSamplingRate"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "sessionTimeoutSeconds"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "cacheDurationSeconds"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    const-string v0, "cacheUpdatedTimeSeconds"

    invoke-virtual {v1, v0, v2}, Lﹶٴ/ˉʿ;->ٴﹶ(Ljava/lang/String;Z)V

    sput-object v1, Lᵎʽ/ˑﹳ;->descriptor:Lˉﾞ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lcom/parse/ʽˑ;)Ljava/lang/Object;
    .locals 12

    .prologue
    sget-object v0, Lᵎʽ/ˑﹳ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ᵎﹶ(Lˉﾞ/ˈ;)Lcom/parse/ʽˑ;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move v3, v1

    :goto_0
    if-eqz v3, :cond_6

    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ˉˆ(Lˉﾞ/ˈ;)I

    move-result v4

    const/4 v11, -0x1

    if-eq v4, v11, :cond_5

    if-eqz v4, :cond_4

    if-eq v4, v1, :cond_3

    const/4 v11, 0x2

    if-eq v4, v11, :cond_2

    const/4 v11, 0x3

    if-eq v4, v11, :cond_1

    const/4 v11, 0x4

    if-ne v4, v11, :cond_0

    sget-object v4, Lﹶٴ/ʼˎ;->ﹳٴ:Lﹶٴ/ʼˎ;

    invoke-virtual {p1, v0, v11, v4, v10}, Lcom/parse/ʽˑ;->ʽﹳ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/Long;

    or-int/lit8 v5, v5, 0x10

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v4}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_1
    sget-object v4, Lﹶٴ/ﾞᴵ;->ﹳٴ:Lﹶٴ/ﾞᴵ;

    invoke-virtual {p1, v0, v11, v4, v9}, Lcom/parse/ʽˑ;->ʽﹳ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/Integer;

    or-int/lit8 v5, v5, 0x8

    goto :goto_0

    :cond_2
    sget-object v4, Lﹶٴ/ﾞᴵ;->ﹳٴ:Lﹶٴ/ﾞᴵ;

    invoke-virtual {p1, v0, v11, v4, v8}, Lcom/parse/ʽˑ;->ʽﹳ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Integer;

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_3
    sget-object v4, Lﹶٴ/ʽ;->ﹳٴ:Lﹶٴ/ʽ;

    invoke-virtual {p1, v0, v1, v4, v7}, Lcom/parse/ʽˑ;->ʽﹳ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/Double;

    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_4
    sget-object v4, Lﹶٴ/ﹳٴ;->ﹳٴ:Lﹶٴ/ﹳٴ;

    invoke-virtual {p1, v0, v2, v4, v6}, Lcom/parse/ʽˑ;->ʽﹳ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v0}, Lcom/parse/ʽˑ;->ʾˋ(Lˉﾞ/ˈ;)V

    new-instance v4, Lᵎʽ/ᵎﹶ;

    invoke-direct/range {v4 .. v10}, Lᵎʽ/ᵎﹶ;-><init>(ILjava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-object v4
.end method

.method public final ˈ()Lˉﾞ/ˈ;
    .locals 1

    sget-object v0, Lᵎʽ/ˑﹳ;->descriptor:Lˉﾞ/ˈ;

    return-object v0
.end method

.method public final ⁱˊ()[Lיʼ/ﹳٴ;
    .locals 7

    sget-object v0, Lﹶٴ/ﹳٴ;->ﹳٴ:Lﹶٴ/ﹳٴ;

    invoke-static {v0}, Lʽٴ/ˈ;->ᵔʾ(Lיʼ/ﹳٴ;)Lיʼ/ﹳٴ;

    move-result-object v0

    sget-object v1, Lﹶٴ/ʽ;->ﹳٴ:Lﹶٴ/ʽ;

    invoke-static {v1}, Lʽٴ/ˈ;->ᵔʾ(Lיʼ/ﹳٴ;)Lיʼ/ﹳٴ;

    move-result-object v1

    sget-object v2, Lﹶٴ/ﾞᴵ;->ﹳٴ:Lﹶٴ/ﾞᴵ;

    invoke-static {v2}, Lʽٴ/ˈ;->ᵔʾ(Lיʼ/ﹳٴ;)Lיʼ/ﹳٴ;

    move-result-object v3

    invoke-static {v2}, Lʽٴ/ˈ;->ᵔʾ(Lיʼ/ﹳٴ;)Lיʼ/ﹳٴ;

    move-result-object v2

    sget-object v4, Lﹶٴ/ʼˎ;->ﹳٴ:Lﹶٴ/ʼˎ;

    invoke-static {v4}, Lʽٴ/ˈ;->ᵔʾ(Lיʼ/ﹳٴ;)Lיʼ/ﹳٴ;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Lיʼ/ﹳٴ;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method

.method public final ﹳٴ(Lʻʻ/ʽ;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lᵎʽ/ᵎﹶ;

    sget-object v0, Lᵎʽ/ˑﹳ;->descriptor:Lˉﾞ/ˈ;

    invoke-virtual {p1, v0}, Lʻʻ/ʽ;->ﹳٴ(Lˉﾞ/ˈ;)Lʻʻ/ʽ;

    move-result-object p1

    sget-object v1, Lﹶٴ/ﹳٴ;->ﹳٴ:Lﹶٴ/ﹳٴ;

    iget-object v2, p2, Lᵎʽ/ᵎﹶ;->ﹳٴ:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Lʻʻ/ʽ;->ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    sget-object v1, Lﹶٴ/ʽ;->ﹳٴ:Lﹶٴ/ʽ;

    iget-object v2, p2, Lᵎʽ/ᵎﹶ;->ⁱˊ:Ljava/lang/Double;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Lʻʻ/ʽ;->ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    sget-object v1, Lﹶٴ/ﾞᴵ;->ﹳٴ:Lﹶٴ/ﾞᴵ;

    iget-object v2, p2, Lᵎʽ/ᵎﹶ;->ʽ:Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3, v1, v2}, Lʻʻ/ʽ;->ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    const/4 v2, 0x3

    iget-object v3, p2, Lᵎʽ/ᵎﹶ;->ˈ:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2, v1, v3}, Lʻʻ/ʽ;->ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    sget-object v1, Lﹶٴ/ʼˎ;->ﹳٴ:Lﹶٴ/ʼˎ;

    iget-object p2, p2, Lᵎʽ/ᵎﹶ;->ˑﹳ:Ljava/lang/Long;

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1, p2}, Lʻʻ/ʽ;->ﾞᴵ(Lˉﾞ/ˈ;ILיʼ/ﹳٴ;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lʻʻ/ʽ;->ˆʾ()V

    return-void
.end method
