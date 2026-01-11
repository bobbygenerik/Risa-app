.class public final Lˎˉ/ﾞᴵ;
.super Lˎˉ/ˈ;
.source "SourceFile"


# instance fields
.field public ˑﹳ:Lʽⁱ/ﹳᐧ;


# direct methods
.method public static ˉʿ(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p0}, Lᐧˎ/ʼʼ;->ʽﹳ(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v1, Lᐧˎ/ʽ;->ﹳٴ:[B

    array-length v1, p0

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    sget-object v4, Lᐧˎ/ʽ;->ﹳٴ:[B

    if-ge v3, v2, :cond_2

    aget-byte v5, p0, v3

    aget-byte v4, v4, v3

    if-eq v5, v4, :cond_1

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v2

    array-length v5, p0

    sub-int/2addr v5, v2

    :goto_2
    const/4 v6, -0x1

    if-gt v4, v5, :cond_6

    array-length v7, p0

    sub-int/2addr v7, v4

    if-gt v7, v2, :cond_4

    goto :goto_4

    :cond_4
    move v7, v1

    :goto_3
    sget-object v8, Lᐧˎ/ʽ;->ﹳٴ:[B

    if-ge v7, v2, :cond_7

    add-int v9, v4, v7

    aget-byte v9, p0, v9

    aget-byte v8, v8, v7

    if-eq v9, v8, :cond_5

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move v4, v6

    :cond_7
    if-ne v4, v6, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[B

    move v4, v1

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_8

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_6

    :cond_8
    array-length v6, p0

    :goto_6
    sub-int/2addr v6, v5

    new-array v7, v6, [B

    invoke-static {p0, v5, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    move-object v1, v2

    :goto_7
    if-nez v1, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_a
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_b
    return-object v0
.end method


# virtual methods
.method public final ˆʾ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .prologue
    new-instance v0, Lʽⁱ/ᵔﹳ;

    invoke-direct {v0}, Lʽⁱ/ᵔﹳ;-><init>()V

    const/4 v1, 0x0

    const-string v2, "FourCC"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    const-string v2, "H264"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "audio/mp4a-latm"

    if-nez v2, :cond_e

    const-string v2, "X264"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "AVC1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "DAVC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v2, "AAC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "AACP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v2, "TTML"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "DFXP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v2, "ac-3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "dac3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "ec-3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "dec3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "dtsc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "audio/vnd.dts"

    goto :goto_6

    :cond_5
    const-string v2, "dtsh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "dtsl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    const-string v2, "dtse"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    :cond_7
    const-string v2, "opus"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "audio/opus"

    goto :goto_6

    :cond_8
    move-object v2, v1

    goto :goto_6

    :cond_9
    :goto_0
    const-string v2, "audio/vnd.dts.hd"

    goto :goto_6

    :cond_a
    :goto_1
    const-string v2, "audio/eac3"

    goto :goto_6

    :cond_b
    :goto_2
    const-string v2, "audio/ac3"

    goto :goto_6

    :cond_c
    :goto_3
    const-string v2, "application/ttml+xml"

    goto :goto_6

    :cond_d
    :goto_4
    move-object v2, v4

    goto :goto_6

    :cond_e
    :goto_5
    const-string v2, "video/avc"

    :goto_6
    const-string v3, "Type"

    invoke-virtual {p0, v3}, Lˎˉ/ˈ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    const-string v6, "CodecPrivateData"

    if-ne v3, v5, :cond_f

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lˎˉ/ﾞᴵ;->ˉʿ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "video/mp4"

    invoke-static {v4}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v4, "MaxWidth"

    invoke-static {p1, v4}, Lˎˉ/ˈ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lʽⁱ/ᵔﹳ;->ˏי:I

    const-string v4, "MaxHeight"

    invoke-static {p1, v4}, Lˎˉ/ˈ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    iput-object v3, v0, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    goto/16 :goto_9

    :cond_f
    const/4 v5, 0x1

    if-ne v3, v5, :cond_12

    if-nez v2, :cond_10

    move-object v2, v4

    :cond_10
    const-string v3, "Channels"

    invoke-static {p1, v3}, Lˎˉ/ˈ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    const-string v5, "SamplingRate"

    invoke-static {p1, v5}, Lˎˉ/ˈ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lˎˉ/ﾞᴵ;->ˉʿ(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v5, v3}, Lˊﾞ/ﹳٴ;->ﹳٴ(II)[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_11
    const-string v4, "audio/mp4"

    invoke-static {v4}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    iput v3, v0, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput v5, v0, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iput-object v6, v0, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    goto :goto_9

    :cond_12
    const/4 v4, 0x3

    const-string v5, "application/mp4"

    if-ne v3, v4, :cond_16

    const-string v3, "Subtype"

    invoke-virtual {p0, v3}, Lˎˉ/ˈ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_15

    const-string v4, "CAPT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "DESC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    const/16 v3, 0x400

    goto :goto_8

    :cond_14
    const/16 v3, 0x40

    goto :goto_8

    :cond_15
    :goto_7
    const/4 v3, 0x0

    :goto_8
    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    iput v3, v0, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    goto :goto_9

    :cond_16
    invoke-static {v5}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    :goto_9
    const-string v3, "Index"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "Name"

    invoke-virtual {p0, v1}, Lˎˉ/ˈ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v2}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    const-string v1, "Bitrate"

    invoke-static {p1, v1}, Lˎˉ/ˈ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    const-string p1, "Language"

    invoke-virtual {p0, p1}, Lˎˉ/ˈ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iput-object p1, p0, Lˎˉ/ﾞᴵ;->ˑﹳ:Lʽⁱ/ﹳᐧ;

    return-void

    :cond_17
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, v2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˎˉ/ﾞᴵ;->ˑﹳ:Lʽⁱ/ﹳᐧ;

    return-object v0
.end method
