.class public final Lⁱⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱⁱ/ˈ;
.implements Lⁱⁱ/ʽ;


# instance fields
.field public volatile ʽ:Lⁱⁱ/ʽ;

.field public volatile ˈ:Lⁱⁱ/ʽ;

.field public ˑﹳ:I

.field public final ⁱˊ:Lⁱⁱ/ˈ;

.field public final ﹳٴ:Ljava/lang/Object;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lⁱⁱ/ˈ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    iput v0, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    iput-object p1, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    iput-object p2, p0, Lⁱⁱ/ⁱˊ;->ⁱˊ:Lⁱⁱ/ˈ;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    iput v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    iget-object v2, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-interface {v2}, Lⁱⁱ/ʽ;->clear()V

    iget v2, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getRoot()Lⁱⁱ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ⁱˊ:Lⁱⁱ/ˈ;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lⁱⁱ/ˈ;->getRoot()Lⁱⁱ/ˈ;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isRunning()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ʼˎ(Lⁱⁱ/ʽ;)Z
    .locals 1

    .prologue
    iget-object p1, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ⁱˊ:Lⁱⁱ/ˈ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lⁱⁱ/ˈ;->ʼˎ(Lⁱⁱ/ʽ;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ʽ(Lⁱⁱ/ʽ;)Z
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ⁱˊ:Lⁱⁱ/ˈ;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lⁱⁱ/ˈ;->ʽ(Lⁱⁱ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    if-eqz p1, :cond_4

    move v2, v3

    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˆʾ(Lⁱⁱ/ʽ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_1

    iput v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    iget p1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    iput v1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    iget-object p1, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {p1}, Lⁱⁱ/ʽ;->ﾞᴵ()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iput v1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    iget-object p1, p0, Lⁱⁱ/ⁱˊ;->ⁱˊ:Lⁱⁱ/ˈ;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lⁱⁱ/ˈ;->ˆʾ(Lⁱⁱ/ʽ;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˈ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iput v2, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->ˈ()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    if-ne v1, v3, :cond_1

    iput v2, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->ˈ()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ˑﹳ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ٴﹶ(Lⁱⁱ/ʽ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ⁱˊ:Lⁱⁱ/ˈ;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lⁱⁱ/ˈ;->ٴﹶ(Lⁱⁱ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ᵎﹶ(Lⁱⁱ/ʽ;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lⁱⁱ/ⁱˊ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lⁱⁱ/ⁱˊ;

    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    iget-object v2, p1, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-interface {v0, v2}, Lⁱⁱ/ʽ;->ᵎﹶ(Lⁱⁱ/ʽ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    iget-object p1, p1, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v0, p1}, Lⁱⁱ/ʽ;->ᵎﹶ(Lⁱⁱ/ʽ;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final ᵔᵢ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ⁱˊ(Lⁱⁱ/ʽ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    iput v2, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v2, p0, Lⁱⁱ/ⁱˊ;->ﾞᴵ:I

    :cond_1
    :goto_0
    iget-object p1, p0, Lⁱⁱ/ⁱˊ;->ⁱˊ:Lⁱⁱ/ˈ;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lⁱⁱ/ˈ;->ⁱˊ(Lⁱⁱ/ʽ;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->ﹳٴ()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ﾞᴵ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iput v2, p0, Lⁱⁱ/ⁱˊ;->ˑﹳ:I

    iget-object v1, p0, Lⁱⁱ/ⁱˊ;->ʽ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->ﾞᴵ()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
