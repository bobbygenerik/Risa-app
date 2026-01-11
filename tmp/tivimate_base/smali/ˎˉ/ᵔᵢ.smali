.class public final Lˎˉ/ᵔᵢ;
.super Lˎˉ/ˈ;
.source "SourceFile"


# instance fields
.field public ʼˎ:J

.field public ʼᐧ:Ljava/lang/String;

.field public ˆʾ:Ljava/lang/String;

.field public ˉʿ:I

.field public ˉˆ:I

.field public final ˑﹳ:Ljava/lang/String;

.field public ٴﹶ:Ljava/lang/String;

.field public ᵎﹶ:I

.field public ᵔʾ:I

.field public ᵔᵢ:Ljava/lang/String;

.field public ᵔﹳ:Ljava/util/ArrayList;

.field public ﹳᐧ:J

.field public ﾞʻ:I

.field public final ﾞᴵ:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lˎˉ/ˈ;Ljava/lang/String;)V
    .locals 1

    const-string v0, "StreamIndex"

    invoke-direct {p0, p1, p2, v0}, Lˎˉ/ˈ;-><init>(Lˎˉ/ˈ;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lˎˉ/ᵔᵢ;->ˑﹳ:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lˎˉ/ᵔᵢ;->ﾞᴵ:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final ˆʾ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12

    .prologue
    const-string v0, "c"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lˎˉ/ᵔᵢ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v5, "t"

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v5, v6, v7}, Lˎˉ/ˈ;->ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-nez v5, :cond_2

    if-nez v0, :cond_0

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_0
    iget-wide v8, p0, Lˎˉ/ᵔᵢ;->ﹳᐧ:J

    cmp-long v1, v8, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lˎˉ/ᵔᵢ;->ᵔﹳ:Ljava/util/ArrayList;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v8, p0, Lˎˉ/ᵔᵢ;->ﹳᐧ:J

    add-long/2addr v8, v0

    goto :goto_0

    :cond_1
    const-string p1, "Unable to infer start time"

    invoke-static {p1, v4}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lˎˉ/ᵔᵢ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "d"

    invoke-static {p1, v0, v6, v7}, Lˎˉ/ˈ;->ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lˎˉ/ᵔᵢ;->ﹳᐧ:J

    const-string v0, "r"

    const-wide/16 v1, 0x1

    invoke-static {p1, v0, v1, v2}, Lˎˉ/ˈ;->ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long p1, v10, v1

    if-lez p1, :cond_4

    iget-wide v0, p0, Lˎˉ/ᵔᵢ;->ﹳᐧ:J

    cmp-long p1, v0, v6

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Repeated chunk with unspecified duration"

    invoke-static {p1, v4}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_1
    int-to-long v0, v3

    cmp-long p1, v0, v10

    if-gez p1, :cond_5

    iget-object p1, p0, Lˎˉ/ᵔᵢ;->ᵔﹳ:Ljava/util/ArrayList;

    iget-wide v4, p0, Lˎˉ/ᵔᵢ;->ﹳᐧ:J

    mul-long/2addr v4, v0

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    const-string v0, "Type"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    const-string v6, "audio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const-string v3, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    goto :goto_2

    :cond_8
    const-string v3, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v7

    :goto_2
    iput v3, p0, Lˎˉ/ᵔᵢ;->ᵎﹶ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lˎˉ/ˈ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lˎˉ/ᵔᵢ;->ᵎﹶ:I

    const-string v3, "Subtype"

    if-ne v0, v7, :cond_a

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, p0, Lˎˉ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    goto :goto_3

    :cond_9
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, v3}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lˎˉ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    :goto_3
    iget-object v0, p0, Lˎˉ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lˎˉ/ˈ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Name"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lˎˉ/ᵔᵢ;->ˆʾ:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lˎˉ/ˈ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Url"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    iput-object v3, p0, Lˎˉ/ᵔᵢ;->ٴﹶ:Ljava/lang/String;

    const-string v0, "MaxWidth"

    invoke-static {p1, v0}, Lˎˉ/ˈ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˎˉ/ᵔᵢ;->ﾞʻ:I

    const-string v0, "MaxHeight"

    invoke-static {p1, v0}, Lˎˉ/ˈ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˎˉ/ᵔᵢ;->ˉʿ:I

    const-string v0, "DisplayWidth"

    invoke-static {p1, v0}, Lˎˉ/ˈ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˎˉ/ᵔᵢ;->ᵔʾ:I

    const-string v0, "DisplayHeight"

    invoke-static {p1, v0}, Lˎˉ/ˈ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˎˉ/ᵔᵢ;->ˉˆ:I

    const-string v0, "Language"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lˎˉ/ᵔᵢ;->ʼᐧ:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lˎˉ/ˈ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TimeScale"

    invoke-static {p1, v0}, Lˎˉ/ˈ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    iput-wide v3, p0, Lˎˉ/ᵔᵢ;->ʼˎ:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_b

    invoke-virtual {p0, v0}, Lˎˉ/ˈ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lˎˉ/ᵔᵢ;->ʼˎ:J

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˎˉ/ᵔᵢ;->ᵔﹳ:Ljava/util/ArrayList;

    return-void

    :cond_c
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid key value["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_e
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈ(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ⁱˊ()Ljava/lang/Object;
    .locals 35

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lˎˉ/ᵔᵢ;->ﾞᴵ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Lʽⁱ/ﹳᐧ;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v3, Lˎˉ/ⁱˊ;

    iget-object v5, v0, Lˎˉ/ᵔᵢ;->ٴﹶ:Ljava/lang/String;

    iget v6, v0, Lˎˉ/ᵔᵢ;->ᵎﹶ:I

    iget-object v7, v0, Lˎˉ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    iget-wide v12, v0, Lˎˉ/ᵔᵢ;->ʼˎ:J

    iget-object v1, v0, Lˎˉ/ᵔᵢ;->ˆʾ:Ljava/lang/String;

    iget v4, v0, Lˎˉ/ᵔᵢ;->ﾞʻ:I

    iget v15, v0, Lˎˉ/ᵔᵢ;->ˉʿ:I

    iget v8, v0, Lˎˉ/ᵔᵢ;->ᵔʾ:I

    iget v9, v0, Lˎˉ/ᵔᵢ;->ˉˆ:I

    move/from16 v16, v15

    iget-object v15, v0, Lˎˉ/ᵔᵢ;->ʼᐧ:Ljava/lang/String;

    iget-object v10, v0, Lˎˉ/ᵔᵢ;->ᵔﹳ:Ljava/util/ArrayList;

    move-wide/from16 v17, v12

    iget-wide v11, v0, Lˎˉ/ᵔᵢ;->ﹳᐧ:J

    sget-object v13, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-wide/from16 v19, v11

    new-array v11, v13, [J

    move-object/from16 v22, v1

    move-object/from16 v21, v2

    const-wide/32 v1, 0xf4240

    cmp-long v12, v17, v1

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    if-ltz v12, :cond_1

    rem-long v26, v17, v1

    cmp-long v26, v26, v24

    if-nez v26, :cond_1

    sget-object v12, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    move-object/from16 v26, v3

    move/from16 v27, v4

    move-wide/from16 v3, v17

    invoke-static {v3, v4, v1, v2, v12}, Lˈˋ/ʾˊ;->ᵔʾ(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    move/from16 v12, v23

    :goto_0
    if-ge v12, v13, :cond_0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    move-object/from16 v18, v5

    move/from16 v28, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2, v14}, Lˈˋ/ʾˊ;->ᵔʾ(JJLjava/math/RoundingMode;)J

    move-result-wide v5

    aput-wide v5, v11, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v18

    move/from16 v6, v28

    goto :goto_0

    :cond_0
    move/from16 v28, v6

    move-wide v12, v3

    move v1, v8

    move v2, v9

    move-object/from16 v17, v10

    :goto_1
    move-object/from16 v18, v11

    goto/16 :goto_6

    :cond_1
    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v6

    move-wide/from16 v3, v17

    move-object/from16 v18, v5

    if-gez v12, :cond_3

    rem-long v5, v1, v3

    cmp-long v5, v5, v24

    if-nez v5, :cond_3

    sget-object v5, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3, v4, v5}, Lˈˋ/ʾˊ;->ᵔʾ(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    move/from16 v5, v23

    :goto_2
    if-ge v5, v13, :cond_2

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move v12, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v1, v2}, Lˈˋ/ʾˊ;->ʽʽ(JJ)J

    move-result-wide v5

    aput-wide v5, v11, v12

    add-int/lit8 v5, v12, 0x1

    goto :goto_2

    :cond_2
    move-wide v12, v3

    move v1, v8

    move v2, v9

    move-object/from16 v17, v10

    move-object/from16 v5, v18

    goto :goto_1

    :cond_3
    move/from16 v5, v23

    :goto_3
    if-ge v5, v13, :cond_2

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v6, v1, v24

    if-nez v6, :cond_4

    move-wide v1, v3

    move v3, v13

    move-wide v12, v1

    move/from16 v23, v5

    move v1, v8

    move v2, v9

    move-object/from16 v17, v10

    move-object/from16 v5, v18

    move-object/from16 v18, v11

    const-wide/32 v10, 0xf4240

    goto/16 :goto_5

    :cond_4
    cmp-long v6, v3, v1

    if-ltz v6, :cond_5

    rem-long v31, v3, v1

    cmp-long v12, v31, v24

    if-nez v12, :cond_5

    sget-object v6, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v3, v4, v1, v2, v6}, Lˈˋ/ʾˊ;->ᵔʾ(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    move/from16 v17, v5

    const-wide/32 v5, 0xf4240

    invoke-static {v5, v6, v1, v2, v14}, Lˈˋ/ʾˊ;->ᵔʾ(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    aput-wide v1, v11, v17

    :goto_4
    move-wide v1, v3

    move v3, v13

    move-wide v12, v1

    move v1, v8

    move v2, v9

    move/from16 v23, v17

    move-object/from16 v17, v10

    move-object/from16 v33, v18

    move-object/from16 v18, v11

    move-wide v10, v5

    move-object/from16 v5, v33

    goto :goto_5

    :cond_5
    move/from16 v17, v5

    move v12, v6

    const-wide/32 v5, 0xf4240

    if-gez v12, :cond_6

    rem-long v29, v1, v3

    cmp-long v12, v29, v24

    if-nez v12, :cond_6

    sget-object v12, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3, v4, v12}, Lˈˋ/ʾˊ;->ᵔʾ(JJLjava/math/RoundingMode;)J

    move-result-wide v1

    invoke-static {v5, v6, v1, v2}, Lˈˋ/ʾˊ;->ʽʽ(JJ)J

    move-result-wide v1

    aput-wide v1, v11, v17

    goto :goto_4

    :cond_6
    move-wide/from16 v33, v3

    move v3, v13

    move-wide/from16 v12, v33

    move/from16 v23, v17

    move-object/from16 v17, v10

    move-wide/from16 v33, v1

    move v1, v8

    move v2, v9

    move-wide/from16 v8, v33

    move-object/from16 v33, v18

    move-object/from16 v18, v11

    move-wide v10, v5

    move-object/from16 v5, v33

    invoke-static/range {v8 .. v14}, Lᐧˎ/ʼʼ;->ᐧﾞ(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    aput-wide v8, v18, v23

    :goto_5
    add-int/lit8 v4, v23, 0x1

    move v8, v1

    move v9, v2

    move-wide v1, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v18, v5

    move v5, v4

    move-wide/from16 v33, v12

    move v13, v3

    move-wide/from16 v3, v33

    goto/16 :goto_3

    :goto_6
    const-wide/32 v10, 0xf4240

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v8, v19

    invoke-static/range {v8 .. v14}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v19

    iget-object v4, v0, Lˎˉ/ᵔᵢ;->ˑﹳ:Ljava/lang/String;

    move v14, v2

    move-wide v8, v12

    move/from16 v12, v16

    move-object/from16 v16, v21

    move-object/from16 v10, v22

    move-object/from16 v3, v26

    move/from16 v11, v27

    move/from16 v6, v28

    move v13, v1

    invoke-direct/range {v3 .. v20}, Lˎˉ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;IIIILjava/lang/String;[Lʽⁱ/ﹳᐧ;Ljava/util/List;[JJ)V

    return-object v3
.end method

.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    instance-of v0, p1, Lʽⁱ/ﹳᐧ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎˉ/ᵔᵢ;->ﾞᴵ:Ljava/util/LinkedList;

    check-cast p1, Lʽⁱ/ﹳᐧ;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
