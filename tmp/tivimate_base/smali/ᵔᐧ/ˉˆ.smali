.class public final Lᵔᐧ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽי/ˑﹳ;


# static fields
.field public static final ᵎﹶ:Ljava/util/List;

.field public static final ᵔᵢ:Ljava/util/List;


# instance fields
.field public final ʽ:Lᵔᐧ/ᵔʾ;

.field public volatile ˈ:Lᵔᐧ/ʻٴ;

.field public final ˑﹳ:Lˎᵢ/ـˆ;

.field public final ⁱˊ:Lʽי/ᵎﹶ;

.field public final ﹳٴ:Lٴᵎ/ᵔﹳ;

.field public volatile ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, ":scheme"

    const-string v11, ":authority"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lⁱᐧ/ˑﹳ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ˉˆ;->ᵎﹶ:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lⁱᐧ/ˑﹳ;->ٴﹶ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lᵔᐧ/ˉˆ;->ᵔᵢ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lˎᵢ/ʻٴ;Lٴᵎ/ᵔﹳ;Lʽי/ᵎﹶ;Lᵔᐧ/ᵔʾ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᵔᐧ/ˉˆ;->ﹳٴ:Lٴᵎ/ᵔﹳ;

    iput-object p3, p0, Lᵔᐧ/ˉˆ;->ⁱˊ:Lʽי/ᵎﹶ;

    iput-object p4, p0, Lᵔᐧ/ˉˆ;->ʽ:Lᵔᐧ/ᵔʾ;

    iget-object p1, p1, Lˎᵢ/ʻٴ;->ﹳᐧ:Ljava/util/List;

    sget-object p2, Lˎᵢ/ـˆ;->ˊʻ:Lˎᵢ/ـˆ;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lˎᵢ/ـˆ;->ᴵᵔ:Lˎᵢ/ـˆ;

    :goto_0
    iput-object p2, p0, Lᵔᐧ/ˉˆ;->ˑﹳ:Lˎᵢ/ـˆ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᵔᐧ/ˉˆ;->ﾞᴵ:Z

    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lᵔᐧ/ʻٴ;->ˑﹳ(I)V

    :cond_0
    return-void
.end method

