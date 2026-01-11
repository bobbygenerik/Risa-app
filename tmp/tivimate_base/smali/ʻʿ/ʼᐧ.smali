.class public final Lʻʿ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʻʿ/ⁱˊ;


# instance fields
.field public ʻٴ:Z

.field public ʼʼ:I

.field public final ʼˎ:Ljava/util/HashMap;

.field public ʼᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ʽ:Lʻʿ/ˉʿ;

.field public ʽﹳ:Lʽⁱ/ﹳᐧ;

.field public ʾˋ:I

.field public ʾᵎ:Z

.field public ˆʾ:Ljava/lang/String;

.field public final ˈ:Landroid/media/metrics/PlaybackSession;

.field public ˉʿ:I

.field public ˉˆ:Landroidx/media3/common/PlaybackException;

.field public ˏי:Lʽⁱ/ﹳᐧ;

.field public final ˑﹳ:J

.field public יـ:Lʽⁱ/ﹳᐧ;

.field public ـˆ:I

.field public ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public ᴵˊ:Z

.field public final ᵎﹶ:Lʽⁱ/ˋᵔ;

.field public ᵔʾ:I

.field public final ᵔᵢ:Ljava/util/HashMap;

.field public ᵔﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ᵢˏ:I

.field public final ⁱˊ:Ljava/util/concurrent/Executor;

.field public final ﹳٴ:Landroid/content/Context;

.field public ﹳᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public ﾞʻ:I

.field public final ﾞᴵ:Lʽⁱ/ˊˋ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lʻʿ/ʼᐧ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lʻʿ/ʼᐧ;->ˈ:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lᐧˎ/ﹳٴ;->ﹳᐧ()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lʻʿ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    new-instance p1, Lʽⁱ/ˊˋ;

    invoke-direct {p1}, Lʽⁱ/ˊˋ;-><init>()V

    iput-object p1, p0, Lʻʿ/ʼᐧ;->ﾞᴵ:Lʽⁱ/ˊˋ;

    new-instance p1, Lʽⁱ/ˋᵔ;

    invoke-direct {p1}, Lʽⁱ/ˋᵔ;-><init>()V

    iput-object p1, p0, Lʻʿ/ʼᐧ;->ᵎﹶ:Lʽⁱ/ˋᵔ;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʻʿ/ʼᐧ;->ʼˎ:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lʻʿ/ʼᐧ;->ᵔᵢ:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lʻʿ/ʼᐧ;->ˑﹳ:J

    const/4 p1, 0x0

    iput p1, p0, Lʻʿ/ʼᐧ;->ˉʿ:I

    iput p1, p0, Lʻʿ/ʼᐧ;->ᵔʾ:I

    new-instance p1, Lʻʿ/ˉʿ;

    invoke-direct {p1}, Lʻʿ/ˉʿ;-><init>()V

    iput-object p1, p0, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    iput-object p0, p1, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    return-void
.end method

.method public static synthetic ʽ(Lʻʿ/ʼᐧ;Landroid/media/metrics/NetworkEvent;)V
    .locals 0

    iget-object p0, p0, Lʻʿ/ʼᐧ;->ˈ:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    return-void
.end method

