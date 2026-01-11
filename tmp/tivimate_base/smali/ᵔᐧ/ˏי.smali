.class public final Lᵔᐧ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᐧ/ᴵˊ;


# instance fields
.field public final ʽʽ:Lˊᐧ/ﾞᴵ;

.field public final ʾˋ:J

.field public final ˈٴ:Lˊᐧ/ﾞᴵ;

.field public final synthetic ˊʻ:Lᵔᐧ/ʻٴ;

.field public ᴵˊ:Z

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Lᵔᐧ/ʻٴ;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    iput-wide p2, p0, Lᵔᐧ/ˏי;->ʾˋ:J

    iput-boolean p4, p0, Lᵔᐧ/ˏי;->ᴵˊ:Z

    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ˏי;->ʽʽ:Lˊᐧ/ﾞᴵ;

    new-instance p1, Lˊᐧ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ˏי;->ˈٴ:Lˊᐧ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lᵔᐧ/ˏי;->ᴵᵔ:Z

    iget-object v1, p0, Lᵔᐧ/ˏי;->ˈٴ:Lˊᐧ/ﾞᴵ;

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-virtual {v1}, Lˊᐧ/ﾞᴵ;->ـˆ()V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    sget-object v1, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v0, v2, v3}, Lᵔᐧ/ᵔʾ;->ʾˋ(J)V

    :cond_0
    iget-object v0, p0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    invoke-virtual {v0}, Lᵔᐧ/ʻٴ;->ﹳٴ()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ˑﹳ()Lˊᐧ/ˈٴ;
    .locals 1

    iget-object v0, p0, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    return-object v0
.end method

.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 25

    .prologue
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_e

    :goto_0
    iget-object v6, v1, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    monitor-enter v6

    :try_start_0
    iget-object v0, v6, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    iget-boolean v7, v0, Lᵔᐧ/יـ;->ʽʽ:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_1

    iget-boolean v0, v0, Lᵔᐧ/יـ;->ʾˋ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v7, v9

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v8

    :goto_2
    if-eqz v7, :cond_2

    iget-object v0, v6, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v0}, Lˊᐧ/ˈ;->ᵔᵢ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_3
    :try_start_1
    invoke-virtual {v6}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lᵔᐧ/ˏי;->ᴵˊ:Z

    if-nez v0, :cond_3

    iget-object v0, v6, Lᵔᐧ/ʻٴ;->ˉʿ:Ljava/io/IOException;

    if-nez v0, :cond_4

    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    invoke-virtual {v6}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v10

    invoke-direct {v0, v10}, Lokhttp3/internal/http2/StreamResetException;-><init>(I)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_4
    iget-boolean v10, v1, Lᵔᐧ/ˏי;->ᴵᵔ:Z

    if-nez v10, :cond_c

    iget-object v10, v1, Lᵔᐧ/ˏי;->ˈٴ:Lˊᐧ/ﾞᴵ;

    iget-wide v11, v10, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v13, v11, v4

    const-wide/16 v14, -0x1

    if-lez v13, :cond_6

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v11, v12}, Lˊᐧ/ﾞᴵ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v17

    iget-object v8, v6, Lᵔᐧ/ʻٴ;->ʽ:Lˊᴵ/ﹳٴ;

    const-wide/16 v19, 0x0

    const/16 v21, 0x2

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v21}, Lˊᴵ/ﹳٴ;->ʽ(Lˊᴵ/ﹳٴ;JJI)V

    iget-object v8, v6, Lᵔᐧ/ʻٴ;->ʽ:Lˊᴵ/ﹳٴ;

    invoke-virtual {v8}, Lˊᴵ/ﹳٴ;->ⁱˊ()J

    move-result-wide v10

    if-nez v0, :cond_5

    iget-object v8, v6, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget-object v8, v8, Lᵔᐧ/ᵔʾ;->ˋᵔ:Lᵔᐧ/ᵢˏ;

    invoke-virtual {v8}, Lᵔᐧ/ᵢˏ;->ﹳٴ()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v4, v8

    cmp-long v4, v10, v4

    if-ltz v4, :cond_5

    iget-object v4, v6, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget v5, v6, Lᵔᐧ/ʻٴ;->ﹳٴ:I

    invoke-virtual {v4, v5, v10, v11}, Lᵔᐧ/ᵔʾ;->ˈʿ(IJ)V

    iget-object v4, v6, Lᵔᐧ/ʻٴ;->ʽ:Lˊᴵ/ﹳٴ;

    const-wide/16 v20, 0x0

    const/16 v24, 0x1

    move-object/from16 v19, v4

    move-wide/from16 v22, v10

    invoke-static/range {v19 .. v24}, Lˊᴵ/ﹳٴ;->ʽ(Lˊᴵ/ﹳٴ;JJI)V

    :cond_5
    move v8, v9

    goto :goto_6

    :cond_6
    move-object/from16 v13, p1

    iget-boolean v4, v1, Lᵔᐧ/ˏי;->ᴵˊ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_7

    if-nez v0, :cond_7

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    move-wide/from16 v17, v14

    goto :goto_6

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    move v8, v9

    goto :goto_5

    :goto_6
    if-eqz v7, :cond_8

    :try_start_4
    iget-object v4, v6, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v4}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    monitor-exit v6

    iget-object v4, v1, Lᵔᐧ/ˏי;->ˊʻ:Lᵔᐧ/ʻٴ;

    iget-object v4, v4, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    iget-object v4, v4, Lᵔᐧ/ᵔʾ;->ˑٴ:Lᵔᐧ/ﹳٴ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_9

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_9
    cmp-long v2, v17, v14

    if-eqz v2, :cond_a

    return-wide v17

    :cond_a
    if-nez v0, :cond_b

    return-wide v14

    :cond_b
    throw v0

    :cond_c
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    if-eqz v7, :cond_d

    :try_start_6
    iget-object v2, v6, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v2}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V

    :cond_d
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    monitor-exit v6

    throw v0

    :cond_e
    const-string v0, "byteCount < 0: "

    invoke-static {v0, v2, v3}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
