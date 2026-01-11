.class public final Lˈˊ/ˑﹳ;
.super Lﹳٴ/ﹳٴ;
.source "SourceFile"


# virtual methods
.method public final ʽ(Lˈˊ/ˉʿ;Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)Z
    .locals 1

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final ʽﹳ(Lˈˊ/ˉʿ;)Lˈˊ/ﾞʻ;
    .locals 2

    .prologue
    sget-object v0, Lˈˊ/ﾞʻ;->ʽ:Lˈˊ/ﾞʻ;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lˈˊ/ˉʿ;->ʽʽ:Lˈˊ/ﾞʻ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ˉٴ(Lˈˊ/ﾞʻ;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lˈˊ/ﾞʻ;->ﹳٴ:Ljava/lang/Thread;

    return-void
.end method

.method public final ˏי(Lˈˊ/ˉʿ;)Lˈˊ/ʽ;
    .locals 2

    .prologue
    sget-object v0, Lˈˊ/ʽ;->ˈ:Lˈˊ/ʽ;

    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lˈˊ/ˉʿ;->ᴵˊ:Lˈˊ/ʽ;

    if-eq v1, v0, :cond_0

    iput-object v0, p1, Lˈˊ/ˉʿ;->ᴵˊ:Lˈˊ/ʽ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object v1

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ٴᵢ(Lˈˊ/ﾞʻ;Lˈˊ/ﾞʻ;)V
    .locals 0

    iput-object p2, p1, Lˈˊ/ﾞʻ;->ⁱˊ:Lˈˊ/ﾞʻ;

    return-void
.end method

.method public final ⁱˊ(Lˈˊ/ˉʿ;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final ﹳٴ(Lˈˊ/ˉʿ;Lˈˊ/ʽ;Lˈˊ/ʽ;)Z
    .locals 1

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lˈˊ/ˉʿ;->ᴵˊ:Lˈˊ/ʽ;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lˈˊ/ˉʿ;->ᴵˊ:Lˈˊ/ʽ;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
