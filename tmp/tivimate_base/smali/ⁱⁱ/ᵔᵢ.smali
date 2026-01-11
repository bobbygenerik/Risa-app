.class public final Lⁱⁱ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱⁱ/ˈ;
.implements Lⁱⁱ/ʽ;


# instance fields
.field public volatile ʽ:Lⁱⁱ/ᵎﹶ;

.field public volatile ˈ:Lⁱⁱ/ʽ;

.field public ˑﹳ:I

.field public ᵎﹶ:Z

.field public final ⁱˊ:Ljava/lang/Object;

.field public final ﹳٴ:Lⁱⁱ/ˈ;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lⁱⁱ/ˈ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    iput v0, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    iput-object p1, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lⁱⁱ/ᵔᵢ;->ﹳٴ:Lⁱⁱ/ˈ;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lⁱⁱ/ᵔᵢ;->ᵎﹶ:Z

    const/4 v1, 0x3

    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->clear()V

    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v1}, Lⁱⁱ/ᵎﹶ;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getRoot()Lⁱⁱ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ﹳٴ:Lⁱⁱ/ˈ;

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
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ʼˎ(Lⁱⁱ/ʽ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ﹳٴ:Lⁱⁱ/ˈ;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lⁱⁱ/ˈ;->ʼˎ(Lⁱⁱ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ʽ(Lⁱⁱ/ʽ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ﹳٴ:Lⁱⁱ/ˈ;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lⁱⁱ/ˈ;->ʽ(Lⁱⁱ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lⁱⁱ/ᵔᵢ;->ﹳٴ()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˆʾ(Lⁱⁱ/ʽ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_0

    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    iget-object p1, p0, Lⁱⁱ/ᵔᵢ;->ﹳٴ:Lⁱⁱ/ˈ;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lⁱⁱ/ˈ;->ˆʾ(Lⁱⁱ/ʽ;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˈ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    invoke-static {v1}, Lᐧـ/ˈ;->ﾞᴵ(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    iput v2, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->ˈ()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    invoke-static {v1}, Lᐧـ/ˈ;->ﾞᴵ(I)Z

    move-result v1

    if-nez v1, :cond_1

    iput v2, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v1}, Lⁱⁱ/ᵎﹶ;->ˈ()V

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
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ٴﹶ(Lⁱⁱ/ʽ;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ﹳٴ:Lⁱⁱ/ˈ;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lⁱⁱ/ˈ;->ٴﹶ(Lⁱⁱ/ʽ;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ᵎﹶ(Lⁱⁱ/ʽ;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lⁱⁱ/ᵔᵢ;

    if-eqz v0, :cond_2

    check-cast p1, Lⁱⁱ/ᵔᵢ;

    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    if-nez v0, :cond_0

    iget-object v0, p1, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    iget-object v1, p1, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v0, v1}, Lⁱⁱ/ᵎﹶ;->ᵎﹶ(Lⁱⁱ/ʽ;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    if-nez v0, :cond_1

    iget-object p1, p1, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    iget-object p1, p1, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v0, p1}, Lⁱⁱ/ʽ;->ᵎﹶ(Lⁱⁱ/ʽ;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ᵔᵢ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ⁱˊ(Lⁱⁱ/ʽ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    iget-object p1, p0, Lⁱⁱ/ᵔᵢ;->ﹳٴ:Lⁱⁱ/ˈ;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lⁱⁱ/ˈ;->ⁱˊ(Lⁱⁱ/ʽ;)V

    :cond_1
    iget p1, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    invoke-static {p1}, Lᐧـ/ˈ;->ﾞᴵ(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {p1}, Lⁱⁱ/ʽ;->clear()V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v1}, Lⁱⁱ/ʽ;->ﹳٴ()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v1}, Lⁱⁱ/ᵎﹶ;->ﹳٴ()Z

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
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱⁱ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lⁱⁱ/ᵔᵢ;->ᵎﹶ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    iget v3, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    if-eq v3, v1, :cond_0

    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ﾞᴵ:I

    iget-object v3, p0, Lⁱⁱ/ᵔᵢ;->ˈ:Lⁱⁱ/ʽ;

    invoke-interface {v3}, Lⁱⁱ/ʽ;->ﾞᴵ()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lⁱⁱ/ᵔᵢ;->ᵎﹶ:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    if-eq v3, v1, :cond_1

    iput v1, p0, Lⁱⁱ/ᵔᵢ;->ˑﹳ:I

    iget-object v1, p0, Lⁱⁱ/ᵔᵢ;->ʽ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v1}, Lⁱⁱ/ᵎﹶ;->ﾞᴵ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lⁱⁱ/ᵔᵢ;->ᵎﹶ:Z

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :goto_1
    iput-boolean v2, p0, Lⁱⁱ/ᵔᵢ;->ᵎﹶ:Z

    throw v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
