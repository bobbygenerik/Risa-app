.class public abstract Lˎˉ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lˎˉ/ˈ;

.field public final ˈ:Ljava/util/LinkedList;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lˎˉ/ˈ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎˉ/ˈ;->ʽ:Lˎˉ/ˈ;

    iput-object p2, p0, Lˎˉ/ˈ;->ﹳٴ:Ljava/lang/String;

    iput-object p3, p0, Lˎˉ/ˈ;->ⁱˊ:Ljava/lang/String;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lˎˉ/ˈ;->ˈ:Ljava/util/LinkedList;

    return-void
.end method

.method public static ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_0
    return-wide p2
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lˎˉ/ˈ;->ˈ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˎˉ/ˈ;->ʽ:Lˎˉ/ˈ;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {v0, p1}, Lˎˉ/ˈ;->ʽ(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract ˆʾ(Lorg/xmlpull/v1/XmlPullParser;)V
.end method

.method public ˈ(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, Lˎˉ/ˈ;->ٴﹶ(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_b

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lˎˉ/ˈ;->ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v2}, Lˎˉ/ˈ;->ˈ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lˎˉ/ˈ;->ⁱˊ()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lˎˉ/ˈ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lˎˉ/ˈ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;)V

    move v0, v4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_b

    if-lez v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lˎˉ/ˈ;->ˈ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, p1}, Lˎˉ/ˈ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_6
    const-string v5, "QualityLevel"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lˎˉ/ˈ;->ﹳٴ:Ljava/lang/String;

    if-eqz v6, :cond_7

    new-instance v3, Lˎˉ/ﾞᴵ;

    invoke-direct {v3, p0, v7, v5}, Lˎˉ/ˈ;-><init>(Lˎˉ/ˈ;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v5, "Protection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v3, Lˎˉ/ˑﹳ;

    invoke-direct {v3, p0, v7, v5}, Lˎˉ/ˈ;-><init>(Lˎˉ/ˈ;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v5, "StreamIndex"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v3, Lˎˉ/ᵔᵢ;

    invoke-direct {v3, p0, v7}, Lˎˉ/ᵔᵢ;-><init>(Lˎˉ/ˈ;Ljava/lang/String;)V

    :cond_9
    :goto_1
    if-nez v3, :cond_a

    move v1, v4

    goto :goto_2

    :cond_a
    invoke-virtual {v3, p1}, Lˎˉ/ˈ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lˎˉ/ˈ;->ﹳٴ(Ljava/lang/Object;)V

    :cond_b
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto/16 :goto_0

    :cond_c
    return-object v3
.end method

.method public ٴﹶ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method public abstract ⁱˊ()Ljava/lang/Object;
.end method

.method public ﹳٴ(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final ﾞʻ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lˎˉ/ˈ;->ˈ:Ljava/util/LinkedList;

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method
