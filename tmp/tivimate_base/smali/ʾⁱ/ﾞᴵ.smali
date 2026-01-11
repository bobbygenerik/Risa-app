.class public final Lʾⁱ/ﾞᴵ;
.super Lʿٴ/ˆʾ;
.source "SourceFile"


# instance fields
.field public ˈ:Lʿʾ/ˉʿ;


# virtual methods
.method public final ʽ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    check-cast p1, Lʼᵔ/ˑﹳ;

    check-cast p2, Lʿʾ/ᵢˏ;

    iget-object p1, p0, Lʾⁱ/ﾞᴵ;->ˈ:Lʿʾ/ˉʿ;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p1, Lʿʾ/ˉʿ;->ˑﹳ:Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lar/tvplayer/core/domain/ʽﹳ;->ˆʾ(Lʿʾ/ᵢˏ;Z)V

    :cond_0
    return-void
.end method

.method public final ᵎﹶ(I)V
    .locals 4

    .prologue
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lʿٴ/ˆʾ;->ﾞᴵ(J)V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lʿٴ/ˆʾ;->ﹳٴ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lʿٴ/ˆʾ;->ﾞᴵ(J)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)I
    .locals 0

    .prologue
    check-cast p1, Lʿʾ/ᵢˏ;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lʿʾ/ᵢˏ;->ⁱˊ()I

    move-result p1

    return p1
.end method
