.class public final synthetic Lᵎˉ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʿ/ﹳٴ;
.implements Lˎ/ﹳٴ;
.implements Lʾﹳ/ﹳٴ;


# instance fields
.field public final synthetic ʾˋ:Lـﹶ/ﾞᴵ;


# direct methods
.method public synthetic constructor <init>(Lـﹶ/ﾞᴵ;)V
    .locals 0

    iput-object p1, p0, Lᵎˉ/ﹳٴ;->ʾˋ:Lـﹶ/ﾞᴵ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˆʾ(Lʾﹳ/ⁱˊ;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lᵎˉ/ﹳٴ;->ʾˋ:Lـﹶ/ﾞᴵ;

    sget-object v1, Lיˎ/ʽ;->ﹳٴ:Lיˎ/ʽ;

    const-string v2, "AnalyticsConnector now available."

    invoke-virtual {v1, v2}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    invoke-interface {p1}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˆٴ/ﹳٴ;

    new-instance v2, Lˉˆ/ʿ;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p1}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lˑʼ/ᵎˊ;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lˑʼ/ᵎˊ;-><init>(IZ)V

    const-string v4, "FirebaseCrashlytics"

    const-string v5, "clx"

    check-cast p1, Lˆٴ/ⁱˊ;

    invoke-virtual {p1, v5, v3}, Lˆٴ/ⁱˊ;->ﹳٴ(Ljava/lang/String;Lˑʼ/ᵎˊ;)Lˋⁱ/ﾞᴵ;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    const-string v5, "Could not register AnalyticsConnectorListener with Crashlytics origin."

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    nop

    :cond_0
    const-string v5, "crash"

    invoke-virtual {p1, v5, v3}, Lˆٴ/ⁱˊ;->ﹳٴ(Ljava/lang/String;Lˑʼ/ᵎˊ;)Lˋⁱ/ﾞᴵ;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string p1, "A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version."

    nop

    :cond_1
    if-eqz v5, :cond_3

    const-string p1, "Registered Firebase Analytics listener."

    invoke-virtual {v1, p1}, Lיˎ/ʽ;->ⁱˊ(Ljava/lang/String;)V

    new-instance p1, Lˊⁱ/ˑﹳ;

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct {p1, v1, v4}, Lˊⁱ/ˑﹳ;-><init>(IZ)V

    new-instance v1, Lcom/parse/ٴʼ;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2}, Lcom/parse/ٴʼ;-><init>(Lˉˆ/ʿ;)V

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lﹳˎ/ˉˆ;

    invoke-virtual {p1, v6}, Lˊⁱ/ˑﹳ;->ﾞᴵ(Lﹳˎ/ˉˆ;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    iput-object p1, v3, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v3, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    iput-object p1, v0, Lـﹶ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    iput-object v1, v0, Lـﹶ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const-string p1, "Could not register Firebase Analytics listener; a listener is already registered."

    invoke-virtual {v1, p1, v6}, Lיˎ/ʽ;->ˈ(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public ˊʻ(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lᵎˉ/ﹳٴ;->ʾˋ:Lـﹶ/ﾞᴵ;

    iget-object v0, v0, Lـﹶ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    check-cast v0, Lˎ/ﹳٴ;

    invoke-interface {v0, p1}, Lˎ/ﹳٴ;->ˊʻ(Landroid/os/Bundle;)V

    return-void
.end method

.method public ﾞᴵ(Lﹳˎ/ˉˆ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᵎˉ/ﹳٴ;->ʾˋ:Lـﹶ/ﾞᴵ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lـﹶ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˆʿ/ﹳٴ;

    instance-of v1, v1, Lˆʿ/ⁱˊ;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, v0, Lـﹶ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˆʿ/ﹳٴ;

    invoke-interface {v1, p1}, Lˆʿ/ﹳٴ;->ﾞᴵ(Lﹳˎ/ˉˆ;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
