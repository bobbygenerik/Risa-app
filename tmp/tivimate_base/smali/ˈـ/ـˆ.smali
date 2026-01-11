.class public final Lˈـ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/Object;

.field public ⁱˊ:J

.field public ﹳٴ:I


# direct methods
.method public constructor <init>(ILjava/net/URL;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˈـ/ـˆ;->ﹳٴ:I

    iput-object p2, p0, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    iput-wide p3, p0, Lˈـ/ـˆ;->ⁱˊ:J

    return-void
.end method

.method public constructor <init>(Lᵔᵔ/ﹳٴ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    iput-wide p2, p0, Lˈـ/ـˆ;->ⁱˊ:J

    return-void
.end method

.method public static ʽ(BLjava/io/DataInputStream;)[B
    .locals 5

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    const/4 v3, 0x1

    aput-byte p0, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    aget-byte p0, v1, v2

    const/16 v4, 0xd

    if-ne p0, v4, :cond_1

    aget-byte p0, v1, v3

    const/16 v4, 0xa

    if-eq p0, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_1
    aget-byte p0, v1, v3

    aput-byte p0, v1, v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    aput-byte p0, v1, v3

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public ⁱˊ(Lᴵⁱ/ﾞʻ;)V
    .locals 34

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lᵔᵔ/ﹳٴ;

    instance-of v3, v2, Lʾˆ/ˈ;

    if-nez v3, :cond_5

    instance-of v3, v2, Lᐧʾ/ˉʿ;

    const/4 v4, 0x0

    const/4 v6, 0x3

    if-eqz v3, :cond_3

    new-instance v3, Lᐧᵎ/י;

    invoke-direct {v3, v0, v4}, Lᐧᵎ/י;-><init>(Lˈـ/ـˆ;I)V

    sget-boolean v7, Lʿˋ/ˉʿ;->ﹳٴ:Z

    invoke-static {v6, v3}, Lˈˆ/ﾞᴵ;->ˉٴ(ILᴵⁱ/ﹳٴ;)Lʻᵢ/ʽ;

    move-result-object v3

    check-cast v2, Lᐧʾ/ˉʿ;

    iget-object v6, v2, Lᐧʾ/ˉʿ;->ﾞʻ:Ljava/util/List;

    iget-object v7, v2, Lᐧʾ/ˉʿ;->ٴﹶ:Ljava/util/List;

    new-instance v8, Lˏʽ/ʽ;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v7}, Lˏʽ/ʽ;-><init>(ILjava/util/List;)V

    new-instance v7, Lʼᵢ/יـ;

    const/16 v9, 0x17

    invoke-direct {v7, v9, v8}, Lʼᵢ/יـ;-><init>(ILjava/lang/Object;)V

    invoke-static {v7, v6}, Lﹶˈ/ᵔʾ;->ˏᵢ(Ljava/util/Comparator;Ljava/util/List;)V

    iget-object v6, v2, Lᐧʾ/ˉʿ;->ﾞʻ:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v7, Lar/tvplayer/core/data/api/xtreamcodes/Series;

    iget-object v9, v2, Lᐧʾ/ˉʿ;->ﾞʻ:Ljava/util/List;

    sget-object v10, Lar/tvplayer/core/data/api/xtreamcodes/Series;->ᵎﹶ:Lʻᵢ/ʼˎ;

    invoke-virtual {v10}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lar/tvplayer/core/data/api/xtreamcodes/Series;

    invoke-interface {v9, v4, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    iget v9, v7, Lar/tvplayer/core/data/api/xtreamcodes/Series;->ˈ:I

    invoke-static {v9}, Lʿˋ/ˉʿ;->ᐧﾞ(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/Long;

    iget-wide v12, v0, Lˈـ/ـˆ;->ⁱˊ:J

    iget v4, v0, Lˈـ/ـˆ;->ﹳٴ:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v0, Lˈـ/ـˆ;->ﹳٴ:I

    new-instance v9, Lˉʾ/ʼـ;

    iget v10, v7, Lar/tvplayer/core/data/api/xtreamcodes/Series;->ﹳٴ:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v10, v7, Lar/tvplayer/core/data/api/xtreamcodes/Series;->ⁱˊ:Ljava/lang/String;

    if-nez v10, :cond_0

    const-string v10, ""

    :cond_0
    move-object/from16 v18, v10

    iget-object v10, v7, Lar/tvplayer/core/data/api/xtreamcodes/Series;->ʽ:Ljava/lang/String;

    iget v11, v7, Lar/tvplayer/core/data/api/xtreamcodes/Series;->ˑﹳ:F

    const/16 v16, 0x0

    cmpg-float v16, v11, v16

    if-nez v16, :cond_1

    const/16 v20, 0x0

    :goto_1
    move-object/from16 v33, v6

    const/16 v32, 0x0

    goto :goto_2

    :cond_1
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object/from16 v20, v11

    goto :goto_1

    :goto_2
    iget-wide v5, v7, Lar/tvplayer/core/data/api/xtreamcodes/Series;->ﾞᴵ:J

    invoke-static {v5, v6}, Lʿˋ/ˉʿ;->ᐧᴵ(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    sget-object v26, Lˉʾ/ʾˋ;->ᴵˊ:Lˉʾ/ʾˋ;

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v19, v10

    const-wide/16 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v9 .. v31}, Lˉʾ/ʼـ;-><init>(JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Lˉʾ/ʻʿ;Lˉʾ/ʻʿ;Lˉʾ/ʻʿ;Lˉʾ/ʾˋ;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    invoke-interface {v1, v9}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v8

    move-object/from16 v6, v33

    goto/16 :goto_0

    :cond_2
    const/16 v32, 0x0

    invoke-static {}, Lﹶˈ/ٴﹶ;->ᐧﾞ()V

    throw v32

    :cond_3
    const/16 v32, 0x0

    instance-of v3, v2, Lˏʽ/ٴﹶ;

    if-eqz v3, :cond_4

    new-instance v3, Lᐧᵎ/י;

    const/4 v5, 0x1

    invoke-direct {v3, v0, v5}, Lᐧᵎ/י;-><init>(Lˈـ/ـˆ;I)V

    sget-boolean v7, Lʿˋ/ˉʿ;->ﹳٴ:Z

    invoke-static {v6, v3}, Lˈˆ/ﾞᴵ;->ˉٴ(ILᴵⁱ/ﹳٴ;)Lʻᵢ/ʽ;

    move-result-object v3

    check-cast v2, Lˏʽ/ٴﹶ;

    iget-object v6, v2, Lˏʽ/ٴﹶ;->ᵔᵢ:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v8, Lᐧᵎ/ʾˊ;

    invoke-direct {v8, v0, v1, v3, v4}, Lᐧᵎ/ʾˊ;-><init>(Ljava/lang/Object;Lᴵⁱ/ﾞʻ;Lʻᵢ/ʽ;I)V

    invoke-static {v6, v7, v8}, Lᐧᵎ/ʻʿ;->ˏי(Ljava/util/Map;Ljava/lang/Boolean;Lᴵⁱ/ﹳᐧ;)V

    iget-object v2, v2, Lˏʽ/ٴﹶ;->ʼˎ:Ljava/lang/Object;

    new-instance v4, Lᐧᵎ/ʾˊ;

    invoke-direct {v4, v0, v1, v3, v5}, Lᐧᵎ/ʾˊ;-><init>(Ljava/lang/Object;Lᴵⁱ/ﾞʻ;Lʻᵢ/ʽ;I)V

    move-object/from16 v1, v32

    invoke-static {v2, v1, v4}, Lᐧᵎ/ʻʿ;->ˏי(Ljava/util/Map;Ljava/lang/Boolean;Lᴵⁱ/ﹳᐧ;)V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unhandled playlist type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-void
.end method

.method public ﹳٴ([B)Lʼʻ/ᵎⁱ;
    .locals 8

    .prologue
    iget-object v0, p0, Lˈـ/ـˆ;->ʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v4

    aget-byte v1, p1, v1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v3

    aget-byte v1, p1, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    new-instance v1, Ljava/lang/String;

    array-length v5, p1

    sub-int/2addr v5, v4

    sget-object v6, Lˈـ/ᵢˏ;->ٴᵢ:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lˈـ/ـˆ;->ﹳٴ:I

    if-eq p1, v3, :cond_5

    if-ne p1, v4, :cond_4

    :try_start_0
    sget-object p1, Lˈـ/ᴵˊ;->ʽ:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-wide v6, v4

    :goto_1
    cmp-long p1, v6, v4

    if-eqz p1, :cond_2

    iput-wide v6, p0, Lˈـ/ـˆ;->ⁱˊ:J

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-wide v1, p0, Lˈـ/ـˆ;->ⁱˊ:J

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-lez p1, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lˈـ/ـˆ;->ﹳٴ:I

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v3, p0, Lˈـ/ـˆ;->ﹳٴ:I

    iput-wide v4, p0, Lˈـ/ـˆ;->ⁱˊ:J

    return-object p1

    :goto_2
    invoke-static {v1, p1}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    sget-object p1, Lˈـ/ᴵˊ;->ﹳٴ:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lˈـ/ᴵˊ;->ⁱˊ:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iput v4, p0, Lˈـ/ـˆ;->ﹳٴ:I

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method
