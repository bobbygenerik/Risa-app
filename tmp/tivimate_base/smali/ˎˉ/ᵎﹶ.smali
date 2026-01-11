.class public final Lˎˉ/ᵎﹶ;
.super Lˎˉ/ˈ;
.source "SourceFile"


# instance fields
.field public ʼˎ:J

.field public ˆʾ:J

.field public ˉʿ:Lˎˉ/ﹳٴ;

.field public final ˑﹳ:Ljava/util/LinkedList;

.field public ٴﹶ:I

.field public ᵎﹶ:I

.field public ᵔᵢ:J

.field public ﾞʻ:Z

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SmoothStreamingMedia"

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lˎˉ/ˈ;-><init>(Lˎˉ/ˈ;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lˎˉ/ᵎﹶ;->ٴﹶ:I

    iput-object v1, p0, Lˎˉ/ᵎﹶ;->ˉʿ:Lˎˉ/ﹳٴ;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lˎˉ/ᵎﹶ;->ˑﹳ:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final ˆʾ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .prologue
    const-string v0, "MajorVersion"

    invoke-static {p1, v0}, Lˎˉ/ˈ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˎˉ/ᵎﹶ;->ﾞᴵ:I

    const-string v0, "MinorVersion"

    invoke-static {p1, v0}, Lˎˉ/ˈ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lˎˉ/ᵎﹶ;->ᵎﹶ:I

    const-wide/32 v0, 0x989680

    const-string v2, "TimeScale"

    invoke-static {p1, v2, v0, v1}, Lˎˉ/ˈ;->ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lˎˉ/ᵎﹶ;->ᵔᵢ:J

    const/4 v0, 0x0

    const-string v1, "Duration"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide v3, p0, Lˎˉ/ᵎﹶ;->ʼˎ:J

    const-string v1, "DVRWindowLength"

    const-wide/16 v3, 0x0

    invoke-static {p1, v1, v3, v4}, Lˎˉ/ˈ;->ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lˎˉ/ᵎﹶ;->ˆʾ:J

    const-string v1, "LookaheadCount"

    invoke-static {p1, v1}, Lˎˉ/ˈ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lˎˉ/ᵎﹶ;->ٴﹶ:I

    const-string v1, "IsLive"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lˎˉ/ᵎﹶ;->ﾞʻ:Z

    iget-wide v0, p0, Lˎˉ/ᵎﹶ;->ᵔᵢ:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lˎˉ/ˈ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_1
    new-instance p1, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p1, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ()Ljava/lang/Object;
    .locals 23

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lˎˉ/ᵎﹶ;->ˑﹳ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v13, v2, [Lˎˉ/ⁱˊ;

    invoke-virtual {v1, v13}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, v0, Lˎˉ/ᵎﹶ;->ˉʿ:Lˎˉ/ﹳٴ;

    if-eqz v1, :cond_2

    new-instance v3, Lʽⁱ/ᵔʾ;

    new-instance v4, Lʽⁱ/ˉʿ;

    iget-object v5, v1, Lˎˉ/ﹳٴ;->ﹳٴ:Ljava/util/UUID;

    iget-object v1, v1, Lˎˉ/ﹳٴ;->ⁱˊ:[B

    const/4 v6, 0x0

    const-string v7, "video/mp4"

    invoke-direct {v4, v5, v6, v7, v1}, Lʽⁱ/ˉʿ;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v1, 0x1

    new-array v5, v1, [Lʽⁱ/ˉʿ;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-direct {v3, v5}, Lʽⁱ/ᵔʾ;-><init>([Lʽⁱ/ˉʿ;)V

    move v4, v6

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v13, v4

    iget v7, v5, Lˎˉ/ⁱˊ;->ﹳٴ:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    if-ne v7, v1, :cond_1

    :cond_0
    iget-object v5, v5, Lˎˉ/ⁱˊ;->ˆʾ:[Lʽⁱ/ﹳᐧ;

    move v7, v6

    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    aget-object v8, v5, v7

    invoke-virtual {v8}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v8

    iput-object v3, v8, Lʽⁱ/ᵔﹳ;->ᵔﹳ:Lʽⁱ/ᵔʾ;

    new-instance v9, Lʽⁱ/ﹳᐧ;

    invoke-direct {v9, v8}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lˎˉ/ʽ;

    iget v4, v0, Lˎˉ/ᵎﹶ;->ﾞᴵ:I

    iget v5, v0, Lˎˉ/ᵎﹶ;->ᵎﹶ:I

    iget-wide v10, v0, Lˎˉ/ᵎﹶ;->ᵔᵢ:J

    iget-wide v6, v0, Lˎˉ/ᵎﹶ;->ʼˎ:J

    iget-wide v1, v0, Lˎˉ/ᵎﹶ;->ˆʾ:J

    iget v14, v0, Lˎˉ/ᵎﹶ;->ٴﹶ:I

    iget-boolean v15, v0, Lˎˉ/ᵎﹶ;->ﾞʻ:Z

    iget-object v8, v0, Lˎˉ/ᵎﹶ;->ˉʿ:Lˎˉ/ﹳٴ;

    const-wide/16 v16, 0x0

    cmp-long v9, v6, v16

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v9, :cond_3

    move-object/from16 v20, v8

    move-wide/from16 v21, v18

    goto :goto_2

    :cond_3
    sget-object v9, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v20, v8

    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v12}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    move-wide/from16 v21, v6

    :goto_2
    cmp-long v6, v1, v16

    if-nez v6, :cond_4

    :goto_3
    move v10, v14

    move v11, v15

    move-wide/from16 v8, v18

    move-object/from16 v12, v20

    move-wide/from16 v6, v21

    goto :goto_4

    :cond_4
    sget-object v6, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v12, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v8, 0xf4240

    move-wide v6, v1

    invoke-static/range {v6 .. v12}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v18

    goto :goto_3

    :goto_4
    invoke-direct/range {v3 .. v13}, Lˎˉ/ʽ;-><init>(IIJJIZLˎˉ/ﹳٴ;[Lˎˉ/ⁱˊ;)V

    return-object v3
.end method

.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    instance-of v0, p1, Lˎˉ/ⁱˊ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎˉ/ᵎﹶ;->ˑﹳ:Ljava/util/LinkedList;

    check-cast p1, Lˎˉ/ⁱˊ;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of v0, p1, Lˎˉ/ﹳٴ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˎˉ/ᵎﹶ;->ˉʿ:Lˎˉ/ﹳٴ;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    check-cast p1, Lˎˉ/ﹳٴ;

    iput-object p1, p0, Lˎˉ/ᵎﹶ;->ˉʿ:Lˎˉ/ﹳٴ;

    :cond_2
    return-void
.end method
