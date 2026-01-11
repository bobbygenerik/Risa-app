.class public final synthetic Lٴˉ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lٴˉ/ⁱˊ;->ʾˋ:I

    iput-object p2, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lⁱי/ᴵᵔ;Lⁱי/ʿᵢ;)V
    .locals 0

    const/16 p1, 0xb

    iput p1, p0, Lٴˉ/ⁱˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method private final ﹳٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ʿᵢ;

    :try_start_0
    monitor-enter v0

    monitor-exit v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, v0, Lⁱי/ʿᵢ;->ﹳٴ:Lⁱי/ʿ;

    iget v3, v0, Lⁱי/ʿᵢ;->ʽ:I

    iget-object v4, v0, Lⁱי/ʿᵢ;->ˈ:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lⁱי/ʿ;->ⁱˊ(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v1}, Lⁱי/ʿᵢ;->ﹳٴ(Z)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Lⁱי/ʿᵢ;->ﹳٴ(Z)V

    throw v2
    :try_end_2
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ExoPlayerImplInternal"

    const-string v2, "Unexpected error delivering message on external thread."

    invoke-static {v1, v2, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    iget v0, p0, Lٴˉ/ⁱˊ;->ʾˋ:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ᵔﹳ;

    iget v1, v0, Lﾞˏ/ᵔﹳ;->ٴﹶ:I

    sub-int/2addr v1, v4

    iput v1, v0, Lﾞˏ/ᵔﹳ;->ٴﹶ:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﾞˏ/ˈ;

    iget-object v0, v0, Lﾞˏ/ˈ;->ᵎﹶ:Lﾞˏ/ˈٴ;

    invoke-interface {v0}, Lﾞˏ/ˈٴ;->ʼˎ()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Lˋˋ/ʻᵎ;->ـˊ()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧﹳ/ʽ;

    invoke-virtual {v0}, Lᐧﹳ/ʽ;->ʽﹳ()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/ui/view/DelayedProgressBar;

    sget v1, Lar/tvplayer/core/ui/view/DelayedProgressBar;->ʽʽ:I

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶ/ʾᵎ;

    iget-wide v5, v0, Lﹶ/ʾᵎ;->ﹶᐧ:J

    const-wide/32 v7, 0x493e0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_0

    iget-object v1, v0, Lﹶ/ʾᵎ;->יـ:Lᐧﹳ/ʽ;

    iget v5, v1, Lᐧﹳ/ʽ;->ʾˋ:I

    packed-switch v5, :pswitch_data_1

    iget-object v1, v1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lﹶ/ʾˋ;

    iput-boolean v4, v1, Lﹶ/ʾˋ;->ˆʻ:Z

    goto :goto_0

    :pswitch_5
    iget-object v1, v1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/decoder/ffmpeg/ʽ;

    iput-boolean v4, v1, Landroidx/media3/decoder/ffmpeg/ʽ;->ـᵎ:Z

    :goto_0
    iput-wide v2, v0, Lﹶ/ʾᵎ;->ﹶᐧ:J

    :cond_0
    return-void

    :pswitch_6
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱᴵ/ʽ;

    invoke-virtual {v0, v1}, Lⁱᴵ/ʽ;->ˈ(Lⁱᴵ/ʼˎ;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱᴵ/ˈ;

    iget-boolean v1, v0, Lⁱᴵ/ˈ;->ʽʽ:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lⁱᴵ/ˈ;->ᴵˊ:Lⁱᴵ/ﾞᴵ;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lⁱᴵ/ˈ;->ʾˋ:Lⁱᴵ/ʼˎ;

    invoke-interface {v1, v2}, Lⁱᴵ/ﾞᴵ;->ˈ(Lⁱᴵ/ʼˎ;)V

    :cond_2
    iget-object v1, v0, Lⁱᴵ/ˈ;->ˈٴ:Lⁱᴵ/ˑﹳ;

    iget-object v1, v1, Lⁱᴵ/ˑﹳ;->ᵔי:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iput-boolean v4, v0, Lⁱᴵ/ˈ;->ʽʽ:Z

    :goto_1
    return-void

    :pswitch_8
    invoke-direct {p0}, Lٴˉ/ⁱˊ;->ﹳٴ()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ʼʼ;

    iget-object v1, v0, Lⁱי/ʼʼ;->ᴵʼ:Lʻᴵ/ʼʼ;

    iget-object v0, v0, Lⁱי/ʼʼ;->ᴵᵔ:Landroid/content/Context;

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0}, Lʾﾞ/ˑﹳ;->ˈ(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lʻᴵ/ʼʼ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v2, Lᐧˎ/ⁱˊ;

    invoke-direct {v2, v1, v0, v5}, Lᐧˎ/ⁱˊ;-><init>(Lʻᴵ/ʼʼ;Ljava/lang/Object;I)V

    iget-object v0, v1, Lʻᴵ/ʼʼ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ʻٴ;

    iget-object v1, v0, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :pswitch_a
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ﹳٴ;

    iget-object v1, v0, Lⁱי/ﹳٴ;->ʽ:Lcom/bumptech/glide/ʼˎ;

    iget-boolean v1, v1, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lⁱי/ﹳٴ;->ﹳٴ:Lⁱי/ʻٴ;

    iget-object v0, v0, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Lⁱי/ʼʼ;->ˑﹶ(IZ)V

    :cond_4
    return-void

    :pswitch_b
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/ʼˎ;

    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v0, v0, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lⁱי/ﹳٴ;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v1

    const-string v2, "TvPlayer.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lʿˋ/ˉʿ;->ˈ(Ljava/io/File;Ljava/io/File;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/TvPlayer.db-shm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lʿˋ/ˉʿ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-wal"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/TvPlayer.db-wal"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lʿˋ/ˉʿ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻˑ/ﹳٴ;

    iput-boolean v5, v0, Lʻˑ/ﹳٴ;->ʽ:Z

    iget-object v1, v0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ʼˎ:Lˉـ/ˑﹳ;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lˉـ/ˑﹳ;->ﾞᴵ()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v1, v0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Lʻˑ/ﹳٴ;->ﹳٴ(I)V

    goto :goto_3

    :cond_5
    iget v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ᵔᵢ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget v0, v0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ﹳᐧ(I)V

    :cond_6
    :goto_3
    return-void

    :pswitch_e
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵי/ᴵˑ;

    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    return-void

    :pswitch_f
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧⁱ/ˏי;

    invoke-virtual {v0}, Lᐧⁱ/ˏי;->יـ()V

    return-void

    :pswitch_10
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    sget v1, Landroidx/media3/ui/DefaultTimeBar;->ˑ:I

    invoke-virtual {v0, v5}, Landroidx/media3/ui/DefaultTimeBar;->ᵎﹶ(Z)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧˎ/ʼᐧ;

    iget-object v1, v0, Lᐧˎ/ʼᐧ;->ﹳٴ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᵔⁱ/ﾞᴵ;

    if-eqz v1, :cond_f

    iget-object v0, v0, Lᐧˎ/ʼᐧ;->ʽ:Lᐧˎ/ᵔﹳ;

    invoke-virtual {v0}, Lᐧˎ/ᵔﹳ;->ⁱˊ()I

    move-result v0

    iget-object v6, v1, Lᵔⁱ/ﾞᴵ;->ﹳٴ:Lᵔⁱ/ᵎﹶ;

    monitor-enter v6

    :try_start_0
    iget v1, v6, Lᵔⁱ/ᵎﹶ;->ᵔʾ:I

    if-eqz v1, :cond_8

    iget-boolean v7, v6, Lᵔⁱ/ᵎﹶ;->ˑﹳ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_8

    monitor-exit v6

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_8
    if-ne v1, v0, :cond_9

    :try_start_1
    iget-object v1, v6, Lᵔⁱ/ᵎﹶ;->ˉˆ:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    monitor-exit v6

    goto/16 :goto_8

    :cond_9
    :try_start_2
    iput v0, v6, Lᵔⁱ/ᵎﹶ;->ᵔʾ:I

    if-eq v0, v4, :cond_e

    if-eqz v0, :cond_e

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    goto :goto_6

    :cond_a
    iget-object v1, v6, Lᵔⁱ/ᵎﹶ;->ˉˆ:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, v6, Lᵔⁱ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    sget-object v4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᴵˑ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᴵˑ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v6, Lᵔⁱ/ᵎﹶ;->ˉˆ:Ljava/lang/String;

    :cond_c
    invoke-virtual {v6, v0}, Lᵔⁱ/ᵎﹶ;->ﹳٴ(I)J

    move-result-wide v0

    iput-wide v0, v6, Lᵔⁱ/ᵎﹶ;->ﾞʻ:J

    iget-object v0, v6, Lᵔⁱ/ᵎﹶ;->ˈ:Lᐧˎ/ˏי;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v4, v6, Lᵔⁱ/ᵎﹶ;->ᵎﹶ:I

    if-lez v4, :cond_d

    iget-wide v7, v6, Lᵔⁱ/ᵎﹶ;->ᵔᵢ:J

    sub-long v7, v0, v7

    long-to-int v4, v7

    move v7, v4

    goto :goto_5

    :cond_d
    move v7, v5

    :goto_5
    iget-wide v8, v6, Lᵔⁱ/ᵎﹶ;->ʼˎ:J

    iget-wide v10, v6, Lᵔⁱ/ᵎﹶ;->ﾞʻ:J

    invoke-virtual/range {v6 .. v11}, Lᵔⁱ/ᵎﹶ;->ⁱˊ(IJJ)V

    iput-wide v0, v6, Lᵔⁱ/ᵎﹶ;->ᵔᵢ:J

    iput-wide v2, v6, Lᵔⁱ/ᵎﹶ;->ʼˎ:J

    iput-wide v2, v6, Lᵔⁱ/ᵎﹶ;->ٴﹶ:J

    iput-wide v2, v6, Lᵔⁱ/ᵎﹶ;->ˆʾ:J

    iget-object v0, v6, Lᵔⁱ/ᵎﹶ;->ﾞᴵ:Lᵔⁱ/יـ;

    iget-object v1, v0, Lᵔⁱ/יـ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, -0x1

    iput v1, v0, Lᵔⁱ/יـ;->ʽ:I

    iput v5, v0, Lᵔⁱ/יـ;->ˈ:I

    iput v5, v0, Lᵔⁱ/יـ;->ˑﹳ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    goto :goto_8

    :cond_e
    :goto_6
    monitor-exit v6

    goto :goto_8

    :goto_7
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_f
    :goto_8
    return-void

    :pswitch_12
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏˆ/ﹳٴ;

    iget-object v1, v0, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lʻˎ/ⁱˊ;

    new-instance v2, Lٴˉ/ﹳٴ;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    check-cast v1, Lᵔـ/ᵔᵢ;

    invoke-virtual {v1, v2}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    return-void

    :pswitch_13
    iget-object v0, p0, Lٴˉ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Lcom/google/android/material/button/MaterialButton;->ﹳٴ(Lcom/google/android/material/button/MaterialButton;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_5
    .end packed-switch
.end method
