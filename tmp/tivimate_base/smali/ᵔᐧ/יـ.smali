.class public final Lᵔᐧ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ʾˋ;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Z

.field public final synthetic ˈٴ:Lᵔᐧ/ʻٴ;

.field public final ᴵˊ:Lˊᐧ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lᵔᐧ/ʻٴ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iput-boolean p2, p0, Lᵔᐧ/יـ;->ʾˋ:Z

    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 13

    .prologue
    iget-object v1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lᵔᐧ/יـ;->ʽʽ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    iget-object v1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object v3, v1, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    iget-boolean v3, v3, Lᵔᐧ/יـ;->ʾˋ:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v3, v3, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    :goto_1
    iget-object v0, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v0, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Lᵔᐧ/יـ;->ʽ(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v7, v1, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget v8, v1, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v7 .. v12}, Lᵔᐧ/ᵔʾ;->ˈٴ(IZLˊᐧ/ﾞᴵ;J)V

    :cond_3
    iget-object v1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    monitor-enter v1

    :try_start_2
    iput-boolean v2, p0, Lᵔᐧ/יـ;->ʽʽ:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v0}, Lᵔᐧ/ᵔʾ;->flush()V

    iget-object v0, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    invoke-virtual {v0}, Lᵔᐧ/ʻٴ;->ﹳٴ()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final flush()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    sget-object v1, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lᵔᐧ/ʻٴ;->ⁱˊ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v0, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lᵔᐧ/יـ;->ʽ(Z)V

    iget-object v0, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v0}, Lᵔᐧ/ᵔʾ;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ʽ(Z)V
    .locals 12

    .prologue
    iget-object v1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v0}, Lˊᐧ/ˈ;->ᵔᵢ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-wide v2, v1, Lᵔᐧ/ʻٴ;->ˈ:J

    iget-wide v4, v1, Lᵔᐧ/ʻٴ;->ˑﹳ:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lᵔᐧ/יـ;->ʾˋ:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lᵔᐧ/יـ;->ʽʽ:Z

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    :try_start_4
    iget-object v0, v1, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v0}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V

    invoke-virtual {v1}, Lᵔᐧ/ʻٴ;->ⁱˊ()V

    iget-wide v2, v1, Lᵔᐧ/ʻٴ;->ˑﹳ:J

    iget-wide v4, v1, Lᵔᐧ/ʻٴ;->ˈ:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v4, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-wide v2, v1, Lᵔᐧ/ʻٴ;->ˈ:J

    add-long/2addr v2, v10

    iput-wide v2, v1, Lᵔᐧ/ʻٴ;->ˈ:J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    iget-wide v2, p1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    cmp-long p1, v10, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v8, p1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    monitor-exit v1

    iget-object p1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object p1, p1, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {p1}, Lˊᐧ/ˈ;->ᵔᵢ()V

    :try_start_5
    iget-object p1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object v6, p1, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget v7, p1, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    iget-object v9, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual/range {v6 .. v11}, Lᵔᐧ/ᵔʾ;->ˈٴ(IZLˊᐧ/ﾞᴵ;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object p1, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object p1, p1, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {p1}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V

    return-void

    :catchall_2
    move-exception v0

    move-object p1, v0

    iget-object v0, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v0}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V

    throw p1

    :goto_3
    :try_start_6
    iget-object v0, v1, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v0}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    monitor-exit v1

    throw p1
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    iget-object v0, p0, Lᵔᐧ/יـ;->ˈٴ:Lᵔᐧ/ʻٴ;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    return-object v0
.end method

.method public final ᵔי(Lˊᐧ/ﾞᴵ;J)V
    .locals 3

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v0, p0, Lᵔᐧ/יـ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v0, p1, p2, p3}, Lˊᐧ/ﾞᴵ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    :goto_0
    iget-wide p1, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v1, 0x4000

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lᵔᐧ/יـ;->ʽ(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
