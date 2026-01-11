.class public final Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʼʼ;


# instance fields
.field public final ʽ:Lᵔﹶ/ˈٴ;

.field public ˈ:Lⁱᴵ/ˉʿ;

.field public ˑﹳ:Lʻᴵ/יـ;

.field public final ⁱˊ:Lـˊ/ˑﹳ;

.field public final ﹳٴ:Lٴʽ/יـ;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Lـˊ/ˑﹳ;)V
    .locals 3

    new-instance v0, Lٴʽ/יـ;

    invoke-direct {v0, p1}, Lٴʽ/יـ;-><init>(Lـˊ/ˑﹳ;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ﹳٴ:Lٴʽ/יـ;

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ⁱˊ:Lـˊ/ˑﹳ;

    new-instance p1, Lʾﹶ/ʽ;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lʾﹶ/ʽ;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ˈ:Lⁱᴵ/ˉʿ;

    new-instance p1, Lʻᴵ/יـ;

    invoke-direct {p1}, Lʻᴵ/יـ;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ˑﹳ:Lʻᴵ/יـ;

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ﾞᴵ:J

    new-instance p1, Lᵔﹶ/ˈٴ;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Lᵔﹶ/ˈٴ;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ʽ:Lᵔﹶ/ˈٴ;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lٴʽ/יـ;->ﹳٴ:Z

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ᴵˊ;)Lﹳᵢ/ᴵˊ;
    .locals 14

    .prologue
    iget-object v0, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lˉˆ/ʿ;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lˉˆ/ʿ;-><init>(I)V

    iget-object v0, v0, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lـʾ/ᵔﹳ;

    const/16 v3, 0x17

    invoke-direct {v2, v1, v3, v0}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    new-instance v4, Lˑˆ/ˈ;

    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ˈ:Lⁱᴵ/ˉʿ;

    invoke-interface {v0, p1}, Lⁱᴵ/ˉʿ;->ﹳٴ(Lʽⁱ/ᴵˊ;)Lⁱᴵ/ﾞʻ;

    move-result-object v10

    iget-object v11, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ˑﹳ:Lʻᴵ/יـ;

    iget-wide v12, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ﾞᴵ:J

    iget-object v6, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ⁱˊ:Lـˊ/ˑﹳ;

    iget-object v8, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ﹳٴ:Lٴʽ/יـ;

    iget-object v9, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ʽ:Lᵔﹶ/ˈٴ;

    move-object v5, p1

    invoke-direct/range {v4 .. v13}, Lˑˆ/ˈ;-><init>(Lʽⁱ/ᴵˊ;Lـˊ/ˑﹳ;Lᵔⁱ/ʼᐧ;Lٴʽ/יـ;Lᵔﹶ/ˈٴ;Lⁱᴵ/ﾞʻ;Lʻᴵ/יـ;J)V

    return-object v4
.end method

.method public final ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ˈ:Lⁱᴵ/ˉʿ;

    return-object p0
.end method

.method public final ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ˑﹳ:Lʻᴵ/יـ;

    return-object p0
.end method

.method public final ⁱˊ()Lﹳᵢ/ʼʼ;
    .locals 0

    return-object p0
.end method

.method public final ﹳٴ(Z)Lﹳᵢ/ʼʼ;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ﹳٴ:Lٴʽ/יـ;

    iput-boolean p1, v0, Lٴʽ/יـ;->ﹳٴ:Z

    return-object p0
.end method

.method public final ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/SsMediaSource$Factory;->ﹳٴ:Lٴʽ/יـ;

    iput-object p1, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    return-object p0
.end method
