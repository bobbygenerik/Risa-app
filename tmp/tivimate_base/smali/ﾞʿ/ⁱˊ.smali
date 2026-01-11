.class public final Lﾞʿ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Z

.field public ˈ:Lﾞʿ/ﹳٴ;

.field public final ˑﹳ:Ljava/util/ArrayList;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lﾞʿ/ʽ;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Lﾞʿ/ʽ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    iput-object p2, p0, Lﾞʿ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    return-void
.end method

.method public static ʽ(Lﾞʿ/ⁱˊ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lٴᵎ/ﹳᐧ;

    invoke-direct {v0, p1, p2}, Lٴᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lﾞʿ/ⁱˊ;->ˈ(Lﾞʿ/ﹳٴ;J)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﾞʿ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    return-object v0
.end method

.method public final ˈ(Lﾞʿ/ﹳٴ;J)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lﾞʿ/ⁱˊ;->ʽ:Z

    if-eqz v1, :cond_3

    iget-boolean p2, p1, Lﾞʿ/ﹳٴ;->ⁱˊ:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object p2, p2, Lﾞʿ/ʽ;->ⁱˊ:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "schedule canceled (queue is shutdown)"

    invoke-static {p2, p1, p0, p3}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    iget-object p2, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object p2, p2, Lﾞʿ/ʽ;->ⁱˊ:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "schedule failed (queue is shutdown)"

    invoke-static {p2, p1, p0, p3}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lﾞʿ/ⁱˊ;->ˑﹳ(Lﾞʿ/ﹳٴ;JZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    invoke-virtual {p1, p0}, Lﾞʿ/ʽ;->ʽ(Lﾞʿ/ⁱˊ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final ˑﹳ(Lﾞʿ/ﹳٴ;JZ)Z
    .locals 11

    .prologue
    iget-object v0, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object v0, v0, Lﾞʿ/ʽ;->ⁱˊ:Ljava/util/logging/Logger;

    iget-object v1, p1, Lﾞʿ/ﹳٴ;->ʽ:Lﾞʿ/ⁱˊ;

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_9

    iput-object p0, p1, Lﾞʿ/ﹳٴ;->ʽ:Lﾞʿ/ⁱˊ;

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    add-long v3, v1, p2

    iget-object v5, p0, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_2

    iget-wide v9, p1, Lﾞʿ/ﹳٴ;->ˈ:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_1

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "already scheduled"

    invoke-static {v0, p1, p0, p2}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V

    return v8

    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iput-wide v3, p1, Lﾞʿ/ﹳٴ;->ˈ:J

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p4, :cond_3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Landroid/support/v4/media/session/ⁱˊ;->ﾞᴵ(J)Ljava/lang/String;

    move-result-object p4

    const-string v3, "run again after "

    invoke-virtual {v3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_3
    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Landroid/support/v4/media/session/ⁱˊ;->ﾞᴵ(J)Ljava/lang/String;

    move-result-object p4

    const-string v3, "scheduled after "

    invoke-virtual {v3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_1
    invoke-static {v0, p1, p0, p4}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p4

    move v0, v8

    move v3, v0

    :goto_2
    if-ge v3, p4, :cond_6

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lﾞʿ/ﹳٴ;

    iget-wide v9, v4, Lﾞʿ/ﹳٴ;->ˈ:J

    sub-long/2addr v9, v1

    cmp-long v4, v9, p2

    if-lez v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v7

    :goto_3
    if-ne v0, v7, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_7
    invoke-virtual {v5, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    return v8

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "task is in multiple queues"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lﾞʿ/ⁱˊ;->ˈ:Lﾞʿ/ﹳٴ;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lﾞʿ/ﹳٴ;->ⁱˊ:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lﾞʿ/ⁱˊ;->ﾞᴵ:Z

    :cond_0
    iget-object v0, p0, Lﾞʿ/ⁱˊ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﾞʿ/ﹳٴ;

    iget-boolean v4, v4, Lﾞʿ/ﹳٴ;->ⁱˊ:Z

    if-eqz v4, :cond_2

    iget-object v3, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object v3, v3, Lﾞʿ/ʽ;->ⁱˊ:Ljava/util/logging/Logger;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lﾞʿ/ﹳٴ;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "canceled"

    invoke-static {v3, v4, p0, v5}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v3, v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    sget-object v1, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lﾞʿ/ⁱˊ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    invoke-virtual {v1, p0}, Lﾞʿ/ʽ;->ʽ(Lﾞʿ/ⁱˊ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    throw v1
.end method

.method public final ﾞᴵ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    sget-object v1, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lﾞʿ/ⁱˊ;->ʽ:Z

    invoke-virtual {p0}, Lﾞʿ/ⁱˊ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    invoke-virtual {v1, p0}, Lﾞʿ/ʽ;->ʽ(Lﾞʿ/ⁱˊ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    throw v1
.end method
