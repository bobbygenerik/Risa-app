.class public final Lᵎʿ/ﹳٴ;
.super Lـˊ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public ˆﾞ:J

.field public final ˉٴ:Lـʾ/ᵔﹳ;

.field public final ˊʻ:Lـʾ/ᵔﹳ;

.field public ٴʼ:Lˎᵢ/ʽʽ;

.field public final ٴᵢ:Ljava/lang/String;

.field public final ᴵᵔ:Lˎᵢ/ˈ;

.field public ᵎˊ:Ljava/io/InputStream;

.field public ᵎⁱ:Lـˊ/ᵔᵢ;

.field public ᵔי:Z

.field public ᵔٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.datasource.okhttp"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lˎᵢ/ˈ;Ljava/lang/String;Lـʾ/ᵔﹳ;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lـˊ/ⁱˊ;-><init>(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lᵎʿ/ﹳٴ;->ᴵᵔ:Lˎᵢ/ˈ;

    iput-object p2, p0, Lᵎʿ/ﹳٴ;->ٴᵢ:Ljava/lang/String;

    iput-object p3, p0, Lᵎʿ/ﹳٴ;->ˉٴ:Lـʾ/ᵔﹳ;

    new-instance p1, Lـʾ/ᵔﹳ;

    invoke-direct {p1}, Lـʾ/ᵔﹳ;-><init>()V

    iput-object p1, p0, Lᵎʿ/ﹳٴ;->ˊʻ:Lـʾ/ᵔﹳ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᵎʿ/ﹳٴ;->ᵔי:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᵎʿ/ﹳٴ;->ᵔי:Z

    invoke-virtual {p0}, Lـˊ/ⁱˊ;->ʽ()V

    invoke-virtual {p0}, Lᵎʿ/ﹳٴ;->ᵔᵢ()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lᵎʿ/ﹳٴ;->ٴʼ:Lˎᵢ/ʽʽ;

    iput-object v0, p0, Lᵎʿ/ﹳٴ;->ᵎⁱ:Lـˊ/ᵔᵢ;

    return-void
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lᵎʿ/ﹳٴ;->ˆﾞ:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Lᵎʿ/ﹳٴ;->ᵔٴ:J

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
    iget-object v0, p0, Lᵎʿ/ﹳٴ;->ᵎˊ:Ljava/io/InputStream;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    :goto_0
    return v3

    :cond_3
    iget-wide p2, p0, Lᵎʿ/ﹳٴ;->ᵔٴ:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lᵎʿ/ﹳٴ;->ᵔٴ:J

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
    .locals 25

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iput-object v0, v1, Lᵎʿ/ﹳٴ;->ᵎⁱ:Lـˊ/ᵔᵢ;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lᵎʿ/ﹳٴ;->ᵔٴ:J

    iput-wide v2, v1, Lᵎʿ/ﹳٴ;->ˆﾞ:J

    invoke-virtual {v1}, Lـˊ/ⁱˊ;->ˑﹳ()V

    iget-wide v4, v0, Lـˊ/ᵔᵢ;->ˑﹳ:J

    iget v6, v0, Lـˊ/ᵔᵢ;->ⁱˊ:I

    iget-wide v7, v0, Lـˊ/ᵔᵢ;->ﾞᴵ:J

    iget-object v9, v0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Lˊﹶ/ⁱˊ;

    invoke-direct {v11}, Lˊﹶ/ⁱˊ;-><init>()V

    invoke-virtual {v11, v10, v9}, Lˊﹶ/ⁱˊ;->ᵎﹶ(Lˎᵢ/ʼᐧ;Ljava/lang/String;)V

    invoke-virtual {v11}, Lˊﹶ/ⁱˊ;->ⁱˊ()Lˎᵢ/ʼᐧ;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v9, v10

    :goto_0
    if-eqz v9, :cond_e

    new-instance v11, Landroidx/leanback/widget/ʻٴ;

    const/16 v12, 0x8

    invoke-direct {v11, v12}, Landroidx/leanback/widget/ʻٴ;-><init>(I)V

    iput-object v9, v11, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iget-object v12, v1, Lᵎʿ/ﹳٴ;->ˉٴ:Lـʾ/ᵔﹳ;

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lـʾ/ᵔﹳ;->ʼᐧ()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v12, v1, Lᵎʿ/ﹳٴ;->ˊʻ:Lـʾ/ᵔﹳ;

    invoke-virtual {v12}, Lـʾ/ᵔﹳ;->ʼᐧ()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v12, v0, Lـˊ/ᵔᵢ;->ˈ:Ljava/util/Map;

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v13, v12}, Landroidx/leanback/widget/ʻٴ;->ˉˆ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v4, v5, v7, v8}, Lـˊ/ᵔʾ;->ﹳٴ(JJ)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v12, v11, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v12, Lʼٴ/ʼˎ;

    const-string v13, "Range"

    invoke-virtual {v12, v13, v9}, Lʼٴ/ʼˎ;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v9, v1, Lᵎʿ/ﹳٴ;->ٴᵢ:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v12, v11, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v12, Lʼٴ/ʼˎ;

    const-string v13, "User-Agent"

    invoke-virtual {v12, v13, v9}, Lʼٴ/ʼˎ;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v9, v0, Lـˊ/ᵔᵢ;->ᵔᵢ:I

    const/4 v12, 0x1

    and-int/2addr v9, v12

    if-ne v9, v12, :cond_4

    goto :goto_2

    :cond_4
    iget-object v9, v11, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v9, Lʼٴ/ʼˎ;

    const-string v13, "Accept-Encoding"

    const-string v14, "identity"

    invoke-virtual {v9, v13, v14}, Lʼٴ/ʼˎ;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v9, v0, Lـˊ/ᵔᵢ;->ʽ:[B

    const/4 v13, 0x0

    if-eqz v9, :cond_5

    array-length v14, v9

    array-length v15, v9

    move-wide/from16 v22, v2

    int-to-long v2, v15

    int-to-long v12, v13

    move-object/from16 v24, v11

    int-to-long v10, v14

    move-wide/from16 v16, v2

    move-wide/from16 v20, v10

    move-wide/from16 v18, v12

    invoke-static/range {v16 .. v21}, Lⁱᐧ/ʽ;->ﹳٴ(JJJ)V

    new-instance v2, Lˎᵢ/ᵢˏ;

    invoke-direct {v2, v14, v9}, Lˎᵢ/ᵢˏ;-><init>(I[B)V

    goto :goto_3

    :cond_5
    move-wide/from16 v22, v2

    move-object/from16 v24, v11

    const/4 v2, 0x2

    if-ne v6, v2, :cond_6

    sget-object v2, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    array-length v3, v2

    array-length v9, v2

    int-to-long v9, v9

    int-to-long v11, v13

    int-to-long v13, v3

    move-wide/from16 v16, v9

    move-wide/from16 v18, v11

    move-wide/from16 v20, v13

    invoke-static/range {v16 .. v21}, Lⁱᐧ/ʽ;->ﹳٴ(JJJ)V

    new-instance v9, Lˎᵢ/ᵢˏ;

    invoke-direct {v9, v3, v2}, Lˎᵢ/ᵢˏ;-><init>(I[B)V

    move-object v2, v9

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-static {v6}, Lـˊ/ᵔᵢ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v24

    invoke-virtual {v6, v3, v2}, Landroidx/leanback/widget/ʻٴ;->ʼᐧ(Ljava/lang/String;Lˎᵢ/ʾˋ;)V

    new-instance v2, Lˎᵢ/ʾᵎ;

    invoke-direct {v2, v6}, Lˎᵢ/ʾᵎ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    iget-object v3, v1, Lᵎʿ/ﹳٴ;->ᴵᵔ:Lˎᵢ/ˈ;

    check-cast v3, Lˎᵢ/ʻٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lٴᵎ/ʼᐧ;

    invoke-direct {v6, v3, v2}, Lٴᵎ/ʼᐧ;-><init>(Lˎᵢ/ʻٴ;Lˎᵢ/ʾᵎ;)V

    :try_start_1
    new-instance v2, Lˈˊ/יـ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lᐧﹳ/ʽ;

    const/4 v9, 0x3

    invoke-direct {v3, v9, v2}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v3}, Lٴᵎ/ʼᐧ;->ˈ(Lˎᵢ/ˑﹳ;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v2}, Lˈˊ/ˉʿ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˎᵢ/ʽʽ;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iput-object v2, v1, Lᵎʿ/ﹳٴ;->ٴʼ:Lˎᵢ/ʽʽ;

    iget-object v3, v2, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object v6

    invoke-interface {v6}, Lˊᐧ/ᵔᵢ;->ᵎʻ()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, v1, Lᵎʿ/ﹳٴ;->ᵎˊ:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    iget v6, v2, Lˎᵢ/ʽʽ;->ˈٴ:I

    iget-boolean v9, v2, Lˎᵢ/ʽʽ;->ˈʿ:Z

    const-wide/16 v10, -0x1

    if-nez v9, :cond_a

    const/16 v3, 0x1a0

    if-ne v6, v3, :cond_8

    iget-object v9, v2, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    const-string v12, "Content-Range"

    invoke-virtual {v9, v12}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lـˊ/ᵔʾ;->ⁱˊ(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-nez v4, :cond_8

    const/4 v15, 0x1

    iput-boolean v15, v1, Lᵎʿ/ﹳٴ;->ᵔי:Z

    invoke-virtual/range {p0 .. p1}, Lـˊ/ⁱˊ;->ᵎﹶ(Lـˊ/ᵔᵢ;)V

    cmp-long v0, v7, v10

    if-eqz v0, :cond_7

    move-wide v2, v7

    goto :goto_4

    :cond_7
    move-wide/from16 v2, v22

    :goto_4
    return-wide v2

    :cond_8
    :try_start_4
    iget-object v0, v1, Lᵎʿ/ﹳٴ;->ᵎˊ:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lˎﹶ/ⁱˊ;->ʽ(Ljava/io/InputStream;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :catch_1
    sget-object v0, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    :goto_5
    iget-object v0, v2, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    invoke-virtual {v0}, Lˎᵢ/ˉˆ;->ˑﹳ()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v1}, Lᵎʿ/ﹳٴ;->ᵔᵢ()V

    if-ne v6, v3, :cond_9

    new-instance v10, Landroidx/media3/datasource/DataSourceException;

    const/16 v2, 0x7d8

    invoke-direct {v10, v2}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    goto :goto_6

    :cond_9
    const/4 v10, 0x0

    :goto_6
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v2, v6, v10, v0}, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;-><init>(ILandroidx/media3/datasource/DataSourceException;Ljava/util/Map;)V

    throw v2

    :cond_a
    invoke-virtual {v3}, Lˎᵢ/ᴵᵔ;->ᵎﹶ()Lˎᵢ/ﹳᐧ;

    const/16 v2, 0xc8

    if-ne v6, v2, :cond_b

    cmp-long v2, v4, v22

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    move-wide/from16 v4, v22

    :goto_7
    cmp-long v2, v7, v10

    if-eqz v2, :cond_c

    iput-wide v7, v1, Lᵎʿ/ﹳٴ;->ˆﾞ:J

    :goto_8
    const/4 v15, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {v3}, Lˎᵢ/ᴵᵔ;->ʽ()J

    move-result-wide v2

    cmp-long v6, v2, v10

    if-eqz v6, :cond_d

    sub-long v10, v2, v4

    :cond_d
    iput-wide v10, v1, Lᵎʿ/ﹳٴ;->ˆﾞ:J

    goto :goto_8

    :goto_9
    iput-boolean v15, v1, Lᵎʿ/ﹳٴ;->ᵔי:Z

    invoke-virtual/range {p0 .. p1}, Lـˊ/ⁱˊ;->ᵎﹶ(Lـˊ/ᵔᵢ;)V

    :try_start_5
    invoke-virtual {v1, v4, v5}, Lᵎʿ/ﹳٴ;->ˉˆ(J)V
    :try_end_5
    .catch Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException; {:try_start_5 .. :try_end_5} :catch_2

    iget-wide v2, v1, Lᵎʿ/ﹳٴ;->ˆﾞ:J

    return-wide v2

    :catch_2
    move-exception v0

    invoke-virtual {v1}, Lᵎʿ/ﹳٴ;->ᵔᵢ()V

    throw v0

    :catch_3
    move-exception v0

    const/4 v15, 0x1

    goto :goto_a

    :catch_4
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    invoke-virtual {v6}, Lٴᵎ/ʼᐧ;->cancel()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_a
    invoke-static {v15, v0}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->ﹳٴ(ILjava/io/IOException;)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    move-result-object v0

    throw v0

    :cond_e
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const-string v2, "Malformed URL"

    const/16 v3, 0x3ec

    invoke-direct {v0, v3, v2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final ˉˆ(J)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x1000

    new-array v3, v2, [B

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_4

    int-to-long v4, v2

    :try_start_0
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lᵎʿ/ﹳٴ;->ᵎˊ:Ljava/io/InputStream;

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

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 p2, 0x7d8

    invoke-direct {p1, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(I)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of p2, p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    if-eqz p2, :cond_3

    check-cast p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    throw p1

    :cond_3
    new-instance p1, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    const/16 p2, 0x7d0

    invoke-direct {p1, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(I)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method public final יـ()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lᵎʿ/ﹳٴ;->ٴʼ:Lˎᵢ/ʽʽ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iget-object v0, v0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object v0, v0, Lˎᵢ/ʼᐧ;->ʼˎ:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lᵎʿ/ﹳٴ;->ᵎⁱ:Lـˊ/ᵔᵢ;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lـˊ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ٴﹶ()Ljava/util/Map;
    .locals 1

    .prologue
    iget-object v0, p0, Lᵎʿ/ﹳٴ;->ٴʼ:Lˎᵢ/ʽʽ;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    iget-object v0, v0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    invoke-virtual {v0}, Lˎᵢ/ˉˆ;->ˑﹳ()Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔᵢ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lᵎʿ/ﹳٴ;->ٴʼ:Lˎᵢ/ʽʽ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lᵎʿ/ﹳٴ;->ᵎˊ:Ljava/io/InputStream;

    return-void
.end method
