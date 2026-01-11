.class public Lˑʿ/ˉʿ;
.super Lˑʼ/ˑʼ;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʻٴ(Lˑʼ/ᴵᵔ;Ljava/lang/Object;Landroidx/media3/decoder/ffmpeg/ˈ;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, p4}, Lˑʿ/ˉʿ;->ʽﹳ(Ljava/lang/Object;Landroidx/media3/decoder/ffmpeg/ˈ;Landroidx/lifecycle/ᵎⁱ;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ʼʼ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lˑʿ/ᴵˊ;

    invoke-direct {v0}, Lˑʿ/ᴵˊ;-><init>()V

    check-cast p1, Lˑʿ/ʻٴ;

    invoke-virtual {v0, p1}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    return-object v0
.end method

.method public final ʼˎ(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    check-cast p2, Lˑʿ/ʻٴ;

    sget-object v0, Lˑʿ/ᵢˏ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lˑʿ/ʻٴ;->ᵢˏ()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lˑʿ/ʻٴ;->ﾞʻ()Lˑʿ/ʻٴ;

    move-result-object p2

    new-instance v0, Lˑʿ/ᴵˊ;

    invoke-direct {v0}, Lˑʿ/ᴵˊ;-><init>()V

    invoke-virtual {v0, p2}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    invoke-static {p1, v0}, Lˑʿ/ᵢˏ;->ʽ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V

    const p2, 0x7f0b03bc

    invoke-virtual {p1, p2, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p2, Lˑʿ/ʼʼ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lˑʿ/ʼʼ;->ʾˋ:Lˑʿ/ʻٴ;

    iput-object p1, p2, Lˑʿ/ʼʼ;->ᴵˊ:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    new-instance p1, Lˑʿ/ﹳᐧ;

    invoke-direct {p1, v0}, Lˑʿ/ﹳᐧ;-><init>(Lˑʿ/ᴵˊ;)V

    iput-object p1, v0, Lˑʿ/ʻٴ;->ʿᵢ:Lˑʿ/ﹳᐧ;

    invoke-virtual {v0, p1}, Lˑʿ/ʻٴ;->ﹳٴ(Lˑʿ/יـ;)V

    iget-object p1, v0, Lˑʿ/ʻٴ;->ʿᵢ:Lˑʿ/ﹳᐧ;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The Transition must support seeking."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public final ʼᐧ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1

    check-cast p1, Lˑʿ/ʻٴ;

    new-instance v0, Lˑʿ/ٴﹶ;

    invoke-direct {v0, p2, p3}, Lˑʿ/ٴﹶ;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lˑʿ/ʻٴ;->ﹳٴ(Lˑʿ/יـ;)V

    return-void
.end method

.method public final ʽ(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lˑʿ/ﹳᐧ;

    invoke-virtual {p1}, Lˑʿ/ﹳᐧ;->ᵔᵢ()V

    iget-object v0, p1, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    iget-object p1, p1, Lˑʿ/ﹳᐧ;->ᵎﹶ:Lˑʿ/ᴵˊ;

    iget-wide v1, p1, Lˑʿ/ʻٴ;->ʿ:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-float p1, v1

    invoke-virtual {v0, p1}, Lˊᵔ/ᵔᵢ;->ﹳٴ(F)V

    return-void
.end method

.method public final ʽﹳ(Ljava/lang/Object;Landroidx/media3/decoder/ffmpeg/ˈ;Landroidx/lifecycle/ᵎⁱ;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    check-cast p1, Lˑʿ/ʻٴ;

    new-instance v0, Lˈᵔ/ﹳٴ;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p1, p4, v1}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    monitor-enter p2

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean p3, p2, Landroidx/media3/decoder/ffmpeg/ˈ;->ⁱˊ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p3, p2, Landroidx/media3/decoder/ffmpeg/ˈ;->ʽ:Ljava/lang/Object;

    check-cast p3, Lˈᵔ/ﹳٴ;

    if-ne p3, v0, :cond_1

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iput-object v0, p2, Landroidx/media3/decoder/ffmpeg/ˈ;->ʽ:Ljava/lang/Object;

    iget-boolean p3, p2, Landroidx/media3/decoder/ffmpeg/ˈ;->ﹳٴ:Z

    if-eqz p3, :cond_3

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p2, v0, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Runnable;

    iget-object p3, v0, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p3, Lˑʿ/ʻٴ;

    iget-object v0, v0, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    if-nez p2, :cond_2

    invoke-virtual {p3}, Lˑʿ/ʻٴ;->cancel()V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    new-instance p2, Lʾʼ/ـˏ;

    const/4 p3, 0x5

    invoke-direct {p2, p3, p4}, Lʾʼ/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lˑʿ/ʻٴ;->ﹳٴ(Lˑʿ/יـ;)V

    return-void

    :goto_2
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final ʾᵎ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    check-cast p1, Lˑʿ/ᴵˊ;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, p2, p3}, Lˑʿ/ˉʿ;->ᵢˏ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final ˈ(Ljava/lang/Object;Lʻʿ/ᵔʾ;)V
    .locals 0

    check-cast p1, Lˑʿ/ﹳᐧ;

    iput-object p2, p1, Lˑʿ/ﹳᐧ;->ﾞᴵ:Lʻʿ/ᵔʾ;

    invoke-virtual {p1}, Lˑʿ/ﹳᐧ;->ᵔᵢ()V

    iget-object p1, p1, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lˊᵔ/ᵔᵢ;->ﹳٴ(F)V

    return-void
.end method

.method public final ˉʿ(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    move-object v0, p1

    check-cast v0, Lˑʿ/ʻٴ;

    invoke-virtual {v0}, Lˑʿ/ʻٴ;->ᵢˏ()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Predictive back not available for AndroidX Transition "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Please enable seeking support for the designated transition by overriding isSeekingSupported()."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FragmentManager"

    nop

    :cond_0
    return v0
.end method

.method public final ˉˆ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    new-instance v0, Lˑʿ/ᴵˊ;

    invoke-direct {v0}, Lˑʿ/ᴵˊ;-><init>()V

    if-eqz p1, :cond_0

    check-cast p1, Lˑʿ/ʻٴ;

    invoke-virtual {v0, p1}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    :cond_0
    check-cast p2, Lˑʿ/ʻٴ;

    invoke-virtual {v0, p2}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    return-object v0
.end method

.method public final ˏי(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, Lˑʿ/ʻٴ;

    new-instance p2, Lˑʿ/ˆʾ;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lˑʿ/ʻٴ;->ᵔٴ(Lʽٴ/ˈ;)V

    return-void
.end method

.method public final ˑﹳ(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lˑʿ/ʻٴ;

    invoke-static {p1, p2}, Lˑʿ/ᵢˏ;->ﹳٴ(Landroid/view/ViewGroup;Lˑʿ/ʻٴ;)V

    return-void
.end method

.method public final יـ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    check-cast p2, Lˑʿ/ʻٴ;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0}, Lˑʼ/ˑʼ;->ˆʾ(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p1, Lˑʿ/ˆʾ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p1}, Lˑʿ/ʻٴ;->ᵔٴ(Lʽٴ/ˈ;)V

    :cond_0
    return-void
.end method

.method public final ـˆ(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    check-cast p1, Lˑʿ/ᴵˊ;

    iget-object v0, p1, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v0, v3}, Lˑʼ/ˑʼ;->ﾞᴵ(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p3}, Lˑʿ/ˉʿ;->ⁱˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final ᵎﹶ(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lˑʿ/ʻٴ;

    return p1
.end method

.method public final ᵔʾ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Lˑʿ/ʻٴ;

    check-cast p2, Lˑʿ/ʻٴ;

    check-cast p3, Lˑʿ/ʻٴ;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lˑʿ/ᴵˊ;

    invoke-direct {v0}, Lˑʿ/ᴵˊ;-><init>()V

    invoke-virtual {v0, p1}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    invoke-virtual {v0, p2}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lˑʿ/ᴵˊ;->ʿᵢ(I)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_4

    new-instance p2, Lˑʿ/ᴵˊ;

    invoke-direct {p2}, Lˑʿ/ᴵˊ;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    :cond_3
    invoke-virtual {p2, p3}, Lˑʿ/ᴵˊ;->ˈⁱ(Lˑʿ/ʻٴ;)V

    return-object p2

    :cond_4
    return-object p1
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    if-eqz p1, :cond_0

    check-cast p1, Lˑʿ/ʻٴ;

    invoke-virtual {p1}, Lˑʿ/ʻٴ;->ﾞʻ()Lˑʿ/ʻٴ;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᵔﹳ(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 6

    check-cast p1, Lˑʿ/ʻٴ;

    new-instance v0, Lˑʿ/ﾞʻ;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lˑʿ/ﾞʻ;-><init>(Lˑʿ/ˉʿ;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lˑʿ/ʻٴ;->ﹳٴ(Lˑʿ/יـ;)V

    return-void
.end method

.method public final ᵢˏ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    check-cast p1, Lˑʿ/ʻٴ;

    instance-of v0, p1, Lˑʿ/ᴵˊ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lˑʿ/ᴵˊ;

    iget-object v0, p1, Lˑʿ/ᴵˊ;->ʻᵎ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lˑʿ/ᴵˊ;->ᴵˑ(I)Lˑʿ/ʻٴ;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lˑʿ/ˉʿ;->ᵢˏ(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lˑʿ/ʻٴ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-static {v0}, Lˑʼ/ˑʼ;->ٴﹶ(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lˑʿ/ʻٴ;->ⁱˊ(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-ltz p3, :cond_3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lˑʿ/ʻٴ;->ᵎⁱ(Landroid/view/View;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final ⁱˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    check-cast p1, Lˑʿ/ʻٴ;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lˑʿ/ᴵˊ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lˑʿ/ᴵˊ;

    iget-object v0, p1, Lˑʿ/ᴵˊ;->ʻᵎ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lˑʿ/ᴵˊ;->ᴵˑ(I)Lˑʿ/ʻٴ;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lˑʿ/ˉʿ;->ⁱˊ(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lˑʿ/ʻٴ;->ᴵᵔ:Ljava/util/ArrayList;

    invoke-static {v0}, Lˑʼ/ˑʼ;->ٴﹶ(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lˑʿ/ʻٴ;->ˊʻ:Ljava/util/ArrayList;

    invoke-static {v0}, Lˑʼ/ˑʼ;->ٴﹶ(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lˑʿ/ʻٴ;->ⁱˊ(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final ﹳٴ(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lˑʿ/ʻٴ;

    invoke-virtual {p2, p1}, Lˑʿ/ʻٴ;->ⁱˊ(Landroid/view/View;)V

    return-void
.end method

.method public final ﹳᐧ(Ljava/lang/Object;F)V
    .locals 12

    .prologue
    check-cast p1, Lˑʿ/ﹳᐧ;

    iget-boolean v0, p1, Lˑʿ/ﹳᐧ;->ⁱˊ:Z

    if-eqz v0, :cond_7

    iget-object v1, p1, Lˑʿ/ﹳᐧ;->ᵎﹶ:Lˑʿ/ᴵˊ;

    iget-wide v2, v1, Lˑʿ/ʻٴ;->ʿ:J

    long-to-float v4, v2

    mul-float/2addr p2, v4

    float-to-long v4, p2

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    const-wide/16 v8, 0x1

    if-nez p2, :cond_0

    move-wide v4, v8

    :cond_0
    cmp-long p2, v4, v2

    if-nez p2, :cond_1

    sub-long v4, v2, v8

    :cond_1
    iget-object p2, p1, Lˑʿ/ﹳᐧ;->ˈ:Lˊᵔ/ᵔᵢ;

    if-nez p2, :cond_6

    iget-wide v10, p1, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    cmp-long p2, v4, v10

    if-eqz p2, :cond_7

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p2, p1, Lˑʿ/ﹳᐧ;->ʽ:Z

    if-nez p2, :cond_5

    cmp-long p2, v4, v6

    if-nez p2, :cond_3

    cmp-long p2, v10, v6

    if-lez p2, :cond_3

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_3
    cmp-long p2, v4, v2

    if-nez p2, :cond_4

    cmp-long p2, v10, v2

    if-gez p2, :cond_4

    add-long v4, v2, v8

    :cond_4
    :goto_0
    cmp-long p2, v4, v10

    if-eqz p2, :cond_5

    invoke-virtual {v1, v4, v5, v10, v11}, Lˑʿ/ᴵˊ;->ᵔי(JJ)V

    iput-wide v4, p1, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    :cond_5
    iget-object p1, p1, Lˑʿ/ﹳᐧ;->ˑﹳ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    long-to-float p2, v4

    iget v2, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x14

    iput v2, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    iget-object v3, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [J

    aput-wide v0, v3, v2

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, [F

    aput p2, p1, v2

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "setCurrentPlayTimeMillis() called after animation has been started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public final ﾞʻ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
