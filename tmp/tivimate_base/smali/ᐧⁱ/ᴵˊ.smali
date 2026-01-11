.class public final Lᐧⁱ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ᵔי;
.implements Landroid/view/View$OnClickListener;
.implements Lᐧⁱ/יـ;
.implements Lᐧⁱ/ٴﹶ;


# instance fields
.field public final synthetic ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

.field public final ʾˋ:Lʽⁱ/ˋᵔ;

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lar/tvplayer/tv/player/ui/CustomPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    new-instance p1, Lʽⁱ/ˋᵔ;

    invoke-direct {p1}, Lʽⁱ/ˋᵔ;-><init>()V

    iput-object p1, p0, Lᐧⁱ/ᴵˊ;->ʾˋ:Lʽⁱ/ˋᵔ;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-virtual {p1}, Lᐧⁱ/ˊʻ;->ﾞʻ()V

    return-void
.end method

.method public final synthetic ʻٴ(F)V
    .locals 0

    return-void
.end method

.method public final synthetic ʼʼ(I)V
    .locals 0

    return-void
.end method

.method public final synthetic ʼˈ(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic ʼᐧ(Lʽⁱ/ˉـ;)V
    .locals 0

    return-void
.end method

.method public final ʽʽ(I)V
    .locals 1

    .prologue
    iget-object p1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-virtual {p1}, Lar/tvplayer/tv/player/ui/CustomPlayerView;->ᵔʾ()V

    invoke-virtual {p1}, Lᐧⁱ/ˊʻ;->ʼᐧ()V

    invoke-virtual {p1}, Lᐧⁱ/ˊʻ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lᐧⁱ/ˊʻ;->ˏᵢ:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lᐧⁱ/ˏי;->ᵎﹶ()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    return-void
.end method

.method public final ʽﹳ(IZ)V
    .locals 0

    .prologue
    iget-object p1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-virtual {p1}, Lar/tvplayer/tv/player/ui/CustomPlayerView;->ᵔʾ()V

    invoke-virtual {p1}, Lᐧⁱ/ˊʻ;->ﾞᴵ()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lᐧⁱ/ˊʻ;->ˏᵢ:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lᐧⁱ/ˏי;->ᵎﹶ()V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lᐧⁱ/ˊʻ;->ᵎﹶ(Z)V

    return-void
.end method

.method public final synthetic ʾᵎ(Lʽⁱ/ٴʼ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˆʾ(I)V
    .locals 0

    return-void
.end method

.method public final ˆﾞ(ILʽⁱ/ˆﾞ;Lʽⁱ/ˆﾞ;)V
    .locals 0

    .prologue
    iget-object p2, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-virtual {p2}, Lᐧⁱ/ˊʻ;->ﾞᴵ()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p2, Lᐧⁱ/ˊʻ;->ˏᵢ:Z

    if-eqz p3, :cond_0

    iget-object p3, p2, Lᐧⁱ/ˊʻ;->ᵔי:Lᐧⁱ/ˏי;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lᐧⁱ/ˏי;->ᵎﹶ()V

    :cond_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lar/tvplayer/tv/player/ui/CustomPlayerView;->ᵔʾ()V

    return-void
.end method

.method public final synthetic ˈ(I)V
    .locals 0

    return-void
.end method

.method public final synthetic ˈʿ(Lʽⁱ/ᴵᵔ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˉʿ(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic ˉˆ(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic ˉٴ(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public final synthetic ˏי(IZ)V
    .locals 0

    return-void
.end method

.method public final ˑٴ(Lⁱˉ/ʽ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iget-object v0, v0, Lᐧⁱ/ˊʻ;->ᵎⁱ:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lⁱˉ/ʽ;->ﹳٴ:Lʼʻ/ʿᵢ;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic ˑﹳ(Lʽⁱ/ᵎⁱ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ٴᵢ(Lʽⁱ/ᵎˊ;)V
    .locals 0

    return-void
.end method

.method public final ٴﹶ(Lʽⁱ/ʿᵢ;)V
    .locals 7

    .prologue
    iget-object p1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iget-object v0, p1, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lʽⁱ/ᵎﹶ;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lⁱי/ʼʼ;

    invoke-virtual {v2}, Lⁱי/ʼʼ;->ﹳᵢ()Lʽⁱ/ʼˈ;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lʽⁱ/ʼˈ;->ﹳٴ:Lʽⁱ/ˑٴ;

    :goto_0
    invoke-virtual {v2}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iput-object v5, p0, Lᐧⁱ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Lʽⁱ/ᵎﹶ;->ᐧﹶ(I)Z

    move-result v1

    iget-object v3, p0, Lᐧⁱ/ᴵˊ;->ʾˋ:Lʽⁱ/ˋᵔ;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lⁱי/ʼʼ;

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˋـ()Lʽⁱ/ʿᵢ;

    move-result-object v6

    iget-object v6, v6, Lʽⁱ/ʿᵢ;->ﹳٴ:Lʼʻ/ᵎⁱ;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lⁱי/ʼʼ;->ˏʻ()V

    iget-object v0, v1, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0}, Lʽⁱ/ʼˈ;->ʼᐧ()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lⁱי/ʼʼ;->ﹶˎ:Lⁱי/ᴵˑ;

    iget-object v1, v0, Lⁱי/ᴵˑ;->ﹳٴ:Lʽⁱ/ʼˈ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v0, v0, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v2, v0, v3, v1}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v0

    iget-object v0, v0, Lʽⁱ/ˋᵔ;->ⁱˊ:Ljava/lang/Object;

    iput-object v0, p0, Lᐧⁱ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lᐧⁱ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    invoke-virtual {v2, v1, v3, v4}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v1

    iget v1, v1, Lʽⁱ/ˋᵔ;->ʽ:I

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ˎʾ()I

    move-result v0

    if-ne v0, v1, :cond_4

    return-void

    :cond_4
    iput-object v5, p0, Lᐧⁱ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    :cond_5
    :goto_2
    invoke-virtual {p1, v4}, Lᐧⁱ/ˊʻ;->ᵔﹳ(Z)V

    return-void
.end method

.method public final ᵎˊ(II)V
    .locals 4

    .prologue
    iget-object p1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iget-object p2, p1, Lᐧⁱ/ˊʻ;->ˈٴ:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lᐧⁱ/ˊʻ;->ʻᵎ:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lᐧⁱ/ˊʻ;->ˊʻ:Lᐧⁱ/ᴵᵔ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lᐧⁱ/ˊʻ;->ˈʿ:Landroid/os/Handler;

    check-cast p2, Landroid/view/SurfaceView;

    new-instance v2, Lᐧⁱ/ʾˋ;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lᐧⁱ/ʾˋ;-><init>(Lar/tvplayer/tv/player/ui/CustomPlayerView;I)V

    new-instance p1, Lcom/parse/ˊﾞ;

    const/16 v3, 0x9

    invoke-direct {p1, v0, p2, v2, v3}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final synthetic ᵎⁱ(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵎﹶ(Lʽⁱ/ᴵˊ;I)V
    .locals 0

    return-void
.end method

.method public final ᵔʾ()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iput-boolean v0, v1, Lᐧⁱ/ˊʻ;->ˈˏ:Z

    iget-object v0, v1, Lᐧⁱ/ˊʻ;->ʽʽ:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lᐧⁱ/ʾˋ;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lᐧⁱ/ʾˋ;-><init>(Lar/tvplayer/tv/player/ui/CustomPlayerView;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lᐧⁱ/ˊʻ;->ـﹶ:Z

    invoke-virtual {v1}, Lᐧⁱ/ˊʻ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lᐧⁱ/ˊʻ;->ٴᵢ:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lᐧⁱ/ˊʻ;->ˑﹳ()V

    return-void
.end method

.method public final synthetic ᵔᵢ(Lʽⁱ/ٴᵢ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵔﹳ(Lʽⁱ/ˑﹳ;)V
    .locals 0

    return-void
.end method

.method public final synthetic ᵢˏ(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    return-void
.end method

.method public final synthetic ⁱˊ(I)V
    .locals 0

    return-void
.end method

.method public final ﹳٴ(Lʽⁱ/ˏᵢ;)V
    .locals 2

    .prologue
    sget-object v0, Lʽⁱ/ˏᵢ;->ˈ:Lʽⁱ/ˏᵢ;

    invoke-virtual {p1, v0}, Lʽⁱ/ˏᵢ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lᐧⁱ/ᴵˊ;->ʽʽ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iget-object v0, p1, Lᐧⁱ/ˊʻ;->ʼˈ:Lʽⁱ/ᵔٴ;

    if-eqz v0, :cond_1

    check-cast v0, Lⁱי/ʼʼ;

    invoke-virtual {v0}, Lⁱי/ʼʼ;->ﾞˏ()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lᐧⁱ/ˊʻ;->ˉʿ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic ﹳᐧ(Ljava/util/List;)V
    .locals 0

    return-void
.end method
