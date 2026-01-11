.class public final Lⁱʼ/ˉʿ;
.super Lʿٴ/ˆʾ;
.source "SourceFile"


# virtual methods
.method public final ʽ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    check-cast p1, Lⁱʼ/ᵔʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lⁱʼ/ᵔʾ;->ⁱˊ:Ljava/util/ArrayDeque;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
