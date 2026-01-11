.class public final Lʼᵢ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Landroid/media/LoudnessCodecController;

.field public final ⁱˊ:Lʼᵢ/ʼˎ;

.field public final ﹳٴ:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lʼᵢ/ˆʾ;->ﹳٴ:Ljava/util/HashSet;

    sget-object v0, Lʼᵢ/ʼˎ;->ʾˋ:Lʼᵢ/ʼˎ;

    iput-object v0, p0, Lʼᵢ/ˆʾ;->ⁱˊ:Lʼᵢ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ʽ(Landroid/media/MediaCodec;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʼᵢ/ˆʾ;->ﹳٴ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʼᵢ/ˆʾ;->ʽ:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/LoudnessCodecController;->removeMediaCodec(Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method

.method public final ˈ(I)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼᵢ/ˆʾ;->ʽ:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/LoudnessCodecController;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʼᵢ/ˆʾ;->ʽ:Landroid/media/LoudnessCodecController;

    :cond_0
    new-instance v0, Lʼᵢ/ᵔᵢ;

    invoke-direct {v0, p0}, Lʼᵢ/ᵔᵢ;-><init>(Lʼᵢ/ˆʾ;)V

    sget-object v1, Lˈˊ/ʼᐧ;->ʾˋ:Lˈˊ/ʼᐧ;

    invoke-static {p1, v1, v0}, Landroid/media/LoudnessCodecController;->create(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    iput-object p1, p0, Lʼᵢ/ˆʾ;->ʽ:Landroid/media/LoudnessCodecController;

    iget-object v0, p0, Lʼᵢ/ˆʾ;->ﹳٴ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {p1, v1}, Landroid/media/LoudnessCodecController;->addMediaCodec(Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ⁱˊ()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʼᵢ/ˆʾ;->ﹳٴ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lʼᵢ/ˆʾ;->ʽ:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/LoudnessCodecController;->close()V

    :cond_0
    return-void
.end method

.method public final ﹳٴ(Landroid/media/MediaCodec;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lʼᵢ/ˆʾ;->ʽ:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/LoudnessCodecController;->addMediaCodec(Landroid/media/MediaCodec;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lʼᵢ/ˆʾ;->ﹳٴ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    return-void
.end method
