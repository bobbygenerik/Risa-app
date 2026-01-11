.class public final Lﾞˏ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞˏ/ᴵᵔ;


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public final synthetic ˑﹳ:Lﾞˏ/ᵔﹳ;

.field public ⁱˊ:Lʽⁱ/ﹳᐧ;

.field public ﹳٴ:Lʼʻ/ᵎⁱ;


# direct methods
.method public constructor <init>(Lﾞˏ/ᵔﹳ;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    invoke-static {p2}, Lᐧˎ/ʼʼ;->ˑٴ(Landroid/content/Context;)Z

    sget-object p1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object p1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    iput-object p1, p0, Lﾞˏ/ˉʿ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lﾞˏ/ˉʿ;->ˈ:J

    return-void
.end method


# virtual methods
.method public final ʻٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object v1, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v1}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0}, Lﾞˏ/ˈ;->ʻٴ()V

    return-void

    :cond_0
    new-instance v1, Lʻˆ/ﾞᴵ;

    invoke-direct {v1}, Lʻˆ/ﾞᴵ;-><init>()V

    iget-object v2, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v2}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result v2

    if-gtz v2, :cond_1

    iput-object v1, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    return-void

    :cond_1
    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    invoke-virtual {v0}, Lʻˆ/ﾞᴵ;->ᵎﹶ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﾞˏ/ʼᐧ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method

.method public final ʼˎ(JLﾞˏ/ᵎﹶ;)Z
    .locals 0

    .prologue
    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object p1, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget p1, p1, Lﾞˏ/ᵔﹳ;->ˉˆ:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ʼᐧ()V
    .locals 0

    return-void
.end method

.method public final ʽ()V
    .locals 2

    sget-object v0, Lᐧˎ/יـ;->ʽ:Lᐧˎ/יـ;

    iget v0, v0, Lᐧˎ/יـ;->ﹳٴ:I

    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    const/4 v1, 0x0

    iput-object v1, v0, Lﾞˏ/ᵔﹳ;->ˆʾ:Landroid/util/Pair;

    return-void
.end method

.method public final ʽﹳ(Lⁱʽ/ﹳٴ;)V
    .locals 0

    return-void
.end method

.method public final ʾᵎ(F)V
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0, p1}, Lﾞˏ/ˈ;->ʾᵎ(F)V

    return-void
.end method

.method public final ˆʾ(JJ)V
    .locals 2

    iget-wide v0, p0, Lﾞˏ/ˉʿ;->ʽ:J

    add-long/2addr p1, v0

    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lﾞˏ/ˈ;->ˆʾ(JJ)V

    return-void
.end method

.method public final ˈ(Lﾞˏ/ʽﹳ;)V
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    iput-object p1, v0, Lﾞˏ/ˈ;->ʼˎ:Lﾞˏ/ʽﹳ;

    return-void
.end method

.method public final ˉʿ(Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-boolean v1, v0, Lﾞˏ/ᵔﹳ;->ˈ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0, p1}, Lﾞˏ/ˈ;->ˉʿ(Z)V

    :cond_0
    return-void
.end method

.method public final ˉˆ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-boolean v1, v0, Lﾞˏ/ᵔﹳ;->ˈ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0}, Lﾞˏ/ˈ;->ˉˆ()V

    :cond_0
    return-void
.end method

.method public final ˏי()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˑﹳ()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final יـ()V
    .locals 5

    .prologue
    iget-wide v0, p0, Lﾞˏ/ˉʿ;->ˈ:J

    iget-object v2, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-wide v3, v2, Lﾞˏ/ᵔﹳ;->ˉʿ:J

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    iget-object v0, v2, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0}, Lﾞˏ/ˈ;->יـ()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lﾞˏ/ᵔﹳ;->ᵔʾ:Z

    :cond_0
    return-void
.end method

.method public final ـˆ(I)V
    .locals 1

    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0, p1}, Lﾞˏ/ˈ;->ـˆ(I)V

    return-void
.end method

