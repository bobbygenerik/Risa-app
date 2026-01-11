.class public final Lʽˑ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔⁱ/ʼˎ;


# instance fields
.field public final ʽʽ:Lـˊ/ﾞᴵ;

.field public final ʾˋ:Landroid/net/Uri;

.field public ˈٴ:Lʽˑ/ﾞʻ;

.field public ˉٴ:J

.field public ˊʻ:J

.field public ٴʼ:Ljava/io/IOException;

.field public ٴᵢ:J

.field public final ᴵˊ:Lᵔⁱ/ˉʿ;

.field public ᴵᵔ:J

.field public ᵎˊ:Z

.field public ᵎⁱ:Z

.field public final synthetic ᵔי:Lʽˑ/ʽ;


# direct methods
.method public constructor <init>(Lʽˑ/ʽ;Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iput-object p2, p0, Lʽˑ/ⁱˊ;->ʾˋ:Landroid/net/Uri;

    new-instance p2, Lᵔⁱ/ˉʿ;

    const-string v0, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {p2, v0}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lʽˑ/ⁱˊ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    iget-object p1, p1, Lʽˑ/ʽ;->ʾˋ:Lᐧﹳ/ʽ;

    iget-object p1, p1, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lـˊ/ˑﹳ;

    invoke-interface {p1}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ⁱˊ;->ʽʽ:Lـˊ/ﾞᴵ;

    return-void
.end method

.method public static ﹳٴ(Lʽˑ/ⁱˊ;J)Z
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lʽˑ/ⁱˊ;->ˉٴ:J

    iget-object p1, p0, Lʽˑ/ⁱˊ;->ʾˋ:Landroid/net/Uri;

    iget-object p0, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object p2, p0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    iget-object p1, p1, Lʽˑ/ˉˆ;->ˑﹳ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move v3, p2

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʽˑ/ᵔʾ;

    iget-object v5, v5, Lʽˑ/ᵔʾ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽˑ/ⁱˊ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v4, Lʽˑ/ⁱˊ;->ˉٴ:J

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    iget-object p1, v4, Lʽˑ/ⁱˊ;->ʾˋ:Landroid/net/Uri;

    iput-object p1, p0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lʽˑ/ʽ;->ⁱˊ(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v4, p0}, Lʽˑ/ⁱˊ;->ˑﹳ(Landroid/net/Uri;)V

    return p2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return p2
.end method


# virtual methods
.method public final ʼʼ(Lᵔⁱ/ٴﹶ;JJ)V
    .locals 0

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    iget-object p2, p1, Lᵔⁱ/ᵔﹳ;->ˊʻ:Ljava/lang/Object;

    check-cast p2, Lʽˑ/ʼᐧ;

    new-instance p3, Lﹳᵢ/ﹳᐧ;

    iget-object p1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p1, p1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {p3, p4, p5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    instance-of p1, p2, Lʽˑ/ﾞʻ;

    const/4 p4, 0x4

    if-eqz p1, :cond_0

    check-cast p2, Lʽˑ/ﾞʻ;

    invoke-virtual {p0, p2, p3}, Lʽˑ/ⁱˊ;->ﾞᴵ(Lʽˑ/ﾞʻ;Lﹳᵢ/ﹳᐧ;)V

    iget-object p1, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object p1, p1, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->יـ(Lﹳᵢ/ﹳᐧ;I)V

    goto :goto_0

    :cond_0
    const-string p1, "Loaded playlist has unexpected type."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p1

    iput-object p1, p0, Lʽˑ/ⁱˊ;->ٴʼ:Ljava/io/IOException;

    iget-object p2, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object p2, p2, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 p5, 0x1

    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʻٴ(Lﹳᵢ/ﹳᐧ;ILjava/io/IOException;Z)V

    :goto_0
    iget-object p1, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object p1, p1, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final ʽ(Z)V
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lʽˑ/ⁱˊ;->ⁱˊ()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lʽˑ/ⁱˊ;->ʾˋ:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p0, p1}, Lʽˑ/ⁱˊ;->ˑﹳ(Landroid/net/Uri;)V

    return-void
.end method

.method public final ʽﹳ(Lᵔⁱ/ٴﹶ;JJI)V
    .locals 13

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    if-nez p6, :cond_0

    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ᴵˊ:Lـˊ/ᵔᵢ;

    invoke-direct {v0, v1}, Lﹳᵢ/ﹳᐧ;-><init>(Lـˊ/ᵔᵢ;)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lﹳᵢ/ﹳᐧ;

    iget-wide v1, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object v1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object v1, v1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object v1, v0, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget v3, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v12, p6

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʾᵎ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final ˈ(Landroid/net/Uri;)V
    .locals 13

    iget-object v0, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object v1, v0, Lʽˑ/ʽ;->ᴵˊ:Lʽˑ/ﹳᐧ;

    iget-object v2, v0, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    iget-object v3, p0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    invoke-interface {v1, v2, v3}, Lʽˑ/ﹳᐧ;->ᵔᵢ(Lʽˑ/ˉˆ;Lʽˑ/ﾞʻ;)Lᵔⁱ/ʼᐧ;

    move-result-object v1

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v2, "The uri must be set."

    invoke-static {p1, v2}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lـˊ/ᵔᵢ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, p1

    invoke-direct/range {v2 .. v12}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    new-instance p1, Lᵔⁱ/ᵔﹳ;

    iget-object v3, p0, Lʽˑ/ⁱˊ;->ʽʽ:Lـˊ/ﾞᴵ;

    const/4 v4, 0x4

    invoke-direct {p1, v3, v2, v4, v1}, Lᵔⁱ/ᵔﹳ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILᵔⁱ/ʼᐧ;)V

    iget-object v0, v0, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    iget v1, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    invoke-virtual {v0, v1}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v0

    iget-object v1, p0, Lʽˑ/ⁱˊ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v1, p1, p0, v0}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    return-void
