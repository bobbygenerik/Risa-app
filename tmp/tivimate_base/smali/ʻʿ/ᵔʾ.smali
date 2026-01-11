.class public final synthetic Lʻʿ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lʻʿ/ᵔʾ;->ʾˋ:I

    iput-object p1, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lʻʿ/ʼᐧ;Landroid/media/metrics/NetworkEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʻʿ/ᵔʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʻʿ/ᵔʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lˈـ/ʼʼ;[BLjava/util/List;)V
    .locals 0

    const/16 p3, 0xd

    iput p3, p0, Lʻʿ/ᵔʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lˑʼ/ˑʼ;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    const/16 p1, 0x14

    iput p1, p0, Lʻʿ/ᵔʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method private final ʼˎ()V
    .locals 2

    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵי/ٴﹶ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᐧʼ/ʽ;

    invoke-virtual {v0, v1}, Lᴵי/ٴﹶ;->ˊʻ(Lᴵי/ˏי;)V

    return-void
.end method

.method private final ʽ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏ/ﾞʻ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʾﹳ/ⁱˊ;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    if-nez v2, :cond_0

    iget-object v2, v0, Lˏ/ﾞʻ;->ﹳٴ:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lˏ/ﾞʻ;->ⁱˊ:Ljava/util/Set;

    invoke-interface {v1}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final ˆʾ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻᴵ/ʼʼ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˆʽ/ˑﹳ;

    iget-object v2, v0, Lʻᴵ/ʼʼ;->ﾞᴵ:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lˆʽ/ˑﹳ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lʻᴵ/ʼʼ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v2, Lᐧˎ/ⁱˊ;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lᐧˎ/ⁱˊ;-><init>(Lʻᴵ/ʼʼ;Ljava/lang/Object;I)V

    iget-object v0, v0, Lʻᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ʻٴ;

    iget-object v1, v0, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final ˈ()V
    .locals 2

    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lˑʼ/ˑʼ;->ˆʾ(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private final ˑﹳ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ˉˆ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, v0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˑʼ/ʼᐧ;

    iget-object v4, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lˑʼ/ʽᵔ;

    iget-object v5, v4, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v5, v5, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v5, :cond_0

    iget v4, v4, Lˑʼ/ʽᵔ;->ﹳٴ:I

    invoke-static {v4, v5, v1}, Lˉˆ/ٴᴵ;->ⁱˊ(ILandroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final ٴﹶ()V
    .locals 5

    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ᵔﹳ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lʾʽ/ˈ;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Lʾʽ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final ᵎﹶ()V
    .locals 3

    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾⁱ/ˈ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lـʾ/ᵔᵢ;

    iget-object v0, v0, Lʾⁱ/ˈ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ᵔﹳ;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lـʾ/ᵔﹳ;->ـˆ(Lـʾ/ᵔᵢ;I)V

    return-void
.end method

.method private final ᵔᵢ()V
    .locals 3

    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/app/job/JobParameters;

    sget v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->ʾˋ:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method private final ⁱˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏ/ˉʿ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʾﹳ/ⁱˊ;

    iget-object v2, v0, Lˏ/ˉʿ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    sget-object v3, Lˏ/ˉʿ;->ˈ:Lˏ/ˑﹳ;

    if-ne v2, v3, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lˏ/ˉʿ;->ﹳٴ:Lʾﹳ/ﹳٴ;

    const/4 v3, 0x0

    iput-object v3, v0, Lˏ/ˉʿ;->ﹳٴ:Lʾﹳ/ﹳٴ;

    iput-object v1, v0, Lˏ/ˉʿ;->ⁱˊ:Lʾﹳ/ⁱˊ;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, v1}, Lʾﹳ/ﹳٴ;->ˆʾ(Lʾﹳ/ⁱˊ;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "provide() can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final ﹳٴ()V
    .locals 19

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ⁱי;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʼʻ/ᵎⁱ;

    iget-object v3, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lˈـ/ᵔʾ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v5, v3, Lˈـ/ᵔʾ;->ˊʻ:Landroid/util/SparseArray;

    sget-object v6, Lˈـ/ᴵˊ;->ⁱˊ:Ljava/util/regex/Pattern;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const/16 v13, 0xc8

    const/16 v14, 0x14

    const-string v15, " "

    const-string v9, "CSeq"

    const-string v10, ""

    const/4 v11, 0x1

    if-eqz v8, :cond_1a

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    invoke-static {v8}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v10}, Lʼʻ/ᵎⁱ;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    invoke-static {v10}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-interface {v2, v11, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    move/from16 v16, v11

    new-instance v11, Landroidx/leanback/widget/ˉˆ;

    invoke-direct {v11, v14}, Landroidx/leanback/widget/ˉˆ;-><init>(I)V

    invoke-virtual {v11, v10}, Landroidx/leanback/widget/ˉˆ;->ᵔᵢ(Ljava/util/List;)V

    new-instance v10, Lˈـ/ˉˆ;

    invoke-direct {v10, v11}, Lˈـ/ˉˆ;-><init>(Landroidx/leanback/widget/ˉˆ;)V

    sget-object v11, Lˈـ/ᴵˊ;->ᵔᵢ:Ljava/lang/String;

    new-instance v14, Lʻᴵ/ﹳٴ;

    invoke-direct {v14, v11}, Lʻᴵ/ﹳٴ;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v2, v8, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v14, v2}, Lʻᴵ/ﹳٴ;->ᵔᵢ(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v9}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_11

    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, v3, Lˈـ/ᵔʾ;->ʾˋ:Lﹳי/ʽ;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˈـ/ʽʽ;

    if-nez v11, :cond_2

    goto/16 :goto_11

    :cond_2
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->remove(I)V

    iget v5, v11, Lˈـ/ʽʽ;->ⁱˊ:I

    const-string v8, "application/sdp"

    const-string v14, "Accept"

    const/4 v12, -0x1

    const-string v7, "Transport"

    if-eq v6, v13, :cond_e

    const/16 v13, 0x191

    if-eq v6, v13, :cond_9

    const/16 v0, 0x1cd

    if-eq v6, v0, :cond_7

    const/16 v0, 0x12d

    if-eq v6, v0, :cond_3

    const/16 v0, 0x12e

    if-eq v6, v0, :cond_3

    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lˈـ/ᴵˊ;->ᵎﹶ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lˈـ/ᵔʾ;->ʽ(Lˈـ/ᵔʾ;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_3
    iget v0, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    if-eq v0, v12, :cond_4

    const/4 v0, 0x0

    iput v0, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    :cond_4
    const-string v0, "Location"

    invoke-virtual {v10, v0}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Redirection without new location."

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lﹳי/ʽ;->ᵔﹳ(Ljava/lang/String;Ljava/io/IOException;)V

    goto/16 :goto_11

    :cond_5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    invoke-static {v0}, Lˈـ/ᴵˊ;->ˈ(Landroid/net/Uri;)Lˈـ/ʾˋ;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object v0, v3, Lˈـ/ᵔʾ;->ٴʼ:Lˈـ/ʾˋ;

    :cond_6
    iget-object v0, v3, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    iget-object v2, v3, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v14, v6, v18

    aput-object v8, v6, v16

    move/from16 v8, v16

    const/4 v7, 0x0

    invoke-static {v8, v6, v7}, Lʼʻ/ᴵʼ;->ˑﹳ(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Lʼʻ/ᴵʼ;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    goto/16 :goto_11

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lˈـ/ᴵˊ;->ᵎﹶ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v11, Lˈـ/ʽʽ;->ʽ:Lˈـ/ˉˆ;

    invoke-virtual {v2, v7}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa

    if-ne v5, v4, :cond_8

    const-string v4, "TCP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspUdpUnsupportedTransportException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, v2}, Lˈـ/ᵔʾ;->ʽ(Lˈـ/ᵔʾ;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    goto/16 :goto_11

    :cond_9
    iget-object v0, v3, Lˈـ/ᵔʾ;->ٴʼ:Lˈـ/ʾˋ;

    if-eqz v0, :cond_d

    iget-boolean v0, v3, Lˈـ/ᵔʾ;->ˋᵔ:Z

    if-nez v0, :cond_d

    const-string v0, "WWW-Authenticate"

    iget-object v2, v10, Lˈـ/ˉˆ;->ﹳٴ:Lʼʻ/ٴʼ;

    invoke-static {v0}, Lˈـ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lʼʻ/ٴʼ;->ˈ(Ljava/lang/String;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v7, v2, :cond_b

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lˈـ/ᴵˊ;->ˑﹳ(Ljava/lang/String;)Lʻʽ/ʼˎ;

    move-result-object v2

    iput-object v2, v3, Lˈـ/ᵔʾ;->ᵔٴ:Lʻʽ/ʼˎ;

    iget v2, v2, Lʻʽ/ʼˎ;->ⁱˊ:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾˋ()V

    const/4 v8, 0x1

    iput-boolean v8, v3, Lˈـ/ᵔʾ;->ˋᵔ:Z

    goto/16 :goto_11

    :cond_c
    const-string v0, "Missing WWW-Authenticate header in a 401 response."

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lˈـ/ᴵˊ;->ᵎﹶ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Lˈـ/ᵔʾ;->ʽ(Lˈـ/ᵔʾ;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    goto/16 :goto_11

    :cond_e
    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "Session"

    invoke-virtual {v10, v0}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v7}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_10

    if-eqz v2, :cond_10

    invoke-static {v0}, Lˈـ/ᴵˊ;->ʽ(Ljava/lang/String;)Lʿʽ/ʽ;

    move-result-object v0

    iget v2, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    if-eq v2, v12, :cond_f

    const/4 v7, 0x1

    goto :goto_4

    :cond_f
    const/4 v7, 0x0

    :goto_4
    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 v8, 0x1

    iput v8, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    iget-object v2, v0, Lʿʽ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    iget-wide v4, v0, Lʿʽ/ʽ;->ᴵˊ:J

    iput-wide v4, v3, Lˈـ/ᵔʾ;->ᵔי:J

    invoke-virtual {v3}, Lˈـ/ᵔʾ;->ᵎﹶ()V

    goto/16 :goto_11

    :cond_10
    const-string v0, "Missing mandatory session or transport header"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1
    const-string v0, "Range"

    invoke-virtual {v10, v0}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    sget-object v0, Lˈـ/ˈٴ;->ʽ:Lˈـ/ˈٴ;

    goto :goto_5

    :cond_11
    invoke-static {v0}, Lˈـ/ˈٴ;->ﹳٴ(Ljava/lang/String;)Lˈـ/ˈٴ;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    :try_start_1
    const-string v2, "RTP-Info"

    invoke-virtual {v10, v2}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    sget-object v2, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    goto :goto_6

    :cond_12
    iget-object v4, v3, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    invoke-static {v4, v2}, Lˈـ/ᴵᵔ;->ﹳٴ(Landroid/net/Uri;Ljava/lang/String;)Lʼʻ/ʿᵢ;

    move-result-object v2
    :try_end_1
    .catch Landroidx/media3/common/ParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_2
    :try_start_2
    sget-object v2, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    :goto_6
    invoke-static {v2}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v2

    iget v4, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    const/4 v8, 0x1

    const/4 v5, 0x2

    if-eq v4, v8, :cond_14

    if-ne v4, v5, :cond_13

    goto :goto_7

    :cond_13
    const/4 v7, 0x0

    goto :goto_8

    :cond_14
    :goto_7
    const/4 v7, 0x1

    :goto_8
    invoke-static {v7}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput v5, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    iget-object v4, v3, Lˈـ/ᵔʾ;->ˆﾞ:Lˈـ/ˉʿ;

    if-nez v4, :cond_16

    new-instance v4, Lˈـ/ˉʿ;

    iget-wide v5, v3, Lˈـ/ᵔʾ;->ᵔי:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-direct {v4, v3, v5, v6}, Lˈـ/ˉʿ;-><init>(Lˈـ/ᵔʾ;J)V

    iput-object v4, v3, Lˈـ/ᵔʾ;->ˆﾞ:Lˈـ/ˉʿ;

    iget-boolean v7, v4, Lˈـ/ˉʿ;->ʽʽ:Z

    if-eqz v7, :cond_15

    goto :goto_9

    :cond_15
    const/4 v8, 0x1

    iput-boolean v8, v4, Lˈـ/ˉʿ;->ʽʽ:Z

    iget-object v7, v4, Lˈـ/ˉʿ;->ʾˋ:Landroid/os/Handler;

    invoke-virtual {v7, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    :goto_9
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v3, Lˈـ/ᵔʾ;->ʼˈ:J

    iget-object v4, v3, Lˈـ/ᵔʾ;->ᴵˊ:Lﹳי/ʽ;

    iget-wide v5, v0, Lˈـ/ˈٴ;->ﹳٴ:J

    invoke-static {v5, v6}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2}, Lﹳי/ʽ;->ٴﹶ(JLʼʻ/ᵎⁱ;)V

    goto/16 :goto_11

    :pswitch_2
    invoke-virtual {v0}, Lﹶﾞ/ⁱי;->ʾˋ()V

    goto/16 :goto_11

    :pswitch_3
    const-string v0, "Public"

    invoke-virtual {v10, v0}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lˈـ/ᴵˊ;->ⁱˊ(Ljava/lang/String;)Lʼʻ/ʿᵢ;

    move-result-object v0

    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    iget-object v2, v3, Lˈـ/ᵔʾ;->ˆﾞ:Lˈـ/ˉʿ;

    if-eqz v2, :cond_17

    goto/16 :goto_11

    :cond_17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lʼʻ/ᵎⁱ;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    const-string v0, "DESCRIBE not supported."

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lﹳי/ʽ;->ᵔﹳ(Ljava/lang/String;Ljava/io/IOException;)V

    goto/16 :goto_11

    :cond_19
    :goto_a
    iget-object v0, v3, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    iget-object v2, v3, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v14, v6, v18

    const/4 v7, 0x1

    aput-object v8, v6, v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lʼʻ/ᴵʼ;->ˑﹳ(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Lʼʻ/ᴵʼ;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    goto/16 :goto_11

    :pswitch_4
    new-instance v4, Lﹳʽ/ˊʻ;

    invoke-static {v2}, Lˈـ/ˉٴ;->ﹳٴ(Ljava/lang/String;)Lˈـ/ٴᵢ;

    move-result-object v2

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-direct {v4, v10, v2, v5, v6}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v4}, Lﹶﾞ/ⁱי;->ʼʼ(Lﹳʽ/ˊʻ;)V
    :try_end_2
    .catch Landroidx/media3/common/ParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_11

    :goto_b
    new-instance v2, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v2}, Lˈـ/ᵔʾ;->ʽ(Lˈـ/ᵔʾ;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    goto/16 :goto_11

    :cond_1a
    sget-object v0, Lˈـ/ᴵˊ;->ﹳٴ:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lˈـ/ᴵˊ;->ﹳٴ(Ljava/lang/String;)I

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    invoke-virtual {v2, v10}, Lʼʻ/ᵎⁱ;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1b

    move/from16 v16, v8

    goto :goto_c

    :cond_1b
    const/16 v16, 0x0

    :goto_c
    invoke-static/range {v16 .. v16}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-interface {v2, v8, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    new-instance v5, Landroidx/leanback/widget/ˉˆ;

    invoke-direct {v5, v14}, Landroidx/leanback/widget/ˉˆ;-><init>(I)V

    invoke-virtual {v5, v3}, Landroidx/leanback/widget/ˉˆ;->ᵔᵢ(Ljava/util/List;)V

    new-instance v3, Lˈـ/ˉˆ;

    invoke-direct {v3, v5}, Lˈـ/ˉˆ;-><init>(Landroidx/leanback/widget/ˉˆ;)V

    sget-object v5, Lˈـ/ᴵˊ;->ᵔᵢ:Ljava/lang/String;

    new-instance v6, Lʻᴵ/ﹳٴ;

    invoke-direct {v6, v5}, Lʻᴵ/ﹳٴ;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Lʻᴵ/ﹳٴ;->ᵔᵢ(Ljava/util/List;)Ljava/lang/String;

    invoke-virtual {v3, v9}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v3, Landroidx/leanback/widget/ˉˆ;

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Lˈـ/ᵔʾ;

    iget-object v6, v5, Lˈـ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    iget-object v7, v5, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    invoke-direct {v3, v0, v6, v7}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lˈـ/ˉˆ;

    invoke-direct {v6, v3}, Lˈـ/ˉˆ;-><init>(Landroidx/leanback/widget/ˉˆ;)V

    const/16 v3, 0x195

    invoke-direct {v2, v3, v6, v10}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(ILˈـ/ˉˆ;Ljava/lang/String;)V

    iget-object v6, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lˈـ/ˉˆ;

    iget v7, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    invoke-virtual {v6, v9}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1c

    const/4 v8, 0x1

    goto :goto_d

    :cond_1c
    const/4 v8, 0x0

    :goto_d
    invoke-static {v8}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    new-instance v8, Lʼʻ/ˊʻ;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lʼʻ/ʽʽ;-><init>(I)V

    if-eq v7, v13, :cond_26

    const/16 v9, 0x1cd

    if-eq v7, v9, :cond_25

    const/16 v9, 0x1f4

    if-eq v7, v9, :cond_24

    const/16 v9, 0x1f9

    if-eq v7, v9, :cond_23

    const/16 v9, 0x12d

    if-eq v7, v9, :cond_22

    const/16 v9, 0x12e

    if-eq v7, v9, :cond_21

    const/16 v9, 0x190

    if-eq v7, v9, :cond_20

    const/16 v13, 0x191

    if-eq v7, v13, :cond_1f

    const/16 v9, 0x194

    if-eq v7, v9, :cond_1e

    if-eq v7, v3, :cond_1d

    packed-switch v7, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_5
    const-string v3, "Invalid Range"

    goto :goto_e

    :pswitch_6
    const-string v3, "Header Field Not Valid"

    goto :goto_e

    :pswitch_7
    const-string v3, "Method Not Valid In This State"

    goto :goto_e

    :pswitch_8
    const-string v3, "Session Not Found"

    goto :goto_e

    :cond_1d
    const-string v3, "Method Not Allowed"

    goto :goto_e

    :cond_1e
    const-string v3, "Not Found"

    goto :goto_e

    :cond_1f
    const-string v3, "Unauthorized"

    goto :goto_e

    :cond_20
    const-string v3, "Bad Request"

    goto :goto_e

    :cond_21
    const-string v3, "Move Temporarily"

    goto :goto_e

    :cond_22
    const-string v3, "Move Permanently"

    goto :goto_e

    :cond_23
    const-string v3, "RTSP Version Not Supported"

    goto :goto_e

    :cond_24
    const-string v3, "Internal Server Error"

    goto :goto_e

    :cond_25
    const-string v3, "Unsupported Transport"

    goto :goto_e

    :cond_26
    const-string v3, "OK"

    :goto_e
    sget-object v9, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "RTSP/1.0 "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    iget-object v3, v6, Lˈـ/ˉˆ;->ﹳٴ:Lʼʻ/ٴʼ;

    iget-object v6, v3, Lʼʻ/ٴʼ;->ˈٴ:Lʼʻ/ᴵʼ;

    invoke-virtual {v6}, Lʼʻ/ᵔי;->ʽ()Lʼʻ/ᵔٴ;

    move-result-object v6

    invoke-virtual {v6}, Lʼʻ/ˈٴ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lʼʻ/ٴʼ;->ˈ(Ljava/lang/String;)Lʼʻ/ᵎⁱ;

    move-result-object v9

    const/4 v11, 0x0

    :goto_10
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    if-ge v11, v12, :cond_27

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v7, v14, v18

    const/16 v16, 0x1

    aput-object v12, v14, v16

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s: %s"

    invoke-static {v12, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_27
    const/16 v18, 0x0

    goto :goto_f

    :cond_28
    invoke-virtual {v8, v10}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v2

    iget-object v3, v5, Lˈـ/ᵔʾ;->ᵎⁱ:Lˈـ/ᵢˏ;

    invoke-virtual {v3, v2}, Lˈـ/ᵢˏ;->ᵎﹶ(Lʼʻ/ʿᵢ;)V

    iget v2, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v4, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    :goto_11
    :pswitch_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final ﾞʻ()V
    .locals 11

    .prologue
    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʽ/ˈ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v0, v0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ᵔﹳ;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x2

    const/16 v8, 0x9

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eqz v6, :cond_5

    if-eq v6, v5, :cond_4

    if-eq v6, v10, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    goto :goto_1

    :cond_3
    :pswitch_0
    move v4, v3

    goto :goto_1

    :cond_4
    :pswitch_1
    move v4, v7

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_2
    move v4, v9

    goto :goto_1

    :pswitch_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_7

    move v4, v8

    goto :goto_1

    :pswitch_4
    move v4, v10

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x3

    goto :goto_1

    :cond_6
    :goto_0
    move v4, v5

    :catch_0
    :cond_7
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v2, v5, :cond_8

    if-ne v4, v3, :cond_8

    invoke-static {v1, v0}, Lᐧˎ/ˉˆ;->ﹳٴ(Landroid/content/Context;Lᐧˎ/ᵔﹳ;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v4}, Lᐧˎ/ᵔﹳ;->ʽ(I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final ﾞᴵ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ʽ;

    iget-object v1, p0, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˑᵎ/ﾞʻ;

    iget-object v2, v0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lـʾ/ʽ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lـʾ/ﹳٴ;

    invoke-interface {v6, v1, v4}, Lـʾ/ﹳٴ;->ˈ(Lˑᵎ/ﾞʻ;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 51

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lʻʿ/ᵔʾ;->ʾˋ:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔᵔ/ˈ;

    iget-object v4, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    sget-object v5, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ﾞʻ:Lˋⁱ/ﾞᴵ;

    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v6

    sget-object v7, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    sget-object v7, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ﾞᴵ:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v8, :cond_1

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʼʼ()V

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v7

    goto :goto_3

    :goto_2
    monitor-exit v7

    throw v0

    :cond_2
    :goto_3
    sget-object v7, Lˉᵎ/ⁱˊ;->ˈ:[B

    const/16 v8, 0x12

    const/16 v10, 0xac

    const/16 v11, 0xa6

    if-nez v7, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    if-eqz v7, :cond_5

    aget-byte v6, v7, v11

    invoke-static {}, Lᵢـ/ʼˎ;->ⁱˊ()[B

    move-result-object v14

    aget-byte v14, v14, v11

    sub-int/2addr v6, v14

    int-to-byte v6, v6

    if-ne v6, v8, :cond_5

    sget-object v6, Lar/tvplayer/core/domain/F;->ﹳٴ:Lar/tvplayer/core/domain/F;

    invoke-virtual {v6, v11}, Lar/tvplayer/core/domain/F;->hIj8k(I)I

    move-result v6

    aget-byte v14, v7, v10

    add-int/lit8 v14, v14, 0x51

    if-ne v6, v14, :cond_5

    :cond_4
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ـˆ()Z

    const/16 v16, 0xbac

    const-wide v17, 0x3fb999999999999aL    # 0.1

    goto :goto_6

    :cond_5
    sput-boolean v3, Lʿˋ/ˋᵔ;->ˈ:Z

    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_4
    int-to-double v14, v6

    const/16 v16, 0xbac

    sget v9, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    const-wide v17, 0x3fb999999999999aL    # 0.1

    int-to-double v12, v9

    add-double v12, v12, v17

    cmpg-double v9, v14, v12

    if-nez v9, :cond_49

    if-eqz v7, :cond_6

    mul-int v9, v16, v6

    invoke-static {v9, v7}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    goto :goto_5

    :cond_6
    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_5
    sput v6, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sget-boolean v6, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    :goto_6
    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v6

    sget-object v7, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v7, :cond_7

    if-nez v6, :cond_7

    move v6, v2

    goto :goto_7

    :cond_7
    move v6, v3

    :goto_7
    sget-object v7, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v7, :cond_9

    if-eqz v6, :cond_9

    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    sget-object v9, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v9, :cond_8

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵎﹶ()I

    move-result v13

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9}, Lﹶˈ/ʼˎ;->ˑʼ([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/Signature;

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽﹳ([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    monitor-exit v7

    goto :goto_a

    :goto_9
    monitor-exit v7

    throw v0

    :cond_9
    :goto_a
    sget-object v9, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    const/16 v12, 0x35

    const/16 v14, 0x60

    if-nez v9, :cond_a

    if-eqz v6, :cond_b

    :cond_a
    if-eqz v9, :cond_d

    aget-byte v6, v9, v14

    if-ne v6, v12, :cond_d

    :cond_b
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_c

    sput-boolean v3, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    :cond_c
    move/from16 v20, v12

    move/from16 v19, v14

    const/16 v15, 0x13e0

    goto :goto_d

    :cond_d
    sput-boolean v3, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    move/from16 v19, v14

    const/16 v15, 0x13e0

    :goto_b
    int-to-double v13, v6

    sget v7, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    move/from16 v20, v12

    move-wide/from16 v21, v13

    int-to-double v12, v7

    add-double v12, v12, v17

    cmpg-double v7, v21, v12

    if-nez v7, :cond_48

    if-eqz v9, :cond_e

    mul-int v13, v15, v6

    invoke-static {v13, v9}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    goto :goto_c

    :cond_e
    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    :goto_c
    sput v6, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    sget-boolean v6, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    :goto_d
    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v6

    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v7, :cond_f

    if-nez v6, :cond_f

    move v6, v2

    goto :goto_e

    :cond_f
    move v6, v3

    :goto_e
    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v7, :cond_16

    if-eqz v6, :cond_16

    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔʾ:Ljava/lang/Object;

    monitor-enter v7

    :try_start_2
    sget-object v9, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v9, :cond_15

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v13

    array-length v14, v13

    move/from16 v21, v10

    move v10, v3

    :goto_f
    if-ge v10, v14, :cond_11

    aget-object v22, v13, v10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    move/from16 v24, v15

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ٴﹶ()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_10

    :cond_10
    add-int/lit8 v10, v10, 0x1

    move/from16 v15, v24

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_15

    :cond_11
    move/from16 v24, v15

    const/16 v22, 0x0

    :goto_10
    sput-object v22, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי:Ljava/lang/String;

    sget-object v10, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    sput-object v10, Lar/tvplayer/core/domain/ᵎⁱ;->ʼᐧ:Ljava/lang/reflect/Method;

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽ()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lar/tvplayer/core/domain/ᵎⁱ;->ʻٴ:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    new-instance v12, Ljava/util/ArrayList;

    array-length v13, v10

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    array-length v13, v10

    move v14, v3

    :goto_11
    if-ge v14, v13, :cond_12

    aget-object v15, v10, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    :cond_12
    invoke-static {v12}, Lﹶˈ/ˆʾ;->יﹳ(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    array-length v12, v9

    move v13, v3

    :goto_12
    if-ge v13, v12, :cond_14

    aget-object v14, v9, v13

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v14, v15}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˆʾ()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    :cond_14
    :goto_13
    sput-object v10, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_14

    :cond_15
    move/from16 v21, v10

    move/from16 v24, v15

    :goto_14
    monitor-exit v7

    goto :goto_16

    :goto_15
    monitor-exit v7

    throw v0

    :cond_16
    move/from16 v21, v10

    move/from16 v24, v15

    :goto_16
    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    const/4 v10, 0x6

    const-wide v14, 0x3fc999999999999aL    # 0.2

    if-nez v7, :cond_17

    if-eqz v6, :cond_1a

    :cond_17
    sget-object v6, Lar/tvplayer/core/domain/ᵎⁱ;->ʻٴ:Ljava/lang/String;

    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי:Ljava/lang/String;

    invoke-static {v6, v7, v3, v3, v10}, Lﹶˑ/ˆʾ;->ٴﹳ(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v6

    sget v7, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    sget v9, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_1d

    sget-object v6, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_19

    :cond_18
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˆʾ()Ljava/lang/String;

    move-result-object v7

    :cond_19
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->יـ()I

    move-result v7

    if-ne v6, v7, :cond_1d

    :cond_1a
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lﹳˎ/ˆʾ;->ᵎﹶ(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1c

    sput-boolean v3, Lʿˋ/ˋᵔ;->ﾞᴵ:Z

    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    int-to-double v6, v6

    sget v9, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    const-wide v25, 0x3fd999999999999aL    # 0.4

    int-to-double v12, v9

    add-double/2addr v12, v14

    cmpg-double v6, v6, v12

    if-nez v6, :cond_1b

    move v6, v2

    goto :goto_17

    :cond_1b
    move v6, v3

    :goto_17
    sput-boolean v6, Lcom/bumptech/glide/ʽ;->ᵔᵢ:Z

    goto :goto_19

    :cond_1c
    const-wide v25, 0x3fd999999999999aL    # 0.4

    goto :goto_19

    :cond_1d
    const-wide v25, 0x3fd999999999999aL    # 0.4

    sput-boolean v3, Lʿˋ/ˋᵔ;->ﾞᴵ:Z

    sget-object v6, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-eqz v6, :cond_1e

    invoke-static {v6}, Lﹶˈ/ʼˎ;->ʽᵔ([B)V

    :cond_1e
    sget-object v6, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-eqz v6, :cond_1f

    invoke-static {v6}, Lﹶˈ/ʼˎ;->ᐧﹶ([B)V

    :cond_1f
    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    int-to-double v6, v6

    add-double v6, v6, v25

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->יـ()I

    move-result v9

    int-to-double v12, v9

    cmpg-double v6, v6, v12

    if-nez v6, :cond_20

    move v6, v2

    goto :goto_18

    :cond_20
    move v6, v3

    :goto_18
    sput-boolean v6, Lˈˋ/ʾˊ;->ﹳٴ:Z

    :goto_19
    sget-object v6, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    const/16 v22, 0xe

    const/16 v27, 0xd

    const/16 v28, 0xc

    const/16 v29, 0xb

    const/16 v30, 0xa

    const/16 v31, 0x9

    const/16 v32, 0x8

    const/16 v33, 0x7

    const/16 v34, 0x5

    const/16 v35, 0x4

    const/16 v36, 0x3

    const/16 v37, 0x2

    const/16 v9, 0x37

    const/16 v38, 0x13

    const/16 v7, 0x10

    if-nez v6, :cond_22

    monitor-enter v5

    :try_start_3
    sget-object v6, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    if-nez v6, :cond_21

    sget-object v6, Lᵢـ/ˈ;->ⁱˊ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v6

    const/16 v39, 0x11

    const-class v12, Lar/tvplayer/core/data/db/TvPlayerDatabase;

    const/16 v40, 0xf

    const-string v13, "TvPlayer.db"

    invoke-static {v6, v12, v13}, Lʼﾞ/ʽ;->ˈ(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lʼﾞ/ʽʽ;

    move-result-object v6

    new-instance v12, Lʿʿ/ﹳٴ;

    invoke-direct {v12, v3}, Lʿʿ/ﹳٴ;-><init>(Z)V

    iput-object v12, v6, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    invoke-virtual {v6}, Lʼﾞ/ʽʽ;->ʽ()V

    new-array v12, v9, [Lᵔᴵ/ⁱˊ;

    sget-object v13, Lˎˎ/ﾞʻ;->ﹳٴ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v3

    sget-object v13, Lˎˎ/ﾞʻ;->ⁱˊ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v2

    sget-object v13, Lˎˎ/ﾞʻ;->ʽ:Lˎˎ/ʽ;

    aput-object v13, v12, v37

    sget-object v13, Lˎˎ/ﾞʻ;->ˈ:Lˎˎ/ʽ;

    aput-object v13, v12, v36

    sget-object v13, Lˎˎ/ﾞʻ;->ˑﹳ:Lˎˎ/ʽ;

    aput-object v13, v12, v35

    sget-object v13, Lˎˎ/ﾞʻ;->ﾞᴵ:Lˎˎ/ʽ;

    aput-object v13, v12, v34

    sget-object v13, Lˎˎ/ﾞʻ;->ᵎﹶ:Lˎˎ/ʽ;

    aput-object v13, v12, v10

    sget-object v13, Lˎˎ/ﾞʻ;->ᵔᵢ:Lˎˎ/ʽ;

    aput-object v13, v12, v33

    sget-object v13, Lˎˎ/ﾞʻ;->ʼˎ:Lˎˎ/ʽ;

    aput-object v13, v12, v32

    sget-object v13, Lˎˎ/ﾞʻ;->ˆʾ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v31

    sget-object v13, Lˎˎ/ﾞʻ;->ٴﹶ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v30

    sget-object v13, Lˎˎ/ﾞʻ;->ﾞʻ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v29

    sget-object v13, Lˎˎ/ﾞʻ;->ˉʿ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v28

    sget-object v13, Lˎˎ/ﾞʻ;->ᵔʾ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v27

    sget-object v13, Lˎˎ/ﾞʻ;->ˉˆ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v22

    sget-object v13, Lˎˎ/ﾞʻ;->ʼᐧ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v40

    sget-object v13, Lˎˎ/ﾞʻ;->ᵔﹳ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v7

    sget-object v13, Lˎˎ/ﾞʻ;->ﹳᐧ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v39

    sget-object v13, Lˎˎ/ﾞʻ;->יـ:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v8

    sget-object v13, Lˎˎ/ﾞʻ;->ˏי:Lˎˎ/ⁱˊ;

    aput-object v13, v12, v38

    sget-object v13, Lˎˎ/ﾞʻ;->ʽﹳ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x14

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʻٴ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x15

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ـˆ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x16

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʾᵎ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x17

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʼʼ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x18

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᵢˏ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x19

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʾˋ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x1a

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᴵˊ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x1b

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʽʽ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x1c

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˈٴ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x1d

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᴵᵔ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x1e

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˊʻ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x1f

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ٴᵢ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x20

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˉٴ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x21

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᵎⁱ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x22

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ٴʼ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x23

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᵎˊ:Lˎˎ/ⁱˊ;

    const/16 v41, 0x24

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᵔי:Lˎˎ/ʽ;

    const/16 v41, 0x25

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˆﾞ:Lˎˎ/ʽ;

    const/16 v41, 0x26

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᵔٴ:Lˎˎ/ʽ;

    const/16 v41, 0x27

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˈʿ:Lˎˎ/ʽ;

    const/16 v41, 0x28

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˑٴ:Lˎˎ/ʽ;

    const/16 v41, 0x29

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˋᵔ:Lˎˎ/ʽ;

    const/16 v41, 0x2a

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˊˋ:Lˎˎ/ʽ;

    const/16 v41, 0x2b

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʼˈ:Lˎˎ/ʽ;

    const/16 v41, 0x2c

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ـˏ:Lˎˎ/ʽ;

    const/16 v41, 0x2d

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ﹳـ:Lˎˎ/ʽ;

    const/16 v41, 0x2e

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˈⁱ:Lˎˎ/ʽ;

    const/16 v41, 0x2f

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᴵˑ:Lˎˎ/ʽ;

    const/16 v41, 0x30

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ˉـ:Lˎˎ/ʽ;

    const/16 v41, 0x31

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʿ:Lˎˎ/ʽ;

    const/16 v41, 0x32

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ʿᵢ:Lˎˎ/ʽ;

    const/16 v41, 0x33

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᵎᵔ:Lˎˎ/ʽ;

    const/16 v41, 0x34

    aput-object v13, v12, v41

    sget-object v13, Lˎˎ/ﾞʻ;->ᐧﾞ:Lˎˎ/ʽ;

    aput-object v13, v12, v20

    sget-object v13, Lˎˎ/ﾞʻ;->ᐧᴵ:Lˎˎ/ʽ;

    const/16 v41, 0x36

    aput-object v13, v12, v41

    invoke-virtual {v6, v12}, Lʼﾞ/ʽʽ;->ﹳٴ([Lᵔᴵ/ⁱˊ;)V

    invoke-virtual {v6}, Lʼﾞ/ʽʽ;->ⁱˊ()Lʼﾞ/ˊʻ;

    move-result-object v6

    check-cast v6, Lar/tvplayer/core/data/db/TvPlayerDatabase;

    sput-object v6, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1a

    :catchall_3
    move-exception v0

    goto :goto_1b

    :cond_21
    const/16 v39, 0x11

    const/16 v40, 0xf

    :goto_1a
    monitor-exit v5

    goto :goto_1c

    :goto_1b
    monitor-exit v5

    throw v0

    :cond_22
    const/16 v39, 0x11

    const/16 v40, 0xf

    :goto_1c
    sget-object v5, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    invoke-virtual {v5}, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ـˆ()Lˑᵢ/ʾˋ;

    move-result-object v5

    invoke-virtual {v0}, Lᵔᵔ/ˈ;->ﹳٴ()Lᵔᵔ/ˑﹳ;

    move-result-object v43

    iget-wide v12, v0, Lᵔᵔ/ˈ;->ᴵˊ:J

    move-wide/from16 v49, v14

    iget-wide v14, v0, Lᵔᵔ/ˈ;->ʽʽ:J

    iget-object v0, v5, Lˑᵢ/ʾˋ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v41, Lˑᵢ/ـˆ;

    const/16 v48, 0x2

    move-object/from16 v42, v5

    move-wide/from16 v44, v12

    move-wide/from16 v46, v14

    invoke-direct/range {v41 .. v48}, Lˑᵢ/ـˆ;-><init>(Ljava/lang/Object;Lᵔᵔ/ˑﹳ;JJI)V

    move-object/from16 v5, v41

    invoke-static {v0, v3, v2, v5}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    sget-object v12, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ﾞʻ:Lˋⁱ/ﾞᴵ;

    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v0

    sget-object v5, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v5, :cond_23

    if-nez v0, :cond_23

    move v0, v2

    goto :goto_1d

    :cond_23
    move v0, v3

    :goto_1d
    sget-object v5, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v5, :cond_25

    if-eqz v0, :cond_25

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ﾞᴵ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    sget-object v6, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v6, :cond_24

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʼʼ()V

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1e

    :catchall_4
    move-exception v0

    goto :goto_1f

    :cond_24
    :goto_1e
    monitor-exit v5

    goto :goto_20

    :goto_1f
    monitor-exit v5

    throw v0

    :cond_25
    :goto_20
    sget-object v13, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-nez v13, :cond_26

    if-eqz v0, :cond_27

    :cond_26
    if-eqz v13, :cond_28

    aget-byte v0, v13, v11

    invoke-static {}, Lᵢـ/ʼˎ;->ⁱˊ()[B

    move-result-object v5

    aget-byte v5, v5, v11

    sub-int/2addr v0, v5

    int-to-byte v0, v0

    if-ne v0, v8, :cond_28

    sget-object v0, Lar/tvplayer/core/domain/F;->ﹳٴ:Lar/tvplayer/core/domain/F;

    invoke-virtual {v0, v11}, Lar/tvplayer/core/domain/F;->hIj8k(I)I

    move-result v0

    aget-byte v5, v13, v21

    add-int/lit8 v5, v5, 0x51

    if-ne v0, v5, :cond_28

    :cond_27
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ـˆ()Z

    goto :goto_23

    :cond_28
    sput-boolean v3, Lʿˋ/ˋᵔ;->ˈ:Z

    sget v0, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_21
    int-to-double v5, v0

    sget v11, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    int-to-double v14, v11

    add-double v14, v14, v17

    cmpg-double v5, v5, v14

    if-nez v5, :cond_47

    if-eqz v13, :cond_29

    mul-int v0, v0, v16

    invoke-static {v0, v13}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_22

    :cond_29
    sget v0, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    add-int/lit8 v5, v0, 0x1

    sput v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    :goto_22
    sput v0, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sget-boolean v0, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    :goto_23
    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v0

    sget-object v5, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v5, :cond_2a

    if-nez v0, :cond_2a

    move v0, v2

    goto :goto_24

    :cond_2a
    move v0, v3

    :goto_24
    sget-object v5, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v5, :cond_2c

    if-eqz v0, :cond_2c

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    sget-object v6, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v6, :cond_2b

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵎﹶ()I

    move-result v13

    invoke-virtual {v6, v11, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6}, Lﹶˈ/ʼˎ;->ˑʼ([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/Signature;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽﹳ([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_25

    :catchall_5
    move-exception v0

    goto :goto_26

    :cond_2b
    :goto_25
    monitor-exit v5

    goto :goto_27

    :goto_26
    monitor-exit v5

    throw v0

    :cond_2c
    :goto_27
    sget-object v5, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-nez v5, :cond_2d

    if-eqz v0, :cond_2e

    :cond_2d
    if-eqz v5, :cond_30

    aget-byte v0, v5, v19

    move/from16 v6, v20

    if-ne v0, v6, :cond_30

    :cond_2e
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sput-boolean v3, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    :cond_2f
    move/from16 v41, v7

    move v15, v8

    goto :goto_2a

    :cond_30
    sput-boolean v3, Lʿˋ/ˋᵔ;->ˑﹳ:Z

    sget v0, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    :goto_28
    int-to-double v13, v0

    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    move/from16 v41, v7

    move v15, v8

    int-to-double v7, v6

    add-double v7, v7, v17

    cmpg-double v6, v13, v7

    if-nez v6, :cond_46

    if-eqz v5, :cond_31

    mul-int v13, v24, v0

    invoke-static {v13, v5}, Lﹶˈ/ʼˎ;->ٴﹳ(I[B)Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_29

    :cond_31
    sget v0, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    add-int/lit8 v5, v0, 0x1

    sput v5, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    :goto_29
    sput v0, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    sget-boolean v0, Lʿˋ/ˋᵔ;->ﹳٴ:Z

    :goto_2a
    invoke-static {}, Lʿˋ/ˉʿ;->ﹳـ()Z

    move-result v0

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v5, :cond_32

    if-nez v0, :cond_32

    move v0, v2

    goto :goto_2b

    :cond_32
    move v0, v3

    :goto_2b
    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v5, :cond_39

    if-eqz v0, :cond_39

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔʾ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    sget-object v6, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v6, :cond_38

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v11, v3

    :goto_2c
    if-ge v11, v8, :cond_34

    aget-object v13, v7, v11

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    move/from16 v42, v15

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ٴﹶ()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    move-object/from16 v23, v13

    goto :goto_2d

    :cond_33
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v42

    goto :goto_2c

    :catchall_6
    move-exception v0

    goto :goto_32

    :cond_34
    move/from16 v42, v15

    const/16 v23, 0x0

    :goto_2d
    sput-object v23, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי:Ljava/lang/String;

    sget-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    sput-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ʼᐧ:Ljava/lang/reflect/Method;

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽ()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ʻٴ:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    array-length v11, v7

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    array-length v11, v7

    move v13, v3

    :goto_2e
    if-ge v13, v11, :cond_35

    aget-object v14, v7, v13

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2e

    :cond_35
    invoke-static {v8}, Lﹶˈ/ˆʾ;->יﹳ(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    array-length v8, v6

    move v11, v3

    :goto_2f
    if-ge v11, v8, :cond_37

    aget-object v13, v6, v11

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v13, v14}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˆʾ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_36
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_37
    :goto_30
    sput-object v7, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_31

    :cond_38
    move/from16 v42, v15

    :goto_31
    monitor-exit v5

    goto :goto_33

    :goto_32
    monitor-exit v5

    throw v0

    :cond_39
    move/from16 v42, v15

    :goto_33
    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    if-nez v5, :cond_3a

    if-eqz v0, :cond_3d

    :cond_3a
    sget-object v0, Lar/tvplayer/core/domain/ᵎⁱ;->ʻٴ:Ljava/lang/String;

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˏי:Ljava/lang/String;

    invoke-static {v0, v5, v3, v3, v10}, Lﹶˑ/ˆʾ;->ٴﹳ(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    sget v5, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    sget v6, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    sub-int/2addr v5, v6

    if-ne v0, v5, :cond_3f

    sget-object v0, Lar/tvplayer/core/domain/ᵎⁱ;->ˉʿ:Ljava/util/HashSet;

    sget-object v5, Lar/tvplayer/core/domain/ᵎⁱ;->ˉˆ:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3c

    :cond_3b
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ˆʾ()Ljava/lang/String;

    move-result-object v5

    :cond_3c
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ʽ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->יـ()I

    move-result v5

    if-ne v0, v5, :cond_3f

    :cond_3d
    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->ᵔᵢ()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lﹳˎ/ˆʾ;->ᵎﹶ(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_43

    sput-boolean v3, Lʿˋ/ˋᵔ;->ﾞᴵ:Z

    sget v0, Lar/tvplayer/core/domain/ᵎⁱ;->ˑﹳ:I

    int-to-double v5, v0

    sget v0, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    int-to-double v7, v0

    add-double v7, v7, v49

    cmpg-double v0, v5, v7

    if-nez v0, :cond_3e

    move v0, v2

    goto :goto_34

    :cond_3e
    move v0, v3

    :goto_34
    sput-boolean v0, Lcom/bumptech/glide/ʽ;->ᵔᵢ:Z

    goto :goto_36

    :cond_3f
    sput-boolean v3, Lʿˋ/ˋᵔ;->ﾞᴵ:Z

    sget-object v0, Lˉᵎ/ⁱˊ;->ˈ:[B

    if-eqz v0, :cond_40

    invoke-static {v0}, Lﹶˈ/ʼˎ;->ʽᵔ([B)V

    :cond_40
    sget-object v0, Lﹳˋ/ٴﹶ;->ʾˋ:[B

    if-eqz v0, :cond_41

    invoke-static {v0}, Lﹶˈ/ʼˎ;->ᐧﹶ([B)V

    :cond_41
    sget v0, Lar/tvplayer/core/domain/ᵎⁱ;->ʼˎ:I

    int-to-double v5, v0

    add-double v5, v5, v25

    invoke-static {}, Lar/tvplayer/core/domain/ᵎⁱ;->יـ()I

    move-result v0

    int-to-double v7, v0

    cmpg-double v0, v5, v7

    if-nez v0, :cond_42

    move v0, v2

    goto :goto_35

    :cond_42
    move v0, v3

    :goto_35
    sput-boolean v0, Lˈˋ/ʾˊ;->ﹳٴ:Z

    :cond_43
    :goto_36
    sget-object v0, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    if-nez v0, :cond_45

    monitor-enter v12

    :try_start_7
    sget-object v0, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    if-nez v0, :cond_44

    sget-object v0, Lᵢـ/ˈ;->ⁱˊ:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v0

    const-class v5, Lar/tvplayer/core/data/db/TvPlayerDatabase;

    const-string v6, "TvPlayer.db"

    invoke-static {v0, v5, v6}, Lʼﾞ/ʽ;->ˈ(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lʼﾞ/ʽʽ;

    move-result-object v0

    new-instance v5, Lʿʿ/ﹳٴ;

    invoke-direct {v5, v3}, Lʿʿ/ﹳٴ;-><init>(Z)V

    iput-object v5, v0, Lʼﾞ/ʽʽ;->ﾞᴵ:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Lʼﾞ/ʽʽ;->ʽ()V

    new-array v5, v9, [Lᵔᴵ/ⁱˊ;

    sget-object v6, Lˎˎ/ﾞʻ;->ﹳٴ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v3

    sget-object v6, Lˎˎ/ﾞʻ;->ⁱˊ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v2

    sget-object v6, Lˎˎ/ﾞʻ;->ʽ:Lˎˎ/ʽ;

    aput-object v6, v5, v37

    sget-object v6, Lˎˎ/ﾞʻ;->ˈ:Lˎˎ/ʽ;

    aput-object v6, v5, v36

    sget-object v6, Lˎˎ/ﾞʻ;->ˑﹳ:Lˎˎ/ʽ;

    aput-object v6, v5, v35

    sget-object v6, Lˎˎ/ﾞʻ;->ﾞᴵ:Lˎˎ/ʽ;

    aput-object v6, v5, v34

    sget-object v6, Lˎˎ/ﾞʻ;->ᵎﹶ:Lˎˎ/ʽ;

    aput-object v6, v5, v10

    sget-object v6, Lˎˎ/ﾞʻ;->ᵔᵢ:Lˎˎ/ʽ;

    aput-object v6, v5, v33

    sget-object v6, Lˎˎ/ﾞʻ;->ʼˎ:Lˎˎ/ʽ;

    aput-object v6, v5, v32

    sget-object v6, Lˎˎ/ﾞʻ;->ˆʾ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v31

    sget-object v6, Lˎˎ/ﾞʻ;->ٴﹶ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v30

    sget-object v6, Lˎˎ/ﾞʻ;->ﾞʻ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v29

    sget-object v6, Lˎˎ/ﾞʻ;->ˉʿ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v28

    sget-object v6, Lˎˎ/ﾞʻ;->ᵔʾ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v27

    sget-object v6, Lˎˎ/ﾞʻ;->ˉˆ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v22

    sget-object v6, Lˎˎ/ﾞʻ;->ʼᐧ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v40

    sget-object v6, Lˎˎ/ﾞʻ;->ᵔﹳ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v41

    sget-object v6, Lˎˎ/ﾞʻ;->ﹳᐧ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v39

    sget-object v6, Lˎˎ/ﾞʻ;->יـ:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v42

    sget-object v6, Lˎˎ/ﾞʻ;->ˏי:Lˎˎ/ⁱˊ;

    aput-object v6, v5, v38

    sget-object v6, Lˎˎ/ﾞʻ;->ʽﹳ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x14

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʻٴ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x15

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ـˆ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x16

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʾᵎ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x17

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʼʼ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x18

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᵢˏ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x19

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʾˋ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x1a

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᴵˊ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x1b

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʽʽ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x1c

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˈٴ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x1d

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᴵᵔ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x1e

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˊʻ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x1f

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ٴᵢ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x20

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˉٴ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x21

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᵎⁱ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x22

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ٴʼ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x23

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᵎˊ:Lˎˎ/ⁱˊ;

    const/16 v7, 0x24

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᵔי:Lˎˎ/ʽ;

    const/16 v7, 0x25

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˆﾞ:Lˎˎ/ʽ;

    const/16 v7, 0x26

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᵔٴ:Lˎˎ/ʽ;

    const/16 v7, 0x27

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˈʿ:Lˎˎ/ʽ;

    const/16 v7, 0x28

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˑٴ:Lˎˎ/ʽ;

    const/16 v7, 0x29

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˋᵔ:Lˎˎ/ʽ;

    const/16 v7, 0x2a

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˊˋ:Lˎˎ/ʽ;

    const/16 v7, 0x2b

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʼˈ:Lˎˎ/ʽ;

    const/16 v7, 0x2c

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ـˏ:Lˎˎ/ʽ;

    const/16 v7, 0x2d

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ﹳـ:Lˎˎ/ʽ;

    const/16 v7, 0x2e

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˈⁱ:Lˎˎ/ʽ;

    const/16 v7, 0x2f

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᴵˑ:Lˎˎ/ʽ;

    const/16 v7, 0x30

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ˉـ:Lˎˎ/ʽ;

    const/16 v7, 0x31

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʿ:Lˎˎ/ʽ;

    const/16 v7, 0x32

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ʿᵢ:Lˎˎ/ʽ;

    const/16 v7, 0x33

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᵎᵔ:Lˎˎ/ʽ;

    const/16 v7, 0x34

    aput-object v6, v5, v7

    sget-object v6, Lˎˎ/ﾞʻ;->ᐧﾞ:Lˎˎ/ʽ;

    const/16 v20, 0x35

    aput-object v6, v5, v20

    sget-object v6, Lˎˎ/ﾞʻ;->ᐧᴵ:Lˎˎ/ʽ;

    const/16 v7, 0x36

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Lʼﾞ/ʽʽ;->ﹳٴ([Lᵔᴵ/ⁱˊ;)V

    invoke-virtual {v0}, Lʼﾞ/ʽʽ;->ⁱˊ()Lʼﾞ/ˊʻ;

    move-result-object v0

    check-cast v0, Lar/tvplayer/core/data/db/TvPlayerDatabase;

    sput-object v0, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_37

    :catchall_7
    move-exception v0

    goto :goto_38

    :cond_44
    :goto_37
    monitor-exit v12

    goto :goto_39

    :goto_38
    monitor-exit v12

    throw v0

    :cond_45
    :goto_39
    sget-object v0, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ˉʿ:Lar/tvplayer/core/data/db/TvPlayerDatabase;

    invoke-virtual {v0}, Lar/tvplayer/core/data/db/TvPlayerDatabase;->ـˆ()Lˑᵢ/ʾˋ;

    move-result-object v0

    iget-object v5, v0, Lˑᵢ/ʾˋ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v6, Lˑᵎ/ⁱˊ;

    move/from16 v7, v41

    invoke-direct {v6, v0, v7, v4}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v5, v3, v2, v6}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    return-void

    :cond_46
    move/from16 v42, v15

    move/from16 v7, v41

    const/16 v20, 0x35

    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v42

    goto/16 :goto_28

    :cond_47
    move/from16 v42, v8

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_21

    :cond_48
    move/from16 v42, v8

    move/from16 v21, v10

    move/from16 v24, v15

    add-int/lit8 v6, v6, 0x1

    move/from16 v12, v20

    goto/16 :goto_b

    :cond_49
    move/from16 v42, v8

    move/from16 v21, v10

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ﾞʻ()V

    return-void

    :pswitch_1
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ٴﹶ()V

    return-void

    :pswitch_2
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ˆʾ()V

    return-void

    :pswitch_3
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ʼˎ()V

    return-void

    :pswitch_4
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ᵔᵢ()V

    return-void

    :pswitch_5
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ᵎﹶ()V

    return-void

    :pswitch_6
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ﾞᴵ()V

    return-void

    :pswitch_7
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ˑﹳ()V

    return-void

    :pswitch_8
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ˈ()V

    return-void

    :pswitch_9
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˊⁱ/ˑﹳ;

    iget-object v2, v2, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˏᐧ/ʼˎ;

    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lʽﹳ/ᵎﹶ;->ٴﹶ(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3a

    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Lʽﹳ/ᵎﹶ;->ﾞʻ(Ljava/lang/Throwable;)Z

    :goto_3a
    return-void

    :pswitch_a
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏᐧ/ﹳٴ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget v3, v0, Lˏᐧ/ﹳٴ;->ʽ:I

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v0, Lˏᐧ/ﹳٴ;->ˈ:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_4a

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_4a
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_b
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ʽ()V

    return-void

    :pswitch_c
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ⁱˊ()V

    return-void

    :pswitch_d
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊˊ/ٴﹶ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, v0, Lˊˊ/ٴﹶ;->ٴᵢ:Landroid/graphics/SurfaceTexture;

    iget-object v4, v0, Lˊˊ/ٴﹶ;->ˉٴ:Landroid/view/Surface;

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, v0, Lˊˊ/ٴﹶ;->ٴᵢ:Landroid/graphics/SurfaceTexture;

    iput-object v5, v0, Lˊˊ/ٴﹶ;->ˉٴ:Landroid/view/Surface;

    iget-object v0, v0, Lˊˊ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱי/ʻٴ;

    iget-object v2, v2, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    invoke-virtual {v2, v5}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_4b
    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_4c
    if-eqz v4, :cond_4d

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    :cond_4d
    return-void

    :pswitch_e
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉٴ/ⁱˊ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Lˉٴ/ⁱˊ;->ˆʾ(Landroid/graphics/Typeface;)V

    return-void

    :pswitch_f
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˈـ/ʼʼ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_9
    iget-object v0, v0, Lˈـ/ʼʼ;->ʾˋ:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    return-void

    :pswitch_10
    invoke-direct {v1}, Lʻʿ/ᵔʾ;->ﹳٴ()V

    return-void

    :pswitch_11
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـʾ/ﹳᐧ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lˆﹶ/ʼˎ;->ﹳٴ(Lـʾ/ﹳᐧ;Ljava/lang/String;)V

    return-void

    :pswitch_12
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lʿʿ/ˆʾ;

    iget-object v0, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    :try_start_a
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lʿʿ/ˆʾ;->ʽ(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3c

    :catch_2
    move-exception v0

    invoke-virtual {v2, v0}, Lʿʿ/ˆʾ;->ⁱˊ(Ljava/lang/Exception;)V

    goto :goto_3c

    :catch_3
    invoke-virtual {v2}, Lʿʿ/ˆʾ;->ﹳٴ()V

    :goto_3c
    return-void

    :pswitch_13
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᐧˎ/ˑﹳ;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lʾﾞ/ˑﹳ;->ﹳٴ:Landroid/media/AudioManager;

    invoke-virtual {v2}, Lᐧˎ/ˑﹳ;->ˑﹳ()Z

    return-void

    :pswitch_14
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʾʽ/ᵎﹶ;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᵎﾞ/ﹳٴ;

    iget-object v4, v2, Lʾʽ/ᵎﹶ;->ˑﹳ:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lᵎﾞ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_4e
    return-void

    :pswitch_15
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˑ/ⁱˊ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iput-boolean v3, v0, Lʽˑ/ⁱˊ;->ᵎⁱ:Z

    invoke-virtual {v0, v2}, Lʽˑ/ⁱˊ;->ˈ(Landroid/net/Uri;)V

    return-void

    :pswitch_16
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˆ/ʽ;

    iget-object v3, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    :try_start_b
    iget-object v0, v0, Lʽˆ/ʽ;->ᵔᵢ:Landroidx/leanback/widget/ʻٴ;

    sget-object v4, Lᴵˆ/ʽ;->ʽʽ:Lᴵˆ/ʽ;

    iget-object v0, v0, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˉˋ/ʼˎ;

    invoke-virtual {v0, v4}, Lˉˋ/ʼˎ;->ⁱˊ(Lᴵˆ/ʽ;)Lˉˋ/ʼˎ;

    move-result-object v0

    invoke-static {}, Lˉˋ/ʼᐧ;->ﹳٴ()Lˉˋ/ʼᐧ;

    move-result-object v4

    iget-object v4, v4, Lˉˋ/ʼᐧ;->ˈ:Lʾٴ/ⁱˊ;

    invoke-virtual {v4, v0, v2}, Lʾٴ/ⁱˊ;->ʽ(Lˉˋ/ʼˎ;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_17
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʼﾞ/ˈʿ;

    :try_start_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    invoke-virtual {v2}, Lʼﾞ/ˈʿ;->ʽ()V

    return-void

    :catchall_8
    move-exception v0

    invoke-virtual {v2}, Lʼﾞ/ˈʿ;->ʽ()V

    throw v0

    :pswitch_18
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ʼᐧ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/PlaybackStateEvent;

    invoke-static {v0, v2}, Lʻʿ/ʼᐧ;->ˑﹳ(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void

    :pswitch_19
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ʼᐧ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/PlaybackMetrics;

    invoke-static {v0, v2}, Lʻʿ/ʼᐧ;->ⁱˊ(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackMetrics;)V

    return-void

    :pswitch_1a
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ʼᐧ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/PlaybackErrorEvent;

    invoke-static {v0, v2}, Lʻʿ/ʼᐧ;->ﹳٴ(Lʻʿ/ʼᐧ;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void

    :pswitch_1b
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ʼᐧ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/NetworkEvent;

    invoke-static {v0, v2}, Lʻʿ/ʼᐧ;->ʽ(Lʻʿ/ʼᐧ;Landroid/media/metrics/NetworkEvent;)V

    return-void

    :pswitch_1c
    iget-object v0, v1, Lʻʿ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ʼᐧ;

    iget-object v2, v1, Lʻʿ/ᵔʾ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroid/media/metrics/TrackChangeEvent;

    invoke-static {v0, v2}, Lʻʿ/ʼᐧ;->ˈ(Lʻʿ/ʼᐧ;Landroid/media/metrics/TrackChangeEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
