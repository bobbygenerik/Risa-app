.class public final Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ʼʼ;


# instance fields
.field public ʽ:Lⁱᴵ/ˉʿ;

.field public final ˈ:Lᵔﹶ/ˈٴ;

.field public ˑﹳ:Lʻᴵ/יـ;

.field public final ᵎﹶ:J

.field public final ⁱˊ:Lـˊ/ˑﹳ;

.field public final ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Lـˊ/ˑﹳ;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(Lـˊ/ˑﹳ;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ⁱˊ:Lـˊ/ˑﹳ;

    new-instance p1, Lʾﹶ/ʽ;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lʾﹶ/ʽ;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ʽ:Lⁱᴵ/ˉʿ;

    new-instance p1, Lʻᴵ/יـ;

    invoke-direct {p1}, Lʻᴵ/יـ;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ˑﹳ:Lʻᴵ/יـ;

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ﾞᴵ:J

    const-wide/32 v1, 0x4c4b40

    iput-wide v1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ᵎﹶ:J

    new-instance p1, Lᵔﹶ/ˈٴ;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Lᵔﹶ/ˈٴ;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ˈ:Lᵔﹶ/ˈٴ;

    iget-object p1, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    return-void
.end method


# virtual methods
.method public final ʽ(Lʽⁱ/ᴵˊ;)Lﹳᵢ/ᴵˊ;
    .locals 12

    .prologue
    iget-object v0, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lٴᴵ/ˑﹳ;

    invoke-direct {v2}, Lٴᴵ/ˑﹳ;-><init>()V

    iget-object v0, v0, Lʽⁱ/ʼʼ;->ʽ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lـʾ/ᵔﹳ;

    const/16 v4, 0x17

    invoke-direct {v3, v2, v4, v0}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    new-instance v0, Lـᵢ/ᵔᵢ;

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ʽ:Lⁱᴵ/ˉʿ;

    invoke-interface {v2, p1}, Lⁱᴵ/ˉʿ;->ﹳٴ(Lʽⁱ/ᴵˊ;)Lⁱᴵ/ﾞʻ;

    move-result-object v6

    iget-object v7, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ˑﹳ:Lʻᴵ/יـ;

    iget-wide v8, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ﾞᴵ:J

    iget-wide v10, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ᵎﹶ:J

    iget-object v2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ⁱˊ:Lـˊ/ˑﹳ;

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ˈ:Lᵔﹶ/ˈٴ;

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lـᵢ/ᵔᵢ;-><init>(Lʽⁱ/ᴵˊ;Lـˊ/ˑﹳ;Lᵔⁱ/ʼᐧ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lᵔﹶ/ˈٴ;Lⁱᴵ/ﾞʻ;Lʻᴵ/יـ;JJ)V

    return-object v0
.end method

.method public final ˈ(Lⁱᴵ/ˉʿ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ʽ:Lⁱᴵ/ˉʿ;

    return-object p0
.end method

.method public final ˑﹳ(Lʻᴵ/יـ;)Lﹳᵢ/ʼʼ;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ˑﹳ:Lʻᴵ/יـ;

    return-object p0
.end method

.method public final ⁱˊ()Lﹳᵢ/ʼʼ;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final ﹳٴ(Z)Lﹳᵢ/ʼʼ;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    iput-boolean p1, v0, Lar/tvplayer/core/domain/ʽﹳ;->ʾˋ:Z

    return-object p0
.end method

.method public final ﾞᴵ(Lˋⁱ/ﾞᴵ;)Lﹳᵢ/ʼʼ;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->ﹳٴ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lar/tvplayer/core/domain/ʽﹳ;->ᴵˊ:Ljava/lang/Object;

    return-object p0
.end method
