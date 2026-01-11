.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʼʼ;


# instance fields
.field public ʼˎ:Lʻᴵ/יـ;

.field public ʽ:Lˋⁱ/ﾞᴵ;

.field public ˆʾ:Z

.field public ˈ:Z

.field public final ˑﹳ:Lˋⁱ/ﾞᴵ;

.field public final ٴﹶ:I

.field public final ᵎﹶ:Lᵔﹶ/ˈٴ;

.field public ᵔᵢ:Lⁱᴵ/ˉʿ;

.field public ⁱˊ:Lﹶˎ/ʽ;

.field public final ﹳٴ:Lᐧﹳ/ʽ;

.field public final ﾞʻ:J

.field public final ﾞᴵ:Lʻʿ/ᵔﹳ;


# direct methods
.method public constructor <init>(Lـˊ/ˑﹳ;)V
    .locals 2

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p1}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ﹳٴ:Lᐧﹳ/ʽ;

    new-instance p1, Lʾﹶ/ʽ;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lʾﹶ/ʽ;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ᵔᵢ:Lⁱᴵ/ˉʿ;

    new-instance p1, Lˋⁱ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    sget-object p1, Lʽˑ/ʽ;->ˈʿ:Lʻʿ/ᵔﹳ;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ﾞᴵ:Lʻʿ/ᵔﹳ;

    new-instance p1, Lʻᴵ/יـ;

    invoke-direct {p1}, Lʻᴵ/יـ;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ʼˎ:Lʻᴵ/יـ;

    new-instance p1, Lᵔﹶ/ˈٴ;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lᵔﹶ/ˈٴ;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ᵎﹶ:Lᵔﹶ/ˈٴ;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ٴﹶ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ﾞʻ:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ˆʾ:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ᴵˊ;)Lﹳᵢ/ᴵˊ;
    .locals 12

    .prologue
    iget-object v0, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ⁱˊ:Lﹶˎ/ʽ;

    if-nez v2, :cond_0

    new-instance v2, Lﹶˎ/ʽ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lﹶˎ/ʽ;-><init>(I)V

    iput-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ⁱˊ:Lﹶˎ/ʽ;

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ʽ:Lˋⁱ/ﾞᴵ;

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ⁱˊ:Lﹶˎ/ʽ;

    iput-object v2, v3, Lﹶˎ/ʽ;->ⁱˊ:Lˋⁱ/ﾞᴵ;

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ⁱˊ:Lﹶˎ/ʽ;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ˈ:Z

    iput-boolean v2, v3, Lﹶˎ/ʽ;->ʽ:Z

    iget-object v0, v0, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ˑﹳ:Lˋⁱ/ﾞᴵ;

    if-nez v2, :cond_2

    new-instance v2, Lﹳʽ/ˊʻ;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct {v2, v4, v0, v5, v6}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object v4, v2

    :cond_2
    new-instance v0, Lﹶˎ/ˆʾ;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ᵔᵢ:Lⁱᴵ/ˉʿ;

    invoke-interface {v2, p1}, Lⁱᴵ/ˉʿ;->ﹳٴ(Lʽⁱ/ᴵˊ;)Lⁱᴵ/ﾞʻ;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ʼˎ:Lʻᴵ/יـ;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ﾞᴵ:Lʻʿ/ᵔﹳ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lʽˑ/ʽ;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ﹳٴ:Lᐧﹳ/ʽ;

    invoke-direct {v7, v2, v6, v4}, Lʽˑ/ʽ;-><init>(Lᐧﹳ/ʽ;Lʻᴵ/יـ;Lʽˑ/ﹳᐧ;)V

    iget-boolean v10, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ˆʾ:Z

    iget v11, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ٴﹶ:I

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ᵎﹶ:Lᵔﹶ/ˈٴ;

    iget-wide v8, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ﾞʻ:J

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lﹶˎ/ˆʾ;-><init>(Lʽⁱ/ᴵˊ;Lᐧﹳ/ʽ;Lﹶˎ/ʽ;Lᵔﹶ/ˈٴ;Lⁱᴵ/ﾞʻ;Lʻᴵ/יـ;Lʽˑ/ʽ;JZI)V

    return-object v0
.end method

.method public final ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ᵔᵢ:Lⁱᴵ/ˉʿ;

    return-object p0
.end method

.method public final ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ʼˎ:Lʻᴵ/יـ;

    return-object p0
.end method

.method public final ⁱˊ()Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ﹳٴ(Z)Lﹳᵢ/ʼʼ;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ˈ:Z

    return-object p0
.end method

.method public final ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->ʽ:Lˋⁱ/ﾞᴵ;

    return-object p0
.end method
