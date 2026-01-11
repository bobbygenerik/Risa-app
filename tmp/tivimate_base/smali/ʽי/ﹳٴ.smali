.class public final Lʽי/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎᵢ/ᵔﹳ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʽי/ﹳٴ;->ﹳٴ:I

    iput-object p2, p0, Lʽי/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˈ(Lˎᵢ/ʽʽ;I)I
    .locals 1

    .prologue
    iget-object p0, p0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    const-string v0, "Retry-After"

    invoke-virtual {p0, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-nez p0, :cond_1

    return p1

    :cond_1
    const-string p1, "\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public ʽ(Ljava/io/IOException;Lٴᵎ/ʼᐧ;Lˎᵢ/ʾᵎ;)Z
    .locals 2

    .prologue
    instance-of v0, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    iget-object v1, p0, Lʽי/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˎᵢ/ʻٴ;

    iget-boolean v1, v1, Lˎᵢ/ʻٴ;->ˑﹳ:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_2

    iget-object p3, p3, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lˎᵢ/ʾˋ;->ʽ()Z

    move-result p3

    if-nez p3, :cond_8

    :cond_1
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    instance-of p3, p1, Ljava/net/ProtocolException;

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    if-eqz p3, :cond_4

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_4
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/security/cert/CertificateException;

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    :goto_0
    iget-object p1, p2, Lٴᵎ/ʼᐧ;->ᵔٴ:Lcom/bumptech/glide/ʼˎ;

    if-eqz p1, :cond_8

    iget-boolean p1, p1, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    const/4 p3, 0x1

    if-ne p1, p3, :cond_8

    iget-object p1, p2, Lٴᵎ/ʼᐧ;->ٴᵢ:Lٴᵎ/ʼˎ;

    invoke-interface {p1}, Lٴᵎ/ʼˎ;->ⁱˊ()Lٴᵎ/ʾᵎ;

    move-result-object p1

    iget-object p2, p2, Lٴᵎ/ʼᐧ;->ᵔٴ:Lcom/bumptech/glide/ʼˎ;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/bumptech/glide/ʼˎ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object p2

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p1, p2}, Lٴᵎ/ʾᵎ;->ˆʾ(Lٴᵎ/ᵔﹳ;)Z

    move-result p1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public ⁱˊ(Lˎᵢ/ʽʽ;Lcom/bumptech/glide/ʼˎ;)Lˎᵢ/ʾᵎ;
    .locals 11

    .prologue
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bumptech/glide/ʼˎ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object v1

    iget-object v1, v1, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, Lˎᵢ/ʽʽ;->ˈٴ:I

    iget-object v3, p1, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iget-object v4, v3, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x134

    const/16 v8, 0x133

    if-eq v2, v8, :cond_e

    if-eq v2, v7, :cond_e

    const/16 v9, 0x191

    if-eq v2, v9, :cond_d

    const/16 v9, 0x1a5

    if-eq v2, v9, :cond_a

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_8

    const/16 p2, 0x197

    if-eq v2, p2, :cond_6

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lʽי/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˎᵢ/ʻٴ;

    iget-boolean v1, v1, Lˎᵢ/ʻٴ;->ˑﹳ:Z

    if-nez v1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v1, v3, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lˎᵢ/ʾˋ;->ʽ()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, p1, Lˎᵢ/ʽʽ;->ٴʼ:Lˎᵢ/ʽʽ;

    if-eqz v1, :cond_4

    iget v1, v1, Lˎᵢ/ʽʽ;->ˈٴ:I

    if-ne v1, p2, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {p1, v5}, Lʽי/ﹳٴ;->ˈ(Lˎᵢ/ʽʽ;I)I

    move-result p2

    if-lez p2, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object p1, p1, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    return-object p1

    :cond_6
    iget-object p1, v1, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lʽי/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lˎᵢ/ʻٴ;

    iget-object p1, p1, Lˎᵢ/ʻٴ;->ˉʿ:Lˎᵢ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object v1, p1, Lˎᵢ/ʽʽ;->ٴʼ:Lˎᵢ/ʽʽ;

    if-eqz v1, :cond_9

    iget v1, v1, Lˎᵢ/ʽʽ;->ˈٴ:I

    if-ne v1, p2, :cond_9

    goto/16 :goto_3

    :cond_9
    const p2, 0x7fffffff

    invoke-static {p1, p2}, Lʽי/ﹳٴ;->ˈ(Lˎᵢ/ʽʽ;I)I

    move-result p2

    if-nez p2, :cond_14

    iget-object p1, p1, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    return-object p1

    :cond_a
    iget-object v1, v3, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lˎᵢ/ʾˋ;->ʽ()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_3

    :cond_b
    if-eqz p2, :cond_14

    iget-object v1, p2, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lٴᵎ/ʼˎ;

    invoke-interface {v1}, Lٴᵎ/ʼˎ;->ⁱˊ()Lٴᵎ/ʾᵎ;

    move-result-object v1

    invoke-interface {v1}, Lٴᵎ/ʾᵎ;->ٴﹶ()Lˎᵢ/ﹳٴ;

    move-result-object v1

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v1, v1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v2, p2, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lʽי/ˑﹳ;

    invoke-interface {v2}, Lʽי/ˑﹳ;->ᵎﹶ()Lʽי/ˈ;

    move-result-object v2

    invoke-interface {v2}, Lʽי/ˈ;->ﾞᴵ()Lˎᵢ/ˊʻ;

    move-result-object v2

    iget-object v2, v2, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v2, v2, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {v1, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {p2}, Lcom/bumptech/glide/ʼˎ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iput-boolean v6, p2, Lٴᵎ/ᵔﹳ;->ˉʿ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    iget-object p1, p1, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_d
    iget-object p1, p0, Lʽי/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lˎᵢ/ʻٴ;

    iget-object p1, p1, Lˎᵢ/ʻٴ;->ᵎﹶ:Lˎᵢ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_e
    :pswitch_0
    const-string p2, "PROPFIND"

    iget-object v1, p0, Lʽי/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˎᵢ/ʻٴ;

    iget-boolean v2, v1, Lˎᵢ/ʻٴ;->ᵔᵢ:Z

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    const-string v2, "Location"

    iget-object v3, p1, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    invoke-virtual {v3, v2}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    move-object v2, v0

    :cond_10
    iget-object v3, p1, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    if-nez v2, :cond_11

    goto :goto_3

    :cond_11
    iget-object v9, v3, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v10, Lˊﹶ/ⁱˊ;

    invoke-direct {v10}, Lˊﹶ/ⁱˊ;-><init>()V

    invoke-virtual {v10, v9, v2}, Lˊﹶ/ⁱˊ;->ᵎﹶ(Lˎᵢ/ʼᐧ;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v10, v0

    :goto_1
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Lˊﹶ/ⁱˊ;->ⁱˊ()Lˎᵢ/ʼᐧ;

    move-result-object v2

    goto :goto_2

    :cond_12
    move-object v2, v0

    :goto_2
    if-nez v2, :cond_13

    goto :goto_3

    :cond_13
    iget-object v9, v2, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v10, v3, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object v10, v10, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v9, v10}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    iget-boolean v1, v1, Lˎᵢ/ʻٴ;->ʼˎ:Z

    if-nez v1, :cond_15

    :cond_14
    :goto_3
    return-object v0

    :cond_15
    invoke-virtual {v3}, Lˎᵢ/ʾᵎ;->ﹳٴ()Landroidx/leanback/widget/ʻٴ;

    move-result-object v1

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ٴʼ(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget p1, p1, Lˎᵢ/ʽʽ;->ˈٴ:I

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    if-eq p1, v7, :cond_16

    if-ne p1, v8, :cond_17

    :cond_16
    move v5, v6

    :cond_17
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    if-eq p1, v7, :cond_18

    if-eq p1, v8, :cond_18

    const-string p1, "GET"

    invoke-virtual {v1, p1, v0}, Landroidx/leanback/widget/ʻٴ;->ʼᐧ(Ljava/lang/String;Lˎᵢ/ʾˋ;)V

    goto :goto_4

    :cond_18
    if-eqz v5, :cond_19

    iget-object v0, v3, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    :cond_19
    invoke-virtual {v1, v4, v0}, Landroidx/leanback/widget/ʻٴ;->ʼᐧ(Ljava/lang/String;Lˎᵢ/ʾˋ;)V

    :goto_4
    if-nez v5, :cond_1a

    const-string p1, "Transfer-Encoding"

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ʻٴ;->ﹳᐧ(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ʻٴ;->ﹳᐧ(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ʻٴ;->ﹳᐧ(Ljava/lang/String;)V

    :cond_1a
    iget-object p1, v3, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-static {p1, v2}, Lⁱᐧ/ˑﹳ;->ﹳٴ(Lˎᵢ/ʼᐧ;Lˎᵢ/ʼᐧ;)Z

    move-result p1

    if-nez p1, :cond_1b

    const-string p1, "Authorization"

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ʻٴ;->ﹳᐧ(Ljava/lang/String;)V

    :cond_1b
    iput-object v2, v1, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    new-instance p1, Lˎᵢ/ʾᵎ;

    invoke-direct {p1, v1}, Lˎᵢ/ʾᵎ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Lʽי/ᵎﹶ;)Lˎᵢ/ʽʽ;
    .locals 37

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v1, Lʽי/ﹳٴ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Lʽי/ᵎﹶ;->ˑﹳ:Lˎᵢ/ʾᵎ;

    iget-object v6, v2, Lʽי/ᵎﹶ;->ﹳٴ:Lٴᵎ/ʼᐧ;

    sget-object v7, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    move-object v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v11, v6, Lٴᵎ/ʼᐧ;->ᵎⁱ:Lcom/bumptech/glide/ʼˎ;

    if-nez v11, :cond_d

    monitor-enter v6

    :try_start_0
    iget-boolean v11, v6, Lٴᵎ/ʼᐧ;->ᵎˊ:Z

    if-nez v11, :cond_c

    iget-boolean v11, v6, Lٴᵎ/ʼᐧ;->ٴʼ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_b

    monitor-exit v6

    if-eqz v0, :cond_3

    iget-object v0, v6, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v12, v0, Lˎᵢ/ʻٴ;->ᵢˏ:Lﾞʿ/ʽ;

    iget-object v13, v6, Lٴᵎ/ʼᐧ;->ʽʽ:Lٴᵎ/יـ;

    iget v14, v0, Lˎᵢ/ʻٴ;->ـˆ:I

    iget v15, v0, Lˎᵢ/ʻٴ;->ʾᵎ:I

    iget v11, v2, Lʽי/ᵎﹶ;->ﾞᴵ:I

    const/16 v23, 0x0

    iget v4, v2, Lʽי/ᵎﹶ;->ᵎﹶ:I

    iget-boolean v3, v0, Lˎᵢ/ʻٴ;->ˑﹳ:Z

    iget-boolean v5, v0, Lˎᵢ/ʻٴ;->ﾞᴵ:Z

    move/from16 v18, v3

    iget-object v3, v7, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    move/from16 v17, v4

    iget-object v4, v3, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    move/from16 v19, v5

    const-string v5, "https"

    invoke-static {v4, v5}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lˎᵢ/ʻٴ;->ˉˆ:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_0

    iget-object v5, v0, Lˎᵢ/ʻٴ;->יـ:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v16, v4

    iget-object v4, v0, Lˎᵢ/ʻٴ;->ˏי:Lˎᵢ/ﾞᴵ;

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v30, v16

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "CLEARTEXT-only client"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v30, v23

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    :goto_2
    new-instance v20, Lˎᵢ/ﹳٴ;

    iget-object v4, v3, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget v3, v3, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iget-object v5, v0, Lˎᵢ/ʻٴ;->ٴﹶ:Lˎᵢ/ⁱˊ;

    move/from16 v27, v3

    iget-object v3, v0, Lˎᵢ/ʻٴ;->ᵔʾ:Ljavax/net/SocketFactory;

    move-object/from16 v29, v3

    iget-object v3, v0, Lˎᵢ/ʻٴ;->ˉʿ:Lˎᵢ/ⁱˊ;

    move-object/from16 v33, v3

    iget-object v3, v0, Lˎᵢ/ʻٴ;->ﹳᐧ:Ljava/util/List;

    move-object/from16 v34, v3

    iget-object v3, v0, Lˎᵢ/ʻٴ;->ᵔﹳ:Ljava/util/List;

    iget-object v0, v0, Lˎᵢ/ʻٴ;->ﾞʻ:Ljava/net/ProxySelector;

    move-object/from16 v36, v0

    move-object/from16 v35, v3

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    move-object/from16 v25, v20

    invoke-direct/range {v25 .. v36}, Lˎᵢ/ﹳٴ;-><init>(Ljava/lang/String;ILˎᵢ/ⁱˊ;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lˎᵢ/ﾞᴵ;Lˎᵢ/ⁱˊ;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    new-instance v0, Lٴᵎ/ﹳٴ;

    iget-object v3, v6, Lٴᵎ/ʼᐧ;->ʽʽ:Lٴᵎ/יـ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v6, v2}, Lٴᵎ/ﹳٴ;-><init>(Lٴᵎ/ʼᐧ;Lʽי/ᵎﹶ;)V

    iget-object v3, v6, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v3, v3, Lˎᵢ/ʻٴ;->ʼʼ:Lˉˆ/ʿ;

    move/from16 v16, v11

    new-instance v11, Lٴᵎ/ˏי;

    move-object/from16 v22, v0

    move-object/from16 v21, v3

    invoke-direct/range {v11 .. v22}, Lٴᵎ/ˏי;-><init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;IIIIZZLˎᵢ/ﹳٴ;Lˉˆ/ʿ;Lٴᵎ/ﹳٴ;)V

    iget-object v0, v6, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-boolean v3, v0, Lˎᵢ/ʻٴ;->ﾞᴵ:Z

    if-eqz v3, :cond_2

    new-instance v3, Lـᵢ/ˆʾ;

    iget-object v0, v0, Lˎᵢ/ʻٴ;->ᵢˏ:Lﾞʿ/ʽ;

    invoke-direct {v3, v11, v0}, Lـᵢ/ˆʾ;-><init>(Lٴᵎ/ʾᵎ;Lﾞʿ/ʽ;)V

    goto :goto_3

    :cond_2
    new-instance v3, Lٴᵎ/ﾞʻ;

    invoke-direct {v3, v11}, Lٴᵎ/ﾞʻ;-><init>(Lٴᵎ/ˏי;)V

    :goto_3
    iput-object v3, v6, Lٴᵎ/ʼᐧ;->ٴᵢ:Lٴᵎ/ʼˎ;

    goto :goto_4

    :cond_3
    const/16 v23, 0x0

    :goto_4
    :try_start_1
    iget-boolean v0, v6, Lٴᵎ/ʼᐧ;->ˆﾞ:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_a

    :try_start_2
    invoke-virtual {v2, v7}, Lʽי/ᵎﹶ;->ⁱˊ(Lˎᵢ/ʾᵎ;)Lˎᵢ/ʽʽ;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Lˎᵢ/ʽʽ;->ᵎﹶ()Lˎᵢ/ᴵˊ;

    move-result-object v0

    iput-object v7, v0, Lˎᵢ/ᴵˊ;->ﹳٴ:Lˎᵢ/ʾᵎ;

    if-eqz v9, :cond_4

    invoke-static {v9}, Lˈˆ/ﾞᴵ;->ˈⁱ(Lˎᵢ/ʽʽ;)Lˎᵢ/ʽʽ;

    move-result-object v3

    goto :goto_5

    :catchall_0
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_4
    move-object/from16 v3, v23

    :goto_5
    iput-object v3, v0, Lˎᵢ/ᴵˊ;->ˆʾ:Lˎᵢ/ʽʽ;

    invoke-virtual {v0}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v9

    iget-object v0, v6, Lٴᵎ/ʼᐧ;->ᵎⁱ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v1, v9, v0}, Lʽי/ﹳٴ;->ⁱˊ(Lˎᵢ/ʽʽ;Lcom/bumptech/glide/ʼˎ;)Lˎᵢ/ʾᵎ;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_5

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v6, v3}, Lٴᵎ/ʼᐧ;->ﾞᴵ(Z)V

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    :try_start_4
    iget-object v0, v7, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lˎᵢ/ʾˋ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :goto_7
    return-object v9

    :cond_6
    iget-object v0, v9, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-static {v0}, Lⁱᐧ/ʽ;->ⁱˊ(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lٴᵎ/ʼᐧ;->ﾞᴵ(Z)V

    goto/16 :goto_0

    :cond_7
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many follow-up requests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0, v6, v7}, Lʽי/ﹳٴ;->ʽ(Ljava/io/IOException;Lٴᵎ/ʼᐧ;Lˎᵢ/ʾᵎ;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v2, Lⁱᐧ/ʽ;->ﹳٴ:[B

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    invoke-static {v0, v3}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_8
    throw v0

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v6, v5}, Lٴᵎ/ʼᐧ;->ﾞᴵ(Z)V

    move-object v8, v3

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_9
    invoke-virtual {v6, v3}, Lٴᵎ/ʼᐧ;->ﾞᴵ(Z)V

    throw v0

    :cond_b
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_c
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_a
    monitor-exit v6

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v3, 0x1

    const/16 v23, 0x0

    const-string v0, "Content-Encoding"

    const-string v4, "User-Agent"

    iget-object v5, v1, Lʽי/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v5, Lˎᵢ/ﾞʻ;

    const-string v6, "gzip"

    const-string v7, "Accept-Encoding"

    const-string v8, "Connection"

    const-string v9, "Host"

    const-string v10, "Transfer-Encoding"

    const-string v11, "Content-Type"

    const-string v12, "Content-Length"

    iget-object v13, v2, Lʽי/ᵎﹶ;->ˑﹳ:Lˎᵢ/ʾᵎ;

    invoke-virtual {v13}, Lˎᵢ/ʾᵎ;->ﹳٴ()Landroidx/leanback/widget/ʻٴ;

    move-result-object v14

    iget-object v15, v13, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    iget-object v3, v13, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    iget-object v13, v13, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    move-object/from16 v16, v0

    const-wide/16 v17, -0x1

    if-eqz v13, :cond_10

    invoke-virtual {v13}, Lˎᵢ/ʾˋ;->ⁱˊ()Lˎᵢ/ﹳᐧ;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v0, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ʼˎ;

    invoke-virtual {v1, v11, v0}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v13}, Lˎᵢ/ʾˋ;->ﹳٴ()J

    move-result-wide v0

    cmp-long v13, v0, v17

    if-eqz v13, :cond_f

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ʼˎ;

    invoke-virtual {v1, v12, v0}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Landroidx/leanback/widget/ʻٴ;->ﹳᐧ(Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    const-string v0, "chunked"

    iget-object v1, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ʼˎ;

    invoke-virtual {v1, v10, v0}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Landroidx/leanback/widget/ʻٴ;->ﹳᐧ(Ljava/lang/String;)V

    :cond_10
    :goto_b
    invoke-virtual {v3, v9}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    invoke-static {v15, v1}, Lⁱᐧ/ˑﹳ;->ʼˎ(Lˎᵢ/ʼᐧ;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v10, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v10, Lʼٴ/ʼˎ;

    invoke-virtual {v10, v9, v0}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v3, v8}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "Keep-Alive"

    iget-object v9, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v9, Lʼٴ/ʼˎ;

    invoke-virtual {v9, v8, v0}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v3, v7}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "Range"

    invoke-virtual {v3, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʼˎ;

    invoke-virtual {v0, v7, v6}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x1

    goto :goto_c

    :cond_13
    move/from16 v24, v1

    :goto_c
    invoke-interface {v5, v15}, Lˎᵢ/ﾞʻ;->ᵔʾ(Lˎᵢ/ʼᐧ;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_17

    const-string v7, "Cookie"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    if-ltz v1, :cond_15

    check-cast v9, Lˎᵢ/ٴﹶ;

    if-lez v1, :cond_14

    const-string v1, "; "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, v9, Lˎᵢ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lˎᵢ/ٴﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v10

    goto :goto_d

    :cond_15
    invoke-static {}, Lﹶˈ/ٴﹶ;->ᐧﾞ()V

    throw v23

    :cond_16
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ʼˎ;

    invoke-virtual {v1, v7, v0}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v3, v4}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "okhttp/5.1.0"

    iget-object v1, v14, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ʼˎ;

    invoke-virtual {v1, v4, v0}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    new-instance v0, Lˎᵢ/ʾᵎ;

    invoke-direct {v0, v14}, Lˎᵢ/ʾᵎ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    invoke-virtual {v2, v0}, Lʽי/ᵎﹶ;->ⁱˊ(Lˎᵢ/ʾᵎ;)Lˎᵢ/ʽʽ;

    move-result-object v1

    iget-object v2, v1, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    iget-object v3, v0, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-static {v5, v3, v2}, Lʽי/ﾞᴵ;->ⁱˊ(Lˎᵢ/ﾞʻ;Lˎᵢ/ʼᐧ;Lˎᵢ/ˉˆ;)V

    invoke-virtual {v1}, Lˎᵢ/ʽʽ;->ᵎﹶ()Lˎᵢ/ᴵˊ;

    move-result-object v3

    iput-object v0, v3, Lˎᵢ/ᴵˊ;->ﹳٴ:Lˎᵢ/ʾᵎ;

    if-eqz v24, :cond_1b

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move-object/from16 v4, v23

    :cond_19
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {v1}, Lʽי/ﾞᴵ;->ﹳٴ(Lˎᵢ/ʽʽ;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v1, v1, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    if-eqz v1, :cond_1b

    new-instance v4, Lˊᐧ/ˉˆ;

    invoke-virtual {v1}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object v1

    invoke-direct {v4, v1}, Lˊᐧ/ˉˆ;-><init>(Lˊᐧ/ᵔᵢ;)V

    invoke-virtual {v2}, Lˎᵢ/ˉˆ;->ˈ()Lʼٴ/ʼˎ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lʼٴ/ʼˎ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lʼٴ/ʼˎ;->ٴﹶ(Ljava/lang/String;)V

    invoke-virtual {v1}, Lʼٴ/ʼˎ;->ᵎﹶ()Lˎᵢ/ˉˆ;

    move-result-object v0

    invoke-virtual {v0}, Lˎᵢ/ˉˆ;->ˈ()Lʼٴ/ʼˎ;

    move-result-object v0

    iput-object v0, v3, Lˎᵢ/ᴵˊ;->ﾞᴵ:Lʼٴ/ʼˎ;

    invoke-virtual {v2, v11}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    move-object/from16 v0, v23

    :cond_1a
    new-instance v1, Lʽי/ᵔᵢ;

    new-instance v2, Lˊᐧ/ـˆ;

    invoke-direct {v2, v4}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    move-wide/from16 v4, v17

    invoke-direct {v1, v0, v4, v5, v2}, Lʽי/ᵔᵢ;-><init>(Ljava/lang/String;JLˊᐧ/ـˆ;)V

    iput-object v1, v3, Lˎᵢ/ᴵˊ;->ᵎﹶ:Lˎᵢ/ᴵᵔ;

    :cond_1b
    invoke-virtual {v3}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
