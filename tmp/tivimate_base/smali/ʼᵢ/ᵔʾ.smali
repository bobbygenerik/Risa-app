.class public final Lʼᵢ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Z

.field public final ʽ:Ljava/lang/String;

.field public ˆʾ:I

.field public final ˈ:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final ˑﹳ:Z

.field public ٴﹶ:I

.field public final ᵎﹶ:Z

.field public final ᵔᵢ:Z

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;

.field public ﾞʻ:F

.field public final ﾞᴵ:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lʼᵢ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lʼᵢ/ᵔʾ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lʼᵢ/ᵔʾ;->ˈ:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, Lʼᵢ/ᵔʾ;->ᵎﹶ:Z

    iput-boolean p8, p0, Lʼᵢ/ᵔʾ;->ˑﹳ:Z

    iput-boolean p9, p0, Lʼᵢ/ᵔʾ;->ﾞᴵ:Z

    iput-boolean p10, p0, Lʼᵢ/ᵔʾ;->ᵔᵢ:Z

    invoke-static {p2}, Lʽⁱ/ˉٴ;->ˉˆ(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lʼᵢ/ᵔʾ;->ʼˎ:Z

    const p1, -0x800001

    iput p1, p0, Lʼᵢ/ᵔʾ;->ﾞʻ:F

    const/4 p1, -0x1

    iput p1, p0, Lʼᵢ/ᵔʾ;->ˆʾ:I

    iput p1, p0, Lʼᵢ/ᵔʾ;->ٴﹶ:I

    return-void
.end method

.method public static ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Lʼᵢ/ᵔʾ;
    .locals 11

    .prologue
    new-instance v0, Lʼᵢ/ᵔʾ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    const-string v3, "adaptive-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    if-eqz p3, :cond_1

    const-string v3, "tunneled-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    :cond_1
    if-nez p7, :cond_3

    if-eqz p3, :cond_2

    const-string v3, "secure-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v9, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v9, v2

    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_5

    if-eqz p3, :cond_5

    const-string v3, "detached-surface"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "OPPO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "realme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "motorola"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "LENOVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v10, v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v2, p1

    goto :goto_4

    :cond_5
    :goto_3
    move v10, v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, p0

    :goto_4
    invoke-direct/range {v0 .. v10}, Lʼᵢ/ᵔʾ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v0
.end method

.method public static ﹳٴ(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-static {p1, v0}, Lᐧˎ/ʼʼ;->ﾞᴵ(II)I

    move-result p1

    mul-int/2addr p1, v0

    invoke-static {p2, v1}, Lᐧˎ/ʼʼ;->ﾞᴵ(II)I

    move-result p2

    mul-int/2addr p2, v1

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v2, Landroid/graphics/Point;->x:I

    iget p2, v2, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, p3, p0

    if-gtz p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method

.method public final ʽ(Lʽⁱ/ﹳᐧ;Z)Z
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lʼᵢ/ـˆ;->ﹳٴ:Ljava/util/HashMap;

    invoke-static {v1}, Lᐧˎ/ʽ;->ʽ(Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const/4 v5, 0x4

    const-string v6, "video/hevc"

    iget-object v7, v0, Lʼᵢ/ᵔʾ;->ʽ:Ljava/lang/String;

    if-eqz v3, :cond_8

    const-string v10, "video/mv-hevc"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v7}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    const/16 v17, 0x1

    goto/16 :goto_10

    :cond_1
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v2, v1, Lʽⁱ/ﹳᐧ;->ᵔﹳ:Ljava/util/List;

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v13, v11

    const/4 v14, 0x3

    if-le v13, v14, :cond_6

    new-array v15, v14, [Z

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v8

    const/4 v4, 0x0

    :goto_2
    array-length v9, v11

    if-ge v4, v9, :cond_3

    array-length v9, v11

    invoke-static {v11, v4, v9, v15}, Lʻᴵ/ﹳᐧ;->ⁱˊ([BII[Z)I

    move-result v4

    array-length v9, v11

    if-eq v4, v9, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object v4

    const/4 v8, 0x0

    :goto_3
    iget v9, v4, Lʼʻ/ʿᵢ;->ˈٴ:I

    if-ge v8, v9, :cond_6

    invoke-virtual {v4, v8}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v14

    if-ge v9, v13, :cond_5

    new-instance v9, Lʻᴵ/ʻٴ;

    invoke-virtual {v4, v8}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v14

    invoke-direct {v9, v11, v15, v13}, Lʻᴵ/ʻٴ;-><init>([BII)V

    invoke-static {v9}, Lʻᴵ/ﹳᐧ;->ˑﹳ(Lʻᴵ/ʻٴ;)Lʻᴵ/ˆʾ;

    move-result-object v15

    iget v12, v15, Lʻᴵ/ˆʾ;->ﹳٴ:I

    const/16 v14, 0x21

    if-ne v12, v14, :cond_4

    iget v12, v15, Lʻᴵ/ˆʾ;->ⁱˊ:I

    if-nez v12, :cond_4

    invoke-virtual {v9, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v12, 0x3

    invoke-virtual {v9, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    invoke-virtual {v9}, Lʻᴵ/ʻٴ;->ـˆ()V

    const/4 v4, 0x1

    const/4 v14, 0x0

    invoke-static {v9, v4, v2, v14}, Lʻᴵ/ﹳᐧ;->ﾞᴵ(Lʻᴵ/ʻٴ;ZILʻᴵ/ٴﹶ;)Lʻᴵ/ٴﹶ;

    move-result-object v2

    iget v8, v2, Lʻᴵ/ٴﹶ;->ﹳٴ:I

    iget-boolean v9, v2, Lʻᴵ/ٴﹶ;->ⁱˊ:Z

    iget v10, v2, Lʻᴵ/ٴﹶ;->ʽ:I

    iget v11, v2, Lʻᴵ/ٴﹶ;->ˈ:I

    iget-object v12, v2, Lʻᴵ/ٴﹶ;->ˑﹳ:[I

    iget v13, v2, Lʻᴵ/ٴﹶ;->ﾞᴵ:I

    invoke-static/range {v8 .. v13}, Lᐧˎ/ʽ;->ⁱˊ(IZII[II)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_4
    const/4 v12, 0x3

    :goto_4
    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    move v12, v14

    goto :goto_4

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move v14, v12

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v14, 0x0

    move-object v2, v14

    :goto_6
    if-nez v2, :cond_9

    move-object v2, v14

    :cond_8
    const/4 v9, -0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string v8, "\\."

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lʽⁱ/ﹳᐧ;->ˈٴ:Lʽⁱ/ʼˎ;

    invoke-static {v2, v4, v8}, Lᐧˎ/ʽ;->ˈ(Ljava/lang/String;[Ljava/lang/String;Lʽⁱ/ʼˎ;)Landroid/util/Pair;

    move-result-object v2

    :goto_7
    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v8, "video/dolby-vision"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v8, 0x8

    iget-object v10, v0, Lʼᵢ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    const/4 v11, 0x2

    if-eqz v3, :cond_e

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_8

    :sswitch_0
    const-string v3, "video/avc"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_8

    :cond_b
    move v9, v11

    goto :goto_8

    :sswitch_1
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_8

    :cond_c
    const/4 v9, 0x1

    goto :goto_8

    :sswitch_2
    const-string v3, "video/av01"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    :goto_8
    packed-switch v9, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    move v4, v8

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :pswitch_1
    move v4, v11

    goto :goto_9

    :cond_e
    :goto_a
    iget-boolean v3, v0, Lʼᵢ/ᵔʾ;->ʼˎ:Z

    if-nez v3, :cond_f

    const/16 v3, 0x2a

    if-eq v4, v3, :cond_f

    goto/16 :goto_0

    :cond_f
    iget-object v3, v0, Lʼᵢ/ᵔʾ;->ˈ:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v3, :cond_10

    iget-object v9, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v9, :cond_11

    :cond_10
    const/4 v9, 0x0

    new-array v12, v9, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object v9, v12

    :cond_11
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-gt v12, v13, :cond_1d

    const-string v12, "video/x-vnd.on2.vp9"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    array-length v12, v9

    if-nez v12, :cond_1d

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    :goto_b
    const v9, 0xaba9500

    if-lt v3, v9, :cond_13

    const/16 v5, 0x400

    goto :goto_c

    :cond_13
    const v9, 0x7270e00

    if-lt v3, v9, :cond_14

    const/16 v5, 0x200

    goto :goto_c

    :cond_14
    const v9, 0x3938700

    if-lt v3, v9, :cond_15

    const/16 v5, 0x100

    goto :goto_c

    :cond_15
    const v9, 0x1c9c380

    if-lt v3, v9, :cond_16

    const/16 v5, 0x80

    goto :goto_c

    :cond_16
    const v9, 0x112a880

    if-lt v3, v9, :cond_17

    const/16 v5, 0x40

    goto :goto_c

    :cond_17
    const v9, 0xb71b00

    if-lt v3, v9, :cond_18

    const/16 v5, 0x20

    goto :goto_c

    :cond_18
    const v9, 0x6ddd00

    if-lt v3, v9, :cond_19

    const/16 v5, 0x10

    goto :goto_c

    :cond_19
    const v9, 0x36ee80

    if-lt v3, v9, :cond_1a

    move v5, v8

    goto :goto_c

    :cond_1a
    const v8, 0x1b7740

    if-lt v3, v8, :cond_1b

    goto :goto_c

    :cond_1b
    const v5, 0xc3500

    if-lt v3, v5, :cond_1c

    move v5, v11

    goto :goto_c

    :cond_1c
    const/4 v5, 0x1

    :goto_c
    new-instance v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v3}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    const/4 v8, 0x1

    iput v8, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput v5, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array v9, v8, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/16 v16, 0x0

    aput-object v3, v9, v16

    :cond_1d
    array-length v3, v9

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_20

    aget-object v8, v9, v5

    iget v12, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v12, v4, :cond_1e

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v8, v2, :cond_1f

    if-nez p2, :cond_1e

    goto :goto_f

    :cond_1e
    :goto_e
    const/16 v17, 0x1

    goto :goto_11

    :cond_1f
    :goto_f
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v11, v4, :cond_0

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v12, "sailfish"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e

    const-string v12, "marlin"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_e

    :goto_10
    return v17

    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "codec.profileLevel, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lʽⁱ/ﹳᐧ;->ٴﹶ:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    const/16 v16, 0x0

    return v16

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_2
        -0x63185e82 -> :sswitch_1
        0x4f62373a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(Lʽⁱ/ﹳᐧ;)Z
    .locals 2

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    const-string v1, "audio/flac"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    const-string v0, "c2.android.flac.decoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ˑﹳ(Lʽⁱ/ﹳᐧ;)Z
    .locals 7

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v1, p0, Lʼᵢ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lʼᵢ/ـˆ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lʼᵢ/ᵔʾ;->ʽ(Lʽⁱ/ﹳᐧ;Z)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ˈ(Lʽⁱ/ﹳᐧ;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    return v2

    :cond_3
    iget-boolean v3, p0, Lʼᵢ/ᵔʾ;->ʼˎ:Z

    if-eqz v3, :cond_5

    iget v1, p1, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-lez v1, :cond_10

    iget v2, p1, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-gtz v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iget p1, p1, Lʽⁱ/ﹳᐧ;->ʼʼ:F

    float-to-double v3, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lʼᵢ/ᵔʾ;->ᵎﹶ(IID)Z

    move-result p1

    return p1

    :cond_5
    iget v3, p1, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iget-object v4, p0, Lʼᵢ/ᵔʾ;->ˈ:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    if-nez v4, :cond_6

    const-string p1, "sampleRate.caps"

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v6

    if-nez v6, :cond_7

    const-string p1, "sampleRate.aCaps"

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v2

    :cond_7
    invoke-virtual {v6, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sampleRate.support, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v2

    :cond_8
    iget p1, p1, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-eq p1, v5, :cond_10

    if-nez v4, :cond_9

    const-string p1, "channelCount.caps"

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v2

    :cond_9
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-nez v3, :cond_a

    const-string p1, "channelCount.aCaps"

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v2

    :cond_a
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    if-gt v3, v0, :cond_f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_b

    if-lez v3, :cond_b

    goto/16 :goto_3

    :cond_b
    const-string v4, "audio/mpeg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/3gpp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/amr-wb"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/vorbis"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/opus"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/raw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/flac"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/g711-alaw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/g711-mlaw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "audio/gsm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    const-string v4, "audio/ac3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v1, 0x6

    goto :goto_2

    :cond_d
    const-string v4, "audio/eac3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x10

    goto :goto_2

    :cond_e
    const/16 v1, 0x1e

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AssumedMaxChannelAdjustment: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecInfo"

    invoke-static {v4, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :cond_f
    :goto_3
    if-ge v3, p1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channelCount.support, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v2

    :cond_10
    :goto_4
    return v0
.end method

.method public final ᵎﹶ(IID)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lʼᵢ/ᵔʾ;->ˈ:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    const-string p1, "sizeAndRate.caps"

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const-string v4, "@"

    const-string v5, "x"

    const/4 v6, 0x1

    if-lt v2, v3, :cond_5

    if-lt v2, v3, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/measurement/ᵎ;->ʾˋ:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1, p1, p2, p3, p4}, Lʼˉ/ʽ;->ﹳٴ(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result v2

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    goto/16 :goto_3

    :cond_4
    if-ne v2, v6, :cond_5

    const-string v1, "sizeAndRate.cover, "

    invoke-static {v1, p1, v5, p2, v4}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v0

    :cond_5
    invoke-static {v1, p1, p2, p3, p4}, Lʼᵢ/ᵔʾ;->ﹳٴ(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_9

    if-ge p1, p2, :cond_8

    const-string v2, "OMX.MTK.VIDEO.DECODER.HEVC"

    iget-object v3, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "mcv5a"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v1, p2, p1, p3, p4}, Lʼᵢ/ᵔʾ;->ﹳٴ(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "sizeAndRate.rotated, "

    invoke-static {v0, p1, v5, p2, v4}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AssumedSupport ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lʼᵢ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p1}, Lᐧˎ/ﹳٴ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_8
    :goto_2
    const-string v1, "sizeAndRate.support, "

    invoke-static {v1, p1, v5, p2, v4}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lʼᵢ/ᵔʾ;->ᵔᵢ(Ljava/lang/String;)V

    return v0

    :cond_9
    :goto_3
    return v6
.end method

.method public final ᵔᵢ(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NoSupport ["

    const-string v1, "] ["

    invoke-static {v0, p1, v1}, Lˉˆ/ٴᴵ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lʼᵢ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lᐧˎ/ﹳٴ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ⁱˊ(Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;)Lⁱי/ᵎﹶ;
    .locals 8

    .prologue
    iget-object v0, p1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v1, p1, Lʽⁱ/ﹳᐧ;->ˈٴ:Lʽⁱ/ʼˎ;

    iget-object v2, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v3, p2, Lʽⁱ/ﹳᐧ;->ˈٴ:Lʽⁱ/ʼˎ;

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lʼᵢ/ᵔʾ;->ʼˎ:Z

    if-eqz v4, :cond_c

    iget v4, p1, Lʽⁱ/ﹳᐧ;->ᵢˏ:I

    iget v5, p2, Lʽⁱ/ﹳᐧ;->ᵢˏ:I

    if-eq v4, v5, :cond_1

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget v4, p1, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    iget v5, p2, Lʽⁱ/ﹳᐧ;->ʽﹳ:I

    if-ne v4, v5, :cond_2

    iget v4, p1, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    iget v5, p2, Lʽⁱ/ﹳᐧ;->ʻٴ:I

    if-eq v4, v5, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iget-boolean v4, p0, Lʼᵢ/ᵔʾ;->ˑﹳ:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x200

    :cond_4
    invoke-static {v1}, Lʽⁱ/ʼˎ;->ˑﹳ(Lʽⁱ/ʼˎ;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lʽⁱ/ʼˎ;->ˑﹳ(Lʽⁱ/ʼˎ;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    or-int/lit16 v0, v0, 0x800

    :cond_6
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "SM-T230"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    iget-object v3, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, p2}, Lʽⁱ/ﹳᐧ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Z

    move-result v1

    if-nez v1, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    iget v1, p1, Lʽⁱ/ﹳᐧ;->ـˆ:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    iget v4, p1, Lʽⁱ/ﹳᐧ;->ʾᵎ:I

    if-eq v4, v3, :cond_8

    iget v3, p2, Lʽⁱ/ﹳᐧ;->ـˆ:I

    if-ne v1, v3, :cond_8

    iget v1, p2, Lʽⁱ/ﹳᐧ;->ʾᵎ:I

    if-ne v4, v1, :cond_8

    if-eqz v2, :cond_8

    or-int/lit8 v0, v0, 0x2

    :cond_8
    if-nez v0, :cond_a

    new-instance v1, Lⁱי/ᵎﹶ;

    invoke-virtual {p1, p2}, Lʽⁱ/ﹳᐧ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_9
    const/4 v0, 0x2

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    iget-object v2, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lⁱי/ᵎﹶ;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;II)V

    return-object v1

    :cond_a
    move-object v4, p1

    move-object v5, p2

    :cond_b
    move v7, v0

    goto/16 :goto_3

    :cond_c
    move-object v4, p1

    move-object v5, p2

    iget p1, v4, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    iget p2, v5, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    if-eq p1, p2, :cond_d

    or-int/lit16 v0, v0, 0x1000

    :cond_d
    iget p1, v4, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    iget p2, v5, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-eq p1, p2, :cond_e

    or-int/lit16 v0, v0, 0x2000

    :cond_e
    iget p1, v4, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    iget p2, v5, Lʽⁱ/ﹳᐧ;->ˉٴ:I

    if-eq p1, p2, :cond_f

    or-int/lit16 v0, v0, 0x4000

    :cond_f
    iget-object p1, p0, Lʼᵢ/ᵔʾ;->ⁱˊ:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string p2, "audio/mp4a-latm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p2, Lʼᵢ/ـˆ;->ﹳٴ:Ljava/util/HashMap;

    invoke-static {v4}, Lᐧˎ/ʽ;->ʽ(Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object p2

    invoke-static {v5}, Lᐧˎ/ʽ;->ʽ(Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object v1

    if-eqz p2, :cond_10

    if-eqz v1, :cond_10

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2a

    if-ne p2, v2, :cond_10

    if-ne v1, v2, :cond_10

    new-instance v2, Lⁱי/ᵎﹶ;

    const/4 v6, 0x3

    const/4 v7, 0x0

    iget-object v3, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lⁱי/ᵎﹶ;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;II)V

    return-object v2

    :cond_10
    invoke-virtual {v4, v5}, Lʽⁱ/ﹳᐧ;->ⁱˊ(Lʽⁱ/ﹳᐧ;)Z

    move-result p2

    if-nez p2, :cond_11

    or-int/lit8 v0, v0, 0x20

    :cond_11
    const-string p2, "audio/opus"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    or-int/lit8 p1, v0, 0x2

    move v0, p1

    :cond_12
    if-nez v0, :cond_b

    new-instance v2, Lⁱי/ᵎﹶ;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lⁱי/ᵎﹶ;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;II)V

    return-object v2

    :goto_3
    new-instance v2, Lⁱי/ᵎﹶ;

    iget-object v3, p0, Lʼᵢ/ᵔʾ;->ﹳٴ:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lⁱי/ᵎﹶ;-><init>(Ljava/lang/String;Lʽⁱ/ﹳᐧ;Lʽⁱ/ﹳᐧ;II)V

    return-object v2
.end method

.method public final ﾞᴵ(Lʽⁱ/ﹳᐧ;)Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʼᵢ/ᵔʾ;->ʼˎ:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lʼᵢ/ᵔʾ;->ˑﹳ:Z

    return p1

    :cond_0
    sget-object v0, Lʼᵢ/ـˆ;->ﹳٴ:Ljava/util/HashMap;

    invoke-static {p1}, Lᐧˎ/ʽ;->ʽ(Lʽⁱ/ﹳᐧ;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
