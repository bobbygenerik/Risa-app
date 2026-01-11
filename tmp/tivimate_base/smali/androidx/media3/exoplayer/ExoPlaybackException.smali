.class public final Landroidx/media3/exoplayer/ExoPlaybackException;
.super Landroidx/media3/common/PlaybackException;
.source "SourceFile"


# instance fields
.field public final ʽʽ:I

.field public final ˈٴ:Ljava/lang/String;

.field public final ˉٴ:Lﹳᵢ/ᵢˏ;

.field public final ˊʻ:Lʽⁱ/ﹳᐧ;

.field public final ٴᵢ:I

.field public final ᴵᵔ:I

.field public final ᵎⁱ:Z


# direct methods
.method public constructor <init>(ILjava/lang/Exception;I)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;ILjava/lang/String;ILʽⁱ/ﹳᐧ;ILﹳᵢ/ᵢˏ;Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;ILjava/lang/String;ILʽⁱ/ﹳᐧ;ILﹳᵢ/ᵢˏ;Z)V
    .locals 13

    .prologue
    move/from16 v8, p7

    if-eqz p1, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    :goto_0
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    goto :goto_2

    :cond_0
    const-string v0, "Remote error"

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", format_supported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    if-eqz v8, :cond_6

    if-eq v8, v1, :cond_5

    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    if-eq v8, v0, :cond_3

    const/4 v0, 0x4

    if-ne v8, v0, :cond_2

    const-string v0, "YES"

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    const-string v0, "NO_EXCEEDS_CAPABILITIES"

    goto :goto_1

    :cond_4
    const-string v0, "NO_UNSUPPORTED_DRM"

    goto :goto_1

    :cond_5
    const-string v0, "NO_UNSUPPORTED_TYPE"

    goto :goto_1

    :cond_6
    const-string v0, "NO"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    const-string v0, "Source error"

    :goto_2
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ": null"

    invoke-static {v0, v1}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, p0

    move v4, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v9, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILʽⁱ/ﹳᐧ;ILﹳᵢ/ᵢˏ;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILʽⁱ/ﹳᐧ;ILﹳᵢ/ᵢˏ;JZ)V
    .locals 7

    .prologue
    move/from16 v6, p12

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v6, :cond_1

    if-ne p4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    if-nez p2, :cond_2

    const/4 v3, 0x3

    if-ne p4, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput p4, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ʽʽ:I

    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ˈٴ:Ljava/lang/String;

    iput p6, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ᴵᵔ:I

    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ˊʻ:Lʽⁱ/ﹳᐧ;

    move v1, p8

    iput v1, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ٴᵢ:I

    move-object/from16 v1, p9

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ˉٴ:Lﹳᵢ/ᵢˏ;

    iput-boolean v6, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ᵎⁱ:Z

    return-void
.end method


# virtual methods
.method public final ⁱˊ()Ljava/io/IOException;
    .locals 1

    .prologue
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ʽʽ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public final ﹳٴ(Lﹳᵢ/ᵢˏ;)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 13

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-wide v10, p0, Landroidx/media3/common/PlaybackException;->ᴵˊ:J

    iget-boolean v12, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ᵎⁱ:Z

    iget v3, p0, Landroidx/media3/common/PlaybackException;->ʾˋ:I

    iget v4, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ʽʽ:I

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ˈٴ:Ljava/lang/String;

    iget v6, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ᴵᵔ:I

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ˊʻ:Lʽⁱ/ﹳᐧ;

    iget v8, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->ٴᵢ:I

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILʽⁱ/ﹳᐧ;ILﹳᵢ/ᵢˏ;JZ)V

    return-object v0
.end method
