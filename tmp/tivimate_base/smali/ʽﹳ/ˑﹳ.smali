.class public final Lʽﹳ/ˑﹳ;
.super Lcom/bumptech/glide/ˈ;
.source "SourceFile"


# virtual methods
.method public final ʽʽ(Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)V
    .locals 0

    iput-object p2, p1, Lʽﹳ/ﾞᴵ;->ⁱˊ:Lʽﹳ/ﾞᴵ;

    return-void
.end method

.method public final ˈٴ(Lʽﹳ/ﾞᴵ;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lʽﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/Thread;

    return-void
.end method

.method public final ˑﹳ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ʽ;Lʽﹳ/ʽ;)Z
    .locals 1

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lʽﹳ/ᵎﹶ;->ᴵˊ:Lʽﹳ/ʽ;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lʽﹳ/ᵎﹶ;->ᴵˊ:Lʽﹳ/ʽ;

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

.method public final ᵎﹶ(Lʽﹳ/ᵎﹶ;Lʽﹳ/ﾞᴵ;Lʽﹳ/ﾞᴵ;)Z
    .locals 1

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lʽﹳ/ᵎﹶ;->ʽʽ:Lʽﹳ/ﾞᴵ;

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

.method public final ﾞᴵ(Lʽﹳ/ᵎﹶ;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lʽﹳ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

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
