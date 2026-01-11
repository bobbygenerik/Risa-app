.class public abstract Lʼᵢ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ʽ(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lᵔﹶ/ˉʿ;->ʽ(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result v0

    invoke-static {p0}, Lᵔﹶ/ˉʿ;->ʽ(Landroid/content/res/Configuration;)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, p0, v1}, Lᴵˋ/ˊʻ;->ˑﹳ(III)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    invoke-static {p1, p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ˈ(Landroid/media/MediaDrm;Ljava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->requiresSecureDecoder(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static ˑﹳ(Landroid/media/AudioTrack;Lʻʿ/יـ;)V
    .locals 1

    .prologue
    invoke-virtual {p1}, Lʻʿ/יـ;->ﹳٴ()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-static {}, Lʻʿ/ᵔﹳ;->ˑﹳ()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_0
    return-void
.end method

.method public static ᵎﹶ(Lﹳʽ/ᴵᵔ;Lʻʿ/יـ;)V
    .locals 1

    .prologue
    invoke-virtual {p1}, Lʻʿ/יـ;->ﹳٴ()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-static {}, Lʻʿ/ᵔﹳ;->ˑﹳ()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaFormat;

    const-string v0, "log-session-id"

    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static ⁱˊ(Landroid/app/job/JobParameters;)I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result p0

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    packed-switch p0, :pswitch_data_0

    const/16 p0, -0x200

    :pswitch_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static ﹳٴ(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lﹶ/ﾞᴵ;
    .locals 3

    .prologue
    invoke-static {p0, p1}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lﹶ/ﾞᴵ;->ˈ:Lﹶ/ﾞᴵ;

    return-object p0

    :cond_0
    new-instance p1, Lʻˆ/ˑﹳ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput-boolean v2, p1, Lʻˆ/ˑﹳ;->ﹳٴ:Z

    iput-boolean p0, p1, Lʻˆ/ˑﹳ;->ⁱˊ:Z

    iput-boolean p2, p1, Lʻˆ/ˑﹳ;->ʽ:Z

    invoke-virtual {p1}, Lʻˆ/ˑﹳ;->ﹳٴ()Lﹶ/ﾞᴵ;

    move-result-object p0

    return-object p0
.end method

.method public static ﾞᴵ(Landroid/media/MediaDrm;[BLʻʿ/יـ;)V
    .locals 1

    .prologue
    invoke-virtual {p2}, Lʻʿ/יـ;->ﹳٴ()Landroid/media/metrics/LogSessionId;

    move-result-object p2

    invoke-static {}, Lʻʿ/ᵔﹳ;->ˑﹳ()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPlaybackComponent([B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2}, Landroid/media/MediaDrm$PlaybackComponent;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_0
    return-void
.end method
