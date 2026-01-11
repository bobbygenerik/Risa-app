.class public final Lٴᵎ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴᵎ/ـˆ;
.implements Lʽי/ˈ;


# instance fields
.field public ʻٴ:Lٴᵎ/ᵔﹳ;

.field public final ʼˎ:Lٴᵎ/ˏי;

.field public ʼᐧ:Ljava/net/Socket;

.field public final ʽ:I

.field public ʽﹳ:Lˊᐧ/ʻٴ;

.field public final ˆʾ:Lˎᵢ/ˊʻ;

.field public final ˈ:I

.field public final ˉʿ:I

.field public volatile ˉˆ:Z

.field public ˏי:Lˊᐧ/ـˆ;

.field public final ˑﹳ:I

.field public יـ:Lˎᵢ/ـˆ;

.field public final ٴﹶ:Ljava/util/List;

.field public final ᵎﹶ:Z

.field public final ᵔʾ:Z

.field public final ᵔᵢ:Lٴᵎ/ﹳٴ;

.field public ᵔﹳ:Ljava/net/Socket;

.field public final ⁱˊ:Lٴᵎ/יـ;

.field public final ﹳٴ:Lﾞʿ/ʽ;

.field public ﹳᐧ:Lˎᵢ/ᵔʾ;

.field public final ﾞʻ:Lˎᵢ/ʾᵎ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;IIIIZLٴᵎ/ﹳٴ;Lٴᵎ/ˏי;Lˎᵢ/ˊʻ;Ljava/util/List;Lˎᵢ/ʾᵎ;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ˑﹳ;->ﹳٴ:Lﾞʿ/ʽ;

    iput-object p2, p0, Lٴᵎ/ˑﹳ;->ⁱˊ:Lٴᵎ/יـ;

    iput p3, p0, Lٴᵎ/ˑﹳ;->ʽ:I

    iput p4, p0, Lٴᵎ/ˑﹳ;->ˈ:I

    iput p5, p0, Lٴᵎ/ˑﹳ;->ˑﹳ:I

    iput p6, p0, Lٴᵎ/ˑﹳ;->ﾞᴵ:I

    iput-boolean p7, p0, Lٴᵎ/ˑﹳ;->ᵎﹶ:Z

    iput-object p8, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    iput-object p9, p0, Lٴᵎ/ˑﹳ;->ʼˎ:Lٴᵎ/ˏי;

    iput-object p10, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iput-object p11, p0, Lٴᵎ/ˑﹳ;->ٴﹶ:Ljava/util/List;

    iput-object p12, p0, Lٴᵎ/ˑﹳ;->ﾞʻ:Lˎᵢ/ʾᵎ;

    iput p13, p0, Lٴᵎ/ˑﹳ;->ˉʿ:I

    iput-boolean p14, p0, Lٴᵎ/ˑﹳ;->ᵔʾ:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴᵎ/ˑﹳ;->ˉˆ:Z

    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ʼᐧ:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final ʼˎ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lٴᵎ/ˈ;->ﹳٴ:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/net/Socket;

    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v2, v2, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-direct {v0, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ⁱˊ:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lٴᵎ/ˑﹳ;->ʼᐧ:Ljava/net/Socket;

    iget-boolean v2, p0, Lٴᵎ/ˑﹳ;->ˉˆ:Z

    if-nez v2, :cond_3

    iget v2, p0, Lٴᵎ/ˑﹳ;->ﾞᴵ:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object v2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    iget-object v3, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v3, v3, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    iget v4, p0, Lٴᵎ/ˑﹳ;->ˑﹳ:I

    invoke-virtual {v2, v0, v3, v4}, Lـᐧ/ˑﹳ;->ﾞᴵ(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Lⁱٴ/ﾞᴵ;

    invoke-direct {v2, v0}, Lⁱٴ/ﾞᴵ;-><init>(Ljava/net/Socket;)V

    new-instance v3, Lˊᐧ/ʽ;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lˊᐧ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v4, Lˊᐧ/ʽ;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Lˊᐧ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v2, Lˊᐧ/ـˆ;

    invoke-direct {v2, v4}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    iput-object v2, p0, Lٴᵎ/ˑﹳ;->ˏי:Lˊᐧ/ـˆ;

    new-instance v2, Lⁱٴ/ﾞᴵ;

    invoke-direct {v2, v0}, Lⁱٴ/ﾞᴵ;-><init>(Ljava/net/Socket;)V

    new-instance v3, Lˊᐧ/ⁱˊ;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0, v1, v2}, Lˊᐧ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v0, Lˊᐧ/ⁱˊ;

    invoke-direct {v0, v2, v5, v3}, Lˊᐧ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v1, Lˊᐧ/ʻٴ;

    invoke-direct {v1, v0}, Lˊᐧ/ʻٴ;-><init>(Lˊᐧ/ʾˋ;)V

    iput-object v1, p0, Lٴᵎ/ˑﹳ;->ʽﹳ:Lˊᐧ/ʻٴ;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "throw with null exception"

    invoke-static {v1, v2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v3, v3, Lˎᵢ/ˊʻ;->ʽ:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ʽ()Lٴᵎ/ʻٴ;
    .locals 15

    .prologue
    iget-object v4, p0, Lٴᵎ/ˑﹳ;->ʼᐧ:Ljava/net/Socket;

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lٴᵎ/ˑﹳ;->ﹳٴ()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v1, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ˆʾ:Ljava/util/List;

    iget-object v10, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v10, p0}, Lٴᵎ/ﹳٴ;->ⁱˊ(Lٴᵎ/ˑﹳ;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_0
    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ﾞʻ:Lˎᵢ/ʾᵎ;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lٴᵎ/ˑﹳ;->ٴﹶ()Lٴᵎ/ʻٴ;

    move-result-object v2

    iget-object v3, v2, Lٴᵎ/ʻٴ;->ʽ:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v10, p0}, Lٴᵎ/ﹳٴ;->ʽﹳ(Lٴᵎ/ˑﹳ;)V

    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ᵔﹳ:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_0
    invoke-static {v4}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v1, v12

    goto/16 :goto_3

    :cond_1
    :try_start_1
    iget-object v2, v0, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v13, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ˏי:Lˊᐧ/ـˆ;

    if-nez v2, :cond_2

    move-object v2, v12

    :cond_2
    iget-object v2, v2, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v2}, Lˊᐧ/ﾞᴵ;->ᵎⁱ()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ʽﹳ:Lˊᐧ/ʻٴ;

    if-nez v2, :cond_3

    move-object v2, v12

    :cond_3
    iget-object v2, v2, Lˊᐧ/ʻٴ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v2}, Lˊᐧ/ﾞᴵ;->ᵎⁱ()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v3, v0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget v0, v0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    invoke-virtual {v2, v4, v3, v0, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p0, v1, v0}, Lٴᵎ/ˑﹳ;->ˉʿ(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lٴᵎ/ˑﹳ;

    move-result-object v2

    iget v3, v2, Lٴᵎ/ˑﹳ;->ˉʿ:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˎᵢ/ˆʾ;

    invoke-virtual {v2, v1, v0}, Lٴᵎ/ˑﹳ;->ﾞʻ(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lٴᵎ/ˑﹳ;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v2, v2, Lٴᵎ/ˑﹳ;->ᵔʾ:Z

    invoke-virtual {v3, v0, v2}, Lˎᵢ/ˆʾ;->ﹳٴ(Ljavax/net/ssl/SSLSocket;Z)V

    invoke-virtual {p0, v0, v3}, Lٴᵎ/ˑﹳ;->ˆʾ(Ljavax/net/ssl/SSLSocket;Lˎᵢ/ˆʾ;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_4
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object v4, p0, Lٴᵎ/ˑﹳ;->ᵔﹳ:Ljava/net/Socket;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    sget-object v1, Lˎᵢ/ـˆ;->ˊʻ:Lˎᵢ/ـˆ;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    sget-object v1, Lˎᵢ/ـˆ;->ʽʽ:Lˎᵢ/ـˆ;

    :goto_0
    iput-object v1, p0, Lٴᵎ/ˑﹳ;->יـ:Lˎᵢ/ـˆ;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v12

    :goto_1
    :try_start_4
    new-instance v0, Lٴᵎ/ᵔﹳ;

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ⁱˊ:Lٴᵎ/יـ;

    iget-object v3, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v5, p0, Lٴᵎ/ˑﹳ;->ᵔﹳ:Ljava/net/Socket;

    iget-object v6, p0, Lٴᵎ/ˑﹳ;->ﹳᐧ:Lˎᵢ/ᵔʾ;

    iget-object v7, p0, Lٴᵎ/ˑﹳ;->יـ:Lˎᵢ/ـˆ;

    iget-object v8, p0, Lٴᵎ/ˑﹳ;->ˏי:Lˊᐧ/ـˆ;

    if-nez v8, :cond_7

    move-object v8, v12

    :cond_7
    iget-object v9, p0, Lٴᵎ/ˑﹳ;->ʽﹳ:Lˊᐧ/ʻٴ;

    if-nez v9, :cond_8

    move-object v9, v12

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v0 .. v9}, Lٴᵎ/ᵔﹳ;-><init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;Lˎᵢ/ˊʻ;Ljava/net/Socket;Ljava/net/Socket;Lˎᵢ/ᵔʾ;Lˎᵢ/ـˆ;Lˊᐧ/ـˆ;Lˊᐧ/ʻٴ;)V

    iput-object v0, p0, Lٴᵎ/ˑﹳ;->ʻٴ:Lٴᵎ/ᵔﹳ;

    invoke-virtual {v0}, Lٴᵎ/ᵔﹳ;->ˆʾ()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v0, Lٴᵎ/ʻٴ;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v12, v1}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-virtual {v10, p0}, Lٴᵎ/ﹳٴ;->ʽﹳ(Lٴᵎ/ˑﹳ;)V

    return-object v0

    :catchall_1
    move-exception v0

    move v11, v13

    goto :goto_5

    :catch_2
    move-exception v0

    move v11, v13

    :goto_2
    move-object v1, v14

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :goto_3
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, p0, Lٴᵎ/ˑﹳ;->ᵎﹶ:Z

    if-eqz v2, :cond_d

    instance-of v2, v0, Ljava/net/ProtocolException;

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    instance-of v2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    instance-of v2, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    if-eqz v2, :cond_d

    move-object v12, v1

    :cond_d
    :goto_4
    new-instance v1, Lٴᵎ/ʻٴ;

    invoke-direct {v1, p0, v12, v0}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Lٴᵎ/ˑﹳ;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v10, p0}, Lٴᵎ/ﹳٴ;->ʽﹳ(Lٴᵎ/ˑﹳ;)V

    if-nez v11, :cond_f

    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ᵔﹳ:Ljava/net/Socket;

    if-eqz v0, :cond_e

    invoke-static {v0}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_e
    invoke-static {v4}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_f
    return-object v1

    :goto_5
    invoke-virtual {v10, p0}, Lٴᵎ/ﹳٴ;->ʽﹳ(Lٴᵎ/ˑﹳ;)V

    if-nez v11, :cond_11

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ᵔﹳ:Ljava/net/Socket;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_10
    invoke-static {v4}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_11
    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TCP not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˆʾ(Ljavax/net/ssl/SSLSocket;Lˎᵢ/ˆʾ;)V
    .locals 9

    .prologue
    const-string v0, "Hostname "

    const-string v1, "\n            |Hostname "

    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v2, v2, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    :try_start_0
    iget-boolean v3, p2, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    if-eqz v3, :cond_0

    sget-object v3, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v3, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    iget-object v4, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v4, v4, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v5, v2, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    invoke-virtual {v3, p1, v4, v5}, Lـᐧ/ˑﹳ;->ˑﹳ(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lʽٴ/ˈ;->ʼˎ(Ljavax/net/ssl/SSLSession;)Lˎᵢ/ᵔʾ;

    move-result-object v4

    iget-object v5, v2, Lˎᵢ/ﹳٴ;->ˈ:Ljavax/net/ssl/HostnameVerifier;

    iget-object v6, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v6, v6, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lˎᵢ/ᵔʾ;->ﹳٴ()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;

    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v1, v1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not verified:\n            |    certificate: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lˎᵢ/ﾞᴵ;->ʽ:Lˎᵢ/ﾞᴵ;

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/י;->ᵢˏ(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            |    DN: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            |    subjectAltNames: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {p2, v1}, Lʻﹶ/ʽ;->ﹳٴ(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p2, v2}, Lʻﹶ/ʽ;->ﹳٴ(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p2

    invoke-static {v1, p2}, Lﹶˈ/ˆʾ;->ᐧﹶ(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n            "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lﹶˑ/ٴﹶ;->ﹳـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v0, v0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object v0, v2, Lˎᵢ/ﹳٴ;->ˑﹳ:Lˎᵢ/ﾞᴵ;

    new-instance v1, Lˎᵢ/ᵔʾ;

    iget-object v3, v4, Lˎᵢ/ᵔʾ;->ﹳٴ:Lˎᵢ/ٴᵢ;

    iget-object v6, v4, Lˎᵢ/ᵔʾ;->ⁱˊ:Lˎᵢ/ᵔᵢ;

    iget-object v7, v4, Lˎᵢ/ᵔʾ;->ʽ:Ljava/util/List;

    new-instance v8, Lٴᵎ/ʽ;

    invoke-direct {v8, v0, v4, v2, v5}, Lٴᵎ/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v3, v6, v7, v8}, Lˎᵢ/ᵔʾ;-><init>(Lˎᵢ/ٴᵢ;Lˎᵢ/ᵔᵢ;Ljava/util/List;Lᴵⁱ/ﹳٴ;)V

    iput-object v1, p0, Lٴᵎ/ˑﹳ;->ﹳᐧ:Lˎᵢ/ᵔʾ;

    iget-object v1, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v1, v1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v0, v0, Lˎᵢ/ﾞᴵ;->ﹳٴ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-boolean p2, p2, Lˎᵢ/ˆʾ;->ⁱˊ:Z

    if-eqz p2, :cond_3

    sget-object p2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object p2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    invoke-virtual {p2, p1}, Lـᐧ/ˑﹳ;->ᵎﹶ(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object p1, p0, Lٴᵎ/ˑﹳ;->ᵔﹳ:Ljava/net/Socket;

    new-instance p2, Lⁱٴ/ﾞᴵ;

    invoke-direct {p2, p1}, Lⁱٴ/ﾞᴵ;-><init>(Ljava/net/Socket;)V

    new-instance v0, Lˊᐧ/ʽ;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, p2}, Lˊᐧ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v1, Lˊᐧ/ʽ;

    invoke-direct {v1, p2, v5, v0}, Lˊᐧ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p2, Lˊᐧ/ـˆ;

    invoke-direct {p2, v1}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    iput-object p2, p0, Lٴᵎ/ˑﹳ;->ˏי:Lˊᐧ/ـˆ;

    new-instance p2, Lⁱٴ/ﾞᴵ;

    invoke-direct {p2, p1}, Lⁱٴ/ﾞᴵ;-><init>(Ljava/net/Socket;)V

    new-instance v0, Lˊᐧ/ⁱˊ;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, v3, p2}, Lˊᐧ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v1, Lˊᐧ/ⁱˊ;

    invoke-direct {v1, p2, v5, v0}, Lˊᐧ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance p2, Lˊᐧ/ʻٴ;

    invoke-direct {p2, v1}, Lˊᐧ/ʻٴ;-><init>(Lˊᐧ/ʾˋ;)V

    iput-object p2, p0, Lٴᵎ/ˑﹳ;->ʽﹳ:Lˊᐧ/ʻٴ;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lˈˊ/ˉˆ;->ʼᐧ(Ljava/lang/String;)Lˎᵢ/ـˆ;

    move-result-object p2

    goto :goto_1

    :cond_4
    sget-object p2, Lˎᵢ/ـˆ;->ʽʽ:Lˎᵢ/ـˆ;

    :goto_1
    iput-object p2, p0, Lٴᵎ/ˑﹳ;->יـ:Lˎᵢ/ـˆ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object p1, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/ﹳٴ;->ʼᐧ(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v0, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    throw p2
.end method

.method public final ˈ()Lٴᵎ/ᵔﹳ;
    .locals 5

    .prologue
    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    invoke-virtual {v0, v1}, Lٴᵎ/ﹳٴ;->ʾᵎ(Lˎᵢ/ˊʻ;)V

    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ʻٴ:Lٴᵎ/ᵔﹳ;

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ʼˎ:Lٴᵎ/ˏי;

    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ٴﹶ:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Lٴᵎ/ˏי;->ʽ(Lٴᵎ/ˑﹳ;Ljava/util/List;)Lٴᵎ/ʽﹳ;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lٴᵎ/ʽﹳ;->ﹳٴ:Lٴᵎ/ᵔﹳ;

    return-object v0

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ⁱˊ:Lٴᵎ/יـ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v2, v1, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lٴᵎ/יـ;->ʽ:Lﾞʿ/ⁱˊ;

    iget-object v1, v1, Lٴᵎ/יـ;->ˈ:Lٴᵎ/ﹳᐧ;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lﾞʿ/ⁱˊ;->ˈ(Lﾞʿ/ﹳٴ;J)V

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v1, v0}, Lٴᵎ/ﹳٴ;->ﹳٴ(Lٴᵎ/ᵔﹳ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v1, v0}, Lٴᵎ/ﹳٴ;->ʼˎ(Lٴᵎ/ᵔﹳ;)V

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ˉʿ(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lٴᵎ/ˑﹳ;
    .locals 3

    .prologue
    iget v0, p0, Lٴᵎ/ˑﹳ;->ˉʿ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lٴᵎ/ˑﹳ;->ﾞʻ(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lٴᵎ/ˑﹳ;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lٴᵎ/ˑﹳ;->ᵔʾ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", supported protocols="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ˑﹳ(Lٴᵎ/ʼᐧ;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public final ٴﹶ()Lٴᵎ/ʻٴ;
    .locals 9

    .prologue
    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v1, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CONNECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lⁱᐧ/ˑﹳ;->ʼˎ(Lˎᵢ/ʼᐧ;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lיʾ/ᵎﹶ;

    iget-object v3, p0, Lٴᵎ/ˑﹳ;->ˏי:Lˊᐧ/ـˆ;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    iget-object v5, p0, Lٴᵎ/ˑﹳ;->ʽﹳ:Lˊᐧ/ʻٴ;

    if-nez v5, :cond_1

    move-object v5, v4

    :cond_1
    invoke-direct {v2, v4, p0, v3, v5}, Lיʾ/ᵎﹶ;-><init>(Lˎᵢ/ʻٴ;Lʽי/ˈ;Lˊᐧ/ᵔᵢ;Lˊᐧ/ᵎﹶ;)V

    iget-object v3, p0, Lٴᵎ/ˑﹳ;->ˏי:Lˊᐧ/ـˆ;

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    iget-object v3, v3, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    invoke-interface {v3}, Lˊᐧ/ᴵˊ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v3

    iget v5, p0, Lٴᵎ/ˑﹳ;->ʽ:I

    int-to-long v5, v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Lˊᐧ/ˈٴ;->ᵎﹶ(J)Lˊᐧ/ˈٴ;

    iget-object v3, p0, Lٴᵎ/ˑﹳ;->ʽﹳ:Lˊᐧ/ʻٴ;

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    iget-object v3, v3, Lˊᐧ/ʻٴ;->ʾˋ:Lˊᐧ/ʾˋ;

    invoke-interface {v3}, Lˊᐧ/ʾˋ;->ˑﹳ()Lˊᐧ/ˈٴ;

    move-result-object v3

    iget v5, p0, Lٴᵎ/ˑﹳ;->ˈ:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Lˊᐧ/ˈٴ;->ᵎﹶ(J)Lˊᐧ/ˈٴ;

    iget-object v3, p0, Lٴᵎ/ˑﹳ;->ﾞʻ:Lˎᵢ/ʾᵎ;

    iget-object v5, v3, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {v2, v5, v1}, Lיʾ/ᵎﹶ;->ٴﹶ(Lˎᵢ/ˉˆ;Ljava/lang/String;)V

    invoke-virtual {v2}, Lיʾ/ᵎﹶ;->ˈ()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lיʾ/ᵎﹶ;->ʼˎ(Z)Lˎᵢ/ᴵˊ;

    move-result-object v1

    iput-object v3, v1, Lˎᵢ/ᴵˊ;->ﹳٴ:Lˎᵢ/ʾᵎ;

    invoke-virtual {v1}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v1

    iget v3, v1, Lˎᵢ/ʽʽ;->ˈٴ:I

    invoke-static {v1}, Lⁱᐧ/ˑﹳ;->ˑﹳ(Lˎᵢ/ʽʽ;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, v1, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iget-object v1, v1, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v2, v1, v5, v6}, Lיʾ/ᵎﹶ;->ˆʾ(Lˎᵢ/ʼᐧ;J)Lיʾ/ˈ;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lⁱᐧ/ˑﹳ;->ᵎﹶ(Lˊᐧ/ᴵˊ;I)Z

    invoke-virtual {v1}, Lיʾ/ˈ;->close()V

    :goto_0
    const/16 v1, 0xc8

    if-eq v3, v1, :cond_6

    const/16 v1, 0x197

    if-ne v3, v1, :cond_5

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ﾞᴵ:Lˎᵢ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected response code for CONNECT: "

    invoke-static {v3, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lٴᵎ/ʻٴ;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v4, v1}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public final ᵎﹶ()Lٴᵎ/ʻٴ;
    .locals 6

    .prologue
    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ʼᐧ:Ljava/net/Socket;

    if-nez v1, :cond_3

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v1, p0}, Lٴᵎ/ﹳٴ;->ⁱˊ(Lٴᵎ/ˑﹳ;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lٴᵎ/ˑﹳ;->ʼˎ()V

    const/4 v2, 0x1

    new-instance v3, Lٴᵎ/ʻٴ;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-direct {v3, p0, v4, v5}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, p0}, Lٴᵎ/ﹳٴ;->ʽﹳ(Lٴᵎ/ˑﹳ;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v5, v4, Lˎᵢ/ﹳٴ;->ᵎﹶ:Ljava/net/ProxySelector;

    iget-object v4, v4, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v4}, Lˎᵢ/ʼᐧ;->ᵔᵢ()Ljava/net/URI;

    move-result-object v4

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v5, v4, v0, v3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lٴᵎ/ʻٴ;

    const/4 v4, 0x2

    invoke-direct {v0, p0, v3, v4}, Lٴᵎ/ʻٴ;-><init>(Lٴᵎ/ـˆ;Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, p0}, Lٴᵎ/ﹳٴ;->ʽﹳ(Lٴᵎ/ˑﹳ;)V

    if-nez v2, :cond_1

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ʼᐧ:Ljava/net/Socket;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_1
    return-object v0

    :goto_0
    invoke-virtual {v1, p0}, Lٴᵎ/ﹳٴ;->ʽﹳ(Lٴᵎ/ˑﹳ;)V

    if-nez v2, :cond_2

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ʼᐧ:Ljava/net/Socket;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_2
    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TCP already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔᵢ()V
    .locals 0

    return-void
.end method

.method public final ⁱˊ()Lٴᵎ/ـˆ;
    .locals 15

    new-instance v0, Lٴᵎ/ˑﹳ;

    iget v13, p0, Lٴᵎ/ˑﹳ;->ˉʿ:I

    iget-boolean v14, p0, Lٴᵎ/ˑﹳ;->ᵔʾ:Z

    iget-object v1, p0, Lٴᵎ/ˑﹳ;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object v2, p0, Lٴᵎ/ˑﹳ;->ⁱˊ:Lٴᵎ/יـ;

    iget v3, p0, Lٴᵎ/ˑﹳ;->ʽ:I

    iget v4, p0, Lٴᵎ/ˑﹳ;->ˈ:I

    iget v5, p0, Lٴᵎ/ˑﹳ;->ˑﹳ:I

    iget v6, p0, Lٴᵎ/ˑﹳ;->ﾞᴵ:I

    iget-boolean v7, p0, Lٴᵎ/ˑﹳ;->ᵎﹶ:Z

    iget-object v8, p0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    iget-object v9, p0, Lٴᵎ/ˑﹳ;->ʼˎ:Lٴᵎ/ˏי;

    iget-object v10, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v11, p0, Lٴᵎ/ˑﹳ;->ٴﹶ:Ljava/util/List;

    iget-object v12, p0, Lٴᵎ/ˑﹳ;->ﾞʻ:Lˎᵢ/ʾᵎ;

    invoke-direct/range {v0 .. v14}, Lٴᵎ/ˑﹳ;-><init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;IIIIZLٴᵎ/ﹳٴ;Lٴᵎ/ˏי;Lˎᵢ/ˊʻ;Ljava/util/List;Lˎᵢ/ʾᵎ;IZ)V

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lٴᵎ/ˑﹳ;->יـ:Lˎᵢ/ـˆ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞʻ(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lٴᵎ/ˑﹳ;
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lٴᵎ/ˑﹳ;->ˉʿ:I

    add-int/lit8 v2, v1, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˎᵢ/ˆʾ;

    iget-boolean v6, v5, Lˎᵢ/ˆʾ;->ﹳٴ:Z

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lˎᵢ/ˆʾ;->ˈ:[Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lˆᵔ/ﹳٴ;->ᴵˊ:Lˆᵔ/ﹳٴ;

    invoke-static {v6, v7, v8}, Lⁱᐧ/ʽ;->ˑﹳ([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v5, Lˎᵢ/ˆʾ;->ʽ:[Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lˎᵢ/ᵔᵢ;->ʽ:Lˎᵢ/ᵎﹶ;

    invoke-static {v5, v6, v7}, Lⁱᐧ/ʽ;->ˑﹳ([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const/4 v1, 0x1

    :goto_2
    move/from16 v18, v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    new-instance v4, Lٴᵎ/ˑﹳ;

    iget-object v14, v0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iget-object v15, v0, Lٴᵎ/ˑﹳ;->ٴﹶ:Ljava/util/List;

    iget-object v5, v0, Lٴᵎ/ˑﹳ;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object v6, v0, Lٴᵎ/ˑﹳ;->ⁱˊ:Lٴᵎ/יـ;

    iget v7, v0, Lٴᵎ/ˑﹳ;->ʽ:I

    iget v8, v0, Lٴᵎ/ˑﹳ;->ˈ:I

    iget v9, v0, Lٴᵎ/ˑﹳ;->ˑﹳ:I

    iget v10, v0, Lٴᵎ/ˑﹳ;->ﾞᴵ:I

    iget-boolean v11, v0, Lٴᵎ/ˑﹳ;->ᵎﹶ:Z

    iget-object v12, v0, Lٴᵎ/ˑﹳ;->ᵔᵢ:Lٴᵎ/ﹳٴ;

    iget-object v13, v0, Lٴᵎ/ˑﹳ;->ʼˎ:Lٴᵎ/ˏי;

    iget-object v1, v0, Lٴᵎ/ˑﹳ;->ﾞʻ:Lˎᵢ/ʾᵎ;

    move-object/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v4 .. v18}, Lٴᵎ/ˑﹳ;-><init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;IIIIZLٴᵎ/ﹳٴ;Lٴᵎ/ˏי;Lˎᵢ/ˊʻ;Ljava/util/List;Lˎᵢ/ʾᵎ;IZ)V

    return-object v4

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public final ﾞᴵ()Lˎᵢ/ˊʻ;
    .locals 1

    iget-object v0, p0, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    return-object v0
.end method
