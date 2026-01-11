.class public final Lᵔﹶ/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˆʾ;


# static fields
.field public static final ˈ:Lʼᵔ/ᵎﹶ;

.field public static final ˑﹳ:Lʼᵔ/ᵎﹶ;

.field public static final ᵎﹶ:Ljava/util/List;

.field public static final ﾞᴵ:Lᵔﹶ/ˊʻ;


# instance fields
.field public final ʽ:Lᵔﹶ/ˊʻ;

.field public final ⁱˊ:Lיᐧ/ﹳٴ;

.field public final ﹳٴ:Lᵔﹶ/ᴵᵔ;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lᵔﹶ/ʼˎ;

    invoke-direct {v1}, Lᵔﹶ/ʼˎ;-><init>()V

    new-instance v2, Lʼᵔ/ᵎﹶ;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    invoke-direct {v2, v3, v0, v1}, Lʼᵔ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Object;Lʼᵔ/ﾞᴵ;)V

    sput-object v2, Lᵔﹶ/ˉٴ;->ˈ:Lʼᵔ/ᵎﹶ;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lˎˈ/ﹳٴ;

    invoke-direct {v1}, Lˎˈ/ﹳٴ;-><init>()V

    new-instance v2, Lʼᵔ/ᵎﹶ;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    invoke-direct {v2, v3, v0, v1}, Lʼᵔ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/Object;Lʼᵔ/ﾞᴵ;)V

    sput-object v2, Lᵔﹶ/ˉٴ;->ˑﹳ:Lʼᵔ/ᵎﹶ;

    new-instance v0, Lᵔﹶ/ˊʻ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᵔﹶ/ˊʻ;-><init>(I)V

    sput-object v0, Lᵔﹶ/ˉٴ;->ﾞᴵ:Lᵔﹶ/ˊʻ;

    const-string v0, "TP1A"

    const-string v1, "TD1A.220804.031"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lᵔﹶ/ˉٴ;->ᵎﹶ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lיᐧ/ﹳٴ;Lᵔﹶ/ᴵᵔ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔﹶ/ˉٴ;->ⁱˊ:Lיᐧ/ﹳٴ;

    iput-object p2, p0, Lᵔﹶ/ˉٴ;->ﹳٴ:Lᵔﹶ/ᴵᵔ;

    sget-object p1, Lᵔﹶ/ˉٴ;->ﾞᴵ:Lᵔﹶ/ˊʻ;

    iput-object p1, p0, Lᵔﹶ/ˉٴ;->ʽ:Lᵔﹶ/ˊʻ;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILᵔﹶ/ﾞʻ;)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    move-object v1, p2

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-string v9, "VideoDecoder"

    if-eqz v0, :cond_5

    const-string v5, ".+_cheets|cheets_.+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "video/webm"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    new-instance v5, Landroid/media/MediaExtractor;

    invoke-direct {v5}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lᵔﹶ/ˉٴ;->ﹳٴ:Lᵔﹶ/ᴵᵔ;

    invoke-interface {v0, v5, p1}, Lᵔﹶ/ᴵᵔ;->ˉˆ(Landroid/media/MediaExtractor;Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    const-string v11, "mime"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "video/x-vnd.on2.vp8"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot decode VP8 video on CrOS."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v5, v8

    :goto_2
    :try_start_2
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "Exception trying to extract track info for a webm video on CrOS."

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz v5, :cond_5

    goto :goto_1

    :goto_4
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->release()V

    :cond_4
    throw v0

    :cond_5
    :goto_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1b

    const/16 v10, 0x18

    if-lt v0, v5, :cond_8

    const/high16 v0, -0x80000000

    if-eq v2, v0, :cond_8

    if-eq v3, v0, :cond_8

    sget-object v0, Lᵔﹶ/ﾞʻ;->ˑﹳ:Lᵔﹶ/ﾞʻ;

    if-eq v4, v0, :cond_8

    const/16 v0, 0x12

    :try_start_3
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v5, 0x13

    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v11, 0x5a

    if-eq v6, v11, :cond_6

    const/16 v11, 0x10e

    if-ne v6, v11, :cond_7

    :cond_6
    move v12, v5

    move v5, v0

    move v0, v12

    :cond_7
    invoke-virtual {v4, v0, v5, v2, v3}, Lᵔﹶ/ﾞʻ;->ⁱˊ(IIII)F

    move-result v2

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v5

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    nop

    :cond_8
    :goto_6
    if-nez v8, :cond_9

    invoke-virtual/range {p2 .. p5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Pixel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x21

    if-eqz v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_b

    sget-object v0, Lᵔﹶ/ˉٴ;->ᵎﹶ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_7

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_e

    if-ge v0, v2, :cond_e

    :goto_7
    const/16 v0, 0x24

    :try_start_4
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    if-eq v0, v3, :cond_c

    if-ne v0, v4, :cond_e

    :cond_c
    if-ne v2, v4, :cond_e

    invoke-virtual {p2, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_e

    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Applying HDR 180 deg thumbnail correction"

    nop

    :cond_d
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p6, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p7, v3

    move p2, v4

    move/from16 p3, v5

    move-object p1, v8

    invoke-static/range {p1 .. p7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_8

    :catch_0
    invoke-static {v9, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Exception trying to extract HDR transfer function or rotation"

    nop

    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    return-object v8

    :cond_f
    new-instance v0, Lᵔﹶ/ٴᵢ;

    const-string v1, "MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lʿʾ/ᵢˏ;
    .locals 10

    .prologue
    sget-object v0, Lᵔﹶ/ˉٴ;->ˈ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p4, v0}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-static {p2, v4, v5}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lᵔﹶ/ˉٴ;->ˑﹳ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p4, v0}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    sget-object v1, Lᵔﹶ/ﾞʻ;->ᵎﹶ:Lʼᵔ/ᵎﹶ;

    invoke-virtual {p4, v1}, Lʼᵔ/ᵔᵢ;->ʽ(Lʼᵔ/ᵎﹶ;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lᵔﹶ/ﾞʻ;

    if-nez p4, :cond_3

    sget-object p4, Lᵔﹶ/ﾞʻ;->ﾞᴵ:Lᵔﹶ/ﾞʻ;

    :cond_3
    move-object v9, p4

    iget-object p4, p0, Lᵔﹶ/ˉٴ;->ʽ:Lᵔﹶ/ˊʻ;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/16 p4, 0x1d

    :try_start_0
    iget-object v1, p0, Lᵔﹶ/ˉٴ;->ﹳٴ:Lᵔﹶ/ᴵᵔ;

    invoke-interface {v1, v3, p1}, Lᵔﹶ/ᴵᵔ;->ﾞʻ(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    :try_start_1
    invoke-virtual/range {v1 .. v9}, Lᵔﹶ/ˉٴ;->ʽ(Ljava/lang/Object;Landroid/media/MediaMetadataRetriever;JIIILᵔﹶ/ﾞʻ;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_6

    instance-of p2, v3, Ljava/lang/AutoCloseable;

    if-eqz p2, :cond_4

    check-cast v3, Ljava/lang/AutoCloseable;

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_4
    instance-of p2, v3, Ljava/util/concurrent/ExecutorService;

    if-eqz p2, :cond_5

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v3}, Lˉˏ/ﹳٴ;->ⁱˊ(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_1
    iget-object p2, v1, Lᵔﹶ/ˉٴ;->ⁱˊ:Lיᐧ/ﹳٴ;

    invoke-static {p1, p2}, Lᵔﹶ/ʽ;->ˑﹳ(Landroid/graphics/Bitmap;Lיᐧ/ﹳٴ;)Lᵔﹶ/ʽ;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :goto_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, p4, :cond_9

    instance-of p2, v3, Ljava/lang/AutoCloseable;

    if-nez p2, :cond_8

    instance-of p2, v3, Ljava/util/concurrent/ExecutorService;

    if-nez p2, :cond_7

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_4

    :cond_7
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v3}, Lˉˏ/ﹳٴ;->ⁱˊ(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_4

    :cond_8
    check-cast v3, Ljava/lang/AutoCloseable;

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_4
    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lʼᵔ/ᵔᵢ;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