.end method

.method public final ˑﹳ(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lʽˑ/ⁱˊ;->ˉٴ:J

    iget-boolean v0, p0, Lʽˑ/ⁱˊ;->ᵎⁱ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lʽˑ/ⁱˊ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ˈ()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lᵔⁱ/ˉʿ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lʽˑ/ⁱˊ;->ٴᵢ:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lʽˑ/ⁱˊ;->ᵎⁱ:Z

    iget-object v4, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object v4, v4, Lʽˑ/ʽ;->ˉٴ:Landroid/os/Handler;

    new-instance v5, Lʻʿ/ᵔʾ;

    const/4 v6, 0x7

    invoke-direct {v5, p0, v6, p1}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lʽˑ/ⁱˊ;->ˈ(Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ـˆ(Lᵔⁱ/ٴﹶ;JJLjava/io/IOException;I)Lʼˊ/ⁱˊ;
    .locals 5

    .prologue
    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance p2, Lﹳᵢ/ﹳᐧ;

    iget-wide v0, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget p3, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    iget-object p1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p1, p1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    invoke-direct {p2, p4, p5}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    const-string p4, "_HLS_msn"

    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    instance-of v0, p6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    sget-object v1, Lᵔⁱ/ˉʿ;->ᴵᵔ:Lʼˊ/ⁱˊ;

    iget-object v2, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    if-nez p1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    instance-of p1, p6, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz p1, :cond_2

    move-object p1, p6

    check-cast p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget p1, p1, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->ˈٴ:I

    goto :goto_1

    :cond_2
    const p1, 0x7fffffff

    :goto_1
    if-nez v0, :cond_8

    const/16 v0, 0x190

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_3

    goto :goto_5

    :cond_3
    new-instance p1, Lʼٴ/ʾᵎ;

    const/16 v0, 0xb

    invoke-direct {p1, p7, v0, p6}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    iget-object p7, v2, Lʽˑ/ʽ;->ᴵᵔ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p7

    move v0, p5

    :goto_2
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʽˑ/יـ;

    iget-object v4, p0, Lʽˑ/ⁱˊ;->ʾˋ:Landroid/net/Uri;

    invoke-interface {v3, v4, p1, p5}, Lʽˑ/יـ;->ʽ(Landroid/net/Uri;Lʼٴ/ʾᵎ;Z)Z

    move-result v3

    xor-int/2addr v3, p4

    or-int/2addr v0, v3

    goto :goto_2

    :cond_4
    iget-object p4, v2, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    if-eqz v0, :cond_6

    invoke-virtual {p4, p1}, Lʻᴵ/יـ;->ʽ(Lʼٴ/ʾᵎ;)J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_5

    new-instance p1, Lʼˊ/ⁱˊ;

    invoke-direct {p1, v0, v1, p5, p5}, Lʼˊ/ⁱˊ;-><init>(JZI)V

    :goto_3
    move-object v1, p1

    goto :goto_4

    :cond_5
    sget-object p1, Lᵔⁱ/ˉʿ;->ˊʻ:Lʼˊ/ⁱˊ;

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v1}, Lʼˊ/ⁱˊ;->ﹳٴ()Z

    move-result p1

    xor-int/lit8 p5, p1, 0x1

    iget-object p7, v2, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-virtual {p7, p2, p3, p6, p5}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʻٴ(Lﹳᵢ/ﹳᐧ;ILjava/io/IOException;Z)V

    if-nez p1, :cond_7

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    return-object v1

    :cond_8
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lʽˑ/ⁱˊ;->ٴᵢ:J

    invoke-virtual {p0, p5}, Lʽˑ/ⁱˊ;->ʽ(Z)V

    iget-object p1, v2, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    sget-object p5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p6, p4}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʻٴ(Lﹳᵢ/ﹳᐧ;ILjava/io/IOException;Z)V

    return-object v1
