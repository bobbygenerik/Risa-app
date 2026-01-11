.class public final Lﹳᵢ/ᵔٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ٴﹶ;


# instance fields
.field public final ʽʽ:Lˑי/ʽ;

.field public final ʾˋ:Landroid/net/Uri;

.field public final synthetic ˆﾞ:Lﹳᵢ/ˋᵔ;

.field public final ˈٴ:Lﹳᵢ/ˋᵔ;

.field public ˉٴ:Z

.field public final ˊʻ:Lʽⁱ/ˏי;

.field public ٴʼ:Lـˊ/ᵔᵢ;

.field public volatile ٴᵢ:Z

.field public final ᴵˊ:Lـˊ/ʼᐧ;

.field public final ᴵᵔ:Lᐧˎ/ˑﹳ;

.field public ᵎˊ:Lˊﾞ/ٴᵢ;

.field public ᵎⁱ:J

.field public ᵔי:Z


# direct methods
.method public constructor <init>(Lﹳᵢ/ˋᵔ;Landroid/net/Uri;Lـˊ/ﾞᴵ;Lˑי/ʽ;Lﹳᵢ/ˋᵔ;Lᐧˎ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    iput-object p2, p0, Lﹳᵢ/ᵔٴ;->ʾˋ:Landroid/net/Uri;

    new-instance p1, Lـˊ/ʼᐧ;

    invoke-direct {p1, p3}, Lـˊ/ʼᐧ;-><init>(Lـˊ/ﾞᴵ;)V

    iput-object p1, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    iput-object p4, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    iput-object p5, p0, Lﹳᵢ/ᵔٴ;->ˈٴ:Lﹳᵢ/ˋᵔ;

    iput-object p6, p0, Lﹳᵢ/ᵔٴ;->ᴵᵔ:Lᐧˎ/ˑﹳ;

    new-instance p1, Lʽⁱ/ˏי;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lﹳᵢ/ᵔٴ;->ˉٴ:Z

    sget-object p1, Lﹳᵢ/ﹳᐧ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lﹳᵢ/ᵔٴ;->ﹳٴ(J)Lـˊ/ᵔᵢ;

    move-result-object p1

    iput-object p1, p0, Lﹳᵢ/ᵔٴ;->ٴʼ:Lـˊ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 15

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_d

    iget-boolean v2, p0, Lﹳᵢ/ᵔٴ;->ٴᵢ:Z

    if-nez v2, :cond_d

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    iget-wide v10, v5, Lʽⁱ/ˏי;->ﹳٴ:J

    invoke-virtual {p0, v10, v11}, Lﹳᵢ/ᵔٴ;->ﹳٴ(J)Lـˊ/ᵔᵢ;

    move-result-object v5

    iput-object v5, p0, Lﹳᵢ/ᵔٴ;->ٴʼ:Lـˊ/ᵔᵢ;

    iget-object v6, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    invoke-virtual {v6, v5}, Lـˊ/ʼᐧ;->ʽʽ(Lـˊ/ᵔᵢ;)J

    move-result-wide v5

    iget-boolean v7, p0, Lﹳᵢ/ᵔٴ;->ٴᵢ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    invoke-virtual {v0}, Lˑי/ʽ;->ʼʼ()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    iget-object v1, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    invoke-virtual {v1}, Lˑי/ʽ;->ʼʼ()J

    move-result-wide v1

    iput-wide v1, v0, Lʽⁱ/ˏי;->ﹳٴ:J

    :cond_1
    :goto_1
    iget-object v0, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    invoke-static {v0}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    return-void

    :cond_2
    cmp-long v7, v5, v2

    if-eqz v7, :cond_3

    add-long/2addr v5, v10

    :try_start_1
    iget-object v7, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    iget-object v8, v7, Lﹳᵢ/ˋᵔ;->ˋᵔ:Landroid/os/Handler;

    new-instance v9, Lﹳᵢ/ᵔי;

    const/4 v12, 0x0

    invoke-direct {v9, v7, v12}, Lﹳᵢ/ᵔי;-><init>(Lﹳᵢ/ˋᵔ;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    move-wide v12, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :goto_2
    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    iget-object v6, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    iget-object v6, v6, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v6}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lﾞˊ/ⁱˊ;->ˈ(Ljava/util/Map;)Lﾞˊ/ⁱˊ;

    move-result-object v6

    iput-object v6, v5, Lﹳᵢ/ˋᵔ;->ʼˈ:Lﾞˊ/ⁱˊ;

    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    iget-object v6, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    iget-object v6, v6, Lﹳᵢ/ˋᵔ;->ʼˈ:Lﾞˊ/ⁱˊ;

    if-eqz v6, :cond_4

    iget v6, v6, Lﾞˊ/ⁱˊ;->ﾞᴵ:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    new-instance v7, Lﹳᵢ/ᵔﹳ;

    invoke-direct {v7, v5, v6, p0}, Lﹳᵢ/ᵔﹳ;-><init>(Lـˊ/ﾞᴵ;ILﹳᵢ/ᵔٴ;)V

    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    new-instance v6, Lﹳᵢ/ˑٴ;

    invoke-direct {v6, v0, v4}, Lﹳᵢ/ˑٴ;-><init>(IZ)V

    invoke-virtual {v5, v6}, Lﹳᵢ/ˋᵔ;->ˈٴ(Lﹳᵢ/ˑٴ;)Lˊﾞ/ٴᵢ;

    move-result-object v5

    iput-object v5, p0, Lﹳᵢ/ᵔٴ;->ᵎˊ:Lˊﾞ/ٴᵢ;

    sget-object v6, Lﹳᵢ/ˋᵔ;->ʽᵔ:Lʽⁱ/ﹳᐧ;

    invoke-interface {v5, v6}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    goto :goto_3

    :cond_4
    move-object v7, v5

    :goto_3
    iget-object v6, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    iget-object v8, p0, Lﹳᵢ/ᵔٴ;->ʾˋ:Landroid/net/Uri;

    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    iget-object v5, v5, Lـˊ/ʼᐧ;->ʾˋ:Lـˊ/ﾞᴵ;

    invoke-interface {v5}, Lـˊ/ﾞᴵ;->ٴﹶ()Ljava/util/Map;

    move-result-object v9

    iget-object v14, p0, Lﹳᵢ/ᵔٴ;->ˈٴ:Lﹳᵢ/ˋᵔ;

    invoke-virtual/range {v6 .. v14}, Lˑי/ʽ;->ᵢˏ(Lـˊ/ﾞᴵ;Landroid/net/Uri;Ljava/util/Map;JJLﹳᵢ/ˋᵔ;)V

    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    iget-object v5, v5, Lﹳᵢ/ˋᵔ;->ʼˈ:Lﾞˊ/ⁱˊ;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    iget-object v5, v5, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lˊﾞ/ˉˆ;

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v5}, Lˊﾞ/ˉˆ;->ˈ()Lˊﾞ/ˉˆ;

    move-result-object v5

    instance-of v6, v5, Lˎʼ/ˈ;

    if-eqz v6, :cond_6

    check-cast v5, Lˎʼ/ˈ;

    iput-boolean v4, v5, Lˎʼ/ˈ;->ﹳᐧ:Z

    :cond_6
    :goto_4
    iget-boolean v5, p0, Lﹳᵢ/ᵔٴ;->ˉٴ:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    iget-wide v6, p0, Lﹳᵢ/ᵔٴ;->ᵎⁱ:J

    iget-object v5, v5, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lˊﾞ/ˉˆ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v10, v11, v6, v7}, Lˊﾞ/ˉˆ;->ⁱˊ(JJ)V

    iput-boolean v0, p0, Lﹳᵢ/ᵔٴ;->ˉٴ:Z

    :cond_7
    :goto_5
    if-nez v1, :cond_9

    iget-boolean v5, p0, Lﹳᵢ/ᵔٴ;->ٴᵢ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_9

    :try_start_2
    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ᴵᵔ:Lᐧˎ/ˑﹳ;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    :try_start_3
    iget-boolean v6, v5, Lᐧˎ/ˑﹳ;->ⁱˊ:Z

    if-nez v6, :cond_8

    iget-object v6, v5, Lᐧˎ/ˑﹳ;->ﹳٴ:Lᐧˎ/ˏי;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_8
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    iget-object v6, p0, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    iget-object v7, v5, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lˊﾞ/ˉˆ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lˊﾞ/ﾞʻ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v7, v5, v6}, Lˊﾞ/ˉˆ;->ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result v1

    iget-object v5, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    invoke-virtual {v5}, Lˑי/ʽ;->ʼʼ()J

    move-result-wide v5

    iget-object v7, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    iget-wide v7, v7, Lﹳᵢ/ˋᵔ;->ᵎⁱ:J

    add-long/2addr v7, v10

    cmp-long v7, v5, v7

    if-lez v7, :cond_7

    iget-object v7, p0, Lﹳᵢ/ᵔٴ;->ᴵᵔ:Lᐧˎ/ˑﹳ;

    invoke-virtual {v7}, Lᐧˎ/ˑﹳ;->ˈ()V

    iget-object v7, p0, Lﹳᵢ/ᵔٴ;->ˆﾞ:Lﹳᵢ/ˋᵔ;

    iget-object v8, v7, Lﹳᵢ/ˋᵔ;->ˋᵔ:Landroid/os/Handler;

    iget-object v7, v7, Lﹳᵢ/ˋᵔ;->ˑٴ:Lﹳᵢ/ᵔי;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v10, v5

    goto :goto_5

    :goto_7
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_0
    :try_start_8
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_9
    if-ne v1, v4, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    iget-object v4, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    invoke-virtual {v4}, Lˑי/ʽ;->ʼʼ()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    iget-object v3, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    invoke-virtual {v3}, Lˑי/ʽ;->ʼʼ()J

    move-result-wide v3

    iput-wide v3, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    :cond_b
    :goto_8
    iget-object v2, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    invoke-static {v2}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    goto/16 :goto_0

    :goto_9
    if-eq v1, v4, :cond_c

    iget-object v1, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    invoke-virtual {v1}, Lˑי/ʽ;->ʼʼ()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_c

    iget-object v1, p0, Lﹳᵢ/ᵔٴ;->ˊʻ:Lʽⁱ/ˏי;

    iget-object v2, p0, Lﹳᵢ/ᵔٴ;->ʽʽ:Lˑי/ʽ;

    invoke-virtual {v2}, Lˑי/ʽ;->ʼʼ()J

    move-result-wide v2

    iput-wide v2, v1, Lʽⁱ/ˏי;->ﹳٴ:J

    :cond_c
    iget-object v1, p0, Lﹳᵢ/ᵔٴ;->ᴵˊ:Lـˊ/ʼᐧ;

    invoke-static {v1}, Lˈˆ/ﾞᴵ;->ﾞᴵ(Lـˊ/ﾞᴵ;)V

    throw v0

    :cond_d
    return-void
.end method

.method public final ʽﹳ()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹳᵢ/ᵔٴ;->ٴᵢ:Z

    return-void
.end method

.method public final ﹳٴ(J)Lـˊ/ᵔᵢ;
    .locals 12

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v5, Lﹳᵢ/ˋᵔ;->ـᵎ:Ljava/util/Map;

    const-string v0, "The uri must be set."

    iget-object v2, p0, Lﹳᵢ/ᵔٴ;->ʾˋ:Landroid/net/Uri;

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lـˊ/ᵔᵢ;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v6, p1

    invoke-direct/range {v1 .. v11}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    return-object v1
.end method
