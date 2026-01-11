.class public final Lʽ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:J

.field public final synthetic ˈٴ:Lʽ/ٴﹶ;

.field public ᴵˊ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lʽ/ٴﹶ;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽ/ˆʾ;->ˈٴ:Lʽ/ٴﹶ;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lʽ/ˆʾ;->ʾˋ:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lʽ/ˆʾ;->ʽʽ:Z

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lʽ/ˆʾ;->ᴵˊ:Ljava/lang/Runnable;

    iget-object p1, p0, Lʽ/ˆʾ;->ˈٴ:Lʽ/ٴﹶ;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lʽ/ˆʾ;->ʽʽ:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_1
    new-instance v0, Landroidx/lifecycle/ᵎⁱ;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDraw()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʽ/ˆʾ;->ᴵˊ:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lʽ/ˆʾ;->ᴵˊ:Ljava/lang/Runnable;

    iget-object v0, p0, Lʽ/ˆʾ;->ˈٴ:Lʽ/ٴﹶ;

    iget-object v0, v0, Lʽ/ٴﹶ;->ᵎⁱ:Lٴʽ/יـ;

    iget-object v2, v0, Lٴʽ/יـ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v0, Lٴʽ/יـ;->ﹳٴ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lʽ/ˆʾ;->ʽʽ:Z

    iget-object v0, p0, Lʽ/ˆʾ;->ˈٴ:Lʽ/ٴﹶ;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lʽ/ˆʾ;->ʾˋ:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iput-boolean v1, p0, Lʽ/ˆʾ;->ʽʽ:Z

    iget-object v0, p0, Lʽ/ˆʾ;->ˈٴ:Lʽ/ٴﹶ;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lʽ/ˆʾ;->ˈٴ:Lʽ/ٴﹶ;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public final ﹳٴ(Landroid/view/View;)V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lʽ/ˆʾ;->ʽʽ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʽ/ˆʾ;->ʽʽ:Z

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method
