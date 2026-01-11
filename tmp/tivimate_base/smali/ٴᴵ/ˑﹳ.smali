.class public final Lٴᴵ/ˑﹳ;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ʼᐧ;


# static fields
.field public static final ʽʽ:Ljava/util/regex/Pattern;

.field public static final ˈٴ:Ljava/util/regex/Pattern;

.field public static final ˊʻ:[I

.field public static final ᴵˊ:Ljava/util/regex/Pattern;

.field public static final ᴵᵔ:[I


# instance fields
.field public final ʾˋ:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lٴᴵ/ˑﹳ;->ᴵˊ:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lٴᴵ/ˑﹳ;->ʽʽ:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lٴᴵ/ˑﹳ;->ˈٴ:Ljava/util/regex/Pattern;

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lٴᴵ/ˑﹳ;->ᴵᵔ:[I

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lٴᴵ/ˑﹳ;->ˊʻ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0x2
        0x3
        0x4
        0x7
        0x8
        0x18
        0x8
        0xc
        0xa
        0xc
        0xe
        0xc
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lٴᴵ/ˑﹳ;->ʾˋ:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "value"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    const-string v3, "id"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {p0, p1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance p0, Lٴᴵ/ﾞᴵ;

    invoke-direct {p0, v1, v2, v0}, Lٴᴵ/ﾞᴵ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static ʼᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ﹳᐧ;)Lٴᴵ/ﹳᐧ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lٴᴵ/יـ;->ⁱˊ:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v6, 0x0

    const-string v7, "timescale"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    move-wide v9, v4

    goto :goto_2

    :cond_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :goto_2
    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    iget-wide v7, v1, Lٴᴵ/יـ;->ʽ:J

    goto :goto_3

    :cond_2
    move-wide v7, v4

    :goto_3
    const-string v11, "presentationTimeOffset"

    invoke-interface {v0, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    :goto_4
    move-wide v11, v7

    goto :goto_5

    :cond_3
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_4

    iget-wide v7, v1, Lٴᴵ/ﹳᐧ;->ˈ:J

    goto :goto_6

    :cond_4
    move-wide v7, v4

    :goto_6
    if-eqz v1, :cond_5

    iget-wide v4, v1, Lٴᴵ/ﹳᐧ;->ˑﹳ:J

    :cond_5
    const-string v13, "indexRange"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    const-string v4, "-"

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v4, v7

    add-long/2addr v4, v2

    :cond_6
    move-wide v15, v4

    move-wide v13, v7

    if-eqz v1, :cond_7

    iget-object v6, v1, Lٴᴵ/יـ;->ﹳٴ:Lٴᴵ/ˆʾ;

    :cond_7
    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "sourceURL"

    const-string v2, "range"

    invoke-static {v0, v1, v2}, Lٴᴵ/ˑﹳ;->ˉʿ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lٴᴵ/ˆʾ;

    move-result-object v6

    :goto_8
    move-object v8, v6

    goto :goto_9

    :cond_8
    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :goto_9
    const-string v1, "SegmentBase"

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v7, Lٴᴵ/ﹳᐧ;

    invoke-direct/range {v7 .. v16}, Lٴᴵ/ﹳᐧ;-><init>(Lٴᴵ/ˆʾ;JJJJ)V

    return-object v7

    :cond_9
    move-object v6, v8

    goto :goto_7
.end method

.method public static ʽ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x6

    const/4 v10, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v10

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v2, "tag:dts.com,2018:uhd:audio_channel_configuration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v9

    goto :goto_1

    :sswitch_2
    const-string v2, "tag:dts.com,2014:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "urn:mpeg:mpegB:cicp:ChannelConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_1

    :sswitch_5
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v6

    goto :goto_1

    :sswitch_6
    const-string v2, "tag:dolby.com,2015:dash:audio_channel_configuration:2015"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v8

    goto :goto_1

    :sswitch_7
    const-string v2, "urn:dts:dash:audio_channel_configuration:2012"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v1, v7

    :goto_1
    const/16 v2, 0x10

    const-string v11, "value"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    goto/16 :goto_a

    :cond_9
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_a

    :cond_a
    :goto_2
    move v10, p1

    goto/16 :goto_a

    :pswitch_1
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    move p1, v10

    goto :goto_3

    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_3
    if-ltz p1, :cond_1b

    sget-object v0, Lٴᴵ/ˑﹳ;->ˊʻ:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1b

    aget v10, v0, p1

    goto/16 :goto_a

    :pswitch_2
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    :goto_4
    move v3, v10

    goto/16 :goto_7

    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈⁱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_5
    move v4, v10

    goto :goto_6

    :sswitch_8
    const-string v0, "fa01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_5

    :sswitch_9
    const-string v0, "f801"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    move v4, v5

    goto :goto_6

    :sswitch_a
    const-string v0, "f800"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    move v4, v6

    goto :goto_6

    :sswitch_b
    const-string v0, "a000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    move v4, v8

    goto :goto_6

    :sswitch_c
    const-string v0, "4000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_5

    :cond_10
    move v4, v7

    :cond_11
    :goto_6
    packed-switch v4, :pswitch_data_1

    goto :goto_4

    :pswitch_3
    const/16 v3, 0x8

    goto :goto_7

    :pswitch_4
    move v3, v9

    goto :goto_7

    :pswitch_5
    move v3, v6

    goto :goto_7

    :pswitch_6
    move v3, v8

    :goto_7
    :pswitch_7
    move v10, v3

    goto/16 :goto_a

    :pswitch_8
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    goto/16 :goto_a

    :cond_12
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_a

    :pswitch_9
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v9, :cond_13

    goto/16 :goto_a

    :cond_13
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ˏᵢ(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-nez v0, :cond_14

    goto/16 :goto_a

    :cond_14
    new-instance v0, Lˆʽ/ʽ;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Lˆʽ/ʽ;-><init>(C)V

    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    new-instance v2, Lﹳי/ʽ;

    invoke-direct {v2, v0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lﹳי/ʽ;)V

    aget-object p1, p1, v7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈⁱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_1b

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ac-4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_a

    :cond_15
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "03"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_a

    :cond_16
    const/16 v10, 0x15

    goto :goto_a

    :cond_17
    const/16 v10, 0x12

    goto :goto_a

    :cond_18
    move p1, v7

    :goto_8
    sget-object v1, Lٴᴵ/ˑﹳ;->ᴵᵔ:[I

    array-length v2, v1

    if-ge v7, v2, :cond_19

    shr-int v2, v0, v7

    and-int/2addr v2, v8

    aget v1, v1, v7

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_19
    if-nez p1, :cond_a

    goto :goto_a

    :pswitch_a
    invoke-interface {p0, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    move p1, v10

    goto :goto_9

    :cond_1a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_9
    if-lez p1, :cond_1b

    const/16 v0, 0x21

    if-ge p1, v0, :cond_1b

    goto/16 :goto_2

    :cond_1b
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string p1, "AudioChannelConfiguration"

    invoke-static {p0, p1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v10

    :sswitch_data_0
    .sparse-switch
        -0x7ee09c90 -> :sswitch_7
        -0x7ad5b1c4 -> :sswitch_6
        -0x50a2db6e -> :sswitch_5
        -0x43d6a909 -> :sswitch_4
        -0x3aced4cf -> :sswitch_3
        -0x4b58cf3 -> :sswitch_2
        0x129b7989 -> :sswitch_1
        0x79657164 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x185d7c -> :sswitch_c
        0x2cd22f -> :sswitch_b
        0x2f3612 -> :sswitch_a
        0x2f3613 -> :sswitch_9
        0x2fcffc -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 10

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    sget-object p1, Lᐧˎ/ʼʼ;->ˑﹳ:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    if-eqz p2, :cond_8

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    const-wide v6, 0x417e1852c0000000L    # 3.1556908E7

    mul-double/2addr p2, v6

    goto :goto_0

    :cond_1
    move-wide p2, v4

    :goto_0
    const/4 v6, 0x5

    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x4144103580000000L    # 2629739.0

    mul-double/2addr v6, v8

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    add-double/2addr p2, v6

    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x40f5180000000000L    # 86400.0

    mul-double/2addr v6, v8

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    add-double/2addr p2, v6

    const/16 v6, 0xa

    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    add-double/2addr p2, v6

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v6

    goto :goto_4

    :cond_5
    move-wide v2, v4

    :goto_4
    add-double/2addr p2, v2

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    :cond_6
    add-double/2addr p2, v4

    mul-double/2addr p2, v0

    double-to-long p1, p2

    if-nez p0, :cond_7

    neg-long p0, p1

    return-wide p0

    :cond_7
    return-wide p1

    :cond_8
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    mul-double/2addr p0, v2

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static ˉʿ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lٴᴵ/ˆʾ;
    .locals 7

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, -0x1

    if-eqz p0, :cond_1

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr p0, v2

    move-wide v4, p0

    :goto_0
    move-wide v2, v0

    goto :goto_2

    :cond_0
    :goto_1
    move-wide v4, p1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v1, Lٴᴵ/ˆʾ;

    invoke-direct/range {v1 .. v6}, Lٴᴵ/ˆʾ;-><init>(JJLjava/lang/String;)V

    return-object v1
.end method

.method public static ˉˆ(Ljava/util/ArrayList;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lٴᴵ/ﾞᴵ;

    const-string v3, "http://dashif.org/guidelines/trickmode"

    iget-object v2, v2, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x4000

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static ˏי(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lˑי/ʽ;)Lˑי/ʽ;
    .locals 11

    .prologue
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    const-string v4, "$"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_0
    if-eq v5, v3, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v5

    goto :goto_0

    :cond_1
    const-string v5, "$$"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "RepresentationID"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_3
    const-string v5, "%0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "X"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v8, "%01d"

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v9, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "Bandwidth"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move v6, v9

    goto :goto_2

    :sswitch_1
    const-string v5, "Time"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_2

    :sswitch_2
    const-string v5, "Number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move v6, v2

    :goto_2
    packed-switch v6, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid template: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v0, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_9
    new-instance p0, Lˑי/ʽ;

    invoke-direct {p0, p1, p2, v0}, Lˑי/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_a
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_2
        0x27c6ed -> :sswitch_1
        0x246e091 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "availabilityTimeOffset"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    const-string p1, "INF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const p1, 0x49742400    # 1000000.0f

    mul-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method public static יـ(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;
    .locals 14

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    move-wide v4, v8

    move v3, v10

    move v6, v3

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "S"

    invoke-static {p0, v7}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "t"

    const/4 v11, 0x0

    invoke-interface {p0, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    move-wide v12, v8

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    :goto_0
    if-eqz v3, :cond_2

    move-wide v3, v4

    move v5, v6

    move-wide v6, v12

    invoke-static/range {v0 .. v7}, Lٴᴵ/ˑﹳ;->ﹳٴ(Ljava/util/ArrayList;JJIJ)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    move-wide v6, v12

    :goto_1
    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    move-wide v1, v6

    :cond_3
    const-string v3, "d"

    invoke-interface {p0, v11, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-wide v4, v8

    goto :goto_2

    :cond_4
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-wide v4, v3

    :goto_2
    const-string v3, "r"

    invoke-interface {p0, v11, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move v6, v10

    goto :goto_3

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    invoke-static {p0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v7, "SegmentTimeline"

    invoke-static {p0, v7}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_7

    sget-object p0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/16 v11, 0x3e8

    move-wide v9, p1

    move-wide/from16 v7, p3

    invoke-static/range {v7 .. v13}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move-wide v3, v4

    move v5, v6

    move-wide v6, v7

    invoke-static/range {v0 .. v7}, Lٴᴵ/ˑﹳ;->ﹳٴ(Ljava/util/ArrayList;JJIJ)J

    :cond_7
    return-object v0
.end method

.method public static ٴﹶ(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lٴᴵ/ˑﹳ;->ᴵˊ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    :cond_0
    int-to-float p0, p1

    return p0

    :cond_1
    return p1
.end method

.method public static ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 13

    .prologue
    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈⁱ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v0, v3

    goto :goto_1

    :sswitch_0
    const-string v6, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v6, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v6, "urn:uuid:e2719d58-a985-b3c9-781a-b030af78d30e"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-string v0, "value"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    move v7, v5

    :goto_2
    if-ge v7, v6, :cond_6

    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v9, v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string v9, "default_KID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {p0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    move-object v6, v1

    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v6, "00000000-0000-0000-0000-000000000000"

    :cond_7
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [Ljava/util/UUID;

    move v8, v5

    :goto_5
    array-length v9, v6

    if-ge v8, v9, :cond_8

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    sget-object v6, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    invoke-static {v6, v7, v1}, Lʻˆ/יـ;->ﹳٴ(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    move-object v8, v1

    goto :goto_9

    :pswitch_1
    sget-object v6, Lʽⁱ/ᵔᵢ;->ˈ:Ljava/util/UUID;

    :goto_6
    move-object v0, v1

    move-object v7, v0

    :goto_7
    move-object v8, v7

    goto :goto_9

    :pswitch_2
    sget-object v6, Lʽⁱ/ᵔᵢ;->ˑﹳ:Ljava/util/UUID;

    goto :goto_6

    :pswitch_3
    sget-object v6, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    goto :goto_6

    :cond_9
    :goto_8
    move-object v0, v1

    move-object v6, v0

    move-object v7, v6

    goto :goto_7

    :cond_a
    :goto_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "clearkey:Laurl"

    invoke-static {p0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x4

    if-nez v9, :cond_b

    const-string v9, "dashif:Laurl"

    invoke-static {p0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v10, :cond_c

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_c

    :cond_c
    const-string v9, "ms:laurl"

    invoke-static {p0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v8, "licenseUrl"

    invoke-interface {p0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_c

    :cond_d
    if-nez v7, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v2, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v3, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_a
    const-string v11, "pssh"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-ne v9, v10, :cond_11

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-static {v6}, Lʻˆ/יـ;->ˆʾ([B)Lʻʽ/ʼˎ;

    move-result-object v7

    if-nez v7, :cond_f

    move-object v7, v1

    goto :goto_b

    :cond_f
    iget-object v7, v7, Lʻʽ/ʼˎ;->ʽ:Ljava/lang/Object;

    check-cast v7, Ljava/util/UUID;

    :goto_b
    if-nez v7, :cond_10

    const-string v6, "MpdParser"

    const-string v9, "Skipping malformed cenc:pssh data"

    invoke-static {v6, v9}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v1

    goto :goto_c

    :cond_10
    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_c

    :cond_11
    if-nez v7, :cond_12

    sget-object v9, Lʽⁱ/ᵔᵢ;->ˑﹳ:Ljava/util/UUID;

    invoke-virtual {v9, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "mspr:pro"

    invoke-static {p0, v11}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-ne v11, v10, :cond_12

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-static {v9, v1, v7}, Lʻˆ/יـ;->ﹳٴ(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    goto :goto_c

    :cond_12
    invoke-static {p0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_c
    const-string v9, "ContentProtection"

    invoke-static {p0, v9}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-eqz v6, :cond_13

    new-instance v1, Lʽⁱ/ˉʿ;

    const-string p0, "video/mp4"

    invoke-direct {v1, v6, v8, p0, v7}, Lʽⁱ/ˉʿ;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_13
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7610741f -> :sswitch_3
        0x1d2c5beb -> :sswitch_2
        0x2d06c692 -> :sswitch_1
        0x6c0c9d2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ᵔʾ(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "supplementary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "emergency"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "commentary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "caption"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "sign"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    move v6, v2

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "main"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "dub"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "forced-subtitle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "alternate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    move v6, v3

    goto :goto_0

    :sswitch_9
    const-string v1, "forced_subtitle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_a
    const-string v1, "enhanced-audio-intelligibility"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    move v6, v4

    goto :goto_0

    :sswitch_b
    const-string v1, "description"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    move v6, v5

    goto :goto_0

    :sswitch_c
    const-string v1, "subtitle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    move v6, v0

    :goto_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    return v0

    :pswitch_0
    return v3

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    return v2

    :pswitch_3
    const/16 p0, 0x40

    return p0

    :pswitch_4
    const/16 p0, 0x100

    return p0

    :pswitch_5
    return v5

    :pswitch_6
    const/16 p0, 0x10

    return p0

    :pswitch_7
    return v4

    :pswitch_8
    const/16 p0, 0x800

    return p0

    :pswitch_9
    const/16 p0, 0x200

    return p0

    :pswitch_a
    const/16 p0, 0x80

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_c
        -0x66ca7c04 -> :sswitch_b
        -0x5e3a5c50 -> :sswitch_a
        -0x5dde3142 -> :sswitch_9
        -0x53ecbf86 -> :sswitch_8
        -0x533bdf74 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "contentType"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static ᵔﹳ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ˉˆ;JJJJJ)Lٴᴵ/ˉˆ;
    .locals 25

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lٴᴵ/יـ;->ⁱˊ:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v6, 0x0

    const-string v7, "timescale"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    move-wide v9, v4

    goto :goto_2

    :cond_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lٴᴵ/יـ;->ʽ:J

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x0

    :goto_3
    const-string v7, "presentationTimeOffset"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_4
    move-wide v11, v4

    goto :goto_5

    :cond_3
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_4

    :goto_5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_4

    iget-wide v7, v1, Lٴᴵ/ᵔʾ;->ˑﹳ:J

    goto :goto_6

    :cond_4
    move-wide v7, v4

    :goto_6
    const-string v13, "duration"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    :goto_7
    move-wide v15, v7

    goto :goto_8

    :cond_5
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_7

    :goto_8
    if-eqz v1, :cond_6

    iget-wide v2, v1, Lٴᴵ/ᵔʾ;->ˈ:J

    :cond_6
    const-string v7, "startNumber"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :goto_9
    move-wide v13, v2

    goto :goto_a

    :cond_7
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_9

    :goto_a
    cmp-long v2, p8, v4

    if-nez v2, :cond_8

    move-wide/from16 v2, p6

    goto :goto_b

    :cond_8
    move-wide/from16 v2, p8

    :goto_b
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v2, v7

    if-nez v7, :cond_9

    move-wide/from16 v18, v4

    goto :goto_c

    :cond_9
    move-wide/from16 v18, v2

    :goto_c
    move-object v2, v6

    move-object v3, v2

    :cond_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v4, "Initialization"

    invoke-static {v0, v4}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v2, "sourceURL"

    const-string v4, "range"

    invoke-static {v0, v2, v4}, Lٴᴵ/ˑﹳ;->ˉʿ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lٴᴵ/ˆʾ;

    move-result-object v2

    move-wide/from16 v4, p4

    goto :goto_d

    :cond_b
    const-string v4, "SegmentTimeline"

    invoke-static {v0, v4}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-wide/from16 v4, p4

    invoke-static {v0, v9, v10, v4, v5}, Lٴᴵ/ˑﹳ;->יـ(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_d

    :cond_c
    move-wide/from16 v4, p4

    const-string v7, "SegmentURL"

    invoke-static {v0, v7}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    if-nez v6, :cond_d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    const-string v7, "media"

    const-string v8, "mediaRange"

    invoke-static {v0, v7, v8}, Lٴᴵ/ˑﹳ;->ˉʿ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lٴᴵ/ˆʾ;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_e
    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_d
    const-string v7, "SegmentList"

    invoke-static {v0, v7}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v1, :cond_12

    if-eqz v2, :cond_f

    goto :goto_e

    :cond_f
    iget-object v2, v1, Lٴᴵ/יـ;->ﹳٴ:Lٴᴵ/ˆʾ;

    :goto_e
    if-eqz v3, :cond_10

    goto :goto_f

    :cond_10
    iget-object v3, v1, Lٴᴵ/ᵔʾ;->ﾞᴵ:Ljava/util/List;

    :goto_f
    if-eqz v6, :cond_11

    goto :goto_10

    :cond_11
    iget-object v6, v1, Lٴᴵ/ˉˆ;->ˆʾ:Ljava/util/List;

    :cond_12
    :goto_10
    move-object v8, v2

    move-object/from16 v17, v3

    move-object/from16 v20, v6

    new-instance v7, Lٴᴵ/ˉˆ;

    invoke-static/range {p10 .. p11}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v21

    invoke-static/range {p2 .. p3}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v23

    invoke-direct/range {v7 .. v24}, Lٴᴵ/ˉˆ;-><init>(Lٴᴵ/ˆʾ;JJJJLjava/util/List;JLjava/util/List;JJ)V

    return-object v7
.end method

.method public static ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .prologue
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static ﹳٴ(Ljava/util/ArrayList;JJIJ)J
    .locals 2

    .prologue
    if-ltz p5, :cond_0

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p6, p1

    sget-object p5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    add-long/2addr p6, p3

    const-wide/16 v0, 0x1

    sub-long/2addr p6, v0

    div-long/2addr p6, p3

    long-to-int p5, p6

    :goto_0
    const/4 p6, 0x0

    :goto_1
    if-ge p6, p5, :cond_1

    new-instance p7, Lٴᴵ/ᵔﹳ;

    invoke-direct {p7, p1, p2, p3, p4}, Lٴᴵ/ᵔﹳ;-><init>(JJ)V

    invoke-virtual {p0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr p1, p3

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public static ﹳᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ʼᐧ;Ljava/util/List;JJJJJ)Lٴᴵ/ʼᐧ;
    .locals 28

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lٴᴵ/יـ;->ⁱˊ:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v6, 0x0

    const-string v7, "timescale"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    move-wide v9, v4

    goto :goto_2

    :cond_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lٴᴵ/יـ;->ʽ:J

    goto :goto_3

    :cond_2
    const-wide/16 v4, 0x0

    :goto_3
    const-string v7, "presentationTimeOffset"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    :goto_4
    move-wide v11, v4

    goto :goto_5

    :cond_3
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_4

    :goto_5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_4

    iget-wide v7, v1, Lٴᴵ/ᵔʾ;->ˑﹳ:J

    goto :goto_6

    :cond_4
    move-wide v7, v4

    :goto_6
    const-string v13, "duration"

    invoke-interface {v0, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    :goto_7
    move-wide/from16 v17, v7

    goto :goto_8

    :cond_5
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_7

    :goto_8
    if-eqz v1, :cond_6

    iget-wide v2, v1, Lٴᴵ/ᵔʾ;->ˈ:J

    :cond_6
    const-string v7, "startNumber"

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :goto_9
    move-wide v13, v2

    goto :goto_a

    :cond_7
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_9

    :goto_a
    const/4 v2, 0x0

    :goto_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lٴᴵ/ﾞᴵ;

    const-string v8, "http://dashif.org/guidelines/last-segment-number"

    iget-object v15, v7, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v8, v15}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v2, v7, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_c
    move-wide v15, v2

    goto :goto_d

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_9
    const-wide/16 v2, -0x1

    goto :goto_c

    :goto_d
    cmp-long v2, p9, v4

    if-nez v2, :cond_a

    move-wide/from16 v2, p7

    goto :goto_e

    :cond_a
    move-wide/from16 v2, p9

    :goto_e
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v2, v7

    if-nez v7, :cond_b

    move-wide/from16 v20, v4

    goto :goto_f

    :cond_b
    move-wide/from16 v20, v2

    :goto_f
    if-eqz v1, :cond_c

    iget-object v2, v1, Lٴᴵ/ʼᐧ;->ٴﹶ:Lˑי/ʽ;

    goto :goto_10

    :cond_c
    move-object v2, v6

    :goto_10
    const-string v3, "media"

    invoke-static {v0, v3, v2}, Lٴᴵ/ˑﹳ;->ˏי(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lˑי/ʽ;)Lˑי/ʽ;

    move-result-object v23

    if-eqz v1, :cond_d

    iget-object v2, v1, Lٴᴵ/ʼᐧ;->ˆʾ:Lˑי/ʽ;

    goto :goto_11

    :cond_d
    move-object v2, v6

    :goto_11
    const-string v3, "initialization"

    invoke-static {v0, v3, v2}, Lٴᴵ/ˑﹳ;->ˏי(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lˑי/ʽ;)Lˑי/ʽ;

    move-result-object v22

    move-object v2, v6

    :cond_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "Initialization"

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "sourceURL"

    const-string v4, "range"

    invoke-static {v0, v3, v4}, Lٴᴵ/ˑﹳ;->ˉʿ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lٴᴵ/ˆʾ;

    move-result-object v3

    move-object v6, v3

    move-wide/from16 v3, p5

    goto :goto_12

    :cond_f
    const-string v3, "SegmentTimeline"

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-wide/from16 v3, p5

    invoke-static {v0, v9, v10, v3, v4}, Lٴᴵ/ˑﹳ;->יـ(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_12

    :cond_10
    move-wide/from16 v3, p5

    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_12
    const-string v5, "SegmentTemplate"

    invoke-static {v0, v5}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v1, :cond_13

    if-eqz v6, :cond_11

    goto :goto_13

    :cond_11
    iget-object v6, v1, Lٴᴵ/יـ;->ﹳٴ:Lٴᴵ/ˆʾ;

    :goto_13
    if-eqz v2, :cond_12

    goto :goto_14

    :cond_12
    iget-object v2, v1, Lٴᴵ/ᵔʾ;->ﾞᴵ:Ljava/util/List;

    :cond_13
    :goto_14
    move-object/from16 v19, v2

    move-object v8, v6

    new-instance v7, Lٴᴵ/ʼᐧ;

    invoke-static/range {p11 .. p12}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v24

    invoke-static/range {p3 .. p4}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v26

    invoke-direct/range {v7 .. v27}, Lٴᴵ/ʼᐧ;-><init>(Lٴᴵ/ˆʾ;JJJJJLjava/util/List;JLˑי/ʽ;Lˑי/ʽ;JJ)V

    return-object v7
.end method

.method public static ﾞʻ(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lٴᴵ/ʽ;
    .locals 163

    .prologue
    move-object/from16 v0, p0

    const/4 v13, 0x0

    new-array v1, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v2, "profiles"

    invoke-interface {v0, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v2, v1

    move v3, v13

    :goto_1
    const/4 v15, 0x1

    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "urn:dvb:dash:profile:dvb-dash:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v12, v15

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v12, v13

    :goto_2
    const-string v1, "availabilityStartTime"

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_3

    move-wide/from16 v17, v2

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lᐧˎ/ʼʼ;->ˈⁱ(Ljava/lang/String;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    :goto_3
    const-string v1, "mediaPresentationDuration"

    invoke-static {v0, v1, v2, v3}, Lٴᴵ/ˑﹳ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    const-string v1, "minBufferTime"

    invoke-static {v0, v1, v2, v3}, Lٴᴵ/ˑﹳ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    const-string v1, "type"

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "dynamic"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    const-string v1, "minimumUpdatePeriod"

    invoke-static {v0, v1, v2, v3}, Lٴᴵ/ˑﹳ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    move-wide/from16 v24, v4

    goto :goto_4

    :cond_4
    move-wide/from16 v24, v2

    :goto_4
    if-eqz v23, :cond_5

    const-string v1, "timeShiftBufferDepth"

    invoke-static {v0, v1, v2, v3}, Lٴᴵ/ˑﹳ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v10, v4

    goto :goto_5

    :cond_5
    move-wide v10, v2

    :goto_5
    if-eqz v23, :cond_6

    const-string v1, "suggestedPresentationDelay"

    invoke-static {v0, v1, v2, v3}, Lٴᴵ/ˑﹳ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    move-wide/from16 v28, v4

    goto :goto_6

    :cond_6
    move-wide/from16 v28, v2

    :goto_6
    const-string v1, "publishTime"

    invoke-interface {v0, v14, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-wide/from16 v30, v2

    goto :goto_7

    :cond_7
    invoke-static {v1}, Lᐧˎ/ʼʼ;->ˈⁱ(Ljava/lang/String;)J

    move-result-wide v4

    move-wide/from16 v30, v4

    :goto_7
    const-wide/16 v26, 0x0

    if-eqz v23, :cond_8

    move-wide/from16 v4, v26

    goto :goto_8

    :cond_8
    move-wide v4, v2

    :goto_8
    new-instance v1, Lٴᴵ/ⁱˊ;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v12, :cond_9

    move v8, v15

    goto :goto_9

    :cond_9
    const/high16 v8, -0x80000000

    :goto_9
    invoke-direct {v1, v8, v15, v6, v7}, Lٴᴵ/ⁱˊ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-array v6, v15, [Lٴᴵ/ⁱˊ;

    aput-object v1, v6, v13

    invoke-static {v6}, Lʼʻ/ﹳᐧ;->ᵔʾ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v23, :cond_a

    move-wide v7, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v7, v26

    :goto_a
    move/from16 v16, v13

    move/from16 v32, v16

    move-object/from16 v33, v14

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v37, v35

    :goto_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "BaseURL"

    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_c

    if-nez v16, :cond_b

    invoke-static {v0, v4, v5}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    move/from16 v16, v15

    :cond_b
    invoke-static {v0, v1, v12}, Lٴᴵ/ˑﹳ;->ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v51, v1

    move-object/from16 v44, v6

    move-wide/from16 v42, v7

    move/from16 v62, v12

    move/from16 v38, v13

    move/from16 v40, v15

    move-object/from16 v7, v36

    move-wide v13, v2

    :goto_c
    move-wide v11, v10

    goto/16 :goto_92

    :cond_c
    move/from16 v38, v13

    const-string v13, "ProgramInformation"

    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    move/from16 v40, v15

    const-string v15, "lang"

    if-eqz v39, :cond_13

    const-string v9, "moreInformationURL"

    invoke-interface {v0, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    move-object/from16 v45, v14

    goto :goto_d

    :cond_d
    move-object/from16 v45, v9

    :goto_d
    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    move-object/from16 v46, v14

    goto :goto_e

    :cond_e
    move-object/from16 v46, v9

    :goto_e
    move-object v9, v14

    move-object v15, v9

    move-object/from16 v33, v15

    :goto_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-wide/from16 v47, v2

    const-string v2, "Title"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    :goto_10
    move-object/from16 v42, v9

    move-object/from16 v43, v15

    move-object/from16 v44, v33

    goto :goto_11

    :cond_f
    const-string v2, "Source"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    goto :goto_10

    :cond_10
    const-string v2, "Copyright"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v33

    goto :goto_10

    :cond_11
    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

    :goto_11
    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v41, Lٴᴵ/ʼˎ;

    invoke-direct/range {v41 .. v46}, Lٴᴵ/ʼˎ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v51, v1

    move-object/from16 v44, v6

    move-wide/from16 v42, v7

    move/from16 v62, v12

    move-object/from16 v7, v36

    move-object/from16 v33, v41

    :goto_12
    move-wide/from16 v13, v47

    goto :goto_c

    :cond_12
    move-object/from16 v9, v42

    move-object/from16 v15, v43

    move-object/from16 v33, v44

    move-wide/from16 v2, v47

    goto :goto_f

    :cond_13
    move-wide/from16 v47, v2

    const-string v2, "UTCTiming"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "value"

    const-string v13, "schemeIdUri"

    if-eqz v2, :cond_14

    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lˈـ/ʾˋ;

    const/4 v13, 0x2

    invoke-direct {v9, v13, v2, v3}, Lˈـ/ʾˋ;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v51, v1

    move-object/from16 v44, v6

    move-wide/from16 v42, v7

    move-object/from16 v34, v9

    :goto_13
    move/from16 v62, v12

    move-object/from16 v7, v36

    goto :goto_12

    :cond_14
    const-string v2, "Location"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lᐧˎ/ﹳٴ;->ᴵˊ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v51, v1

    move-object/from16 v44, v6

    move-wide/from16 v42, v7

    goto :goto_13

    :cond_15
    const-string v2, "ServiceDescription"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1e

    const v41, -0x800001

    move/from16 v3, v41

    move v9, v3

    move-wide/from16 v42, v47

    move-wide/from16 v44, v42

    move-wide/from16 v49, v44

    :goto_14
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v13, "Latency"

    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    const-string v15, "max"

    const-string v14, "min"

    if-eqz v13, :cond_1a

    const-string v13, "target"

    move-object/from16 v51, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_16

    move-wide/from16 v42, v47

    goto :goto_15

    :cond_16
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    :goto_15
    invoke-interface {v0, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_17

    move-wide/from16 v44, v47

    goto :goto_16

    :cond_17
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v44, v13

    :goto_16
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_18

    move-wide/from16 v49, v47

    goto :goto_17

    :cond_18
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide/from16 v49, v13

    :cond_19
    :goto_17
    move-wide/from16 v13, v42

    move-wide/from16 v42, v4

    move-wide/from16 v4, v44

    move-wide/from16 v44, v10

    move-wide/from16 v10, v49

    goto :goto_19

    :cond_1a
    move-object/from16 v51, v1

    const/4 v1, 0x0

    const-string v13, "PlaybackRate"

    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v0, v1, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    move/from16 v3, v41

    goto :goto_18

    :cond_1b
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :goto_18
    invoke-interface {v0, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1c

    move/from16 v9, v41

    goto :goto_17

    :cond_1c
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v9, v1

    goto :goto_17

    :goto_19
    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Lʽⁱ/ـˆ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-wide v13, v1, Lʽⁱ/ـˆ;->ﹳٴ:J

    iput-wide v4, v1, Lʽⁱ/ـˆ;->ⁱˊ:J

    iput-wide v10, v1, Lʽⁱ/ـˆ;->ʽ:J

    iput v3, v1, Lʽⁱ/ـˆ;->ˈ:F

    iput v9, v1, Lʽⁱ/ـˆ;->ˑﹳ:F

    move-object/from16 v37, v1

    move/from16 v62, v12

    move-wide/from16 v4, v42

    move-wide/from16 v11, v44

    move-wide/from16 v13, v47

    move-object/from16 v44, v6

    move-wide/from16 v42, v7

    move-object/from16 v7, v36

    goto/16 :goto_92

    :cond_1d
    move-wide/from16 v49, v10

    move-wide/from16 v10, v44

    move-object/from16 v1, v51

    move-wide/from16 v44, v4

    move-wide/from16 v4, v42

    move-wide/from16 v42, v13

    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_1e
    move-object/from16 v51, v1

    move-wide/from16 v42, v4

    move-wide/from16 v44, v10

    const-string v14, "Period"

    invoke-static {v0, v14}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b1

    if-nez v32, :cond_b1

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    move-object v1, v6

    goto :goto_1a

    :cond_1f
    move-object/from16 v1, v51

    :goto_1a
    const-string v2, "id"

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    const-string v4, "start"

    invoke-static {v0, v4, v7, v8}, Lٴᴵ/ˑﹳ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v54

    cmp-long v4, v17, v47

    if-eqz v4, :cond_20

    add-long v4, v17, v54

    goto :goto_1b

    :cond_20
    move-wide/from16 v4, v47

    :goto_1b
    const-string v10, "duration"

    move-object v11, v3

    move-wide/from16 v49, v4

    move-wide/from16 v3, v47

    invoke-static {v0, v10, v3, v4}, Lٴᴵ/ˑﹳ;->ˆʾ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v47

    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v60, v3

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move/from16 v52, v38

    move-wide/from16 v13, v42

    const/16 v41, 0x0

    :goto_1c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v62

    if-eqz v62, :cond_22

    if-nez v52, :cond_21

    invoke-static {v0, v13, v14}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v13

    move/from16 v52, v40

    :cond_21
    invoke-static {v0, v1, v12}, Lٴᴵ/ˑﹳ;->ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v69, v1

    move-object/from16 v100, v2

    move-object/from16 v136, v9

    move-object/from16 v80, v10

    move-object/from16 v84, v11

    move/from16 v62, v12

    move-wide/from16 v65, v13

    move-object/from16 v110, v15

    move-wide/from16 v11, v44

    move-wide/from16 v3, v49

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v1, v59

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x2

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    move-wide/from16 v5, v47

    move-wide/from16 v47, v42

    move-wide/from16 v42, v7

    goto/16 :goto_8d

    :cond_22
    const-string v3, "AdaptationSet"

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    const-string v64, ""

    move-wide/from16 v65, v13

    const-string v14, "SegmentTemplate"

    const-string v13, "SegmentList"

    move-object/from16 v68, v14

    const-string v14, "SegmentBase"

    if-eqz v4, :cond_99

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 v69, v1

    move-object v4, v5

    :goto_1d
    const/4 v1, 0x0

    goto :goto_1e

    :cond_23
    move-object v4, v1

    move-object/from16 v69, v4

    goto :goto_1d

    :goto_1e
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_24

    const-wide/16 v70, -0x1

    :goto_1f
    move-wide/from16 v73, v70

    goto :goto_20

    :cond_24
    invoke-static/range {v46 .. v46}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v70

    goto :goto_1f

    :goto_20
    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v70

    move-object/from16 v71, v3

    const-string v3, "mimeType"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v75, v5

    const-string v5, "codecs"

    move-object/from16 v76, v6

    invoke-interface {v0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v77, v7

    const-string v7, "scte214:supplementalCodecs"

    invoke-interface {v0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v79

    const-string v8, "scte214:supplementalProfiles"

    invoke-interface {v0, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v80, v10

    const-string v10, "width"

    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_25

    const/16 v82, -0x1

    goto :goto_21

    :cond_25
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    move/from16 v82, v46

    :goto_21
    const-string v1, "height"

    move-object/from16 v84, v11

    const/4 v11, 0x0

    invoke-interface {v0, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_26

    const/16 v81, -0x1

    goto :goto_22

    :cond_26
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    move/from16 v81, v46

    :goto_22
    const/high16 v11, -0x40800000    # -1.0f

    invoke-static {v0, v11}, Lٴᴵ/ˑﹳ;->ٴﹶ(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v11

    move-object/from16 v85, v13

    const-string v13, "audioSamplingRate"

    move-object/from16 v86, v14

    const/4 v14, 0x0

    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_27

    const/16 v87, -0x1

    goto :goto_23

    :cond_27
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    move/from16 v87, v46

    :goto_23
    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v89, v13

    const-string v13, "label"

    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v90, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v91, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v92, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move/from16 v93, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v94, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v95, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v96, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v97, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v100, v2

    move-object/from16 v101, v3

    move-object/from16 v98, v5

    move/from16 v99, v38

    move-object/from16 v102, v41

    move-wide/from16 v103, v60

    move-wide/from16 v2, v65

    move-object/from16 v5, v88

    const/16 v105, -0x1

    move-object/from16 v88, v7

    move/from16 v7, v70

    const/16 v70, 0x0

    :goto_24
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v106

    if-eqz v106, :cond_2a

    if-nez v99, :cond_28

    invoke-static {v0, v2, v3}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v2

    move/from16 v99, v40

    :cond_28
    move-wide/from16 v106, v2

    invoke-static {v0, v4, v12}, Lٴᴵ/ˑﹳ;->ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_29
    :goto_25
    move-object/from16 v113, v4

    move-object/from16 v142, v5

    move-object/from16 v136, v9

    move-object/from16 v63, v10

    move/from16 v62, v12

    move-object/from16 v109, v13

    move-object/from16 v112, v14

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v13, v85

    move-object/from16 v14, v86

    move-object/from16 v3, v91

    move-object/from16 v4, v92

    move/from16 v135, v93

    move-object/from16 v119, v96

    move-object/from16 v150, v100

    const/4 v2, 0x2

    const/16 v83, -0x1

    :goto_26
    move-object/from16 v85, v8

    move-object/from16 v96, v88

    move-object/from16 v88, v98

    move-object/from16 v98, v101

    move-wide/from16 v100, v49

    move-object/from16 v49, v6

    move-object/from16 v50, v11

    move-wide/from16 v11, v44

    move-wide/from16 v5, v47

    move-object/from16 v45, v75

    move-object/from16 v44, v76

    move/from16 v75, v7

    move-object v7, v15

    move-wide/from16 v47, v42

    move-object/from16 v15, v68

    move-wide/from16 v42, v77

    move-object/from16 v78, v1

    move-object/from16 v1, v71

    goto/16 :goto_6a

    :cond_2a
    move-wide/from16 v106, v2

    const-string v2, "ContentProtection"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_2b

    move-object/from16 v70, v3

    check-cast v70, Ljava/lang/String;

    :cond_2b
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_29

    check-cast v2, Lʽⁱ/ˉʿ;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_2c
    const-string v3, "ContentComponent"

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x0

    invoke-interface {v0, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v5, :cond_2d

    move-object v5, v2

    goto :goto_27

    :cond_2d
    if-nez v2, :cond_2e

    goto :goto_27

    :cond_2e
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    :goto_27
    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ᵔᵢ(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v7, v3, :cond_2f

    move v7, v2

    goto :goto_29

    :cond_2f
    if-ne v2, v3, :cond_30

    goto :goto_29

    :cond_30
    if-ne v7, v2, :cond_31

    move/from16 v2, v40

    goto :goto_28

    :cond_31
    move/from16 v2, v38

    :goto_28
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    :goto_29
    move/from16 v83, v3

    move-object/from16 v113, v4

    move-object/from16 v142, v5

    move-object/from16 v136, v9

    move-object/from16 v63, v10

    move/from16 v62, v12

    move-object/from16 v109, v13

    move-object/from16 v112, v14

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v13, v85

    move-object/from16 v14, v86

    move-object/from16 v3, v91

    move-object/from16 v4, v92

    move/from16 v135, v93

    move-object/from16 v119, v96

    move-object/from16 v150, v100

    const/4 v2, 0x2

    goto/16 :goto_26

    :cond_32
    const-string v3, "Role"

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v108

    if-eqz v108, :cond_33

    invoke-static {v0, v3}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    move-object/from16 v113, v4

    move-object/from16 v142, v5

    move/from16 v126, v7

    move-object/from16 v136, v9

    move-object/from16 v63, v10

    move/from16 v62, v12

    move-object/from16 v109, v13

    :goto_2b
    move-object/from16 v112, v14

    move-object v7, v15

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v15, v68

    move-object/from16 v146, v71

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v13, v85

    move-object/from16 v14, v86

    move-object/from16 v3, v91

    move-object/from16 v4, v92

    move/from16 v135, v93

    move-object/from16 v119, v96

    move-object/from16 v150, v100

    move-wide/from16 v56, v103

    const/4 v2, 0x2

    const/16 v83, -0x1

    move-object/from16 v85, v8

    move-object/from16 v96, v88

    move-object/from16 v88, v98

    move-object/from16 v98, v101

    move-wide/from16 v100, v49

    move-object/from16 v49, v6

    move-object/from16 v50, v11

    move-wide/from16 v11, v44

    move-wide/from16 v5, v47

    move-object/from16 v45, v75

    move-object/from16 v44, v76

    move-wide/from16 v47, v42

    move-wide/from16 v42, v77

    move-object/from16 v78, v1

    goto/16 :goto_69

    :cond_33
    const-string v3, "AudioChannelConfiguration"

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v108

    if-eqz v108, :cond_34

    invoke-static {v0, v6}, Lٴᴵ/ˑﹳ;->ʽ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    move/from16 v105, v2

    goto/16 :goto_25

    :cond_34
    move-object/from16 v108, v2

    const-string v2, "Accessibility"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v109

    if-eqz v109, :cond_35

    invoke-static {v0, v2}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_35
    const-string v2, "EssentialProperty"

    invoke-static {v0, v2}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v109

    if-eqz v109, :cond_36

    invoke-static {v0, v2}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_36
    move-object/from16 v109, v13

    const-string v13, "SupplementalProperty"

    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v110

    if-eqz v110, :cond_37

    invoke-static {v0, v13}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v113, v4

    move-object/from16 v142, v5

    move/from16 v126, v7

    move-object/from16 v136, v9

    move-object/from16 v63, v10

    move/from16 v62, v12

    goto/16 :goto_2b

    :cond_37
    move-object/from16 v110, v15

    const-string v15, "Representation"

    invoke-static {v0, v15}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v111

    move-object/from16 v112, v14

    const-string v14, "InbandEventStream"

    if-eqz v111, :cond_7f

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v111

    move-object/from16 v113, v4

    if-nez v111, :cond_38

    move-object/from16 v111, v15

    move-object v15, v8

    :goto_2c
    move-object/from16 v114, v13

    move-object/from16 v4, v100

    move-object/from16 v100, v2

    const/4 v2, 0x0

    goto :goto_2d

    :cond_38
    move-object/from16 v111, v15

    move-object/from16 v15, v113

    goto :goto_2c

    :goto_2d
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v115, v4

    const-string v4, "bandwidth"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_39

    move-object/from16 v4, v101

    const/16 v101, -0x1

    goto :goto_2e

    :cond_39
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v161, v101

    move/from16 v101, v4

    move-object/from16 v4, v161

    :goto_2e
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v116, v98

    move-object/from16 v98, v4

    move-object/from16 v4, v116

    if-nez v46, :cond_3a

    move-object/from16 v116, v72

    goto :goto_2f

    :cond_3a
    move-object/from16 v116, v46

    :goto_2f
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v117, v88

    move-object/from16 v88, v4

    move-object/from16 v4, v117

    move-object/from16 v117, v13

    if-nez v46, :cond_3b

    move-object v13, v6

    goto :goto_30

    :cond_3b
    move-object/from16 v13, v46

    :goto_30
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v118, v96

    move-object/from16 v96, v4

    move-object/from16 v4, v118

    if-nez v46, :cond_3c

    move-object/from16 v118, v79

    goto :goto_31

    :cond_3c
    move-object/from16 v118, v46

    :goto_31
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v119, v4

    move-object/from16 v4, v95

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_3d

    move/from16 v120, v82

    :goto_32
    move-object/from16 v95, v4

    move-object/from16 v4, v94

    goto :goto_33

    :cond_3d
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    move/from16 v120, v46

    goto :goto_32

    :goto_33
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    if-nez v46, :cond_3e

    move/from16 v121, v81

    :goto_34
    move-object/from16 v94, v4

    move/from16 v4, v93

    move-object/from16 v93, v14

    goto :goto_35

    :cond_3e
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    move/from16 v121, v46

    goto :goto_34

    :goto_35
    invoke-static {v0, v4}, Lٴᴵ/ˑﹳ;->ٴﹶ(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v14

    move/from16 v122, v14

    move-object/from16 v14, v89

    invoke-interface {v0, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v89

    if-nez v89, :cond_3f

    move/from16 v2, v87

    :goto_36
    move-object/from16 v89, v14

    goto :goto_37

    :cond_3f
    invoke-static/range {v89 .. v89}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_36

    :goto_37
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v128, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v129, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v130, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v131, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v132, v1

    move/from16 v133, v2

    move-object/from16 v125, v6

    move/from16 v126, v7

    move/from16 v123, v38

    move-object/from16 v127, v102

    move-wide/from16 v1, v103

    move/from16 v134, v105

    move-wide/from16 v6, v106

    const/16 v124, 0x0

    :goto_38
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v135

    if-eqz v135, :cond_41

    if-nez v123, :cond_40

    invoke-static {v0, v6, v7}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v6

    move/from16 v123, v40

    :cond_40
    move/from16 v135, v4

    invoke-static {v0, v15, v12}, Lٴᴵ/ˑﹳ;->ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_39
    move-object/from16 v142, v5

    move-object/from16 v136, v9

    move-object/from16 v63, v10

    move/from16 v62, v12

    move-object/from16 v137, v13

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v146, v71

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v148, v85

    move-object/from16 v149, v86

    move-object/from16 v9, v93

    move-object/from16 v141, v97

    move/from16 v143, v101

    move-object/from16 v13, v108

    move-object/from16 v150, v115

    move/from16 v138, v126

    move-object/from16 v10, v128

    move-object/from16 v4, v131

    move/from16 v144, v133

    move-object/from16 v86, v3

    move-object/from16 v85, v8

    move-object/from16 v57, v14

    move-object/from16 v56, v15

    move-object/from16 v15, v68

    move-object/from16 v14, v100

    move-object/from16 v3, v111

    :goto_3a
    move-object/from16 v68, v127

    move-wide v7, v6

    move-wide/from16 v5, v47

    move-wide/from16 v100, v49

    move-object/from16 v127, v124

    move-object/from16 v49, v125

    move-object/from16 v50, v11

    move-wide/from16 v47, v42

    move-wide/from16 v11, v44

    move-object/from16 v45, v75

    move-object/from16 v44, v76

    move-wide/from16 v42, v77

    move-object/from16 v78, v132

    move-wide/from16 v75, v1

    move-object/from16 v2, v130

    move/from16 v1, v134

    goto/16 :goto_41

    :cond_41
    move/from16 v135, v4

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-static {v0, v13}, Lٴᴵ/ˑﹳ;->ʽ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v134

    goto :goto_39

    :cond_42
    move-object/from16 v4, v86

    invoke-static {v0, v4}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v86

    if-eqz v86, :cond_43

    move-object/from16 v86, v3

    move-object/from16 v3, v127

    check-cast v3, Lٴᴵ/ﹳᐧ;

    invoke-static {v0, v3}, Lٴᴵ/ˑﹳ;->ʼᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ﹳᐧ;)Lٴᴵ/ﹳᐧ;

    move-result-object v127

    move-object/from16 v149, v4

    move-object/from16 v142, v5

    move-object/from16 v136, v9

    move-object/from16 v63, v10

    move/from16 v62, v12

    move-object/from16 v137, v13

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v146, v71

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v148, v85

    move-object/from16 v9, v93

    move-object/from16 v141, v97

    move/from16 v143, v101

    move-object/from16 v13, v108

    move-object/from16 v3, v111

    move-object/from16 v150, v115

    move/from16 v138, v126

    move-object/from16 v10, v128

    move-object/from16 v4, v131

    move/from16 v144, v133

    move-object/from16 v85, v8

    move-object/from16 v57, v14

    move-object/from16 v56, v15

    move-object/from16 v15, v68

    move-object/from16 v14, v100

    goto :goto_3a

    :cond_43
    move-object/from16 v86, v3

    move-object/from16 v3, v85

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v85

    if-eqz v85, :cond_44

    move-object/from16 v85, v8

    move-object/from16 v136, v9

    invoke-static {v0, v1, v2}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    move-object/from16 v1, v127

    check-cast v1, Lٴᴵ/ˉˆ;

    move-object/from16 v148, v3

    move-object/from16 v149, v4

    move-object/from16 v142, v5

    move-object/from16 v137, v13

    move-wide/from16 v4, v47

    move-wide/from16 v2, v49

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v146, v71

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v141, v97

    move/from16 v143, v101

    move-object/from16 v13, v108

    move-object/from16 v150, v115

    move-object/from16 v49, v125

    move/from16 v138, v126

    move/from16 v144, v133

    move-object/from16 v56, v10

    move-object/from16 v50, v11

    move-object/from16 v57, v14

    move-wide/from16 v47, v42

    move-wide/from16 v10, v44

    move-object/from16 v45, v75

    move-object/from16 v44, v76

    move-wide/from16 v42, v77

    move-object/from16 v14, v100

    move-object/from16 v78, v132

    invoke-static/range {v0 .. v11}, Lٴᴵ/ˑﹳ;->ᵔﹳ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ˉˆ;JJJJJ)Lٴᴵ/ˉˆ;

    move-result-object v127

    move-wide/from16 v62, v6

    move-wide v5, v4

    move-wide v3, v2

    move-wide/from16 v100, v3

    move-wide/from16 v75, v8

    move-wide/from16 v7, v62

    move-object/from16 v9, v93

    move-object/from16 v3, v111

    move-object/from16 v2, v130

    move-object/from16 v4, v131

    move/from16 v1, v134

    move/from16 v62, v12

    move-object/from16 v63, v56

    move-wide v11, v10

    move-object/from16 v56, v15

    move-object/from16 v15, v68

    move-object/from16 v68, v127

    move-object/from16 v10, v128

    :goto_3b
    move-object/from16 v127, v124

    goto/16 :goto_41

    :cond_44
    move-object/from16 v148, v3

    move-object/from16 v149, v4

    move-object/from16 v142, v5

    move-wide/from16 v62, v6

    move-object/from16 v85, v8

    move-object/from16 v136, v9

    move-object/from16 v137, v13

    move-wide/from16 v5, v47

    move-wide/from16 v3, v49

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v7, v68

    move-object/from16 v146, v71

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v141, v97

    move/from16 v143, v101

    move-object/from16 v13, v108

    move-object/from16 v150, v115

    move-object/from16 v49, v125

    move/from16 v138, v126

    move/from16 v144, v133

    move-object/from16 v56, v10

    move-object/from16 v50, v11

    move-object/from16 v57, v14

    move-wide/from16 v47, v42

    move-wide/from16 v10, v44

    move-object/from16 v45, v75

    move-object/from16 v44, v76

    move-wide/from16 v42, v77

    move-object/from16 v14, v100

    move-object/from16 v78, v132

    invoke-static {v0, v7}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    move v8, v12

    move-wide v11, v10

    invoke-static {v0, v1, v2}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    move-object/from16 v1, v127

    check-cast v1, Lٴᴵ/ʼᐧ;

    move-object/from16 v2, v56

    move-object/from16 v56, v15

    move-object v15, v7

    move-wide/from16 v161, v62

    move/from16 v62, v8

    move-wide/from16 v7, v161

    invoke-static/range {v0 .. v12}, Lٴᴵ/ˑﹳ;->ﹳᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ʼᐧ;Ljava/util/List;JJJJJ)Lٴᴵ/ʼᐧ;

    move-result-object v127

    move-object/from16 v63, v2

    move-wide/from16 v100, v3

    move-wide/from16 v75, v9

    move-object/from16 v9, v93

    move-object/from16 v3, v111

    move-object/from16 v68, v127

    move-object/from16 v10, v128

    :goto_3c
    move-object/from16 v2, v130

    move-object/from16 v4, v131

    :goto_3d
    move/from16 v1, v134

    goto :goto_3b

    :cond_45
    move-object/from16 v161, v15

    move-object v15, v7

    move-wide/from16 v7, v62

    move-object/from16 v63, v56

    move-object/from16 v56, v161

    move/from16 v62, v12

    move-wide v11, v10

    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_48

    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ᵎﹶ(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v9

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v10, :cond_46

    move-object/from16 v124, v10

    check-cast v124, Ljava/lang/String;

    :cond_46
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_47

    check-cast v9, Lʽⁱ/ˉʿ;

    move-object/from16 v10, v128

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_47
    move-object/from16 v10, v128

    :goto_3e
    move-wide/from16 v75, v1

    move-wide/from16 v100, v3

    move-object/from16 v9, v93

    move-object/from16 v3, v111

    move-object/from16 v68, v127

    goto :goto_3c

    :cond_48
    move-object/from16 v9, v93

    move-object/from16 v10, v128

    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v68

    if-eqz v68, :cond_49

    move-wide/from16 v75, v1

    invoke-static {v0, v9}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v1

    move-object/from16 v2, v129

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v100, v3

    move-object/from16 v1, v114

    move-object/from16 v2, v130

    :goto_3f
    move-object/from16 v4, v131

    goto :goto_40

    :cond_49
    move-wide/from16 v75, v1

    move-object/from16 v2, v129

    invoke-static {v0, v14}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-static {v0, v14}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v1

    move-object/from16 v129, v2

    move-object/from16 v2, v130

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v100, v3

    move-object/from16 v1, v114

    goto :goto_3f

    :cond_4a
    move-object/from16 v129, v2

    move-object/from16 v1, v114

    move-object/from16 v2, v130

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v68

    if-eqz v68, :cond_4b

    move-wide/from16 v100, v3

    invoke-static {v0, v1}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v3

    move-object/from16 v4, v131

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_4b
    move-wide/from16 v100, v3

    move-object/from16 v4, v131

    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_40
    move-object/from16 v114, v1

    move-object/from16 v3, v111

    move-object/from16 v68, v127

    goto/16 :goto_3d

    :goto_41
    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v71

    if-eqz v71, :cond_7e

    invoke-static/range {v116 .. v116}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-static/range {v137 .. v137}, Lʽⁱ/ˉٴ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_42
    move-object/from16 v7, v116

    goto :goto_44

    :cond_4c
    invoke-static/range {v116 .. v116}, Lʽⁱ/ˉٴ;->ˉˆ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-static/range {v137 .. v137}, Lʽⁱ/ˉٴ;->ˆʾ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    :cond_4d
    invoke-static/range {v116 .. v116}, Lʽⁱ/ˉٴ;->ᵔʾ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_43

    :cond_4e
    invoke-static/range {v116 .. v116}, Lʽⁱ/ˉٴ;->ˉʿ(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    :goto_43
    move-object/from16 v3, v116

    move-object v7, v3

    goto :goto_44

    :cond_4f
    const-string v3, "application/mp4"

    move-object/from16 v7, v116

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-static/range {v137 .. v137}, Lʽⁱ/ˉٴ;->ˑﹳ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "text/vtt"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    const-string v3, "application/x-mp4-vtt"

    goto :goto_44

    :cond_50
    const/4 v3, 0x0

    :cond_51
    :goto_44
    const-string v8, "audio/eac3"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    move/from16 v3, v38

    :goto_45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v13, "audio/eac3-joc"

    const-string v14, "ec+3"

    if-ge v3, v9, :cond_55

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lٴᴵ/ﾞᴵ;

    move/from16 v71, v3

    iget-object v3, v9, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    iget-object v9, v9, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    move-object/from16 v131, v4

    const-string v4, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    const-string v4, "JOC"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    :cond_52
    const-string v4, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_53
    move-object v3, v13

    goto :goto_46

    :cond_54
    add-int/lit8 v3, v71, 0x1

    move-object/from16 v4, v131

    goto :goto_45

    :cond_55
    move-object/from16 v131, v4

    move-object v3, v8

    :goto_46
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    move-object v13, v14

    move-object/from16 v4, v118

    goto :goto_48

    :cond_56
    :goto_47
    move-object/from16 v4, v118

    move-object/from16 v13, v137

    goto :goto_48

    :cond_57
    move-object/from16 v131, v4

    goto :goto_47

    :goto_48
    invoke-static {v13, v4}, Lʽⁱ/ˉٴ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_59

    if-eqz v4, :cond_58

    move-object/from16 v118, v4

    goto :goto_49

    :cond_58
    move-object/from16 v118, v13

    :goto_49
    const-string v3, "video/dolby-vision"

    move-object/from16 v13, v118

    :cond_59
    move/from16 v4, v38

    move v8, v4

    :goto_4a
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v14, "urn:mpeg:dash:role:2011"

    if-ge v4, v9, :cond_5d

    move-object/from16 v9, v50

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    move/from16 v71, v4

    move-object/from16 v4, v50

    check-cast v4, Lٴᴵ/ﾞᴵ;

    move-wide/from16 v115, v5

    iget-object v5, v4, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    iget-object v4, v4, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    if-nez v4, :cond_5a

    :goto_4b
    move/from16 v4, v38

    goto :goto_4c

    :cond_5a
    const-string v5, "forced_subtitle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "forced-subtitle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto :goto_4b

    :cond_5b
    const/4 v4, 0x2

    :goto_4c
    or-int/2addr v8, v4

    :cond_5c
    add-int/lit8 v4, v71, 0x1

    move-object/from16 v50, v9

    move-wide/from16 v5, v115

    goto :goto_4a

    :cond_5d
    move-wide/from16 v115, v5

    move-object/from16 v9, v50

    move/from16 v4, v38

    move v5, v4

    :goto_4d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5f

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lٴᴵ/ﾞᴵ;

    move/from16 v50, v4

    iget-object v4, v6, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v14, v4}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-object v4, v6, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v4}, Lٴᴵ/ˑﹳ;->ᵔʾ(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v5, v4

    :cond_5e
    add-int/lit8 v4, v50, 0x1

    goto :goto_4d

    :cond_5f
    move/from16 v50, v5

    move/from16 v4, v38

    move v6, v4

    :goto_4e
    invoke-virtual/range {v112 .. v112}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_68

    move-object/from16 v5, v112

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    move/from16 v75, v4

    move-object/from16 v4, v71

    check-cast v4, Lٴᴵ/ﾞᴵ;

    move/from16 v71, v6

    iget-object v6, v4, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    move-object/from16 v76, v7

    iget-object v7, v4, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-static {v7}, Lٴᴵ/ˑﹳ;->ᵔʾ(Ljava/lang/String;)I

    move-result v4

    :goto_4f
    or-int v6, v71, v4

    goto/16 :goto_53

    :cond_60
    const-string v6, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    iget-object v4, v4, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_67

    if-nez v7, :cond_61

    :goto_50
    move/from16 v4, v38

    goto :goto_4f

    :cond_61
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_51
    :pswitch_0
    const/4 v4, -0x1

    goto :goto_52

    :pswitch_1
    const-string v4, "6"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto :goto_51

    :cond_62
    const/4 v4, 0x4

    goto :goto_52

    :pswitch_2
    const-string v4, "4"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto :goto_51

    :cond_63
    const/4 v4, 0x3

    goto :goto_52

    :pswitch_3
    const-string v4, "3"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto :goto_51

    :cond_64
    const/4 v4, 0x2

    goto :goto_52

    :pswitch_4
    const-string v4, "2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_51

    :cond_65
    move/from16 v4, v40

    goto :goto_52

    :pswitch_5
    const-string v4, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto :goto_51

    :cond_66
    move/from16 v4, v38

    :goto_52
    packed-switch v4, :pswitch_data_1

    goto :goto_50

    :pswitch_6
    move/from16 v4, v40

    goto :goto_4f

    :pswitch_7
    const/16 v4, 0x8

    goto :goto_4f

    :pswitch_8
    const/4 v4, 0x4

    goto :goto_4f

    :pswitch_9
    const/16 v4, 0x800

    goto :goto_4f

    :pswitch_a
    const/16 v4, 0x200

    goto :goto_4f

    :cond_67
    move/from16 v6, v71

    :goto_53
    add-int/lit8 v4, v75, 0x1

    move-object/from16 v112, v5

    move-object/from16 v7, v76

    goto/16 :goto_4e

    :cond_68
    move/from16 v71, v6

    move-object/from16 v76, v7

    move-object/from16 v5, v112

    or-int v4, v50, v71

    invoke-static {v2}, Lٴᴵ/ˑﹳ;->ˉˆ(Ljava/util/ArrayList;)I

    move-result v6

    or-int/2addr v4, v6

    invoke-static/range {v131 .. v131}, Lٴᴵ/ˑﹳ;->ˉˆ(Ljava/util/ArrayList;)I

    move-result v6

    or-int/2addr v4, v6

    move/from16 v6, v38

    :goto_54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6c

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lٴᴵ/ﾞᴵ;

    const-string v14, "http://dashif.org/thumbnail_tile"

    move-object/from16 v130, v2

    iget-object v2, v7, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v2, "http://dashif.org/guidelines/thumbnail_tile"

    iget-object v14, v7, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v2, v14}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᵎﹶ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    :cond_69
    iget-object v2, v7, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    if-eqz v2, :cond_6b

    sget-object v7, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string v7, "x"

    const/4 v14, -0x1

    invoke-virtual {v2, v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    const/4 v14, 0x2

    if-eq v7, v14, :cond_6a

    goto :goto_55

    :cond_6a
    :try_start_0
    aget-object v7, v2, v38

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v2, v2, v40

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_56

    :catch_0
    :cond_6b
    :goto_55
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v130

    goto :goto_54

    :cond_6c
    move-object/from16 v130, v2

    const/4 v2, 0x0

    :goto_56
    new-instance v6, Lʽⁱ/ᵔﹳ;

    invoke-direct {v6}, Lʽⁱ/ᵔﹳ;-><init>()V

    move-object/from16 v7, v117

    iput-object v7, v6, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-static/range {v76 .. v76}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v3}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput-object v13, v6, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    move/from16 v7, v143

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ʼˎ:I

    iput v8, v6, Lʽⁱ/ᵔﹳ;->ˑﹳ:I

    iput v4, v6, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    move-object/from16 v4, v142

    iput-object v4, v6, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    if-eqz v2, :cond_6d

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_57

    :cond_6d
    const/4 v7, -0x1

    :goto_57
    iput v7, v6, Lʽⁱ/ᵔﹳ;->ᵔי:I

    if-eqz v2, :cond_6e

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_58

    :cond_6e
    const/4 v2, -0x1

    :goto_58
    iput v2, v6, Lʽⁱ/ᵔﹳ;->ˆﾞ:I

    invoke-static {v3}, Lʽⁱ/ˉٴ;->ˉˆ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    move/from16 v2, v120

    iput v2, v6, Lʽⁱ/ᵔﹳ;->ˏי:I

    move/from16 v7, v121

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    move/from16 v1, v122

    iput v1, v6, Lʽⁱ/ᵔﹳ;->ʾᵎ:F

    goto/16 :goto_5c

    :cond_6f
    move/from16 v2, v120

    move/from16 v7, v121

    invoke-static {v3}, Lʽⁱ/ˉٴ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    iput v1, v6, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    move/from16 v1, v144

    iput v1, v6, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    goto/16 :goto_5c

    :cond_70
    invoke-static {v3}, Lʽⁱ/ˉٴ;->ᵔʾ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "application/cea-608"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MpdParser"

    if-eqz v1, :cond_73

    move/from16 v1, v38

    :goto_59
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_76

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴᴵ/ﾞᴵ;

    iget-object v7, v3, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, v3, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    if-eqz v3, :cond_72

    sget-object v7, Lٴᴵ/ˑﹳ;->ʽʽ:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_71

    move/from16 v8, v40

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5b

    :cond_71
    const-string v7, "Unable to parse CEA-608 channel number from: "

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    add-int/lit8 v1, v1, 0x1

    const/16 v40, 0x1

    goto :goto_59

    :cond_73
    const-string v1, "application/cea-708"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    move/from16 v1, v38

    :goto_5a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_76

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴᴵ/ﾞᴵ;

    iget-object v7, v3, Lٴᴵ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, v3, Lٴᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/String;

    const-string v8, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    if-eqz v3, :cond_75

    sget-object v7, Lٴᴵ/ˑﹳ;->ˈٴ:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_74

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5b

    :cond_74
    const-string v7, "Unable to parse CEA-708 service block number from: "

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_76
    const/4 v1, -0x1

    :goto_5b
    iput v1, v6, Lʽⁱ/ᵔﹳ;->ٴʼ:I

    goto :goto_5c

    :cond_77
    invoke-static {v3}, Lʽⁱ/ˉٴ;->ˉʿ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    iput v2, v6, Lʽⁱ/ᵔﹳ;->ˏי:I

    iput v7, v6, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    :cond_78
    :goto_5c
    new-instance v1, Lʽⁱ/ﹳᐧ;

    invoke-direct {v1, v6}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    if-eqz v68, :cond_79

    move-object/from16 v126, v68

    goto :goto_5d

    :cond_79
    new-instance v151, Lٴᴵ/ﹳᐧ;

    const-wide/16 v157, 0x0

    const-wide/16 v159, 0x0

    const/16 v152, 0x0

    const-wide/16 v153, 0x1

    const-wide/16 v155, 0x0

    invoke-direct/range {v151 .. v160}, Lٴᴵ/ﹳᐧ;-><init>(Lٴᴵ/ˆʾ;JJJJ)V

    move-object/from16 v126, v151

    :goto_5d
    new-instance v123, Lٴᴵ/ˈ;

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    move-object/from16 v125, v57

    :goto_5e
    move-object/from16 v124, v1

    move-object/from16 v128, v10

    goto :goto_5f

    :cond_7a
    move-object/from16 v125, v56

    goto :goto_5e

    :goto_5f
    invoke-direct/range {v123 .. v131}, Lٴᴵ/ˈ;-><init>(Lʽⁱ/ﹳᐧ;Ljava/util/ArrayList;Lٴᴵ/יـ;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v2, v123

    move-object/from16 v1, v124

    iget-object v1, v1, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼˎ(Ljava/lang/String;)I

    move-result v7

    move/from16 v6, v138

    const/4 v10, -0x1

    if-ne v6, v10, :cond_7b

    :goto_60
    move-object/from16 v1, v141

    goto :goto_63

    :cond_7b
    if-ne v7, v10, :cond_7c

    :goto_61
    move v7, v6

    goto :goto_60

    :cond_7c
    if-ne v6, v7, :cond_7d

    const/4 v8, 0x1

    goto :goto_62

    :cond_7d
    move/from16 v8, v38

    :goto_62
    invoke-static {v8}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    goto :goto_61

    :goto_63
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v97, v1

    move-object/from16 v142, v4

    move-object/from16 v112, v5

    move/from16 v75, v7

    move-object/from16 v50, v9

    move/from16 v83, v10

    move-object/from16 v3, v91

    move-object/from16 v4, v92

    move-object/from16 v7, v110

    move-wide/from16 v5, v115

    move-object/from16 v1, v146

    move-object/from16 v13, v148

    move-object/from16 v14, v149

    :goto_64
    const/4 v2, 0x2

    goto/16 :goto_6a

    :cond_7e
    move-object/from16 v130, v2

    move-object/from16 v131, v4

    move-object/from16 v71, v116

    move-wide/from16 v115, v5

    move/from16 v134, v1

    move-object/from16 v111, v3

    move-wide v6, v7

    move-object/from16 v93, v9

    move-object/from16 v128, v10

    move-object/from16 v108, v13

    move-object/from16 v125, v49

    move-object/from16 v10, v63

    move-wide/from16 v1, v75

    move-object/from16 v132, v78

    move-object/from16 v8, v85

    move-object/from16 v3, v86

    move-object/from16 v124, v127

    move/from16 v4, v135

    move-object/from16 v9, v136

    move-object/from16 v13, v137

    move/from16 v126, v138

    move-object/from16 v97, v141

    move-object/from16 v5, v142

    move/from16 v133, v144

    move-object/from16 v84, v145

    move-object/from16 v80, v147

    move-object/from16 v85, v148

    move-object/from16 v86, v149

    const/16 v40, 0x1

    move-wide/from16 v77, v42

    move-object/from16 v76, v44

    move-object/from16 v75, v45

    move-wide/from16 v42, v47

    move-object/from16 v127, v68

    move-wide/from16 v47, v115

    move-object/from16 v115, v150

    move-wide/from16 v44, v11

    move-object/from16 v68, v15

    move-object/from16 v11, v50

    move-object/from16 v15, v56

    move/from16 v12, v62

    move-object/from16 v116, v71

    move-wide/from16 v49, v100

    move-object/from16 v56, v139

    move/from16 v101, v143

    move-object/from16 v71, v146

    move-object/from16 v100, v14

    move-object/from16 v14, v57

    move-object/from16 v57, v140

    goto/16 :goto_38

    :cond_7f
    move-object/from16 v113, v4

    move-object/from16 v142, v5

    move-object/from16 v136, v9

    move-object/from16 v63, v10

    move/from16 v62, v12

    move-object v9, v14

    move-wide/from16 v115, v47

    move-object/from16 v139, v56

    move-object/from16 v140, v57

    move-object/from16 v15, v68

    move-object/from16 v146, v71

    move-object/from16 v147, v80

    move-object/from16 v145, v84

    move-object/from16 v148, v85

    move/from16 v135, v93

    move-object/from16 v119, v96

    move-object/from16 v150, v100

    move-object/from16 v5, v112

    const/4 v10, -0x1

    move-object/from16 v85, v8

    move-wide/from16 v47, v42

    move-wide/from16 v42, v77

    move-object/from16 v96, v88

    move-object/from16 v88, v98

    move-object/from16 v98, v101

    move-object/from16 v78, v1

    move-wide/from16 v100, v49

    move-object/from16 v1, v86

    move-object/from16 v49, v6

    move v6, v7

    move-object/from16 v50, v11

    move-wide/from16 v11, v44

    move-object/from16 v45, v75

    move-object/from16 v44, v76

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    move-object/from16 v2, v102

    check-cast v2, Lٴᴵ/ﹳᐧ;

    invoke-static {v0, v2}, Lٴᴵ/ˑﹳ;->ʼᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ﹳᐧ;)Lٴᴵ/ﹳᐧ;

    move-result-object v102

    move-object v14, v1

    move-object/from16 v112, v5

    move/from16 v75, v6

    move/from16 v83, v10

    move-object/from16 v3, v91

    move-object/from16 v4, v92

    move-object/from16 v7, v110

    move-wide/from16 v5, v115

    move-object/from16 v1, v146

    move-object/from16 v13, v148

    goto/16 :goto_64

    :cond_80
    move-object/from16 v13, v148

    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    move-wide/from16 v2, v103

    invoke-static {v0, v2, v3}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    check-cast v102, Lٴᴵ/ˉˆ;

    move-object v14, v1

    move-object/from16 v112, v5

    move/from16 v126, v6

    move/from16 v83, v10

    move-wide v10, v11

    move-wide/from16 v2, v100

    move-object/from16 v1, v102

    move-wide/from16 v6, v106

    move-wide/from16 v4, v115

    invoke-static/range {v0 .. v11}, Lٴᴵ/ˑﹳ;->ᵔﹳ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ˉˆ;JJJJJ)Lٴᴵ/ˉˆ;

    move-result-object v102

    move-wide v11, v10

    move-wide v5, v4

    move-wide/from16 v103, v8

    :goto_65
    move-object/from16 v3, v91

    move-object/from16 v4, v92

    move-object/from16 v7, v110

    move/from16 v75, v126

    move-object/from16 v1, v146

    goto/16 :goto_64

    :cond_81
    move-object v14, v1

    move-object/from16 v112, v5

    move/from16 v126, v6

    move/from16 v83, v10

    move-wide/from16 v2, v103

    move-wide/from16 v5, v115

    invoke-static {v0, v15}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-static {v0, v2, v3}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    move-object/from16 v1, v102

    check-cast v1, Lٴᴵ/ʼᐧ;

    move-object/from16 v2, v63

    move-wide/from16 v3, v100

    move-wide/from16 v7, v106

    invoke-static/range {v0 .. v12}, Lٴᴵ/ˑﹳ;->ﹳᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ʼᐧ;Ljava/util/List;JJJJJ)Lٴᴵ/ʼᐧ;

    move-result-object v102

    move-wide/from16 v103, v9

    goto :goto_65

    :cond_82
    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-static {v0, v9}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    move-result-object v1

    move-object/from16 v4, v92

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v56, v2

    move-object/from16 v3, v91

    move-object/from16 v7, v110

    :goto_66
    const/4 v2, 0x2

    goto :goto_69

    :cond_83
    move-object/from16 v4, v92

    const-string v1, "Label"

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_86

    move-object/from16 v7, v110

    const/4 v8, 0x0

    invoke-interface {v0, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, v64

    :goto_67
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    move-wide/from16 v56, v2

    const/4 v2, 0x4

    if-ne v10, v2, :cond_84

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto :goto_68

    :cond_84
    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_68
    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    new-instance v1, Lʽⁱ/יـ;

    invoke-direct {v1, v9, v8}, Lʽⁱ/יـ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v91

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_85
    move-wide/from16 v2, v56

    goto :goto_67

    :cond_86
    move-wide/from16 v56, v2

    move-object/from16 v3, v91

    move-object/from16 v7, v110

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_87

    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_87
    :goto_69
    move-wide/from16 v103, v56

    move/from16 v75, v126

    move-object/from16 v1, v146

    :goto_6a
    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_98

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v97 .. v97}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v8, v38

    :goto_6b
    invoke-virtual/range {v97 .. v97}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_97

    move-object/from16 v9, v97

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lٴᴵ/ˈ;

    iget-object v13, v10, Lٴᴵ/ˈ;->ﹳٴ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v13}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v13

    if-eqz v90, :cond_88

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_88

    move-object/from16 v14, v90

    iput-object v14, v13, Lʽⁱ/ᵔﹳ;->ⁱˊ:Ljava/lang/String;

    goto :goto_6c

    :cond_88
    move-object/from16 v14, v90

    invoke-static {v3}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v15

    iput-object v15, v13, Lʽⁱ/ᵔﹳ;->ʽ:Lʼʻ/ᵎⁱ;

    :goto_6c
    iget-object v15, v10, Lٴᴵ/ˈ;->ˈ:Ljava/lang/String;

    if-nez v15, :cond_89

    move-object/from16 v15, v70

    :cond_89
    iget-object v2, v10, Lٴᴵ/ˈ;->ˑﹳ:Ljava/util/ArrayList;

    move-object/from16 v91, v3

    move-object/from16 v3, v109

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v49

    move-wide/from16 v115, v5

    if-nez v49, :cond_94

    move/from16 v3, v38

    :goto_6d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʽⁱ/ˉʿ;

    sget-object v6, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    move-object/from16 v110, v7

    iget-object v7, v5, Lʽⁱ/ˉʿ;->ᴵˊ:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    iget-object v5, v5, Lʽⁱ/ˉʿ;->ʽʽ:Ljava/lang/String;

    if-eqz v5, :cond_8a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6e

    :cond_8a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v110

    goto :goto_6d

    :cond_8b
    move-object/from16 v110, v7

    const/4 v5, 0x0

    :goto_6e
    if-nez v5, :cond_8d

    :cond_8c
    move/from16 v49, v8

    move-object/from16 v97, v9

    goto :goto_71

    :cond_8d
    move/from16 v3, v38

    :goto_6f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʽⁱ/ˉʿ;

    sget-object v7, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    move/from16 v49, v8

    iget-object v8, v6, Lʽⁱ/ˉʿ;->ᴵˊ:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8e

    iget-object v7, v6, Lʽⁱ/ˉʿ;->ʽʽ:Ljava/lang/String;

    if-nez v7, :cond_8e

    new-instance v7, Lʽⁱ/ˉʿ;

    sget-object v8, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    move-object/from16 v97, v9

    iget-object v9, v6, Lʽⁱ/ˉʿ;->ˈٴ:Ljava/lang/String;

    iget-object v6, v6, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    invoke-direct {v7, v8, v5, v9, v6}, Lʽⁱ/ˉʿ;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v2, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_8e
    move-object/from16 v97, v9

    :goto_70
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v49

    move-object/from16 v9, v97

    goto :goto_6f

    :goto_71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v40, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_72
    if-ltz v3, :cond_93

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʽⁱ/ˉʿ;

    iget-object v6, v5, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    if-eqz v6, :cond_8f

    goto :goto_75

    :cond_8f
    move/from16 v6, v38

    :goto_73
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_92

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽⁱ/ˉʿ;

    iget-object v8, v7, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    if-eqz v8, :cond_91

    iget-object v8, v5, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    if-eqz v8, :cond_90

    goto :goto_74

    :cond_90
    iget-object v8, v5, Lʽⁱ/ˉʿ;->ᴵˊ:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Lʽⁱ/ˉʿ;->ﹳٴ(Ljava/util/UUID;)Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_75

    :cond_91
    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    :cond_92
    :goto_75
    add-int/lit8 v3, v3, -0x1

    goto :goto_72

    :cond_93
    new-instance v3, Lʽⁱ/ᵔʾ;

    invoke-direct {v3, v15, v2}, Lʽⁱ/ᵔʾ;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v3, v13, Lʽⁱ/ᵔﹳ;->ᵔﹳ:Lʽⁱ/ᵔʾ;

    goto :goto_76

    :cond_94
    move-object/from16 v110, v7

    move/from16 v49, v8

    move-object/from16 v97, v9

    const/16 v40, 0x1

    :goto_76
    iget-object v2, v10, Lٴᴵ/ˈ;->ﾞᴵ:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lʽⁱ/ﹳᐧ;

    invoke-direct {v3, v13}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-object v5, v10, Lٴᴵ/ˈ;->ⁱˊ:Lʼʻ/ᵎⁱ;

    iget-object v6, v10, Lٴᴵ/ˈ;->ʽ:Lٴᴵ/יـ;

    instance-of v7, v6, Lٴᴵ/ﹳᐧ;

    if-eqz v7, :cond_95

    new-instance v7, Lٴᴵ/ﾞʻ;

    check-cast v6, Lٴᴵ/ﹳᐧ;

    invoke-direct {v7, v3, v5, v6, v2}, Lٴᴵ/ﾞʻ;-><init>(Lʽⁱ/ﹳᐧ;Lʼʻ/ᵎⁱ;Lٴᴵ/ﹳᐧ;Ljava/util/ArrayList;)V

    goto :goto_77

    :cond_95
    instance-of v7, v6, Lٴᴵ/ᵔʾ;

    if-eqz v7, :cond_96

    new-instance v7, Lٴᴵ/ٴﹶ;

    check-cast v6, Lٴᴵ/ᵔʾ;

    invoke-direct {v7, v3, v5, v6, v2}, Lٴᴵ/ٴﹶ;-><init>(Lʽⁱ/ﹳᐧ;Lʼʻ/ᵎⁱ;Lٴᴵ/ᵔʾ;Ljava/util/ArrayList;)V

    :goto_77
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v49, 0x1

    move-object/from16 v90, v14

    move-object/from16 v3, v91

    move-object/from16 v7, v110

    move-wide/from16 v5, v115

    const/4 v2, 0x2

    goto/16 :goto_6b

    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    move-wide/from16 v115, v5

    move-object/from16 v110, v7

    const/16 v40, 0x1

    new-instance v72, Lٴᴵ/ﹳٴ;

    move-object/from16 v76, v1

    move-object/from16 v79, v63

    move-object/from16 v77, v112

    invoke-direct/range {v72 .. v79}, Lٴᴵ/ﹳٴ;-><init>(JILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v72

    move-object/from16 v2, v139

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v3, v100

    move-object/from16 v84, v145

    move-object/from16 v80, v147

    move-object/from16 v100, v150

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x2

    goto/16 :goto_8c

    :cond_98
    const/16 v40, 0x1

    move-object/from16 v71, v1

    move-object/from16 v91, v3

    move-object/from16 v92, v4

    move-object/from16 v86, v14

    move-object/from16 v68, v15

    move-object/from16 v76, v44

    move-object/from16 v10, v63

    move-object/from16 v1, v78

    move-object/from16 v8, v85

    move-wide/from16 v2, v106

    move-object/from16 v14, v112

    move-object/from16 v4, v113

    move/from16 v93, v135

    move-object/from16 v9, v136

    move-object/from16 v56, v139

    move-object/from16 v57, v140

    move-object/from16 v84, v145

    move-object/from16 v80, v147

    move-object v15, v7

    move-object/from16 v85, v13

    move-wide/from16 v77, v42

    move-wide/from16 v42, v47

    move/from16 v7, v75

    move-object/from16 v13, v109

    move-wide/from16 v47, v5

    move-object/from16 v75, v45

    move-object/from16 v6, v49

    move-object/from16 v5, v142

    move-wide/from16 v44, v11

    move-object/from16 v11, v50

    move/from16 v12, v62

    move-wide/from16 v49, v100

    move-object/from16 v100, v150

    move-object/from16 v101, v98

    move-object/from16 v98, v88

    move-object/from16 v88, v96

    move-object/from16 v96, v119

    goto/16 :goto_24

    :cond_99
    move-object/from16 v69, v1

    move-object/from16 v150, v2

    move-object/from16 v136, v9

    move-object/from16 v147, v10

    move-object/from16 v145, v11

    move/from16 v62, v12

    move-object/from16 v110, v15

    move-wide/from16 v11, v44

    move-wide/from16 v115, v47

    move-wide/from16 v100, v49

    move-object/from16 v2, v56

    move-object/from16 v140, v57

    move-object/from16 v15, v68

    move-object/from16 v45, v5

    move-object/from16 v44, v6

    move-wide/from16 v47, v42

    move-wide/from16 v42, v7

    const-string v1, "EventStream"

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    move-object/from16 v3, v58

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9a

    move-object/from16 v71, v64

    :goto_78
    move-object/from16 v5, v145

    goto :goto_79

    :cond_9a
    move-object/from16 v71, v5

    goto :goto_78

    :goto_79
    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9b

    move-object/from16 v72, v64

    goto :goto_7a

    :cond_9b
    move-object/from16 v72, v6

    :goto_7a
    const-string v6, "timescale"

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9c

    const-wide/16 v6, 0x1

    :goto_7b
    move-wide/from16 v77, v6

    goto :goto_7c

    :cond_9c
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_7b

    :goto_7c
    const-string v6, "presentationTimeOffset"

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9d

    move-wide/from16 v6, v26

    goto :goto_7d

    :cond_9d
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_7d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x200

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_7e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v9, "Event"

    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a5

    move-object/from16 v10, v150

    const/4 v14, 0x0

    invoke-interface {v0, v14, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9e

    move-wide/from16 v49, v26

    :goto_7f
    move-object/from16 v13, v147

    goto :goto_80

    :cond_9e
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v49

    goto :goto_7f

    :goto_80
    invoke-interface {v0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_9f

    const-wide v73, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_81

    :cond_9f
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v56

    move-wide/from16 v73, v56

    :goto_81
    const-string v15, "presentationTime"

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a0

    move-wide/from16 v14, v26

    goto :goto_82

    :cond_a0
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    :goto_82
    sget-object v56, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v79, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/16 v75, 0x3e8

    invoke-static/range {v73 .. v79}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v56

    sub-long v73, v14, v6

    const-wide/32 v75, 0xf4240

    invoke-static/range {v73 .. v79}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v14

    move-object/from16 v139, v2

    move-wide/from16 v63, v77

    const-string v2, "messageData"

    move-object/from16 v58, v3

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a1

    const/4 v2, 0x0

    :cond_a1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    sget-object v67, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v84, v5

    invoke-virtual/range {v67 .. v67}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_83
    invoke-static {v0, v9}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a3

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    packed-switch v5, :pswitch_data_2

    :goto_84
    move-wide/from16 v67, v6

    :cond_a2
    :goto_85
    move-object/from16 v78, v8

    goto/16 :goto_87

    :pswitch_b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_84

    :pswitch_c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_84

    :pswitch_d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_84

    :pswitch_e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_84

    :pswitch_f
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_84

    :pswitch_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_84

    :pswitch_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_84

    :pswitch_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v67, v6

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_85

    :pswitch_13
    move-wide/from16 v67, v6

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v5, v38

    :goto_86
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_a2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v78, v8

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v78

    goto :goto_86

    :pswitch_14
    move-wide/from16 v67, v6

    move-object/from16 v78, v8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_87

    :pswitch_15
    move-wide/from16 v67, v6

    move-object/from16 v78, v8

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-wide/from16 v6, v67

    move-object/from16 v8, v78

    goto/16 :goto_83

    :cond_a3
    move-wide/from16 v67, v6

    move-object/from16 v78, v8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual/range {v78 .. v78}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-nez v2, :cond_a4

    :goto_88
    move-object/from16 v77, v3

    goto :goto_89

    :cond_a4
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    goto :goto_88

    :goto_89
    new-instance v70, Lʻʼ/ﹳٴ;

    move-wide/from16 v75, v49

    move-wide/from16 v73, v56

    invoke-direct/range {v70 .. v77}, Lʻʼ/ﹳٴ;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v3, v70

    move-object/from16 v2, v71

    move-object/from16 v6, v72

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_a5
    move-object/from16 v139, v2

    move-object/from16 v58, v3

    move-object/from16 v84, v5

    move-wide/from16 v67, v6

    move-object/from16 v2, v71

    move-object/from16 v6, v72

    move-wide/from16 v63, v77

    move-object/from16 v13, v147

    move-object/from16 v10, v150

    move-object/from16 v78, v8

    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8a
    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [J

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lʻʼ/ﹳٴ;

    move/from16 v5, v38

    :goto_8b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_a6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v1, v5

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lʻʼ/ﹳٴ;

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    :cond_a6
    new-instance v4, Lٴᴵ/ᵎﹶ;

    invoke-direct {v4, v2, v6, v1, v3}, Lٴᴵ/ᵎﹶ;-><init>(Ljava/lang/String;Ljava/lang/String;[J[Lʻʼ/ﹳٴ;)V

    move-object/from16 v3, v140

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v80, v13

    move-wide/from16 v3, v100

    move-wide/from16 v5, v115

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x2

    move-object/from16 v100, v10

    goto/16 :goto_8c

    :cond_a7
    move-object/from16 v71, v2

    move-object/from16 v72, v6

    move-object/from16 v150, v10

    move-object/from16 v147, v13

    move-object/from16 v3, v58

    move-wide/from16 v6, v67

    move-object/from16 v8, v78

    move-object/from16 v5, v84

    move-object/from16 v2, v139

    move-wide/from16 v77, v63

    goto/16 :goto_7e

    :cond_a8
    move-object/from16 v139, v2

    move-object/from16 v3, v140

    move-object/from16 v84, v145

    move-object/from16 v80, v147

    move-object/from16 v10, v150

    invoke-static {v0, v14}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lٴᴵ/ˑﹳ;->ʼᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ﹳᐧ;)Lٴᴵ/ﹳᐧ;

    move-result-object v41

    move-object/from16 v140, v3

    move-object/from16 v1, v59

    move-wide/from16 v3, v100

    move-wide/from16 v5, v115

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x2

    move-object/from16 v100, v10

    goto/16 :goto_8d

    :cond_a9
    invoke-static {v0, v13}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v13, v14}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v8

    const/4 v1, 0x0

    move-object/from16 v140, v3

    move-wide/from16 v6, v65

    move-wide/from16 v2, v100

    move-wide/from16 v4, v115

    const/16 v39, 0x2

    move-object/from16 v100, v10

    move-wide v10, v11

    invoke-static/range {v0 .. v11}, Lٴᴵ/ˑﹳ;->ᵔﹳ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ˉˆ;JJJJJ)Lٴᴵ/ˉˆ;

    move-result-object v41

    move-wide v11, v10

    move-wide v5, v4

    move-wide v3, v2

    move-wide/from16 v60, v8

    :goto_8c
    move-object/from16 v1, v59

    goto :goto_8d

    :cond_aa
    move-object/from16 v140, v3

    move-wide/from16 v3, v100

    move-wide/from16 v5, v115

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v39, 0x2

    move-object/from16 v100, v10

    invoke-static {v0, v15}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-static {v0, v13, v14}, Lٴᴵ/ˑﹳ;->ˑﹳ(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v9

    sget-object v1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v2, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    const/4 v1, 0x0

    move-wide/from16 v7, v65

    invoke-static/range {v0 .. v12}, Lٴᴵ/ˑﹳ;->ﹳᐧ(Lorg/xmlpull/v1/XmlPullParser;Lٴᴵ/ʼᐧ;Ljava/util/List;JJJJJ)Lٴᴵ/ʼᐧ;

    move-result-object v41

    move-wide/from16 v60, v9

    goto :goto_8c

    :cond_ab
    const-string v1, "AssetIdentifier"

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʾᵎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-static {v0, v1}, Lٴᴵ/ˑﹳ;->ʼˎ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lٴᴵ/ﾞᴵ;

    goto :goto_8c

    :cond_ac
    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8c

    :goto_8d
    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    new-instance v52, Lٴᴵ/ᵔᵢ;

    move-object/from16 v56, v139

    move-object/from16 v57, v140

    invoke-direct/range {v52 .. v57}, Lٴᴵ/ᵔᵢ;-><init>(Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/List;)V

    move-object/from16 v1, v52

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lٴᴵ/ᵔᵢ;

    iget-wide v3, v2, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    cmp-long v3, v3, v13

    if-nez v3, :cond_ae

    if-eqz v23, :cond_ad

    move-object/from16 v7, v36

    move/from16 v32, v40

    move-wide/from16 v3, v42

    goto :goto_90

    :cond_ad
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to determine start of period "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_ae
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v13

    if-nez v1, :cond_af

    move-wide v3, v13

    :goto_8e
    move-object/from16 v7, v36

    goto :goto_8f

    :cond_af
    iget-wide v5, v2, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    add-long/2addr v3, v5

    goto :goto_8e

    :goto_8f
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_90
    move-wide/from16 v42, v3

    :goto_91
    move-wide/from16 v4, v47

    goto :goto_92

    :cond_b0
    move-object/from16 v59, v1

    move-wide/from16 v49, v3

    move-wide v3, v13

    move-wide/from16 v7, v42

    move-wide/from16 v42, v47

    move-wide/from16 v13, v65

    move-object/from16 v1, v69

    move-object/from16 v10, v80

    move-object/from16 v2, v100

    move-object/from16 v15, v110

    move-object/from16 v9, v136

    move-object/from16 v56, v139

    move-object/from16 v57, v140

    move-wide/from16 v47, v5

    move-object/from16 v6, v44

    move-object/from16 v5, v45

    move-wide/from16 v44, v11

    move/from16 v12, v62

    move-object/from16 v11, v84

    goto/16 :goto_1c

    :cond_b1
    move/from16 v62, v12

    move-wide/from16 v11, v44

    move-wide/from16 v13, v47

    move-object/from16 v44, v6

    move-wide/from16 v47, v42

    move-wide/from16 v42, v7

    move-object/from16 v7, v36

    invoke-static {v0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_91

    :goto_92
    const-string v1, "MPD"

    invoke-static {v0, v1}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    cmp-long v0, v19, v13

    if-nez v0, :cond_b2

    cmp-long v0, v42, v13

    if-eqz v0, :cond_b3

    move-wide/from16 v19, v42

    :cond_b2
    :goto_93
    const/4 v1, 0x0

    goto :goto_94

    :cond_b3
    if-eqz v23, :cond_b4

    goto :goto_93

    :cond_b4
    const-string v0, "Unable to determine duration of static manifest."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_94
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    new-instance v16, Lٴᴵ/ʽ;

    move-object/from16 v36, v7

    move-wide/from16 v26, v11

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v37

    invoke-direct/range {v16 .. v36}, Lٴᴵ/ʽ;-><init>(JJJZJJJJLٴᴵ/ʼˎ;Lˈـ/ʾˋ;Lʽⁱ/ـˆ;Landroid/net/Uri;Ljava/util/ArrayList;)V

    return-object v16

    :cond_b5
    const-string v0, "No periods found."

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_b6
    move-object/from16 v36, v7

    move-wide v10, v11

    move-wide v2, v13

    move/from16 v13, v38

    move/from16 v15, v40

    move-wide/from16 v7, v42

    move-object/from16 v6, v44

    move-object/from16 v1, v51

    move/from16 v12, v62

    const/4 v14, 0x0

    goto/16 :goto_b

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static ﾞᴵ(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 8

    .prologue
    const-string v0, "dvb:priority"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    :goto_0
    const-string v3, "dvb:weight"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const-string v4, "serviceLocation"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lٴᴵ/ˑﹳ;->ⁱˊ(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    const-string v5, "BaseURL"

    invoke-static {p0, v5}, Lᐧˎ/ﹳٴ;->ʻٴ(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 p0, 0x0

    if-eqz v4, :cond_6

    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ˏי(Ljava/lang/String;)[I

    move-result-object v5

    aget v5, v5, p0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    if-nez v1, :cond_5

    move-object v1, v4

    :cond_5
    new-instance p1, Lٴᴵ/ⁱˊ;

    invoke-direct {p1, v0, v3, v4, v1}, Lٴᴵ/ⁱˊ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-array p2, v2, [Lٴᴵ/ⁱˊ;

    aput-object p1, p2, p0

    invoke-static {p2}, Lʼʻ/ﹳᐧ;->ᵔʾ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge p0, v5, :cond_9

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lٴᴵ/ⁱˊ;

    iget-object v6, v5, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v6, v4}, Lᐧˎ/ﹳٴ;->ʾˋ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_7

    move-object v7, v6

    goto :goto_4

    :cond_7
    move-object v7, v1

    :goto_4
    if-eqz p2, :cond_8

    iget v0, v5, Lٴᴵ/ⁱˊ;->ʽ:I

    iget v3, v5, Lٴᴵ/ⁱˊ;->ˈ:I

    iget-object v7, v5, Lٴᴵ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    :cond_8
    new-instance v5, Lٴᴵ/ⁱˊ;

    invoke-direct {v5, v0, v3, v6, v7}, Lٴᴵ/ⁱˊ;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_9
    return-object v2
.end method


# virtual methods
.method public final ˈ(Landroid/net/Uri;Lـˊ/ᵎﹶ;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lٴᴵ/ˑﹳ;->ʾˋ:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string p2, "MPD"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v1, p1}, Lٴᴵ/ˑﹳ;->ﾞʻ(Lorg/xmlpull/v1/XmlPullParser;Landroid/net/Uri;)Lٴᴵ/ʽ;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const-string p1, "inputStream does not contain a valid media presentation description"

    invoke-static {p1, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0, p1}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method