.method public final ʼˎ(Z)Lˎᵢ/ᴵˊ;
    .locals 11

    .prologue
    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    if-eqz v0, :cond_f

    monitor-enter v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, v0, Lᵔᐧ/ʻٴ;->ﾞᴵ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    if-nez p1, :cond_3

    iget-object v3, v0, Lᵔᐧ/ʻٴ;->ⁱˊ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    iget-boolean v4, v3, Lᵔᐧ/יـ;->ʽʽ:Z

    if-nez v4, :cond_2

    iget-boolean v3, v3, Lᵔᐧ/יـ;->ʾˋ:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    if-eqz v2, :cond_5

    iget-object v1, v0, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v1}, Lˊᐧ/ˈ;->ᵔᵢ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_5
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    iget-object v1, v0, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v1}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v2, :cond_6

    :try_start_4
    iget-object v1, v0, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    invoke-virtual {v1}, Lᵔᐧ/ʽﹳ;->ٴﹶ()V

    :cond_6
    throw p1

    :cond_7
    iget-object v1, v0, Lᵔᐧ/ʻٴ;->ﾞᴵ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lᵔᐧ/ʻٴ;->ﾞᴵ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˎᵢ/ˉˆ;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ˑﹳ:Lˎᵢ/ـˆ;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lˎᵢ/ˉˆ;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v2

    move-object v7, v5

    :goto_5
    if-ge v6, v4, :cond_a

    invoke-virtual {v1, v6}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":status"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lᴵˋ/ˊʻ;->ˊʻ(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v7

    goto :goto_6

    :cond_8
    sget-object v10, Lᵔᐧ/ˉˆ;->ᵔᵢ:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_c

    new-instance v1, Lˎᵢ/ᴵˊ;

    invoke-direct {v1}, Lˎᵢ/ᴵˊ;-><init>()V

    iput-object v0, v1, Lˎᵢ/ᴵˊ;->ⁱˊ:Lˎᵢ/ـˆ;

    iget v0, v7, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iput v0, v1, Lˎᵢ/ᴵˊ;->ʽ:I

    iget-object v0, v7, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lˎᵢ/ᴵˊ;->ˈ:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Lʼٴ/ʼˎ;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lʼٴ/ʼˎ;-><init>(I)V

    iget-object v3, v2, Lʼٴ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v1, Lˎᵢ/ᴵˊ;->ﾞᴵ:Lʼٴ/ʼˎ;

    if-eqz p1, :cond_b

    iget p1, v1, Lˎᵢ/ᴵˊ;->ʽ:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_b

    return-object v5

    :cond_b
    return-object v1

    :cond_c
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :try_start_5
    iget-object p1, v0, Lᵔᐧ/ʻٴ;->ˉʿ:Ljava/io/IOException;

    if-eqz p1, :cond_e

    goto :goto_7

    :cond_e
    new-instance p1, Lokhttp3/internal/http2/StreamResetException;

    invoke-virtual {v0}, Lᵔᐧ/ʻٴ;->ﾞᴵ()I

    move-result v1

    invoke-direct {p1, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(I)V

    :goto_7
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_8
    monitor-exit v0

    throw p1

    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "stream wasn\'t created"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ(Lˎᵢ/ʾᵎ;)V
    .locals 14

    .prologue
    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p1, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lˎᵢ/ˉˆ;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lᵔᐧ/ⁱˊ;

    sget-object v6, Lᵔᐧ/ⁱˊ;->ﾞᴵ:Lˊᐧ/ʼˎ;

    iget-object v7, p1, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lᵔᐧ/ⁱˊ;

    sget-object v6, Lᵔᐧ/ⁱˊ;->ᵎﹶ:Lˊᐧ/ʼˎ;

    iget-object p1, p1, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {p1}, Lˎᵢ/ʼᐧ;->ⁱˊ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lˎᵢ/ʼᐧ;->ˈ()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3f

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-direct {v5, v6, v7}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    invoke-virtual {v3, v5}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Lᵔᐧ/ⁱˊ;

    sget-object v7, Lᵔᐧ/ⁱˊ;->ʼˎ:Lˊᐧ/ʼˎ;

    invoke-direct {v6, v7, v5}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v5, Lᵔᐧ/ⁱˊ;

    sget-object v6, Lᵔᐧ/ⁱˊ;->ᵔᵢ:Lˊᐧ/ʼˎ;

    iget-object p1, p1, Lˎᵢ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-direct {v5, v6, p1}, Lᵔᐧ/ⁱˊ;-><init>(Lˊᐧ/ʼˎ;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lˎᵢ/ˉˆ;->size()I

    move-result p1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_6

    invoke-virtual {v3, v5}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lᵔᐧ/ˉˆ;->ᵎﹶ:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v5}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Lᵔᐧ/ⁱˊ;

    invoke-virtual {v3, v5}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lᵔᐧ/ⁱˊ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lᵔᐧ/ˉˆ;->ʽ:Lᵔᐧ/ᵔʾ;

    xor-int/lit8 v9, v0, 0x1

    iget-object p1, v8, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    monitor-enter p1

    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, v8, Lᵔᐧ/ᵔʾ;->ᴵᵔ:I

    const v5, 0x3fffffff    # 1.9999999f

    if-le v3, v5, :cond_7

    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Lᵔᐧ/ᵔʾ;->ـˆ(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_7
    :goto_2
    iget-boolean v3, v8, Lᵔᐧ/ᵔʾ;->ˊʻ:Z

    if-nez v3, :cond_d

    iget v7, v8, Lᵔᐧ/ᵔʾ;->ᴵᵔ:I

    add-int/lit8 v3, v7, 0x2

    iput v3, v8, Lᵔᐧ/ᵔʾ;->ᴵᵔ:I

    new-instance v6, Lᵔᐧ/ʻٴ;

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lᵔᐧ/ʻٴ;-><init>(ILᵔᐧ/ᵔʾ;ZZLˎᵢ/ˉˆ;)V

    if-eqz v0, :cond_8

    iget-wide v10, v8, Lᵔᐧ/ᵔʾ;->ـˏ:J

    iget-wide v12, v8, Lᵔᐧ/ᵔʾ;->ﹳـ:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_8

    iget-wide v10, v6, Lᵔᐧ/ʻٴ;->ˈ:J

    iget-wide v12, v6, Lᵔᐧ/ʻٴ;->ˑﹳ:J

    cmp-long v0, v10, v12

    if-ltz v0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-virtual {v6}, Lᵔᐧ/ʻٴ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v8, Lᵔᐧ/ᵔʾ;->ᴵˊ:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :try_start_2
    monitor-exit v8

    iget-object v0, v8, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    invoke-virtual {v0, v9, v7, v4}, Lᵔᐧ/ـˆ;->ـˆ(ZILjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    if-eqz v1, :cond_b

    iget-object p1, v8, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    invoke-virtual {p1}, Lᵔᐧ/ـˆ;->flush()V

    :cond_b
    iput-object v6, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    iget-boolean p1, p0, Lᵔᐧ/ˉˆ;->ﾞᴵ:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    iget-object p1, p1, Lᵔᐧ/ʻٴ;->ˆʾ:Lᵔᐧ/ʽﹳ;

    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ⁱˊ:Lʽי/ᵎﹶ;

    iget v0, v0, Lʽי/ᵎﹶ;->ᵎﹶ:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Lˊᐧ/ˈٴ;->ᵎﹶ(J)Lˊᐧ/ˈٴ;

    iget-object p1, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    iget-object p1, p1, Lᵔᐧ/ʻٴ;->ٴﹶ:Lᵔᐧ/ʽﹳ;

    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ⁱˊ:Lʽי/ᵎﹶ;

    iget v0, v0, Lʽי/ᵎﹶ;->ᵔᵢ:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lˊᐧ/ˈٴ;->ᵎﹶ(J)Lˊᐧ/ˈٴ;

    return-void

    :cond_c
    iget-object p1, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lᵔᐧ/ʻٴ;->ˑﹳ(I)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_d
    :try_start_3
    new-instance v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    monitor-exit v8

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit p1

    throw v0
.end method

.method public final ˈ()V
    .locals 1

    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    iget-object v0, v0, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    invoke-virtual {v0}, Lᵔᐧ/יـ;->close()V

    return-void
.end method

.method public final ˑﹳ()Z
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    iget-boolean v3, v2, Lᵔᐧ/ˏי;->ᴵˊ:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v2, v2, Lᵔᐧ/ˏי;->ˈٴ:Lˊᐧ/ﾞᴵ;

    invoke-virtual {v2}, Lˊᐧ/ﾞᴵ;->ᵎⁱ()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_0
    monitor-exit v0

    if-ne v2, v4, :cond_1

    return v4

    :cond_1
    return v1

    :goto_1
    monitor-exit v0

    throw v1

    :cond_2
    return v1
.end method

.method public final ᵎﹶ()Lʽי/ˈ;
    .locals 1

    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ﹳٴ:Lٴᵎ/ᵔﹳ;

    return-object v0
.end method

.method public final ᵔᵢ(Lˎᵢ/ʽʽ;)J
    .locals 2

    .prologue
    invoke-static {p1}, Lʽי/ﾞᴵ;->ﹳٴ(Lˎᵢ/ʽʽ;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ˑﹳ(Lˎᵢ/ʽʽ;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final ⁱˊ(Lˎᵢ/ʾᵎ;J)Lˊᐧ/ʾˋ;
    .locals 0

    iget-object p1, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    iget-object p1, p1, Lᵔᐧ/ʻٴ;->ʼˎ:Lᵔᐧ/יـ;

    return-object p1
.end method

.method public final ﹳٴ(Lˎᵢ/ʽʽ;)Lˊᐧ/ᴵˊ;
    .locals 0

    iget-object p1, p0, Lᵔᐧ/ˉˆ;->ˈ:Lᵔᐧ/ʻٴ;

    iget-object p1, p1, Lᵔᐧ/ʻٴ;->ᵔᵢ:Lᵔᐧ/ˏי;

    return-object p1
.end method

.method public final ﾞᴵ()V
    .locals 1

    iget-object v0, p0, Lᵔᐧ/ˉˆ;->ʽ:Lᵔᐧ/ᵔʾ;

    invoke-virtual {v0}, Lᵔᐧ/ᵔʾ;->flush()V

    return-void
.end method
