.class public final Lﹶʽ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Landroid/os/Handler;

.field public final ˈ:Lﹶʽ/ﾞʻ;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Landroid/media/Spatializer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lﹶʽ/ﹳᐧ;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lʾﾞ/ˑﹳ;->ˈ(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p1

    iput-object p1, p0, Lﹶʽ/ˉʿ;->ﹳٴ:Landroid/media/Spatializer;

    invoke-virtual {p1}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lﹶʽ/ˉʿ;->ⁱˊ:Z

    new-instance p3, Lﹶʽ/ﾞʻ;

    invoke-direct {p3, p2}, Lﹶʽ/ﾞʻ;-><init>(Lﹶʽ/ﹳᐧ;)V

    iput-object p3, p0, Lﹶʽ/ˉʿ;->ˈ:Lﹶʽ/ﾞʻ;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lﹶʽ/ˉʿ;->ʽ:Landroid/os/Handler;

    new-instance v0, Lﹶ/ʽﹳ;

    invoke-direct {v0, p2}, Lﹶ/ʽﹳ;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0, p3}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void

    :cond_3
    :goto_1
    iput-object v0, p0, Lﹶʽ/ˉʿ;->ﹳٴ:Landroid/media/Spatializer;

    iput-boolean v1, p0, Lﹶʽ/ˉʿ;->ⁱˊ:Z

    iput-object v0, p0, Lﹶʽ/ˉʿ;->ʽ:Landroid/os/Handler;

    iput-object v0, p0, Lﹶʽ/ˉʿ;->ˈ:Lﹶʽ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 1

    iget-object v0, p0, Lﹶʽ/ˉʿ;->ﹳٴ:Landroid/media/Spatializer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final ˈ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶʽ/ˉʿ;->ﹳٴ:Landroid/media/Spatializer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lﹶʽ/ˉʿ;->ˈ:Lﹶʽ/ﾞʻ;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lﹶʽ/ˉʿ;->ʽ:Landroid/os/Handler;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/media/Spatializer;->removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ⁱˊ()Z
    .locals 1

    iget-object v0, p0, Lﹶʽ/ˉʿ;->ﹳٴ:Landroid/media/Spatializer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public final ﹳٴ(Lʽⁱ/ˑﹳ;Lʽⁱ/ﹳᐧ;)Z
    .locals 4

    .prologue
    iget-object v0, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget-object v1, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iget v2, p2, Lʽⁱ/ﹳᐧ;->ˊʻ:I

    const-string v3, "audio/eac3-joc"

    invoke-static {v0, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    if-ne v2, v0, :cond_3

    const/16 v2, 0xc

    goto :goto_0

    :cond_0
    const-string v0, "audio/iamf"

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x6

    goto :goto_0

    :cond_1
    const-string v0, "audio/ac4"

    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x12

    if-eq v2, v0, :cond_2

    const/16 v0, 0x15

    if-ne v2, v0, :cond_3

    :cond_2
    const/16 v2, 0x18

    :cond_3
    :goto_0
    invoke-static {v2}, Lᐧˎ/ʼʼ;->יـ(I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget p2, p2, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    if-eq p2, v3, :cond_5

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_5
    iget-object p2, p0, Lﹶʽ/ˉʿ;->ﹳٴ:Landroid/media/Spatializer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lʽⁱ/ˑﹳ;->ﹳٴ()Lﹳי/ʽ;

    move-result-object p1

    iget-object p1, p1, Lﹳי/ʽ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/media/Spatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    return p1
.end method
