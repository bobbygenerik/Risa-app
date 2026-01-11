.class public final Lˈـ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public ʼˈ:J

.field public final ʽʽ:Ljava/lang/String;

.field public final ʾˋ:Lﹳי/ʽ;

.field public ˆﾞ:Lˈـ/ˉʿ;

.field public ˈʿ:I

.field public final ˈٴ:Ljavax/net/SocketFactory;

.field public ˉٴ:Landroid/net/Uri;

.field public final ˊʻ:Landroid/util/SparseArray;

.field public ˊˋ:Z

.field public ˋᵔ:Z

.field public ˑٴ:Z

.field public ٴʼ:Lˈـ/ʾˋ;

.field public final ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ᴵˊ:Lﹳי/ʽ;

.field public final ᴵᵔ:Ljava/util/ArrayDeque;

.field public ᵎˊ:Ljava/lang/String;

.field public ᵎⁱ:Lˈـ/ᵢˏ;

.field public ᵔי:J

.field public ᵔٴ:Lʻʽ/ʼˎ;


# direct methods
.method public constructor <init>(Lﹳי/ʽ;Lﹳי/ʽ;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈـ/ᵔʾ;->ʾˋ:Lﹳי/ʽ;

    iput-object p2, p0, Lˈـ/ᵔʾ;->ᴵˊ:Lﹳי/ʽ;

    iput-object p3, p0, Lˈـ/ᵔʾ;->ʽʽ:Ljava/lang/String;

    iput-object p5, p0, Lˈـ/ᵔʾ;->ˈٴ:Ljavax/net/SocketFactory;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lˈـ/ᵔʾ;->ᴵᵔ:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lˈـ/ᵔʾ;->ˊʻ:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lˈـ/ᵔʾ;)V

    iput-object p1, p0, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    sget-object p1, Lˈـ/ᴵˊ;->ﹳٴ:Ljava/util/regex/Pattern;

    invoke-virtual {p4}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    move-object p1, p4

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "@"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p5

    invoke-static {p5}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    sget-object p5, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aget-object p1, p1, p3

    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    new-instance p1, Lˈـ/ᵢˏ;

    new-instance p3, Lﹶﾞ/ⁱי;

    invoke-direct {p3, p0}, Lﹶﾞ/ⁱי;-><init>(Lˈـ/ᵔʾ;)V

    invoke-direct {p1, p3}, Lˈـ/ᵢˏ;-><init>(Lﹶﾞ/ⁱי;)V

    iput-object p1, p0, Lˈـ/ᵔʾ;->ᵎⁱ:Lˈـ/ᵢˏ;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lˈـ/ᵔʾ;->ᵔי:J

    invoke-static {p4}, Lˈـ/ᴵˊ;->ˈ(Landroid/net/Uri;)Lˈـ/ʾˋ;

    move-result-object p1

    iput-object p1, p0, Lˈـ/ᵔʾ;->ٴʼ:Lˈـ/ʾˋ;

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lˈـ/ᵔʾ;->ʼˈ:J

    iput p2, p0, Lˈـ/ᵔʾ;->ˈʿ:I

    return-void
.end method

