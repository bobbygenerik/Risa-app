.class public final Lcom/bumptech/glide/load/data/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/ˑﹳ;


# instance fields
.field public ʽʽ:Ljava/net/HttpURLConnection;

.field public final ʾˋ:Lⁱʼ/ᵎﹶ;

.field public ˈٴ:Ljava/io/InputStream;

.field public final ᴵˊ:I

.field public volatile ᴵᵔ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lⁱʼ/ᵎﹶ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʾˋ:Lⁱʼ/ᵎﹶ;

    iput p2, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ᴵˊ:I

    return-void
.end method

.method public static ʽ(Ljava/net/HttpURLConnection;)I
    .locals 2

    .prologue
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x3

    const-string v1, "HttpUrlFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to get a response code"

    nop

    :cond_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ᴵᵔ:Z

    return-void
.end method

.method public final ˈ(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 7

    .prologue
    const/4 v0, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ge p2, v0, :cond_a

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/bumptech/glide/load/HttpException;

    const-string v0, "In re-direct loop"

    invoke-direct {p3, v1, v2, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    iget p3, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ᴵˊ:I

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 p3, 0x1

    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iput-object v3, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    :try_start_2
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    iget-object v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ˈٴ:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ᴵᵔ:Z

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽ(Ljava/net/HttpURLConnection;)I

    move-result v0

    div-int/lit8 v3, v0, 0x64

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v3, v4, :cond_6

    iget-object p1, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    const-string p2, "HttpUrlFetcher"

    const-string p3, "Got non empty content encoding: "

    :try_start_3
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    int-to-long v0, p2

    new-instance p2, Lʿٴ/ˈ;

    invoke-direct {p2, p3, v0, v1}, Lʿٴ/ˈ;-><init>(Ljava/io/InputStream;J)V

    iput-object p2, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ˈٴ:Ljava/io/InputStream;

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_4
    invoke-static {p2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    nop

    :cond_5
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ˈٴ:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    iget-object p1, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ˈٴ:Ljava/io/InputStream;

    return-object p1

    :goto_3
    new-instance p3, Lcom/bumptech/glide/load/HttpException;

    const-string p4, "Failed to obtain InputStream"

    invoke-static {p1}, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽ(Ljava/net/HttpURLConnection;)I

    move-result p1

    invoke-direct {p3, p1, p2, p4}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p3

    :cond_6
    if-ne v3, v5, :cond_8

    iget-object v1, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/ﾞʻ;->ⁱˊ()V

    add-int/2addr p2, p3

    invoke-virtual {p0, v2, p2, p1, p4}, Lcom/bumptech/glide/load/data/ﾞʻ;->ˈ(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p2, Lcom/bumptech/glide/load/HttpException;

    const-string p3, "Bad redirect url: "

    invoke-static {p3, v1}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p1, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Received empty or null redirect url"

    invoke-direct {p1, v0, v2, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p1

    :cond_8
    if-ne v0, v1, :cond_9

    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Http request failed"

    invoke-direct {p1, v0, v2, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p1

    :cond_9
    :try_start_5
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    iget-object p2, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v2, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception p1

    new-instance p2, Lcom/bumptech/glide/load/HttpException;

    const-string p3, "Failed to get a response message"

    invoke-direct {p2, v0, p1, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lcom/bumptech/glide/load/HttpException;

    iget-object p3, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    invoke-static {p3}, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽ(Ljava/net/HttpURLConnection;)I

    move-result p3

    const-string p4, "Failed to connect or obtain data"

    invoke-direct {p2, p3, p1, p4}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p2, Lcom/bumptech/glide/load/HttpException;

    const-string p3, "URL.openConnection threw"

    invoke-direct {p2, v0, p1, p3}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Too many (> 5) redirects!"

    invoke-direct {p1, v1, v2, p2}, Lcom/bumptech/glide/load/HttpException;-><init>(ILjava/io/IOException;Ljava/lang/String;)V

    throw p1
.end method

.method public final ˑﹳ()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final ⁱˊ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ˈٴ:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʽʽ:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V
    .locals 8

    .prologue
    iget-object p1, p0, Lcom/bumptech/glide/load/data/ﾞʻ;->ʾˋ:Lⁱʼ/ᵎﹶ;

    const-string v0, "Finished http url fetcher fetch in "

    const-string v1, "HttpUrlFetcher"

    sget v2, Lʿٴ/ᵔᵢ;->ⁱˊ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const/4 v4, 0x2

    :try_start_0
    iget-object v5, p1, Lⁱʼ/ᵎﹶ;->ﾞᴵ:Ljava/net/URL;

    if-nez v5, :cond_0

    new-instance v5, Ljava/net/URL;

    invoke-virtual {p1}, Lⁱʼ/ᵎﹶ;->ˈ()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v5, p1, Lⁱʼ/ᵎﹶ;->ﾞᴵ:Ljava/net/URL;

    :cond_0
    iget-object v5, p1, Lⁱʼ/ᵎﹶ;->ﾞᴵ:Ljava/net/URL;

    iget-object p1, p1, Lⁱʼ/ᵎﹶ;->ⁱˊ:Lⁱʼ/ᵔᵢ;

    invoke-interface {p1}, Lⁱʼ/ᵔᵢ;->ﹳٴ()Ljava/util/Map;

    move-result-object p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/bumptech/glide/load/data/ﾞʻ;->ˈ(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ˈ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v5, 0x3

    :try_start_1
    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Failed to load data for url"

    nop

    :cond_1
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/ˈ;->ʽ(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_2
    return-void

    :goto_0
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    :cond_3
    throw p1
.end method
