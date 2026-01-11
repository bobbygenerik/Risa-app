.class public final Lـˊ/ﾞʻ;
.super Lـˊ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public ˆﾞ:I

.field public ˈʿ:J

.field public final ˉٴ:Lـʾ/ᵔﹳ;

.field public final ˊʻ:I

.field public ٴʼ:Ljava/net/HttpURLConnection;

.field public final ٴᵢ:Lـʾ/ᵔﹳ;

.field public final ᴵᵔ:I

.field public ᵎˊ:Ljava/io/InputStream;

.field public ᵎⁱ:Lـˊ/ᵔᵢ;

.field public ᵔי:Z

.field public ᵔٴ:J


# direct methods
.method public constructor <init>(IILـʾ/ᵔﹳ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lـˊ/ⁱˊ;-><init>(Z)V

    iput p1, p0, Lـˊ/ﾞʻ;->ᴵᵔ:I

    iput p2, p0, Lـˊ/ﾞʻ;->ˊʻ:I

    iput-object p3, p0, Lـˊ/ﾞʻ;->ٴᵢ:Lـʾ/ᵔﹳ;

    new-instance p1, Lـʾ/ᵔﹳ;

    invoke-direct {p1}, Lـʾ/ᵔﹳ;-><init>()V

    iput-object p1, p0, Lـˊ/ﾞʻ;->ˉٴ:Lـʾ/ᵔﹳ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    sget-object v4, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/16 v4, 0x7d0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(IILjava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iput-object v1, p0, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;

    invoke-virtual {p0}, Lـˊ/ﾞʻ;->ᵔᵢ()V

    iget-boolean v2, p0, Lـˊ/ﾞʻ;->ᵔי:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lـˊ/ﾞʻ;->ᵔי:Z

    invoke-virtual {p0}, Lـˊ/ⁱˊ;->ʽ()V

    :cond_1
    iput-object v1, p0, Lـˊ/ﾞʻ;->ٴʼ:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lـˊ/ﾞʻ;->ᵎⁱ:Lـˊ/ᵔᵢ;

    return-void

    :goto_1
    iput-object v1, p0, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;

    invoke-virtual {p0}, Lـˊ/ﾞʻ;->ᵔᵢ()V

    iget-boolean v3, p0, Lـˊ/ﾞʻ;->ᵔי:Z

    if-eqz v3, :cond_2

    iput-boolean v0, p0, Lـˊ/ﾞʻ;->ᵔי:Z

    invoke-virtual {p0}, Lـˊ/ⁱˊ;->ʽ()V

    :cond_2
    iput-object v1, p0, Lـˊ/ﾞʻ;->ٴʼ:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lـˊ/ﾞʻ;->ᵎⁱ:Lـˊ/ᵔᵢ;

    throw v2
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lـˊ/ﾞʻ;->ᵔٴ:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lـˊ/ﾞʻ;->ˈʿ:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    return v3

    :cond_3
    iget-wide p2, p0, Lـˊ/ﾞʻ;->ˈʿ:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lـˊ/ﾞʻ;->ˈʿ:J

    invoke-virtual {p0, p1}, Lـˊ/ⁱˊ;->ﹳٴ(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p2, p1}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->ﹳٴ(ILjava/io/IOException;)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object p1

    throw p1
.end method

.method public final ʽʽ(Lـˊ/ᵔᵢ;)J
    .locals 26

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Lـˊ/ﾞʻ;->ᵎⁱ:Lـˊ/ᵔᵢ;

    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lـˊ/ﾞʻ;->ˈʿ:J

    iput-wide v12, v1, Lـˊ/ﾞʻ;->ᵔٴ:J

    invoke-virtual {v1}, Lـˊ/ⁱˊ;->ˑﹳ()V

    const/4 v14, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, v0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lـˊ/ᵔᵢ;->ⁱˊ:I

    iget-object v4, v0, Lـˊ/ᵔᵢ;->ʽ:[B

    iget-wide v5, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    iget-wide v7, v0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    iget v9, v0, Lـˊ/ᵔᵢ;->ᵔᵢ:I

    and-int/2addr v9, v14

    if-ne v9, v14, :cond_0

    move v9, v14

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v11, v0, Lـˊ/ᵔᵢ;->ˈ:Ljava/util/Map;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v11}, Lـˊ/ﾞʻ;->ˉˆ(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v2

    iput-object v2, v1, Lـˊ/ﾞʻ;->ٴʼ:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v1, Lـˊ/ﾞʻ;->ˆﾞ:I

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    iget v3, v1, Lـˊ/ﾞʻ;->ˆﾞ:I

    const-string v4, "Content-Range"

    const/16 v5, 0xc8

    const/4 v8, 0x0

    if-lt v3, v5, :cond_1

    const/16 v9, 0x12b

    if-le v3, v9, :cond_2

    :cond_1
    move-object v6, v2

    move-wide/from16 v17, v12

    const-wide/16 v19, -0x1

    goto/16 :goto_b

    :cond_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v3, v1, Lـˊ/ﾞʻ;->ˆﾞ:I

    if-ne v3, v5, :cond_3

    iget-wide v9, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    cmp-long v3, v9, v12

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-wide v9, v12

    :goto_1
    const-string v3, "Content-Encoding"

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object v3, v8

    :goto_2
    const-string v5, "gzip"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-wide/16 v15, -0x1

    iget-wide v6, v0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    cmp-long v5, v6, v15

    if-eqz v5, :cond_4

    iput-wide v6, v1, Lـˊ/ﾞʻ;->ᵔٴ:J

    move-object v6, v2

    move/from16 v23, v3

    goto/16 :goto_8

    :cond_4
    const-string v5, "Content-Length"

    :try_start_2
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-object v5, v8

    :goto_3
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    sget-object v4, Lـˊ/ᵔʾ;->ﹳٴ:Ljava/util/regex/Pattern;

    const-string v4, "Inconsistent headers ["

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "]"

    const-string v11, "HttpUtil"

    if-nez v6, :cond_5

    :try_start_4
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v24, v17

    move-wide/from16 v17, v12

    move-wide/from16 v12, v24

    goto :goto_5

    :catch_3
    new-instance v6, Ljava/lang/StringBuilder;

    move-wide/from16 v17, v12

    const-string v12, "Unexpected Content-Length ["

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lᐧˎ/ﹳٴ;->ʼᐧ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-wide/from16 v17, v12

    :goto_4
    move-wide v12, v15

    :goto_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lـˊ/ᵔʾ;->ﹳٴ:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v19

    if-eqz v19, :cond_7

    move-wide/from16 v19, v15

    const/4 v15, 0x2

    :try_start_5
    invoke-virtual {v6, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    sub-long v15, v15, v21

    const-wide/16 v21, 0x1

    move-object v6, v2

    move/from16 v23, v3

    add-long v2, v15, v21

    cmp-long v15, v12, v17

    if-gez v15, :cond_6

    move-wide v12, v2

    goto :goto_6

    :cond_6
    cmp-long v15, v12, v2

    if-eqz v15, :cond_8

    :try_start_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_4
    move-object v6, v2

    move/from16 v23, v3

    :catch_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected Content-Range ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lᐧˎ/ﹳٴ;->ʼᐧ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object v6, v2

    move/from16 v23, v3

    move-wide/from16 v19, v15

    :cond_8
    :goto_6
    cmp-long v2, v12, v19

    if-eqz v2, :cond_9

    sub-long v2, v12, v9

    goto :goto_7

    :cond_9
    move-wide/from16 v2, v19

    :goto_7
    iput-wide v2, v1, Lـˊ/ﾞʻ;->ᵔٴ:J

    goto :goto_8

    :cond_a
    move-object v6, v2

    move/from16 v23, v3

    iget-wide v2, v0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    iput-wide v2, v1, Lـˊ/ﾞʻ;->ᵔٴ:J

    :goto_8
    const/16 v2, 0x7d0

    :try_start_7
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v1, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;

    if-eqz v23, :cond_b

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    iget-object v4, v1, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v1, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_a

    :cond_b
    :goto_9
    iput-boolean v14, v1, Lـˊ/ﾞʻ;->ᵔי:Z

    invoke-virtual/range {p0 .. p1}, Lـˊ/ⁱˊ;->ᵎﹶ(Lـˊ/ᵔᵢ;)V

    :try_start_8
    invoke-virtual {v1, v9, v10}, Lـˊ/ﾞʻ;->ᵔﹳ(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    iget-wide v2, v1, Lـˊ/ﾞʻ;->ᵔٴ:J

    return-wide v2

    :catch_7
    move-exception v0

    invoke-virtual {v1}, Lـˊ/ﾞʻ;->ᵔᵢ()V

    instance-of v3, v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz v3, :cond_c

    check-cast v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw v0

    :cond_c
    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v3, v2, v14, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(IILjava/io/IOException;)V

    throw v3

    :goto_a
    invoke-virtual {v1}, Lـˊ/ﾞʻ;->ᵔᵢ()V

    new-instance v3, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v3, v2, v14, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(IILjava/io/IOException;)V

    throw v3

    :goto_b
    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    iget v3, v1, Lـˊ/ﾞʻ;->ˆﾞ:I

    const/16 v5, 0x1a0

    if-ne v3, v5, :cond_e

    :try_start_9
    invoke-virtual {v6, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_c

    :catch_8
    move-object v3, v8

    :goto_c
    invoke-static {v3}, Lـˊ/ᵔʾ;->ⁱˊ(Ljava/lang/String;)J

    move-result-wide v3

    iget-wide v9, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    cmp-long v3, v9, v3

    if-nez v3, :cond_e

    iput-boolean v14, v1, Lـˊ/ﾞʻ;->ᵔי:Z

    invoke-virtual/range {p0 .. p1}, Lـˊ/ⁱˊ;->ᵎﹶ(Lـˊ/ᵔᵢ;)V

    iget-wide v2, v0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    cmp-long v0, v2, v19

    if-eqz v0, :cond_d

    move-wide v12, v2

    goto :goto_d

    :cond_d
    move-wide/from16 v12, v17

    :goto_d
    return-wide v12

    :cond_e
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_a
    invoke-static {v0}, Lˎﹶ/ⁱˊ;->ʽ(Ljava/io/InputStream;)[B

    goto :goto_e

    :cond_f
    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_e

    :catch_9
    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    :goto_e
    invoke-virtual {v1}, Lـˊ/ﾞʻ;->ᵔᵢ()V

    iget v0, v1, Lـˊ/ﾞʻ;->ˆﾞ:I

    if-ne v0, v5, :cond_10

    new-instance v8, Landroidx/media3/datasource/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {v8, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    :cond_10
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v3, v1, Lـˊ/ﾞʻ;->ˆﾞ:I

    invoke-direct {v0, v3, v8, v2}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILandroidx/media3/datasource/DataSourceException;Ljava/util/Map;)V

    throw v0

    :catch_a
    move-exception v0

    invoke-virtual {v1}, Lـˊ/ﾞʻ;->ᵔᵢ()V

    invoke-static {v14, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->ﹳٴ(ILjava/io/IOException;)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v0

    throw v0
.end method

.method public final ˉˆ(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 5

    .prologue
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lʿˋ/ᵔʾ;

    invoke-direct {v0, v2}, Lʿˋ/ᵔʾ;-><init>(I)V

    new-array v3, v2, [Ljavax/net/ssl/TrustManager;

    aput-object v0, v3, v1

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    move-object v3, p1

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget v0, p0, Lـˊ/ﾞʻ;->ᴵᵔ:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lـˊ/ﾞʻ;->ˊʻ:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lـˊ/ﾞʻ;->ٴᵢ:Lـʾ/ᵔﹳ;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lـʾ/ᵔﹳ;->ʼᐧ()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    iget-object v3, p0, Lـˊ/ﾞʻ;->ˉٴ:Lـʾ/ᵔﹳ;

    invoke-virtual {v3}, Lـʾ/ᵔﹳ;->ʼᐧ()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, p10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p10

    invoke-interface {p10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p10

    :goto_0
    invoke-interface {p10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p4, p5, p6, p7}, Lـˊ/ᵔʾ;->ﹳٴ(JJ)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    const-string p5, "Range"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p8, :cond_4

    const-string p4, "gzip"

    goto :goto_1

    :cond_4
    const-string p4, "identity"

    :goto_1
    const-string p5, "Accept-Encoding"

    invoke-virtual {p1, p5, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-static {p2}, Lـˊ/ᵔᵢ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    :goto_2
    return-object p1
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lـˊ/ﾞʻ;->ٴʼ:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lـˊ/ﾞʻ;->ᵎⁱ:Lـˊ/ᵔᵢ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ٴﹶ()Ljava/util/Map;
    .locals 2

    .prologue
    iget-object v0, p0, Lـˊ/ﾞʻ;->ٴʼ:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    sget-object v0, Lʼʻ/ᴵʼ;->ٴᵢ:Lʼʻ/ᴵʼ;

    return-object v0

    :cond_0
    new-instance v1, Lـˊ/ٴﹶ;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lـˊ/ٴﹶ;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public final ᵔᵢ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lـˊ/ﾞʻ;->ٴʼ:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final ᵔﹳ(J)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    int-to-long v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lـˊ/ﾞʻ;->ᵎˊ:Ljava/io/InputStream;

    sget-object v6, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    sub-long/2addr p1, v5

    invoke-virtual {p0, v4}, Lـˊ/ⁱˊ;->ﹳٴ(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(I)V

    throw p1

    :cond_2
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(IILjava/io/IOException;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