.method public static ʽ(Lˈـ/ᵔʾ;Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lˈـ/ᵔʾ;->ˑٴ:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lˈـ/ᵔʾ;->ᴵˊ:Lﹳי/ʽ;

    invoke-virtual {p0, p1}, Lﹳי/ʽ;->ˆʾ(Landroidx/media3/exoplayer/rtsp/RtspMediaSource$RtspPlaybackException;)V

    return-void

    :cond_0
    iget-object p0, p0, Lˈـ/ᵔʾ;->ʾˋ:Lﹳי/ʽ;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p0, v0, p1}, Lﹳי/ʽ;->ᵔﹳ(Ljava/lang/String;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˈـ/ᵔʾ;->ˆﾞ:Lˈـ/ˉʿ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lˈـ/ˉʿ;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lˈـ/ᵔʾ;->ˆﾞ:Lˈـ/ˉʿ;

    iget-object v0, p0, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    iget-object v1, p0, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lˈـ/ᵔʾ;

    iget v4, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput v4, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    const/16 v3, 0xc

    sget-object v4, Lʼʻ/ᴵʼ;->ٴᵢ:Lʼʻ/ᴵʼ;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lˈـ/ᵔʾ;->ᵎⁱ:Lˈـ/ᵢˏ;

    invoke-virtual {v0}, Lˈـ/ᵢˏ;->close()V

    return-void
.end method

.method public final ˉˆ(Landroid/net/Uri;)Ljava/net/Socket;
    .locals 2

    .prologue
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x22a

    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lˈـ/ᵔʾ;->ˈٴ:Ljavax/net/SocketFactory;

    invoke-virtual {v1, p1, v0}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final ـˆ(J)V
    .locals 9

    .prologue
    iget-object v0, p0, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    iget-object v1, p0, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v3, v2, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lˈـ/ᵔʾ;

    iget v3, v3, Lˈـ/ᵔʾ;->ˈʿ:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    sget-object v3, Lˈـ/ˈٴ;->ʽ:Lˈـ/ˈٴ;

    long-to-double p1, p1

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v7

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, v5

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "npt=%.3f-"

    invoke-static {p1, v3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    const-string v3, "Range"

    aput-object v3, p2, v5

    aput-object p1, p2, v6

    const/4 p1, 0x0

    invoke-static {v6, p2, p1}, Lʼʻ/ᴵʼ;->ˑﹳ(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Lʼʻ/ᴵʼ;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {v2, p2, v1, p1, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    return-void
.end method

.method public final ᵎﹶ()V
    .locals 7

    .prologue
    iget-object v0, p0, Lˈـ/ᵔʾ;->ᴵᵔ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈـ/ᵔﹳ;

    if-nez v0, :cond_2

    iget-object v0, p0, Lˈـ/ᵔʾ;->ᴵˊ:Lﹳי/ʽ;

    iget-object v0, v0, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lˈـ/יـ;

    iget-wide v1, v0, Lˈـ/יـ;->ᵔٴ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {v1, v2}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lˈـ/יـ;->ˈʿ:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    invoke-static {v1, v2}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    iget-object v0, v0, Lˈـ/יـ;->ˈٴ:Lˈـ/ᵔʾ;

    invoke-virtual {v0, v1, v2}, Lˈـ/ᵔʾ;->ـˆ(J)V

    return-void

    :cond_2
    iget-object v1, v0, Lˈـ/ᵔﹳ;->ⁱˊ:Lˈـ/ﾞᴵ;

    iget-object v1, v1, Lˈـ/ﾞᴵ;->ᴵˊ:Lˈـ/ʻٴ;

    iget-object v1, v1, Lˈـ/ʻٴ;->ⁱˊ:Landroid/net/Uri;

    iget-object v2, v0, Lˈـ/ᵔﹳ;->ʽ:Ljava/lang/String;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, v0, Lˈـ/ᵔﹳ;->ʽ:Ljava/lang/String;

    iget-object v2, p0, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    iget-object v3, p0, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Lˈـ/ᵔʾ;

    const/4 v5, 0x0

    iput v5, v4, Lˈـ/ᵔʾ;->ˈʿ:I

    const-string v4, "Transport"

    invoke-static {v4, v0}, Lʼʻ/ﹳᐧ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const/4 v4, 0x1

    aput-object v0, v6, v4

    const/4 v0, 0x0

    invoke-static {v4, v6, v0}, Lʼʻ/ᴵʼ;->ˑﹳ(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/ʽﹳ;)Lʼʻ/ᴵʼ;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    return-void
.end method

.method public final ﹳᐧ(J)V
    .locals 7

    .prologue
    iget v0, p0, Lˈـ/ᵔʾ;->ˈʿ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lˈـ/ᵔʾ;->ˊˋ:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lˈـ/ᵔʾ;->ˉٴ:Landroid/net/Uri;

    iget-object v2, p0, Lˈـ/ᵔʾ;->ᵎˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lˈـ/ᵔʾ;->ٴᵢ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Lˈـ/ᵔʾ;

    iget v5, v4, Lˈـ/ᵔʾ;->ˈʿ:I

    const/4 v6, 0x1

    if-ne v5, v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 v1, 0x5

    sget-object v5, Lʼʻ/ᴵʼ;->ٴᵢ:Lʼʻ/ᴵʼ;

    invoke-virtual {v3, v1, v2, v5, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˉˆ(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lˈـ/ʽʽ;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ(Lˈـ/ʽʽ;)V

    iput-boolean v6, v4, Lˈـ/ᵔʾ;->ˊˋ:Z

    :cond_1
    iput-wide p1, p0, Lˈـ/ᵔʾ;->ʼˈ:J

    return-void
.end method
