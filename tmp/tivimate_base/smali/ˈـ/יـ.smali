.class public final Lˈـ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʾᵎ;


# instance fields
.field public ʼˈ:Z

.field public final ʽʽ:Lﹳי/ʽ;

.field public final ʾˋ:Lᵔⁱ/ˑﹳ;

.field public ˆﾞ:J

.field public ˈʿ:J

.field public final ˈٴ:Lˈـ/ᵔʾ;

.field public ˈⁱ:Z

.field public final ˉٴ:Lˈـ/ˈ;

.field public final ˊʻ:Ljava/util/ArrayList;

.field public ˊˋ:Z

.field public ˋᵔ:Z

.field public ˑٴ:Z

.field public ـˏ:Z

.field public ٴʼ:Lʼʻ/ʿᵢ;

.field public final ٴᵢ:Landroidx/leanback/widget/ˉˆ;

.field public final ᴵˊ:Landroid/os/Handler;

.field public final ᴵᵔ:Ljava/util/ArrayList;

.field public ᵎˊ:Ljava/io/IOException;

.field public ᵎⁱ:Lﹳᵢ/ـˆ;

.field public ᵔי:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

.field public ᵔٴ:J

.field public ﹳـ:I


# direct methods
.method public constructor <init>(Lᵔⁱ/ˑﹳ;Lˈـ/ˈ;Landroid/net/Uri;Landroidx/leanback/widget/ˉˆ;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/יـ;->ʾˋ:Lᵔⁱ/ˑﹳ;

    iput-object p2, p0, Lˈـ/יـ;->ˉٴ:Lˈـ/ˈ;

    iput-object p4, p0, Lˈـ/יـ;->ٴᵢ:Landroidx/leanback/widget/ˉˆ;

    const/4 p1, 0x0

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lˈـ/יـ;->ᴵˊ:Landroid/os/Handler;

    new-instance v1, Lﹳי/ʽ;

    invoke-direct {v1, p0}, Lﹳי/ʽ;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lˈـ/יـ;->ʽʽ:Lﹳי/ʽ;

    new-instance v0, Lˈـ/ᵔʾ;

    move-object v2, v1

    move-object v4, p3

    move-object v3, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lˈـ/ᵔʾ;-><init>(Lﹳי/ʽ;Lﹳי/ʽ;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;)V

    iput-object v0, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˈـ/יـ;->ˊʻ:Ljava/util/ArrayList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˈـ/יـ;->ᵔٴ:J

    iput-wide p1, p0, Lˈـ/יـ;->ˆﾞ:J

    iput-wide p1, p0, Lˈـ/יـ;->ˈʿ:J

    return-void
.end method

.method public static ʽ(Lˈـ/יـ;)V
    .locals 10

    .prologue
    iget-object v0, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lˈـ/יـ;->ˊˋ:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lˈـ/יـ;->ʼˈ:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˈـ/ﹳᐧ;

    iget-object v3, v3, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v3}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lˈـ/יـ;->ʼˈ:Z

    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    const-string v3, "initialCapacity"

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lʼʻ/ﹳᐧ;->ˈ(ILjava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Object;

    move v4, v1

    move v5, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˈـ/ﹳᐧ;

    iget-object v6, v6, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    new-instance v7, Lʽⁱ/ـˏ;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lﹳᵢ/ᴵˑ;->ـˆ()Lʽⁱ/ﹳᐧ;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v9, v2, [Lʽⁱ/ﹳᐧ;

    aput-object v6, v9, v1

    invoke-direct {v7, v8, v9}, Lʽⁱ/ـˏ;-><init>(Ljava/lang/String;[Lʽⁱ/ﹳᐧ;)V

    array-length v6, v3

    add-int/lit8 v8, v5, 0x1

    invoke-static {v6, v8}, Lʼʻ/ʽʽ;->ﾞᴵ(II)I

    move-result v6

    array-length v9, v3

    if-gt v6, v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    :goto_2
    aput-object v7, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_1

    :cond_4
    invoke-static {v5, v3}, Lʼʻ/ᵎⁱ;->ʼˎ(I[Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    iput-object v0, p0, Lˈـ/יـ;->ٴʼ:Lʼʻ/ʿᵢ;

    iget-object v0, p0, Lˈـ/יـ;->ᵎⁱ:Lﹳᵢ/ـˆ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lﹳᵢ/ـˆ;->ˑﹳ(Lﹳᵢ/ʾᵎ;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static ˑﹳ(Lˈـ/יـ;)V
    .locals 12

    .prologue
    iget-object v0, p0, Lˈـ/יـ;->ˊʻ:Ljava/util/ArrayList;

    iget-object v1, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lˈـ/יـ;->ˈⁱ:Z

    iget-object v2, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Lˈـ/ᵔʾ;->close()V

    new-instance v4, Lˈـ/ᵢˏ;

    new-instance v5, Lﹶﾞ/ⁱי;

    invoke-direct {v5, v2}, Lﹶﾞ/ⁱי;-><init>(Lˈـ/ᵔʾ;)V

    invoke-direct {v4, v5}, Lˈـ/ᵢˏ;-><init>(Lﹶﾞ/ⁱי;)V

    iput-object v4, v2, Lˈـ/ᵔʾ;->ᵎⁱ:Lˈـ/ᵢˏ;

    iget-object v5, v2, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Lˈـ/ᵔʾ;->ˉˆ(Landroid/net/Uri;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v4, v5}, Lˈـ/ᵢˏ;->ʽ(Ljava/net/Socket;)V

    const/4 v4, 0x0

    iput-object v4, v2, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    iput-boolean v3, v2, Lˈـ/ᵔʾ;->ˋᵔ:Z

    iput-object v4, v2, Lˈـ/ᵔʾ;->ᵔٴ:Lʻʽ/ʼˎ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v2, v2, Lˈـ/ᵔʾ;->ᴵˊ:Lﹳי/ʽ;

    new-instance v5, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v5}, Lﹳי/ʽ;->ˆʾ(Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    :goto_0
    iget-object v2, p0, Lˈـ/יـ;->ˉٴ:Lˈـ/ˈ;

    invoke-interface {v2}, Lˈـ/ˈ;->ﾞʻ()Lˈـ/ˈ;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    const-string v1, "No fallback data channel factory for TCP retry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lˈـ/יـ;->ᵔי:Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;

    goto :goto_4

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˈـ/ﹳᐧ;

    iget-boolean v8, v7, Lˈـ/ﹳᐧ;->ˈ:Z

    iget-object v9, v7, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    if-nez v8, :cond_1

    new-instance v7, Lˈـ/ﹳᐧ;

    iget-object v8, v9, Lˈـ/ᵔﹳ;->ﹳٴ:Lˈـ/ʻٴ;

    invoke-direct {v7, p0, v8, v6, v2}, Lˈـ/ﹳᐧ;-><init>(Lˈـ/יـ;Lˈـ/ʻٴ;ILˈـ/ˈ;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    iget-object v10, v8, Lˈـ/ᵔﹳ;->ⁱˊ:Lˈـ/ﾞᴵ;

    iget-object v11, p0, Lˈـ/יـ;->ʽʽ:Lﹳי/ʽ;

    iget-object v7, v7, Lˈـ/ﹳᐧ;->ⁱˊ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v7, v10, v11, v3}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈـ/ﹳᐧ;

    invoke-virtual {v0}, Lˈـ/ﹳᐧ;->ﹳٴ()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public static ﹳٴ(Lˈـ/יـ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lˈـ/יـ;->ˑٴ:Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-boolean v2, p0, Lˈـ/יـ;->ˑٴ:Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˈـ/ﹳᐧ;

    iget-boolean v3, v3, Lˈـ/ﹳᐧ;->ˈ:Z

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lˈـ/יـ;->ˑٴ:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ʻٴ(J)V
    .locals 0

    return-void
.end method

.method public final ʼˎ(Lﹳᵢ/ـˆ;J)V
    .locals 3

    .prologue
    iget-object p2, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    iput-object p1, p0, Lˈـ/יـ;->ᵎⁱ:Lﹳᵢ/ـˆ;

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p2, Lˈـ/ᵔʾ;->ᵎⁱ:Lˈـ/ᵢˏ;

    iget-object p3, p2, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    invoke-virtual {p2, p3}, Lˈـ/ᵔʾ;->ˉˆ(Landroid/net/Uri;)Ljava/net/Socket;

    move-result-object p3

    invoke-virtual {p1, p3}, Lˈـ/ᵢˏ;->ʽ(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object p1, p2, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object p3, p2, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    iget-object v0, p2, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    sget-object v1, Lʼʻ/ᴵʼ;->ٴᵢ:Lʼʻ/ᴵʼ;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1, p3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    return-void

    :catch_0
    move-exception p1

    iget-object p3, p2, Lˈـ/ᵔʾ;->ᵎⁱ:Lˈـ/ᵢˏ;

    invoke-static {p3}, Lᐧˎ/ʼʼ;->ᵎﹶ(Ljava/io/Closeable;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    iput-object p1, p0, Lˈـ/יـ;->ᵎˊ:Ljava/io/IOException;

    invoke-static {p2}, Lᐧˎ/ʼʼ;->ᵎﹶ(Ljava/io/Closeable;)V

    return-void
.end method

.method public final ʼᐧ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lˈـ/יـ;->ᵎˊ:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public final ˆʾ([Lﹶʽ/ˏי;[Z[Lﹳᵢ/ˉـ;[ZJ)J
    .locals 6

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lˈـ/יـ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_1
    array-length v2, p1

    iget-object v3, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lﹶʽ/ˏי;->ˆʾ()Lʽⁱ/ـˏ;

    move-result-object v2

    iget-object v5, p0, Lˈـ/יـ;->ٴʼ:Lʼʻ/ʿᵢ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v2}, Lʼʻ/ᵎⁱ;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˈـ/ﹳᐧ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lˈـ/יـ;->ٴʼ:Lʼʻ/ʿᵢ;

    invoke-virtual {v3, v2}, Lʼʻ/ᵎⁱ;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, p3, v1

    if-nez v2, :cond_4

    new-instance v2, Lʼٴ/ʾᵎ;

    const/4 v3, 0x5

    invoke-direct {v2, v5, v3, p0}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    aput-object v2, p3, v1

    aput-boolean v4, p4, v1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˈـ/ﹳᐧ;

    iget-object p3, p1, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lˈـ/ﹳᐧ;->ﹳٴ()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v4, p0, Lˈـ/יـ;->ـˏ:Z

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-eqz p1, :cond_8

    iput-wide p5, p0, Lˈـ/יـ;->ˆﾞ:J

    iput-wide p5, p0, Lˈـ/יـ;->ᵔٴ:J

    iput-wide p5, p0, Lˈـ/יـ;->ˈʿ:J

    :cond_8
    invoke-virtual {p0}, Lˈـ/יـ;->ᵎﹶ()V

    return-wide p5
.end method

.method public final ˈ()Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lˈـ/יـ;->ˑٴ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    iget v0, v0, Lˈـ/ᵔʾ;->ˈʿ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ˉʿ()J
    .locals 2

    .prologue
    iget-boolean v0, p0, Lˈـ/יـ;->ˋᵔ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˈـ/יـ;->ˋᵔ:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final ˉˆ()J
    .locals 10

    .prologue
    iget-boolean v0, p0, Lˈـ/יـ;->ˑٴ:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_6

    iget-object v0, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v3, p0, Lˈـ/יـ;->ˆﾞ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    return-wide v3

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide v5, 0x7fffffffffffffffL

    move v7, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˈـ/ﹳᐧ;

    iget-boolean v9, v8, Lˈـ/ﹳᐧ;->ˈ:Z

    if-nez v9, :cond_2

    iget-object v4, v8, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v4}, Lﹳᵢ/ᴵˑ;->ᵔﹳ()J

    move-result-wide v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v5, v4

    move v4, v3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_5

    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    return-wide v5

    :cond_5
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_6
    :goto_2
    return-wide v1
.end method

.method public final ˏי(J)V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lˈـ/יـ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˈـ/ﹳᐧ;

    iget-boolean v2, v1, Lˈـ/ﹳᐧ;->ˈ:Z

    if-nez v2, :cond_1

    iget-object v1, v1, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Lﹳᵢ/ᴵˑ;->ˆʾ(ZJ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ٴﹶ(Lⁱי/ˉٴ;)Z
    .locals 0

    invoke-virtual {p0}, Lˈـ/יـ;->ˈ()Z

    move-result p1

    return p1
.end method

.method public final ᵎﹶ()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget-object v4, p0, Lˈـ/יـ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˈـ/ᵔﹳ;

    iget-object v4, v4, Lˈـ/ᵔﹳ;->ʽ:Ljava/lang/String;

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lˈـ/יـ;->ـˏ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    iget-object v1, v0, Lˈـ/ᵔʾ;->ᴵᵔ:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lˈـ/ᵔʾ;->ᵎﹶ()V

    :cond_2
    return-void
.end method

.method public final ᵔʾ()Lﹳᵢ/ʻᵎ;
    .locals 3

    iget-boolean v0, p0, Lˈـ/יـ;->ʼˈ:Z

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-instance v0, Lﹳᵢ/ʻᵎ;

    iget-object v1, p0, Lˈـ/יـ;->ٴʼ:Lʼʻ/ʿᵢ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Lʽⁱ/ـˏ;

    invoke-virtual {v1, v2}, Lʼʻ/ˈٴ;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lʽⁱ/ـˏ;

    invoke-direct {v0, v1}, Lﹳᵢ/ʻᵎ;-><init>([Lʽⁱ/ـˏ;)V

    return-object v0
.end method

.method public final ⁱˊ(JLⁱי/ᴵʼ;)J
    .locals 0

    return-wide p1
.end method

.method public final ﹳᐧ(J)J
    .locals 6

    .prologue
    invoke-virtual {p0}, Lˈـ/יـ;->ˉˆ()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lˈـ/יـ;->ˈⁱ:Z

    if-nez v0, :cond_0

    iput-wide p1, p0, Lˈـ/יـ;->ˈʿ:J

    return-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lˈـ/יـ;->ˏי(J)V

    iput-wide p1, p0, Lˈـ/יـ;->ˆﾞ:J

    invoke-virtual {p0}, Lˈـ/יـ;->ﾞᴵ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    iget v2, v0, Lˈـ/ᵔʾ;->ˈʿ:I

    if-eq v2, v1, :cond_8

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    iput-wide p1, p0, Lˈـ/יـ;->ᵔٴ:J

    invoke-virtual {v0, p1, p2}, Lˈـ/ᵔʾ;->ﹳᐧ(J)V

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    iget-object v0, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˈـ/ﹳᐧ;

    iget-object v4, v4, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    iget-boolean v5, p0, Lˈـ/יـ;->ˑٴ:Z

    invoke-virtual {v4, v5, p1, p2}, Lﹳᵢ/ᴵˑ;->ˉٴ(ZJ)Z

    move-result v4

    if-nez v4, :cond_7

    iput-wide p1, p0, Lˈـ/יـ;->ᵔٴ:J

    iget-boolean v0, p0, Lˈـ/יـ;->ˑٴ:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    iget-object v3, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˈـ/ﹳᐧ;

    iget-boolean v4, v3, Lˈـ/ﹳᐧ;->ˈ:Z

    invoke-static {v4}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-boolean v2, v3, Lˈـ/ﹳᐧ;->ˈ:Z

    iget-object v4, v3, Lˈـ/ﹳᐧ;->ﾞᴵ:Lˈـ/יـ;

    invoke-static {v4}, Lˈـ/יـ;->ﹳٴ(Lˈـ/יـ;)V

    iget-object v4, v3, Lˈـ/ﹳᐧ;->ⁱˊ:Lᵔⁱ/ˉʿ;

    iget-object v5, v3, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    iget-object v5, v5, Lˈـ/ᵔﹳ;->ⁱˊ:Lˈـ/ﾞᴵ;

    iget-object v3, v3, Lˈـ/ﹳᐧ;->ﾞᴵ:Lˈـ/יـ;

    iget-object v3, v3, Lˈـ/יـ;->ʽʽ:Lﹳי/ʽ;

    invoke-virtual {v4, v5, v3, v2}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lˈـ/יـ;->ˈⁱ:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    invoke-static {p1, p2}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lˈـ/ᵔʾ;->ـˆ(J)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    invoke-virtual {v0, p1, p2}, Lˈـ/ᵔʾ;->ﹳᐧ(J)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    invoke-virtual {v0, p1, p2}, Lˈـ/ᵔʾ;->ﹳᐧ(J)V

    :goto_2
    move v0, v2

    :goto_3
    iget-object v3, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lˈـ/יـ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˈـ/ﹳᐧ;

    iget-boolean v4, v3, Lˈـ/ﹳᐧ;->ˈ:Z

    if-nez v4, :cond_6

    iget-object v4, v3, Lˈـ/ﹳᐧ;->ﹳٴ:Lˈـ/ᵔﹳ;

    iget-object v4, v4, Lˈـ/ᵔﹳ;->ⁱˊ:Lˈـ/ﾞᴵ;

    iget-object v4, v4, Lˈـ/ﾞᴵ;->ˉٴ:Lˈـ/ᵎﹶ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lˈـ/ᵎﹶ;->ˑﹳ:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-boolean v1, v4, Lˈـ/ᵎﹶ;->ٴﹶ:Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v3, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    invoke-virtual {v4, v2}, Lﹳᵢ/ᴵˑ;->ᴵᵔ(Z)V

    iget-object v3, v3, Lˈـ/ﹳᐧ;->ʽ:Lﹳᵢ/ᴵˑ;

    iput-wide p1, v3, Lﹳᵢ/ᴵˑ;->ˏי:J

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-wide p1
.end method

.method public final ﾞʻ()J
    .locals 2

    invoke-virtual {p0}, Lˈـ/יـ;->ˉˆ()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ﾞᴵ()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Lˈـ/יـ;->ᵔٴ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
