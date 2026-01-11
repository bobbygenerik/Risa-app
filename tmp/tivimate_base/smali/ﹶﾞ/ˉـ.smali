.class public final Lﹶﾞ/ˉـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:[B

.field public final synthetic ʾˋ:I

.field public final ˈٴ:Ljava/lang/String;

.field public final ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʽⁱ/ᵎﹶ;

.field public final ᴵˊ:Ljava/net/URL;

.field public final ᴵᵔ:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lﹶﾞ/ʿ;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lﹶﾞ/ᴵˑ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹶﾞ/ˉـ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˉـ;->ٴᵢ:Lʽⁱ/ᵎﹶ;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-static {p3}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p3, p0, Lﹶﾞ/ˉـ;->ᴵˊ:Ljava/net/URL;

    iput-object p4, p0, Lﹶﾞ/ˉـ;->ʽʽ:[B

    iput-object p6, p0, Lﹶﾞ/ˉـ;->ˊʻ:Ljava/lang/Object;

    iput-object p2, p0, Lﹶﾞ/ˉـ;->ˈٴ:Ljava/lang/String;

    iput-object p5, p0, Lﹶﾞ/ˉـ;->ᴵᵔ:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ˎˉ;Ljava/lang/String;Ljava/net/URL;[BLjava/util/HashMap;Lﹶﾞ/ˑˆ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹶﾞ/ˉـ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˉـ;->ٴᵢ:Lʽⁱ/ᵎﹶ;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p3, p0, Lﹶﾞ/ˉـ;->ᴵˊ:Ljava/net/URL;

    iput-object p4, p0, Lﹶﾞ/ˉـ;->ʽʽ:[B

    iput-object p6, p0, Lﹶﾞ/ˉـ;->ˊʻ:Ljava/lang/Object;

    iput-object p2, p0, Lﹶﾞ/ˉـ;->ˈٴ:Ljava/lang/String;

    iput-object p5, p0, Lﹶﾞ/ˉـ;->ᴵᵔ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    iget v0, p0, Lﹶﾞ/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    const-string v1, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v2, p0, Lﹶﾞ/ˉـ;->ˈٴ:Ljava/lang/String;

    iget-object v0, p0, Lﹶﾞ/ˉـ;->ٴᵢ:Lʽⁱ/ᵎﹶ;

    check-cast v0, Lﹶﾞ/ˎˉ;

    iget-object v3, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v0, v3, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ʼᵢ()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lﹶﾞ/ˉـ;->ᴵˊ:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v6, v0, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_4

    move-object v6, v0

    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v3}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0xea60

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v0, 0xee48

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v6, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v7, p0, Lﹶﾞ/ˉـ;->ᴵᵔ:Ljava/util/Map;

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v9, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    iget-object v7, p0, Lﹶﾞ/ˉـ;->ʽʽ:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :try_start_2
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v8, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v9, "Uploading data. size"

    array-length v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v9}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v6, v0, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_1
    move v7, v3

    move-object v9, v5

    :goto_2
    move-object v3, v0

    goto/16 :goto_f

    :goto_3
    move v7, v3

    move-object v9, v5

    :goto_4
    move-object v3, v0

    goto/16 :goto_12

    :catch_2
    move-exception v0

    :try_start_5
    iget-object v7, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v7}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v7, v7, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v8, "Failed to gzip post request content"

    invoke-virtual {v7, v0, v8}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/16 v10, 0x400

    :try_start_8
    new-array v10, v10, [B

    :goto_6
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v0, v10, v3, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0, v7, v5, v0, v8}, Lﹶﾞ/ˉـ;->ﹳٴ(ILjava/io/IOException;[BLjava/util/Map;)V

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v9, v5

    :goto_7
    if-eqz v9, :cond_3

    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_8
    move-object v3, v0

    move-object v9, v8

    move-object v8, v5

    goto :goto_f

    :goto_9
    move-object v3, v0

    move-object v9, v8

    move-object v8, v5

    goto :goto_12

    :catchall_5
    move-exception v0

    move-object v3, v0

    move-object v8, v5

    move-object v9, v8

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v8, v5

    move-object v9, v8

    goto :goto_12

    :goto_a
    move v7, v3

    move-object v8, v5

    :goto_b
    move-object v9, v8

    goto :goto_2

    :goto_c
    move v7, v3

    move-object v8, v5

    :goto_d
    move-object v9, v8

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_11

    :cond_4
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Failed to obtain HTTP connection"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_e
    move v7, v3

    move-object v6, v5

    move-object v8, v6

    goto :goto_b

    :goto_f
    if-eqz v8, :cond_5

    :try_start_c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_10

    :catch_6
    move-exception v0

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v4, v2, v0, v1}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_10
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-virtual {p0, v7, v5, v5, v9}, Lﹶﾞ/ˉـ;->ﹳٴ(ILjava/io/IOException;[BLjava/util/Map;)V

    throw v3

    :goto_11
    move v7, v3

    move-object v6, v5

    move-object v8, v6

    goto :goto_d

    :goto_12
    if-eqz v8, :cond_7

    :try_start_d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_13

    :catch_7
    move-exception v0

    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v4, v2, v0, v1}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    :goto_13
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    invoke-virtual {p0, v7, v3, v5, v9}, Lﹶﾞ/ˉـ;->ﹳٴ(ILjava/io/IOException;[BLjava/util/Map;)V

    :goto_14
    return-void

    :pswitch_0
    const-string v1, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v2, p0, Lﹶﾞ/ˉـ;->ˈٴ:Ljava/lang/String;

    iget-object v0, p0, Lﹶﾞ/ˉـ;->ٴᵢ:Lʽⁱ/ᵎﹶ;

    check-cast v0, Lﹶﾞ/ʿ;

    iget-object v3, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v4, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v3}, Lﹶﾞ/ʻˋ;->ʼᵢ()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_e
    iget-object v6, p0, Lﹶﾞ/ˉـ;->ᴵˊ:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    instance-of v7, v6, Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_d

    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6, v3}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0xea60

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v7, 0xee48

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v6, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    :try_start_f
    iget-object v8, p0, Lﹶﾞ/ˉـ;->ᴵᵔ:Ljava/util/Map;

    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v10, v9}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catchall_7
    move-exception v0

    goto/16 :goto_1f

    :catch_8
    move-exception v0

    goto/16 :goto_20

    :cond_9
    iget-object v8, p0, Lﹶﾞ/ˉـ;->ʽʽ:[B

    if-eqz v8, :cond_a

    iget-object v0, v0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v0, v0, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v0, v8}, Lﹶﾞ/ʿ;->ˎʼ([B)[B

    move-result-object v0

    iget-object v8, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v9, "Uploading data. size"

    array-length v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11, v9}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v7, "Content-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    goto :goto_19

    :catchall_8
    move-exception v0

    goto :goto_16

    :catch_9
    move-exception v0

    goto :goto_18

    :goto_16
    move v8, v3

    move-object v11, v5

    move-object v5, v7

    :goto_17
    move-object v3, v0

    goto/16 :goto_22

    :goto_18
    move-object v10, v0

    move v9, v3

    move-object v12, v5

    move-object v5, v7

    goto/16 :goto_25

    :cond_a
    :goto_19
    :try_start_11
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :try_start_13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    const/16 v8, 0x400

    :try_start_14
    new-array v8, v8, [B

    :goto_1a
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v0, v8, v3, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1a

    :catchall_9
    move-exception v0

    goto :goto_1b

    :cond_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lﹶﾞ/ˉـ;->ˊʻ:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lﹶﾞ/ᴵˑ;

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v7, Lﹶﾞ/ˊˋ;

    const/4 v11, 0x0

    iget-object v8, p0, Lﹶﾞ/ˉـ;->ˈٴ:Ljava/lang/String;

    invoke-direct/range {v7 .. v13}, Lﹶﾞ/ˊˋ;-><init>(Ljava/lang/String;Lﹶﾞ/ᴵˑ;ILjava/io/IOException;[BLjava/util/Map;)V

    invoke-virtual {v0, v7}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    goto/16 :goto_27

    :catchall_a
    move-exception v0

    goto :goto_1c

    :catch_a
    move-exception v0

    goto :goto_1d

    :catchall_b
    move-exception v0

    move-object v7, v5

    :goto_1b
    if-eqz v7, :cond_c

    :try_start_16
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_c
    throw v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :goto_1c
    move-object v3, v0

    move v8, v10

    move-object v11, v13

    goto :goto_22

    :goto_1d
    move v9, v10

    move-object v12, v13

    :goto_1e
    move-object v10, v0

    goto/16 :goto_25

    :catchall_c
    move-exception v0

    move-object v3, v0

    move-object v11, v5

    move v8, v10

    goto :goto_22

    :catch_b
    move-exception v0

    move-object v12, v5

    move v9, v10

    goto :goto_1e

    :goto_1f
    move v8, v3

    move-object v11, v5

    goto :goto_17

    :goto_20
    move-object v10, v0

    move v9, v3

    move-object v12, v5

    goto :goto_25

    :catchall_d
    move-exception v0

    goto :goto_21

    :catch_c
    move-exception v0

    goto :goto_24

    :cond_d
    :try_start_17
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Failed to obtain HTTP connection"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    :goto_21
    move v8, v3

    move-object v6, v5

    move-object v11, v6

    goto :goto_17

    :goto_22
    if-eqz v5, :cond_e

    :try_start_18
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    goto :goto_23

    :catch_d
    move-exception v0

    iget-object v5, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v5, v2, v0, v1}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    :goto_23
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    iget-object v0, p0, Lﹶﾞ/ˉـ;->ˊʻ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lﹶﾞ/ᴵˑ;

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v5, Lﹶﾞ/ˊˋ;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v6, p0, Lﹶﾞ/ˉـ;->ˈٴ:Ljava/lang/String;

    invoke-direct/range {v5 .. v11}, Lﹶﾞ/ˊˋ;-><init>(Ljava/lang/String;Lﹶﾞ/ᴵˑ;ILjava/io/IOException;[BLjava/util/Map;)V

    invoke-virtual {v0, v5}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    throw v3

    :goto_24
    move-object v10, v0

    move v9, v3

    move-object v6, v5

    move-object v12, v6

    :goto_25
    if-eqz v5, :cond_10

    :try_start_19
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    goto :goto_26

    :catch_e
    move-exception v0

    iget-object v3, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    invoke-virtual {v3, v2, v0, v1}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    :goto_26
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    iget-object v0, p0, Lﹶﾞ/ˉـ;->ˊʻ:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lﹶﾞ/ᴵˑ;

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v6, Lﹶﾞ/ˊˋ;

    const/4 v11, 0x0

    iget-object v7, p0, Lﹶﾞ/ˉـ;->ˈٴ:Ljava/lang/String;

    invoke-direct/range {v6 .. v12}, Lﹶﾞ/ˊˋ;-><init>(Ljava/lang/String;Lﹶﾞ/ᴵˑ;ILjava/io/IOException;[BLjava/util/Map;)V

    invoke-virtual {v0, v6}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    :goto_27
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lﹶﾞ/ˉـ;->ٴᵢ:Lʽⁱ/ᵎﹶ;

    check-cast v0, Lﹶﾞ/ˎˉ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v1, Lˑʼ/ʻˋ;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lˑʼ/ʻˋ;-><init>(Lﹶﾞ/ˉـ;ILjava/lang/Exception;[BLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method