.method public final ٴﹶ(Lʽⁱ/ﹳᐧ;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const-string v0, "Color transfer "

    iget-object v2, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget v3, v2, Lﾞˏ/ᵔﹳ;->ﾞʻ:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v3, p1, Lʽⁱ/ﹳᐧ;->ˈٴ:Lʽⁱ/ʼˎ;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lʽⁱ/ʼˎ;->ˈ()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lʽⁱ/ʼˎ;->ᵔᵢ:Lʽⁱ/ʼˎ;

    :goto_1
    iget v3, v3, Lʽⁱ/ʼˎ;->ʽ:I

    const-string v5, "EGL_EXT_gl_colorspace_bt2020_pq"

    const/16 v6, 0x21

    const/4 v7, 0x7

    if-ne v3, v7, :cond_3

    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x22

    if-ge v8, v9, :cond_3

    if-lt v8, v6, :cond_3

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ـˆ(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lʽⁱ/ʼˎ;

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_2
    const/4 v8, 0x6

    if-ne v3, v8, :cond_5

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_4

    invoke-static {v5}, Lᐧˎ/ﹳٴ;->ـˆ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    goto :goto_3

    :cond_5
    if-ne v3, v7, :cond_6

    const-string v1, "EGL_EXT_gl_colorspace_bt2020_hlg"

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ـˆ(Ljava/lang/String;)Z

    move-result v1

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_7

    const-string v1, "PlaybackVidGraphWrapper"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not supported. Falling back to OpenGl tone mapping."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lʽⁱ/ʼˎ;->ᵔᵢ:Lʽⁱ/ʼˎ;
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    new-instance v1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Exception;Lʽⁱ/ﹳᐧ;)V

    throw v1

    :cond_7
    :goto_5
    iget-object v0, v2, Lﾞˏ/ᵔﹳ;->ﾞᴵ:Lᐧˎ/ˏי;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lᐧˎ/ˏי;->ﹳٴ(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lᐧˎ/ʻٴ;

    move-result-object v0

    iput-object v0, v2, Lﾞˏ/ᵔﹳ;->ʼˎ:Lᐧˎ/ʻٴ;

    :try_start_1
    iget-object v0, v2, Lﾞˏ/ᵔﹳ;->ⁱˊ:Lﾞˏ/ˉˆ;

    invoke-virtual {v0}, Lﾞˏ/ˉˆ;->ﹳٴ()V
    :try_end_1
    .catch Landroidx/media3/common/VideoFrameProcessingException; {:try_start_1 .. :try_end_1} :catch_1

    throw v3

    :catch_1
    move-exception v0

    new-instance v1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Exception;Lʽⁱ/ﹳᐧ;)V

    throw v1
.end method

.method public final ᵎﹶ(Ljava/util/List;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˏ/ˉʿ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v0, p1}, Lʼʻ/ᵎⁱ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    iput-object p1, p0, Lﾞˏ/ˉʿ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    iget-object p1, p0, Lﾞˏ/ˉʿ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v0

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ˈٴ:Lʽⁱ/ʼˎ;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lʽⁱ/ʼˎ;->ˈ()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lʽⁱ/ʼˎ;->ᵔᵢ:Lʽⁱ/ʼˎ;

    :goto_1
    iput-object p1, v0, Lʽⁱ/ᵔﹳ;->ʽʽ:Lʽⁱ/ʼˎ;

    invoke-virtual {v0}, Lʽⁱ/ᵔﹳ;->ﹳٴ()Lʽⁱ/ﹳᐧ;

    const/4 p1, 0x0

    throw p1
.end method

.method public final ᵔʾ(Z)Z
    .locals 1

    iget-object p1, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object p1, p1, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    iget-object p1, p1, Lﾞˏ/ˈ;->ﹳٴ:Lﾞˏ/ʻٴ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lﾞˏ/ʻٴ;->ⁱˊ(Z)Z

    move-result p1

    return p1
.end method

.method public final ᵔᵢ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-boolean v1, v0, Lﾞˏ/ᵔﹳ;->ˈ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    invoke-virtual {v0}, Lﾞˏ/ˈ;->ᵔᵢ()V

    :cond_0
    return-void
.end method

.method public final ᵔﹳ(Landroid/view/Surface;Lᐧˎ/יـ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object v1, v0, Lﾞˏ/ᵔﹳ;->ˆʾ:Landroid/util/Pair;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lﾞˏ/ᵔﹳ;->ˆʾ:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lᐧˎ/יـ;

    invoke-virtual {v1, p2}, Lᐧˎ/יـ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, v0, Lﾞˏ/ᵔﹳ;->ˆʾ:Landroid/util/Pair;

    iget p1, p2, Lᐧˎ/יـ;->ﹳٴ:I

    return-void
.end method

.method public final ⁱˊ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ﹳٴ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget v1, v0, Lﾞˏ/ᵔﹳ;->ﾞʻ:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lﾞˏ/ᵔﹳ;->ʼˎ:Lᐧˎ/ʻٴ;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iput-object v3, v0, Lﾞˏ/ᵔﹳ;->ˆʾ:Landroid/util/Pair;

    iput v2, v0, Lﾞˏ/ᵔﹳ;->ﾞʻ:I

    return-void
.end method

.method public final ﹳᐧ(J)V
    .locals 0

    iput-wide p1, p0, Lﾞˏ/ˉʿ;->ʽ:J

    return-void
.end method

.method public final ﾞʻ(Lʽⁱ/ﹳᐧ;JILjava/util/List;)V
    .locals 0

    .prologue
    const/4 p2, 0x0

    invoke-static {p2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-static {p5}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p2

    iput-object p2, p0, Lﾞˏ/ˉʿ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    iput-object p1, p0, Lﾞˏ/ˉʿ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    iget-object p2, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    const/4 p3, 0x0

    iput-boolean p3, p2, Lﾞˏ/ᵔﹳ;->ᵔʾ:Z

    invoke-virtual {p1}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object p2

    iget-object p1, p1, Lʽⁱ/ﹳᐧ;->ˈٴ:Lʽⁱ/ʼˎ;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lʽⁱ/ʼˎ;->ˈ()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lʽⁱ/ʼˎ;->ᵔᵢ:Lʽⁱ/ʼˎ;

    :goto_0
    iput-object p1, p2, Lʽⁱ/ᵔﹳ;->ʽʽ:Lʽⁱ/ʼˎ;

    invoke-virtual {p2}, Lʽⁱ/ᵔﹳ;->ﹳٴ()Lʽⁱ/ﹳᐧ;

    const/4 p1, 0x0

    throw p1
.end method

.method public final ﾞᴵ(Z)V
    .locals 4

    .prologue
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lﾞˏ/ˉʿ;->ˈ:J

    iget-object v0, p0, Lﾞˏ/ˉʿ;->ˑﹳ:Lﾞˏ/ᵔﹳ;

    iget-object v1, v0, Lﾞˏ/ᵔﹳ;->ˑﹳ:Lﾞˏ/ˈ;

    iget v2, v0, Lﾞˏ/ᵔﹳ;->ﾞʻ:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v2, v0, Lﾞˏ/ᵔﹳ;->ٴﹶ:I

    add-int/2addr v2, v3

    iput v2, v0, Lﾞˏ/ᵔﹳ;->ٴﹶ:I

    invoke-virtual {v1, p1}, Lﾞˏ/ˈ;->ﾞᴵ(Z)V

    :goto_0
    iget-object p1, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    invoke-virtual {p1}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result p1

    if-le p1, v3, :cond_0

    iget-object p1, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    invoke-virtual {p1}, Lʻˆ/ﾞᴵ;->ᵎﹶ()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    invoke-virtual {p1}, Lʻˆ/ﾞᴵ;->ˆʾ()I

    move-result p1

    if-eq p1, v3, :cond_1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lﾞˏ/ᵔﹳ;->ˉʿ:J

    const/4 p1, 0x0

    iput-boolean p1, v0, Lﾞˏ/ᵔﹳ;->ᵔʾ:Z

    iget-object p1, v0, Lﾞˏ/ᵔﹳ;->ʼˎ:Lᐧˎ/ʻٴ;

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    new-instance v1, Lٴˉ/ⁱˊ;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v0}, Lٴˉ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lﾞˏ/ᵔﹳ;->ᵔᵢ:Lʻˆ/ﾞᴵ;

    invoke-virtual {p1}, Lʻˆ/ﾞᴵ;->ᵎﹶ()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lﾞˏ/ʼᐧ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method