.method public static synthetic ˈ(Lʻʿ/ʼᐧ;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    iget-object p0, p0, Lʻʿ/ʼᐧ;->ˈ:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public static synthetic ˑﹳ(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 0

    iget-object p0, p0, Lʻʿ/ʼᐧ;->ˈ:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method

.method public static ᵎﹶ(Landroid/content/Context;)Lʻʿ/ʼᐧ;
    .locals 2

    .prologue
    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lʻʿ/ʼᐧ;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lʻʿ/ʼᐧ;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method

.method public static synthetic ⁱˊ(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 0

    iget-object p0, p0, Lʻʿ/ʼᐧ;->ˈ:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method

.method public static synthetic ﹳٴ(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 0

    iget-object p0, p0, Lʻʿ/ʼᐧ;->ˈ:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ()Landroid/media/metrics/LogSessionId;
    .locals 1

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ˈ:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public final ˆʾ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)V
    .locals 9

    .prologue
    iget-object v0, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lʻʿ/ʼᐧ;->ᵎﹶ:Lʽⁱ/ˋᵔ;

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    iget p2, v2, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v2, p0, Lʻʿ/ʼᐧ;->ﾞᴵ:Lʽⁱ/ˊˋ;

    invoke-virtual {p1, p2, v2}, Lʽⁱ/ʼˈ;->ᵔʾ(ILʽⁱ/ˊˋ;)V

    iget-object p1, v2, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    const/4 p2, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v5, p1, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    iget-object p1, p1, Lʽⁱ/ʼʼ;->ⁱˊ:Ljava/lang/String;

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-nez p1, :cond_3

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ᵔי(Landroid/net/Uri;)I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "application/x-rtsp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v6

    goto :goto_1

    :sswitch_1
    const-string v5, "application/dash+xml"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, p2

    goto :goto_1

    :sswitch_2
    const-string v5, "application/vnd.ms-sstr+xml"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v5, "application/x-mpegURL"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    move v3, v7

    goto :goto_2

    :pswitch_0
    move v3, v6

    goto :goto_2

    :pswitch_1
    move v3, v4

    goto :goto_2

    :pswitch_2
    move v3, p2

    :goto_2
    :pswitch_3
    if-eqz v3, :cond_a

    if-eq v3, v4, :cond_9

    if-eq v3, p2, :cond_8

    move v3, v4

    goto :goto_3

    :cond_8
    move v3, v7

    goto :goto_3

    :cond_9
    const/4 v3, 0x5

    goto :goto_3

    :cond_a
    move v3, v6

    :goto_3
    invoke-virtual {v0, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-wide v5, v2, Lʽⁱ/ˊˋ;->ˉʿ:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, v7

    if-eqz p1, :cond_b

    iget-boolean p1, v2, Lʽⁱ/ˊˋ;->ٴﹶ:Z

    if-nez p1, :cond_b

    iget-boolean p1, v2, Lʽⁱ/ˊˋ;->ʼˎ:Z

    if-nez p1, :cond_b

    invoke-virtual {v2}, Lʽⁱ/ˊˋ;->ﹳٴ()Z

    move-result p1

    if-nez p1, :cond_b

    iget-wide v5, v2, Lʽⁱ/ˊˋ;->ˉʿ:J

    invoke-static {v5, v6}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_b
    invoke-virtual {v2}, Lʽⁱ/ˊˋ;->ﹳٴ()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    move p2, v4

    :goto_4
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-boolean v4, p0, Lʻʿ/ʼᐧ;->ᴵˊ:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3a5c4caa -> :sswitch_3
        -0x957ced0 -> :sswitch_2
        0x3d3887d -> :sswitch_1
        0x44d481f3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉʿ(Lʻʿ/ﹳٴ;Ljava/lang/String;)V
    .locals 0

    .prologue
    iget-object p1, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lʻʿ/ʼᐧ;->ˆʾ:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lʻʿ/ʼᐧ;->ᵔᵢ()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lʻʿ/ʼᐧ;->ᵔᵢ:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lʻʿ/ʼᐧ;->ʼˎ:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ٴﹶ(Lʽⁱ/ᵔٴ;Lﹶﾞ/ⁱי;)V
    .locals 22

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʽⁱ/ʼᐧ;

    iget-object v2, v2, Lʽⁱ/ʼᐧ;->ﹳٴ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2d

    :cond_0
    const/4 v7, 0x0

    move v2, v7

    :goto_0
    iget-object v3, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lʽⁱ/ʼᐧ;

    iget-object v3, v3, Lʽⁱ/ʼᐧ;->ﹳٴ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/16 v8, 0xb

    if-ge v2, v3, :cond_7

    iget-object v3, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lʽⁱ/ʼᐧ;

    invoke-virtual {v3, v2}, Lʽⁱ/ʼᐧ;->ﹳٴ(I)I

    move-result v3

    iget-object v4, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʻʿ/ﹳٴ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_5

    iget-object v5, v1, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    monitor-enter v5

    :try_start_0
    iget-object v3, v5, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v5, Lʻʿ/ˉʿ;->ˑﹳ:Lʽⁱ/ʼˈ;

    iget-object v6, v4, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    iput-object v6, v5, Lʻʿ/ˉʿ;->ˑﹳ:Lʽⁱ/ʼˈ;

    iget-object v6, v5, Lʻʿ/ˉʿ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʻʿ/ﾞʻ;

    iget-object v9, v5, Lʻʿ/ˉʿ;->ˑﹳ:Lʽⁱ/ʼˈ;

    invoke-virtual {v8, v3, v9}, Lʻʿ/ﾞʻ;->ⁱˊ(Lʽⁱ/ʼˈ;Lʽⁱ/ʼˈ;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v4}, Lʻʿ/ﾞʻ;->ﹳٴ(Lʻʿ/ﹳٴ;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    iget-boolean v9, v8, Lʻʿ/ﾞʻ;->ˑﹳ:Z

    if-eqz v9, :cond_1

    iget-object v9, v8, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iget-object v10, v5, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5, v8}, Lʻʿ/ˉʿ;->ﹳٴ(Lʻʿ/ﾞʻ;)V

    :cond_3
    iget-object v9, v5, Lʻʿ/ˉʿ;->ˈ:Lʻʿ/ʼᐧ;

    iget-object v8, v8, Lʻʿ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v9, v4, v8}, Lʻʿ/ʼᐧ;->ˉʿ(Lʻʿ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v4}, Lʻʿ/ˉʿ;->ˑﹳ(Lʻʿ/ﹳٴ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_4

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    if-ne v3, v8, :cond_6

    iget-object v3, v1, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    iget v5, v1, Lʻʿ/ʼᐧ;->ﾞʻ:I

    invoke-virtual {v3, v4, v5}, Lʻʿ/ˉʿ;->ᵎﹶ(Lʻʿ/ﹳٴ;I)V

    goto :goto_4

    :cond_6
    iget-object v3, v1, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    invoke-virtual {v3, v4}, Lʻʿ/ˉʿ;->ﾞᴵ(Lʻʿ/ﹳٴ;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v7}, Lﹶﾞ/ⁱי;->ᵎﹶ(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʻʿ/ﹳٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v5, :cond_8

    iget-object v5, v2, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    iget-object v2, v2, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v1, v5, v2}, Lʻʿ/ʼᐧ;->ˆʾ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)V

    :cond_8
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lﹶﾞ/ⁱי;->ᵎﹶ(I)Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_10

    iget-object v2, v1, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v2, :cond_10

    move-object/from16 v2, p1

    check-cast v2, Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˋـ()Lʽⁱ/ʿᵢ;

    move-result-object v2

    iget-object v2, v2, Lʽⁱ/ʿᵢ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v2, v7}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object v2

    :cond_9
    invoke-virtual {v2}, Lʼʻ/ٴᵢ;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Lʼʻ/ٴᵢ;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʽⁱ/ʿ;

    move v13, v7

    :goto_5
    iget v14, v6, Lʽⁱ/ʿ;->ﹳٴ:I

    if-ge v13, v14, :cond_9

    iget-object v14, v6, Lʽⁱ/ʿ;->ˑﹳ:[Z

    aget-boolean v14, v14, v13

    if-eqz v14, :cond_a

    iget-object v14, v6, Lʽⁱ/ʿ;->ⁱˊ:Lʽⁱ/ـˏ;

    iget-object v14, v14, Lʽⁱ/ـˏ;->ˈ:[Lʽⁱ/ﹳᐧ;

    aget-object v14, v14, v13

    iget-object v14, v14, Lʽⁱ/ﹳᐧ;->ﹳᐧ:Lʽⁱ/ᵔʾ;

    if-eqz v14, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_10

    iget-object v2, v1, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    move v6, v7

    :goto_7
    iget v13, v14, Lʽⁱ/ᵔʾ;->ˈٴ:I

    if-ge v6, v13, :cond_f

    iget-object v13, v14, Lʽⁱ/ᵔʾ;->ʾˋ:[Lʽⁱ/ˉʿ;

    aget-object v13, v13, v6

    iget-object v13, v13, Lʽⁱ/ˉʿ;->ᴵˊ:Ljava/util/UUID;

    sget-object v15, Lʽⁱ/ᵔᵢ;->ˈ:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v6, 0x3

    goto :goto_8

    :cond_c
    sget-object v15, Lʽⁱ/ᵔᵢ;->ˑﹳ:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    move v6, v9

    goto :goto_8

    :cond_d
    sget-object v15, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v6, 0x6

    goto :goto_8

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_f
    move v6, v12

    :goto_8
    invoke-virtual {v2, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_10
    const/16 v2, 0x3f3

    invoke-virtual {v0, v2}, Lﹶﾞ/ⁱי;->ᵎﹶ(I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, v1, Lʻʿ/ʼᐧ;->ʾˋ:I

    add-int/2addr v2, v12

    iput v2, v1, Lʻʿ/ʼᐧ;->ʾˋ:I

    :cond_11
    iget-object v2, v1, Lʻʿ/ʼᐧ;->ˉˆ:Landroidx/media3/common/PlaybackException;

    const/4 v14, 0x5

    const/4 v5, 0x4

    if-nez v2, :cond_12

    move/from16 v17, v5

    move v6, v9

    move v15, v12

    const/16 v12, 0xd

    const/16 v13, 0x9

    const/16 v16, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    goto/16 :goto_19

    :cond_12
    iget v13, v2, Landroidx/media3/common/PlaybackException;->ʾˋ:I

    iget-object v9, v1, Lʻʿ/ʼᐧ;->ﹳٴ:Landroid/content/Context;

    iget v15, v1, Lʻʿ/ʼᐧ;->ـˆ:I

    if-ne v15, v5, :cond_13

    move v15, v12

    goto :goto_9

    :cond_13
    move v15, v7

    :goto_9
    const/16 v5, 0x3e9

    if-ne v13, v5, :cond_14

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v9, 0x14

    invoke-direct {v5, v9, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    :goto_a
    const/16 v12, 0xd

    const/16 v13, 0x9

    :goto_b
    const/16 v16, 0x8

    const/16 v17, 0x4

    const/16 v18, 0x7

    const/16 v19, 0x6

    goto/16 :goto_18

    :cond_14
    instance-of v5, v2, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v5, :cond_16

    move-object v5, v2

    check-cast v5, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget v6, v5, Landroidx/media3/exoplayer/ExoPlaybackException;->ʽʽ:I

    if-ne v6, v12, :cond_15

    move v6, v12

    goto :goto_c

    :cond_15
    move v6, v7

    :goto_c
    iget v5, v5, Landroidx/media3/exoplayer/ExoPlaybackException;->ٴᵢ:I

    goto :goto_d

    :cond_16
    move v5, v7

    move v6, v5

    :goto_d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v11, v10, Ljava/io/IOException;

    const/16 v20, 0x19

    const/16 v21, 0x1a

    const/16 v8, 0x1b

    const/16 v12, 0x17

    if-eqz v11, :cond_2b

    instance-of v5, v10, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v5, :cond_17

    check-cast v10, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v5, v10, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ˈٴ:I

    new-instance v6, Lʻʿ/ˉˆ;

    invoke-direct {v6, v14, v5}, Lʻʿ/ˉˆ;-><init>(II)V

    :goto_e
    move-object v5, v6

    goto :goto_a

    :cond_17
    instance-of v5, v10, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    if-nez v5, :cond_18

    instance-of v5, v10, Landroidx/media3/common/ParserException;

    if-eqz v5, :cond_19

    :cond_18
    const/4 v6, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/16 v10, 0x8

    const/16 v13, 0x9

    goto/16 :goto_14

    :cond_19
    instance-of v5, v10, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-nez v5, :cond_1a

    instance-of v6, v10, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    if-eqz v6, :cond_1b

    :cond_1a
    const/16 v13, 0x9

    goto/16 :goto_11

    :cond_1b
    const/16 v5, 0x3ea

    if-ne v13, v5, :cond_1c

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0x15

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_a

    :cond_1c
    instance-of v5, v10, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    if-eqz v5, :cond_23

    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v5, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v6, :cond_1d

    check-cast v5, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v5}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ʾˋ(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ᵢˏ(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_f

    :pswitch_0
    move/from16 v8, v21

    goto :goto_f

    :pswitch_1
    move/from16 v8, v20

    goto :goto_f

    :pswitch_2
    const/16 v8, 0x1c

    goto :goto_f

    :pswitch_3
    const/16 v8, 0x18

    :goto_f
    new-instance v6, Lʻʿ/ˉˆ;

    invoke-direct {v6, v8, v5}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_e

    :cond_1d
    instance-of v6, v5, Landroid/media/MediaDrmResetException;

    if-eqz v6, :cond_1e

    new-instance v5, Lʻʿ/ˉˆ;

    invoke-direct {v5, v8, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_1e
    instance-of v6, v5, Landroid/media/NotProvisionedException;

    if-eqz v6, :cond_1f

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v9, 0x18

    invoke-direct {v5, v9, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_1f
    instance-of v6, v5, Landroid/media/DeniedByServerException;

    if-eqz v6, :cond_20

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0x1d

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_20
    instance-of v6, v5, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v6, :cond_21

    new-instance v5, Lʻʿ/ˉˆ;

    invoke-direct {v5, v12, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_21
    instance-of v5, v5, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v5, :cond_22

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v11, 0x1c

    invoke-direct {v5, v11, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_22
    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_23
    instance-of v5, v10, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    if-eqz v5, :cond_25

    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_25

    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v6, v5, Landroid/system/ErrnoException;

    if-eqz v6, :cond_24

    check-cast v5, Landroid/system/ErrnoException;

    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EACCES:I

    if-ne v5, v6, :cond_24

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0x20

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_24
    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0x1f

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto/16 :goto_a

    :cond_25
    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v13, 0x9

    invoke-direct {v5, v13, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    :goto_10
    const/16 v12, 0xd

    goto/16 :goto_b

    :goto_11
    invoke-static {v9}, Lᐧˎ/ᵔﹳ;->ﹳٴ(Landroid/content/Context;)Lᐧˎ/ᵔﹳ;

    move-result-object v6

    invoke-virtual {v6}, Lᐧˎ/ᵔﹳ;->ⁱˊ()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_26

    new-instance v5, Lʻʿ/ˉˆ;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_10

    :cond_26
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v8, v6, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_27

    new-instance v5, Lʻʿ/ˉˆ;

    const/4 v8, 0x6

    invoke-direct {v5, v8, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    move/from16 v19, v8

    const/16 v12, 0xd

    const/16 v16, 0x8

    const/16 v17, 0x4

    const/16 v18, 0x7

    goto/16 :goto_18

    :cond_27
    const/4 v8, 0x6

    instance-of v6, v6, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_28

    new-instance v5, Lʻʿ/ˉˆ;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    move/from16 v18, v6

    move/from16 v19, v8

    const/16 v12, 0xd

    const/16 v16, 0x8

    const/16 v17, 0x4

    goto/16 :goto_18

    :cond_28
    const/4 v6, 0x7

    if-eqz v5, :cond_29

    check-cast v10, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    iget v5, v10, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->ʽʽ:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_29

    new-instance v5, Lʻʿ/ˉˆ;

    const/4 v9, 0x4

    invoke-direct {v5, v9, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v17, v9

    const/16 v12, 0xd

    const/16 v16, 0x8

    goto/16 :goto_18

    :cond_29
    const/4 v9, 0x4

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v10, 0x8

    invoke-direct {v5, v10, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    :goto_12
    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v17, v9

    move/from16 v16, v10

    :goto_13
    const/16 v12, 0xd

    goto/16 :goto_18

    :goto_14
    new-instance v5, Lʻʿ/ˉˆ;

    if-eqz v15, :cond_2a

    const/16 v11, 0xa

    goto :goto_15

    :cond_2a
    const/16 v11, 0xb

    :goto_15
    invoke-direct {v5, v11, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_12

    :cond_2b
    const/16 v9, 0x18

    const/16 v11, 0x1c

    const/16 v13, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x4

    const/16 v18, 0x7

    const/16 v19, 0x6

    if-eqz v6, :cond_2d

    if-eqz v5, :cond_2c

    const/4 v15, 0x1

    if-ne v5, v15, :cond_2d

    :cond_2c
    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0x23

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_13

    :cond_2d
    if-eqz v6, :cond_2e

    const/4 v15, 0x3

    if-ne v5, v15, :cond_2e

    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0xf

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_13

    :cond_2e
    if-eqz v6, :cond_2f

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2f

    new-instance v5, Lʻʿ/ˉˆ;

    invoke-direct {v5, v12, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_13

    :cond_2f
    instance-of v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz v5, :cond_30

    check-cast v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->ˈٴ:Ljava/lang/String;

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ʾˋ(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lʻʿ/ˉˆ;

    const/16 v12, 0xd

    invoke-direct {v6, v12, v5}, Lʻʿ/ˉˆ;-><init>(II)V

    :goto_16
    move-object v5, v6

    goto/16 :goto_18

    :cond_30
    const/16 v12, 0xd

    instance-of v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    const/16 v6, 0xe

    if-eqz v5, :cond_31

    check-cast v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    iget v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->ʾˋ:I

    new-instance v8, Lʻʿ/ˉˆ;

    invoke-direct {v8, v6, v5}, Lʻʿ/ˉˆ;-><init>(II)V

    move-object v5, v8

    goto :goto_18

    :cond_31
    instance-of v5, v10, Ljava/lang/OutOfMemoryError;

    if-eqz v5, :cond_32

    new-instance v5, Lʻʿ/ˉˆ;

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_18

    :cond_32
    instance-of v5, v10, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    if-eqz v5, :cond_33

    check-cast v10, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v5, v10, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->ʾˋ:I

    new-instance v6, Lʻʿ/ˉˆ;

    const/16 v8, 0x11

    invoke-direct {v6, v8, v5}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_16

    :cond_33
    instance-of v5, v10, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    if-eqz v5, :cond_34

    check-cast v10, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget v5, v10, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->ʾˋ:I

    new-instance v6, Lʻʿ/ˉˆ;

    const/16 v8, 0x12

    invoke-direct {v6, v8, v5}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_16

    :cond_34
    instance-of v5, v10, Landroid/media/MediaCodec$CryptoException;

    if-eqz v5, :cond_35

    check-cast v10, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v10}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lᐧˎ/ʼʼ;->ᵢˏ(I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto :goto_17

    :pswitch_4
    move/from16 v8, v21

    goto :goto_17

    :pswitch_5
    move/from16 v8, v20

    goto :goto_17

    :pswitch_6
    move v8, v11

    goto :goto_17

    :pswitch_7
    move v8, v9

    :goto_17
    new-instance v6, Lʻʿ/ˉˆ;

    invoke-direct {v6, v8, v5}, Lʻʿ/ˉˆ;-><init>(II)V

    goto :goto_16

    :cond_35
    new-instance v5, Lʻʿ/ˉˆ;

    const/16 v6, 0x16

    invoke-direct {v5, v6, v7}, Lʻʿ/ˉˆ;-><init>(II)V

    :goto_18
    new-instance v6, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v6}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v8, v1, Lʻʿ/ʼᐧ;->ˑﹳ:J

    sub-long v8, v3, v8

    invoke-virtual {v6, v8, v9}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    iget v8, v5, Lʻʿ/ˉˆ;->ﹳٴ:I

    invoke-virtual {v6, v8}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    iget v5, v5, Lʻʿ/ˉˆ;->ⁱˊ:I

    invoke-virtual {v6, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v2

    iget-object v5, v1, Lʻʿ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    new-instance v6, Lʻʿ/ᵔʾ;

    invoke-direct {v6, v1, v2}, Lʻʿ/ᵔʾ;-><init>(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackErrorEvent;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lʻʿ/ʼᐧ;->ᴵˊ:Z

    const/4 v5, 0x0

    iput-object v5, v1, Lʻʿ/ʼᐧ;->ˉˆ:Landroidx/media3/common/PlaybackException;

    const/4 v6, 0x2

    :goto_19
    invoke-virtual {v0, v6}, Lﹶﾞ/ⁱי;->ᵎﹶ(I)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object/from16 v2, p1

    check-cast v2, Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˋـ()Lʽⁱ/ʿᵢ;

    move-result-object v2

    invoke-virtual {v2, v6}, Lʽⁱ/ʿᵢ;->ﹳٴ(I)Z

    move-result v5

    invoke-virtual {v2, v15}, Lʽⁱ/ʿᵢ;->ﹳٴ(I)Z

    move-result v8

    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Lʽⁱ/ʿᵢ;->ﹳٴ(I)Z

    move-result v9

    if-nez v5, :cond_37

    if-nez v8, :cond_37

    if-eqz v9, :cond_36

    goto :goto_1a

    :cond_36
    move/from16 v10, v17

    const/4 v8, 0x0

    goto :goto_21

    :cond_37
    :goto_1a
    if-nez v5, :cond_3a

    iget-object v2, v1, Lʻʿ/ʼᐧ;->יـ:Lʽⁱ/ﹳᐧ;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    move/from16 v10, v17

    goto :goto_1c

    :cond_38
    iget-object v2, v1, Lʻʿ/ʼᐧ;->יـ:Lʽⁱ/ﹳᐧ;

    if-nez v2, :cond_39

    const/4 v6, 0x1

    goto :goto_1b

    :cond_39
    move v6, v7

    :goto_1b
    iput-object v5, v1, Lʻʿ/ʼᐧ;->יـ:Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x1

    move/from16 v10, v17

    invoke-virtual/range {v1 .. v6}, Lʻʿ/ʼᐧ;->ᵔʾ(IJLʽⁱ/ﹳᐧ;I)V

    goto :goto_1c

    :cond_3a
    move/from16 v10, v17

    const/4 v5, 0x0

    :goto_1c
    if-nez v8, :cond_3d

    iget-object v2, v1, Lʻʿ/ʼᐧ;->ˏי:Lʽⁱ/ﹳᐧ;

    invoke-static {v2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_1e

    :cond_3b
    iget-object v2, v1, Lʻʿ/ʼᐧ;->ˏי:Lʽⁱ/ﹳᐧ;

    if-nez v2, :cond_3c

    const/4 v6, 0x1

    goto :goto_1d

    :cond_3c
    move v6, v7

    :goto_1d
    iput-object v5, v1, Lʻʿ/ʼᐧ;->ˏי:Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lʻʿ/ʼᐧ;->ᵔʾ(IJLʽⁱ/ﹳᐧ;I)V

    :cond_3d
    :goto_1e
    if-nez v9, :cond_40

    iget-object v2, v1, Lʻʿ/ʼᐧ;->ʽﹳ:Lʽⁱ/ﹳᐧ;

    invoke-static {v2, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_20

    :cond_3e
    iget-object v2, v1, Lʻʿ/ʼᐧ;->ʽﹳ:Lʽⁱ/ﹳᐧ;

    if-nez v2, :cond_3f

    const/4 v6, 0x1

    goto :goto_1f

    :cond_3f
    move v6, v7

    :goto_1f
    iput-object v5, v1, Lʻʿ/ʼᐧ;->ʽﹳ:Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v6}, Lʻʿ/ʼᐧ;->ᵔʾ(IJLʽⁱ/ﹳᐧ;I)V

    :cond_40
    :goto_20
    move-object v8, v5

    :goto_21
    iget-object v2, v1, Lʻʿ/ʼᐧ;->ʼᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v1, v2}, Lʻʿ/ʼᐧ;->ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v1, Lʻʿ/ʼᐧ;->ʼᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v5, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lʽⁱ/ﹳᐧ;

    iget v6, v5, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_43

    iget v2, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v6, v1, Lʻʿ/ʼᐧ;->יـ:Lʽⁱ/ﹳᐧ;

    invoke-static {v6, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    goto :goto_23

    :cond_41
    iget-object v6, v1, Lʻʿ/ʼᐧ;->יـ:Lʽⁱ/ﹳᐧ;

    if-nez v6, :cond_42

    if-nez v2, :cond_42

    const/4 v6, 0x1

    goto :goto_22

    :cond_42
    move v6, v2

    :goto_22
    iput-object v5, v1, Lʻʿ/ʼᐧ;->יـ:Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Lʻʿ/ʼᐧ;->ᵔʾ(IJLʽⁱ/ﹳᐧ;I)V

    :goto_23
    iput-object v8, v1, Lʻʿ/ʼᐧ;->ʼᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    :cond_43
    iget-object v2, v1, Lʻʿ/ʼᐧ;->ᵔﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v1, v2}, Lʻʿ/ʼᐧ;->ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v1, Lʻʿ/ʼᐧ;->ᵔﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v5, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lʽⁱ/ﹳᐧ;

    iget v2, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v6, v1, Lʻʿ/ʼᐧ;->ˏי:Lʽⁱ/ﹳᐧ;

    invoke-static {v6, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    goto :goto_25

    :cond_44
    iget-object v6, v1, Lʻʿ/ʼᐧ;->ˏי:Lʽⁱ/ﹳᐧ;

    if-nez v6, :cond_45

    if-nez v2, :cond_45

    const/4 v6, 0x1

    goto :goto_24

    :cond_45
    move v6, v2

    :goto_24
    iput-object v5, v1, Lʻʿ/ʼᐧ;->ˏי:Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lʻʿ/ʼᐧ;->ᵔʾ(IJLʽⁱ/ﹳᐧ;I)V

    :goto_25
    iput-object v8, v1, Lʻʿ/ʼᐧ;->ᵔﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    :cond_46
    iget-object v2, v1, Lʻʿ/ʼᐧ;->ﹳᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {v1, v2}, Lʻʿ/ʼᐧ;->ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, v1, Lʻʿ/ʼᐧ;->ﹳᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v5, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lʽⁱ/ﹳᐧ;

    iget v2, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v6, v1, Lʻʿ/ʼᐧ;->ʽﹳ:Lʽⁱ/ﹳᐧ;

    invoke-static {v6, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    goto :goto_27

    :cond_47
    iget-object v6, v1, Lʻʿ/ʼᐧ;->ʽﹳ:Lʽⁱ/ﹳᐧ;

    if-nez v6, :cond_48

    if-nez v2, :cond_48

    const/4 v6, 0x1

    goto :goto_26

    :cond_48
    move v6, v2

    :goto_26
    iput-object v5, v1, Lʻʿ/ʼᐧ;->ʽﹳ:Lʽⁱ/ﹳᐧ;

    const/4 v2, 0x2

    invoke-virtual/range {v1 .. v6}, Lʻʿ/ʼᐧ;->ᵔʾ(IJLʽⁱ/ﹳᐧ;I)V

    :goto_27
    iput-object v8, v1, Lʻʿ/ʼᐧ;->ﹳᐧ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    :cond_49
    iget-object v2, v1, Lʻʿ/ʼᐧ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v2}, Lᐧˎ/ᵔﹳ;->ﹳٴ(Landroid/content/Context;)Lᐧˎ/ᵔﹳ;

    move-result-object v2

    invoke-virtual {v2}, Lᐧˎ/ᵔﹳ;->ⁱˊ()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_8
    const/4 v15, 0x1

    goto :goto_28

    :pswitch_9
    move/from16 v15, v18

    goto :goto_28

    :pswitch_a
    move/from16 v15, v16

    goto :goto_28

    :pswitch_b
    const/4 v15, 0x3

    goto :goto_28

    :pswitch_c
    move/from16 v15, v19

    goto :goto_28

    :pswitch_d
    move v15, v14

    goto :goto_28

    :pswitch_e
    move v15, v10

    goto :goto_28

    :pswitch_f
    const/4 v15, 0x2

    goto :goto_28

    :pswitch_10
    move v15, v13

    goto :goto_28

    :pswitch_11
    move v15, v7

    :goto_28
    iget v2, v1, Lʻʿ/ʼᐧ;->ᵔʾ:I

    if-eq v15, v2, :cond_4a

    iput v15, v1, Lʻʿ/ʼᐧ;->ᵔʾ:I

    new-instance v2, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    invoke-virtual {v2, v15}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    iget-wide v5, v1, Lʻʿ/ʼᐧ;->ˑﹳ:J

    sub-long v5, v3, v5

    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v2

    iget-object v5, v1, Lʻʿ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    new-instance v6, Lʻʿ/ᵔʾ;

    invoke-direct {v6, v1, v2}, Lʻʿ/ᵔʾ;-><init>(Lʻʿ/ʼᐧ;Landroid/media/metrics/NetworkEvent;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4a
    move-object/from16 v2, p1

    check-cast v2, Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ﾞˏ()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4b

    iput-boolean v7, v1, Lʻʿ/ʼᐧ;->ʻٴ:Z

    :cond_4b
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v5, v2, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v5, v5, Lⁱי/ᴵˑ;->ﾞᴵ:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v5, :cond_4c

    iput-boolean v7, v1, Lʻʿ/ʼᐧ;->ʾᵎ:Z

    const/16 v5, 0xa

    goto :goto_29

    :cond_4c
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lﹶﾞ/ⁱי;->ᵎﹶ(I)Z

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v15, 0x1

    iput-boolean v15, v1, Lʻʿ/ʼᐧ;->ʾᵎ:Z

    :cond_4d
    :goto_29
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ﾞˏ()I

    move-result v6

    iget-boolean v7, v1, Lʻʿ/ʼᐧ;->ʻٴ:Z

    if-eqz v7, :cond_4e

    move v8, v14

    :goto_2a
    const/4 v15, 0x1

    goto/16 :goto_2c

    :cond_4e
    iget-boolean v7, v1, Lʻʿ/ʼᐧ;->ʾᵎ:Z

    if-eqz v7, :cond_4f

    move v8, v12

    goto :goto_2a

    :cond_4f
    if-ne v6, v10, :cond_50

    const/16 v8, 0xb

    goto :goto_2a

    :cond_50
    const/16 v8, 0xc

    const/4 v7, 0x2

    if-ne v6, v7, :cond_55

    iget v6, v1, Lʻʿ/ʼᐧ;->ˉʿ:I

    if-eqz v6, :cond_54

    if-eq v6, v7, :cond_54

    if-ne v6, v8, :cond_51

    goto :goto_2b

    :cond_51
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ٴʿ()Z

    move-result v6

    if-nez v6, :cond_52

    move/from16 v8, v18

    goto :goto_2a

    :cond_52
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v2, v2, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget v2, v2, Lⁱי/ᴵˑ;->ᵔʾ:I

    if-eqz v2, :cond_53

    move v8, v5

    goto :goto_2a

    :cond_53
    move/from16 v8, v19

    goto :goto_2a

    :cond_54
    :goto_2b
    move v8, v7

    goto :goto_2a

    :cond_55
    const/4 v15, 0x3

    if-ne v6, v15, :cond_58

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ٴʿ()Z

    move-result v5

    if-nez v5, :cond_56

    move v8, v10

    goto :goto_2a

    :cond_56
    invoke-virtual {v2}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v2, v2, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget v2, v2, Lⁱי/ᴵˑ;->ᵔʾ:I

    if-eqz v2, :cond_57

    move v8, v13

    goto :goto_2a

    :cond_57
    move v8, v15

    goto :goto_2a

    :cond_58
    const/4 v15, 0x1

    if-ne v6, v15, :cond_59

    iget v2, v1, Lʻʿ/ʼᐧ;->ˉʿ:I

    if-eqz v2, :cond_59

    goto :goto_2c

    :cond_59
    iget v8, v1, Lʻʿ/ʼᐧ;->ˉʿ:I

    :goto_2c
    iget v2, v1, Lʻʿ/ʼᐧ;->ˉʿ:I

    if-eq v2, v8, :cond_5a

    iput v8, v1, Lʻʿ/ʼᐧ;->ˉʿ:I

    iput-boolean v15, v1, Lʻʿ/ʼᐧ;->ᴵˊ:Z

    new-instance v2, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v5, v1, Lʻʿ/ʼᐧ;->ˉʿ:I

    invoke-virtual {v2, v5}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget-wide v5, v1, Lʻʿ/ʼᐧ;->ˑﹳ:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    iget-object v3, v1, Lʻʿ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    new-instance v4, Lʻʿ/ᵔʾ;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v5, v2}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5a
    const/16 v2, 0x404

    invoke-virtual {v0, v2}, Lﹶﾞ/ⁱי;->ᵎﹶ(I)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, v1, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    iget-object v0, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʻʿ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v0}, Lʻʿ/ˉʿ;->ⁱˊ(Lʻʿ/ﹳٴ;)V

    :cond_5b
    :goto_2d
    return-void

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final ᵔʾ(IJLʽⁱ/ﹳᐧ;I)V
    .locals 3

    .prologue
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Lʻʿ/ʼᐧ;->ˑﹳ:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_d

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_1

    const/4 v1, 0x3

    if-eq p5, v0, :cond_2

    if-eq p5, v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p4, Lʽⁱ/ﹳᐧ;->ˉʿ:Ljava/lang/String;

    if-eqz p5, :cond_3

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_3
    iget-object p5, p4, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    if-eqz p5, :cond_4

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_4
    iget-object p5, p4, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    if-eqz p5, :cond_5

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_5
    iget p5, p4, Lʽⁱ/ﹳᐧ;->ˆʾ:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_6

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_6
    iget p5, p4, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-eq p5, v1, :cond_7

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_7
    iget p5, p4, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq p5, v1, :cond_8

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_8
    iget p5, p4, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-eq p5, v1, :cond_9

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_9
    iget p5, p4, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-eq p5, v1, :cond_a

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_a
    iget-object p5, p4, Lʽⁱ/ﹳᐧ;->ˈ:Ljava/lang/String;

    if-eqz p5, :cond_c

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    aget-object v1, p5, p2

    array-length v2, p5

    if-lt v2, v0, :cond_b

    aget-object p5, p5, p3

    goto :goto_1

    :cond_b
    const/4 p5, 0x0

    :goto_1
    invoke-static {v1, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p5

    iget-object v0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p5, :cond_c

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_c
    iget p4, p4, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    const/high16 p5, -0x40800000    # -1.0f

    cmpl-float p5, p4, p5

    if-eqz p5, :cond_e

    invoke-virtual {p1, p4}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    :cond_d
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    :cond_e
    :goto_2
    iput-boolean p3, p0, Lʻʿ/ʼᐧ;->ᴵˊ:Z

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    new-instance p3, Lʻʿ/ᵔʾ;

    invoke-direct {p3, p0, p2, p1}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lʻʿ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lʻʿ/ʼᐧ;->ᴵˊ:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lʻʿ/ʼᐧ;->ʾˋ:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lʻʿ/ʼᐧ;->ʼʼ:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lʻʿ/ʼᐧ;->ᵢˏ:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ᵔᵢ:Ljava/util/HashMap;

    iget-object v2, p0, Lʻʿ/ʼᐧ;->ˆʾ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ʼˎ:Ljava/util/HashMap;

    iget-object v2, p0, Lʻʿ/ʼᐧ;->ˆʾ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v2, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    new-instance v2, Lʻʿ/ᵔʾ;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, v0}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ⁱˊ:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lʻʿ/ʼᐧ;->ˆʾ:Ljava/lang/String;

    iput v1, p0, Lʻʿ/ʼᐧ;->ʾˋ:I

    iput v1, p0, Lʻʿ/ʼᐧ;->ʼʼ:I

    iput v1, p0, Lʻʿ/ʼᐧ;->ᵢˏ:I

    iput-object v0, p0, Lʻʿ/ʼᐧ;->יـ:Lʽⁱ/ﹳᐧ;

    iput-object v0, p0, Lʻʿ/ʼᐧ;->ˏי:Lʽⁱ/ﹳᐧ;

    iput-object v0, p0, Lʻʿ/ʼᐧ;->ʽﹳ:Lʽⁱ/ﹳᐧ;

    iput-boolean v1, p0, Lʻʿ/ʼᐧ;->ᴵˊ:Z

    return-void
.end method

.method public final ﾞʻ(Lʻʿ/ﹳٴ;Ljava/lang/String;)V
    .locals 2

    .prologue
    iget-object v0, p1, Lʻʿ/ﹳٴ;->ˈ:Lﹳᵢ/ᵢˏ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lʻʿ/ʼᐧ;->ᵔᵢ()V

    iput-object p2, p0, Lʻʿ/ʼᐧ;->ˆʾ:Ljava/lang/String;

    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v1, "AndroidXMedia3"

    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v1, "1.8.0"

    invoke-virtual {p2, v1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lʻʿ/ʼᐧ;->ٴﹶ:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p1, Lʻʿ/ﹳٴ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {p0, p1, v0}, Lʻʿ/ʼᐧ;->ˆʾ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)V

    return-void
.end method

.method public final ﾞᴵ(Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Z
    .locals 2

    .prologue
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lʻʿ/ʼᐧ;->ʽ:Lʻʿ/ˉʿ;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lʻʿ/ˉʿ;->ﾞᴵ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