.end method

.method public final ᵎﹶ(Lᵔⁱ/ٴﹶ;JJZ)V
    .locals 11

    check-cast p1, Lᵔⁱ/ᵔﹳ;

    new-instance v1, Lﹳᵢ/ﹳᐧ;

    iget-wide p2, p1, Lᵔⁱ/ᵔﹳ;->ʾˋ:J

    iget-object p1, p1, Lᵔⁱ/ᵔﹳ;->ˈٴ:Lـˊ/ʼᐧ;

    iget-object p1, p1, Lـˊ/ʼᐧ;->ʽʽ:Landroid/net/Uri;

    move-wide p1, p4

    invoke-direct {v1, p1, p2}, Lﹳᵢ/ﹳᐧ;-><init>(J)V

    iget-object p1, p0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object p2, p1, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ﹳᐧ(Lﹳᵢ/ﹳᐧ;IILʽⁱ/ﹳᐧ;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final ⁱˊ()Landroid/net/Uri;
    .locals 8

    .prologue
    iget-object v0, p0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-object v1, p0, Lʽˑ/ⁱˊ;->ʾˋ:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    iget-wide v2, v0, Lʽˑ/ٴﹶ;->ﹳٴ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lʽˑ/ٴﹶ;->ˑﹳ:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-object v2, v1, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    iget-boolean v2, v2, Lʽˑ/ٴﹶ;->ˑﹳ:Z

    if-eqz v2, :cond_2

    iget-wide v2, v1, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget-object v1, v1, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v2, v6

    const-string v1, "_HLS_msn"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-wide v2, v1, Lʽˑ/ﾞʻ;->ᵔʾ:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v1, v1, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Lʼʻ/ﹳᐧ;->ˆʾ(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽˑ/ᵎﹶ;

    iget-boolean v1, v1, Lʽˑ/ᵎﹶ;->ˆﾞ:Z

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const-string v1, "_HLS_part"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    iget-object v1, p0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-object v1, v1, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    iget-wide v2, v1, Lʽˑ/ٴﹶ;->ﹳٴ:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-boolean v1, v1, Lʽˑ/ٴﹶ;->ⁱˊ:Z

    if-eqz v1, :cond_3

    const-string v1, "v2"

    goto :goto_0

    :cond_3
    const-string v1, "YES"

    :goto_0
    const-string v2, "_HLS_skip"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final ﾞᴵ(Lʽˑ/ﾞʻ;Lﹳᵢ/ﹳᐧ;)V
    .locals 72

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lʽˑ/ⁱˊ;->ᴵᵔ:J

    iget-object v5, v0, Lʽˑ/ⁱˊ;->ᵔי:Lʽˑ/ʽ;

    iget-object v6, v5, Lʽˑ/ʽ;->ᴵᵔ:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_5

    iget-wide v9, v1, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget-wide v11, v2, Lʽˑ/ﾞʻ;->ٴﹶ:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    goto :goto_0

    :cond_0
    if-gez v9, :cond_2

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    iget-object v9, v1, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v2, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v9, v10

    if-eqz v9, :cond_4

    if-lez v9, :cond_1

    :cond_3
    :goto_0
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    iget-object v9, v1, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v2, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-gt v9, v10, :cond_3

    if-ne v9, v10, :cond_1

    iget-boolean v9, v1, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-eqz v9, :cond_1

    iget-boolean v9, v2, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-nez v9, :cond_1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :goto_1
    iget-object v10, v1, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    iget-wide v11, v1, Lʽˑ/ﾞʻ;->ٴﹶ:J

    const-wide/16 v37, 0x0

    if-nez v9, :cond_8

    iget-boolean v9, v1, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-eqz v9, :cond_7

    iget-boolean v9, v2, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-eqz v9, :cond_6

    move-object v10, v2

    move-object/from16 v67, v6

    move-wide v8, v11

    const/4 v6, 0x0

    const/16 v66, 0x1

    goto/16 :goto_c

    :cond_6
    new-instance v39, Lʽˑ/ﾞʻ;

    iget v9, v2, Lʽˑ/ﾞʻ;->ˈ:I

    iget-object v10, v2, Lʽˑ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v14, v2, Lʽˑ/ʼᐧ;->ⁱˊ:Ljava/util/List;

    move-object/from16 v42, v14

    iget-wide v13, v2, Lʽˑ/ﾞʻ;->ˑﹳ:J

    iget-boolean v15, v2, Lʽˑ/ﾞʻ;->ᵎﹶ:Z

    const/16 v66, 0x1

    iget-wide v7, v2, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    move-object/from16 v67, v6

    iget-boolean v6, v2, Lʽˑ/ﾞʻ;->ʼˎ:Z

    move/from16 v48, v6

    iget v6, v2, Lʽˑ/ﾞʻ;->ˆʾ:I

    move/from16 v49, v6

    move-wide/from16 v46, v7

    iget-wide v6, v2, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget v8, v2, Lʽˑ/ﾞʻ;->ﾞʻ:I

    move-wide/from16 v50, v6

    iget-wide v6, v2, Lʽˑ/ﾞʻ;->ˉʿ:J

    move-wide/from16 v53, v6

    iget-wide v6, v2, Lʽˑ/ﾞʻ;->ᵔʾ:J

    move-wide/from16 v55, v6

    iget-boolean v6, v2, Lʽˑ/ʼᐧ;->ʽ:Z

    iget-boolean v7, v2, Lʽˑ/ﾞʻ;->ʼᐧ:Z

    move/from16 v57, v6

    iget-object v6, v2, Lʽˑ/ﾞʻ;->ᵔﹳ:Lʽⁱ/ᵔʾ;

    move-object/from16 v60, v6

    iget-object v6, v2, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    move-object/from16 v61, v6

    iget-object v6, v2, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    move-object/from16 v62, v6

    iget-object v6, v2, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    move-object/from16 v63, v6

    iget-object v6, v2, Lʽˑ/ﾞʻ;->ˏי:Lʼʻ/ᵔי;

    move-object/from16 v64, v6

    iget-object v6, v2, Lʽˑ/ﾞʻ;->ـˆ:Lʼʻ/ᵎⁱ;

    const/16 v58, 0x1

    move-object/from16 v65, v6

    move/from16 v59, v7

    move/from16 v52, v8

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-wide/from16 v43, v13

    move/from16 v45, v15

    invoke-direct/range {v39 .. v65}, Lʽˑ/ﾞʻ;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLʽⁱ/ᵔʾ;Ljava/util/List;Ljava/util/List;Lʽˑ/ٴﹶ;Ljava/util/Map;Ljava/util/List;)V

    move-wide v8, v11

    move-object/from16 v10, v39

    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_7
    move-object/from16 v67, v6

    const/16 v66, 0x1

    move-object v10, v2

    move-wide v8, v11

    goto :goto_2

    :cond_8
    move-object/from16 v67, v6

    const/16 v66, 0x1

    iget-boolean v6, v1, Lʽˑ/ﾞʻ;->ʼᐧ:Z

    if-eqz v6, :cond_9

    iget-wide v6, v1, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    :goto_3
    move-wide/from16 v17, v6

    goto :goto_7

    :cond_9
    iget-object v6, v5, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    if-eqz v6, :cond_a

    iget-wide v6, v6, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    goto :goto_4

    :cond_a
    move-wide/from16 v6, v37

    :goto_4
    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    iget-wide v8, v2, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    iget-wide v13, v2, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget-object v15, v2, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    move-wide/from16 v17, v6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    move-wide/from16 v19, v8

    sub-long v7, v11, v13

    long-to-int v7, v7

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_c

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽˑ/ʼˎ;

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_d

    iget-wide v6, v7, Lʽˑ/ˆʾ;->ᴵᵔ:J

    :goto_6
    add-long v6, v19, v6

    goto :goto_3

    :cond_d
    int-to-long v6, v6

    sub-long v8, v11, v13

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    iget-wide v6, v2, Lʽˑ/ﾞʻ;->ʽﹳ:J

    goto :goto_6

    :cond_e
    :goto_7
    iget-boolean v6, v1, Lʽˑ/ﾞʻ;->ʼˎ:Z

    if-eqz v6, :cond_f

    iget v6, v1, Lʽˑ/ﾞʻ;->ˆʾ:I

    move/from16 v20, v6

    move-object/from16 v32, v10

    const/4 v7, 0x0

    goto :goto_b

    :cond_f
    iget-object v6, v5, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    if-eqz v6, :cond_10

    iget v6, v6, Lʽˑ/ﾞʻ;->ˆʾ:I

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    :goto_8
    if-nez v2, :cond_12

    :cond_11
    const/4 v7, 0x0

    goto :goto_a

    :cond_12
    iget-wide v7, v2, Lʽˑ/ﾞʻ;->ٴﹶ:J

    sub-long v7, v11, v7

    long-to-int v7, v7

    iget-object v8, v2, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_13

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽˑ/ʼˎ;

    goto :goto_9

    :cond_13
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_11

    iget v6, v2, Lʽˑ/ﾞʻ;->ˆʾ:I

    iget v7, v7, Lʽˑ/ˆʾ;->ˈٴ:I

    add-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lʽˑ/ʼˎ;

    iget v8, v8, Lʽˑ/ˆʾ;->ˈٴ:I

    sub-int/2addr v6, v8

    :goto_a
    move/from16 v20, v6

    move-object/from16 v32, v10

    :goto_b
    new-instance v10, Lʽˑ/ﾞʻ;

    move-wide v8, v11

    iget v11, v1, Lʽˑ/ﾞʻ;->ˈ:I

    iget-object v12, v1, Lʽˑ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iget-object v13, v1, Lʽˑ/ʼᐧ;->ⁱˊ:Ljava/util/List;

    iget-wide v14, v1, Lʽˑ/ﾞʻ;->ˑﹳ:J

    iget-boolean v6, v1, Lʽˑ/ﾞʻ;->ᵎﹶ:Z

    move-wide/from16 v21, v8

    iget-wide v7, v1, Lʽˑ/ﾞʻ;->ٴﹶ:J

    iget v9, v1, Lʽˑ/ﾞʻ;->ﾞʻ:I

    move/from16 v19, v6

    move-wide/from16 v23, v7

    iget-wide v6, v1, Lʽˑ/ﾞʻ;->ˉʿ:J

    move-wide/from16 v25, v6

    iget-wide v6, v1, Lʽˑ/ﾞʻ;->ᵔʾ:J

    iget-boolean v8, v1, Lʽˑ/ʼᐧ;->ʽ:Z

    move-wide/from16 v27, v6

    iget-boolean v6, v1, Lʽˑ/ﾞʻ;->ˉˆ:Z

    iget-boolean v7, v1, Lʽˑ/ﾞʻ;->ʼᐧ:Z

    move/from16 v29, v6

    iget-object v6, v1, Lʽˑ/ﾞʻ;->ᵔﹳ:Lʽⁱ/ᵔʾ;

    move-object/from16 v31, v6

    iget-object v6, v1, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    move-object/from16 v33, v6

    iget-object v6, v1, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    move-object/from16 v34, v6

    iget-object v6, v1, Lʽˑ/ﾞʻ;->ˏי:Lʼʻ/ᵔי;

    move-object/from16 v35, v6

    iget-object v6, v1, Lʽˑ/ﾞʻ;->ـˆ:Lʼʻ/ᵎⁱ;

    move/from16 v16, v19

    const/16 v30, 0x0

    const/16 v19, 0x1

    move-object/from16 v36, v6

    move-object/from16 v6, v30

    move/from16 v30, v7

    move-wide/from16 v68, v27

    move/from16 v28, v8

    move-wide/from16 v70, v23

    move/from16 v23, v9

    move-wide/from16 v8, v21

    move-wide/from16 v21, v70

    move-wide/from16 v24, v25

    move-wide/from16 v26, v68

    invoke-direct/range {v10 .. v36}, Lʽˑ/ﾞʻ;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLʽⁱ/ᵔʾ;Ljava/util/List;Ljava/util/List;Lʽˑ/ٴﹶ;Ljava/util/Map;Ljava/util/List;)V

    :goto_c
    iput-object v10, v0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-object v7, v0, Lʽˑ/ⁱˊ;->ʾˋ:Landroid/net/Uri;

    if-eq v10, v2, :cond_16

    iput-object v6, v0, Lʽˑ/ⁱˊ;->ٴʼ:Ljava/io/IOException;

    iput-wide v3, v0, Lʽˑ/ⁱˊ;->ˊʻ:J

    iget-object v1, v5, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v5, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    if-nez v1, :cond_14

    iget-boolean v1, v10, Lʽˑ/ﾞʻ;->ˉˆ:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v5, Lʽˑ/ʽ;->ˆﾞ:Z

    iget-wide v8, v10, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    iput-wide v8, v5, Lʽˑ/ʽ;->ᵔٴ:J

    :cond_14
    iput-object v10, v5, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    iget-object v1, v5, Lʽˑ/ʽ;->ᵎⁱ:Lﹶˎ/ˆʾ;

    invoke-virtual {v1, v10}, Lﹶˎ/ˆʾ;->ʾˋ(Lʽˑ/ﾞʻ;)V

    :cond_15
    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʽˑ/יـ;

    invoke-interface {v6}, Lʽˑ/יـ;->ﹳٴ()V

    goto :goto_d

    :cond_16
    iget-boolean v10, v10, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-nez v10, :cond_19

    iget-object v1, v1, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v10, v1

    add-long/2addr v8, v10

    iget-object v1, v0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-wide v10, v1, Lʽˑ/ﾞʻ;->ٴﹶ:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_17

    new-instance v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistResetException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    move/from16 v8, v66

    goto :goto_f

    :cond_17
    iget-wide v8, v0, Lʽˑ/ⁱˊ;->ˊʻ:J

    sub-long v8, v3, v8

    long-to-double v8, v8

    iget-wide v10, v1, Lʽˑ/ﾞʻ;->ˉʿ:J

    invoke-static {v10, v11}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x400c000000000000L    # 3.5

    mul-double/2addr v10, v12

    cmpl-double v1, v8, v10

    if-lez v1, :cond_18

    new-instance v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PlaylistStuckException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    :goto_e
    const/4 v8, 0x0

    goto :goto_f

    :cond_18
    move-object v13, v6

    goto :goto_e

    :goto_f
    if-eqz v13, :cond_19

    iput-object v13, v0, Lʽˑ/ⁱˊ;->ٴʼ:Ljava/io/IOException;

    new-instance v1, Lʼٴ/ʾᵎ;

    const/16 v6, 0xb

    move/from16 v9, v66

    invoke-direct {v1, v9, v6, v13}, Lʼٴ/ʾᵎ;-><init>(IILjava/lang/Object;)V

    invoke-virtual/range {v67 .. v67}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lʽˑ/יـ;

    invoke-interface {v9, v7, v1, v8}, Lʽˑ/יـ;->ʽ(Landroid/net/Uri;Lʼٴ/ʾᵎ;Z)Z

    goto :goto_10

    :cond_19
    iget-object v1, v0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-object v6, v1, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    iget-wide v8, v1, Lʽˑ/ﾞʻ;->ˉʿ:J

    iget-boolean v6, v6, Lʽˑ/ٴﹶ;->ˑﹳ:Z

    const-wide/16 v10, 0x2

    if-nez v6, :cond_1b

    if-eq v1, v2, :cond_1a

    :goto_11
    move-wide/from16 v37, v8

    goto :goto_12

    :cond_1a
    div-long/2addr v8, v10

    goto :goto_11

    :cond_1b
    if-ne v1, v2, :cond_1d

    iget-wide v1, v1, Lʽˑ/ﾞʻ;->ᵔʾ:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v12

    if-eqz v6, :cond_1c

    div-long/2addr v1, v10

    move-wide/from16 v37, v1

    goto :goto_12

    :cond_1c
    div-long/2addr v8, v10

    goto :goto_11

    :cond_1d
    :goto_12
    invoke-static/range {v37 .. v38}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v1

    add-long/2addr v1, v3

    move-object/from16 v3, p2

    iget-wide v3, v3, Lﹳᵢ/ﹳᐧ;->ﹳٴ:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lʽˑ/ⁱˊ;->ٴᵢ:J

    iget-object v1, v0, Lʽˑ/ⁱˊ;->ˈٴ:Lʽˑ/ﾞʻ;

    iget-boolean v1, v1, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-nez v1, :cond_1f

    iget-object v1, v5, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    invoke-virtual {v7, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-boolean v1, v0, Lʽˑ/ⁱˊ;->ᵎˊ:Z

    if-eqz v1, :cond_1f

    :cond_1e
    invoke-virtual {v0}, Lʽˑ/ⁱˊ;->ⁱˊ()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lʽˑ/ⁱˊ;->ˑﹳ(Landroid/net/Uri;)V

    :cond_1f
    return-void
.end method
