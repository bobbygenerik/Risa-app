.class public final Lˈˊ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/16 p3, 0xe

    iput p3, p0, Lˈˊ/ᵔﹳ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lˈˊ/ᵔﹳ;->ʾˋ:I

    iput-object p1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p3, p0, Lˈˊ/ᵔﹳ;->ʾˋ:I

    iput-object p1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ⁱˊ()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ˈʿ;

    iget-object v0, v0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʼﾞ/ˈʿ;

    invoke-virtual {v1}, Lʼﾞ/ˈʿ;->ʽ()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʼﾞ/ˈʿ;

    iget-object v1, v1, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʼﾞ/ˈʿ;

    invoke-virtual {v2}, Lʼﾞ/ˈʿ;->ʽ()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private final ﹳٴ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˆﹶ/ˑﹳ;

    iget-object v0, v0, Lˆﹶ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˆﹶ/ˑﹳ;

    iget-object v1, v1, Lˆﹶ/ˑﹳ;->ˈٴ:Lﹳᐧ/ﹳٴ;

    iget-object v2, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lﹳᐧ/ﹳٴ;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˆﹶ/ˑﹳ;

    iget-object v3, v2, Lˆﹶ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    iput-object v1, v2, Lˆﹶ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    iget-object v2, v2, Lˆﹶ/ˑﹳ;->ᴵᵔ:Landroidx/lifecycle/ᴵᵔ;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/ʽʽ;->ʼˎ(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˆﹶ/ˑﹳ;

    iput-object v1, v2, Lˆﹶ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    iget-object v2, v2, Lˆﹶ/ˑﹳ;->ᴵᵔ:Landroidx/lifecycle/ᴵᵔ;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/ʽʽ;->ʼˎ(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    iget v0, p0, Lˈˊ/ᵔﹳ;->ʾˋ:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-static {v0, v1}, Lᴵי/ʾᵎ;->ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    :goto_0
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˊʽ/ᵎﹶ;

    invoke-virtual {v0}, Lˊʽ/ᵎﹶ;->ʾˊ()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    add-int/2addr v3, v4

    const/16 v0, 0x10

    if-lt v3, v0, :cond_0

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˊʽ/ᵎﹶ;

    iget-object v1, v0, Lˊʽ/ᵎﹶ;->ʽʽ:Lᴵי/ˏי;

    invoke-static {v1, v0}, Lˊʽ/ⁱˊ;->ˆʾ(Lᴵי/ˏי;Lˈי/ᵔᵢ;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˊʽ/ᵎﹶ;

    iget-object v1, v0, Lˊʽ/ᵎﹶ;->ʽʽ:Lᴵי/ˏי;

    invoke-static {v1, v0, p0}, Lˊʽ/ⁱˊ;->ʼˎ(Lᴵי/ˏי;Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˊʽ/ᵎﹶ;

    iget-object v2, v1, Lˊʽ/ᵎﹶ;->ˊʻ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    sget-object v3, Lˊʽ/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v2

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_0
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    :try_start_3
    sget-object v2, Lˊʻ/ʽ;->ˈ:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v6, v4

    const-string v0, "AppCompat recreation"

    aput-object v0, v6, v5

    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    sget-object v2, Lˊʻ/ʽ;->ˑﹳ:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v5, v4

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :goto_2
    const-string v1, "ActivityRecreator"

    const-string v2, "Exception while invoking performStopActivity"

    nop

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/RuntimeException;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    throw v0

    :cond_4
    :goto_4
    return-void

    :pswitch_1
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˊʻ/ⁱˊ;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊʻ/ⁱˊ;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    iput-object v1, v0, Lˊʻ/ⁱˊ;->ʾˋ:Ljava/lang/Object;

    return-void

    :pswitch_3
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˉﹳ/ᵔᵢ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->יˉ()V

    :cond_5
    return-void

    :pswitch_4
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏᵎ/ﹳٴ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/tv/ui/MainActivity;

    sget v1, Lar/tvplayer/tv/ui/MainActivity;->ʻˋ:I

    invoke-virtual {v0}, Lar/tvplayer/tv/ui/MainActivity;->ˏᵢ()V

    :cond_6
    return-void

    :pswitch_5
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˉˏ/ʽ;

    iget-boolean v1, v0, Lˉˏ/ʽ;->ˈ:Z

    if-eqz v1, :cond_7

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_7
    :try_start_4
    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v1

    iget-object v0, v0, Lˉˏ/ʽ;->ʽ:Lˉˏ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "GlideExecutor"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Request threw uncaught throwable"

    nop

    :cond_8
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˉˊ/ᵔٴ;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ᴵᵔ;

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v1, :cond_d

    sget-object v1, Lˉˊ/ᵔٴ;->ˑˆ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lˉˊ/ᵔٴ;->ʽᐧ()Lᴵᐧ/ˑﹳ;

    move-result-object v1

    iget-object v1, v1, Lᴵᐧ/ˑﹳ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    move v5, v3

    :goto_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    move v6, v4

    goto :goto_7

    :cond_9
    move v6, v3

    :goto_7
    if-eqz v6, :cond_d

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lˉˊ/ᵔٴ;->ʽᐧ()Lᴵᐧ/ˑﹳ;

    move-result-object v7

    iget-object v7, v7, Lᴵᐧ/ˑﹳ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v5

    instance-of v7, v5, Lˉˊ/ٴʼ;

    if-eqz v7, :cond_a

    check-cast v5, Lˉˊ/ٴʼ;

    goto :goto_8

    :cond_a
    move-object v5, v2

    :goto_8
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lˉˊ/ٴʼ;->ʾˋ()V

    :cond_b
    move v5, v6

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_d
    return-void

    :pswitch_7
    invoke-direct {p0}, Lˈˊ/ᵔﹳ;->ⁱˊ()V

    return-void

    :pswitch_8
    invoke-direct {p0}, Lˈˊ/ᵔﹳ;->ﹳٴ()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʿי/ʽⁱ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿי/ʽⁱ;

    sget-object v1, Lʿי/ʽⁱ;->ᐧˏ:[Lᐧˆ/ˈ;

    invoke-virtual {v0, v2}, Lʿי/ʽⁱ;->ʼᵎ(Ljava/lang/Long;)V

    :cond_e
    return-void

    :pswitch_a
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿי/ʾˋ;

    iget-object v0, v0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v0, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_f
    return-void

    :pswitch_b
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿי/ʻٴ;

    iget-object v0, v0, Landroidx/leanback/app/ʽ;->ـˊ:Landroidx/leanback/widget/ˑٴ;

    iget-object v0, v0, Landroidx/leanback/widget/ˑٴ;->ⁱˊ:Landroidx/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_10
    return-void

    :pswitch_c
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʿי/יـ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿי/יـ;

    iget-object v1, v0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ˈˏ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/ʽ;->ʽʾ(Landroidx/leanback/widget/ʾᵎ;)V

    :cond_11
    return-void

    :pswitch_d
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ﹳـ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʾʼ/ﹳـ;

    sget-object v1, Lʾʼ/ﹳـ;->ˊﾞ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lʾʼ/ﹳـ;->ʾˏ()Lʻﾞ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lʻﾞ/ﹳٴ;->ᵔᵢ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    sget-object v1, Lʾʼ/ˉٴ;->ᴵˊ:Lʾʼ/ˉٴ;

    invoke-static {v0, v1}, Lʿˋ/ˋᵔ;->ʻᵎ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Object;)V

    :cond_12
    return-void

    :pswitch_e
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->ﹳٴ:Lˉـ/ˑﹳ;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lˉـ/ˑﹳ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_13
    return-void

    :pswitch_f
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʽˋ/ʾᵎ;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lʽˋ/ʾᵎ;

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lʽˋ/ʾᵎ;->ⁱᴵ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0, v4}, Lʽˋ/ʾᵎ;->ˎـ(Z)V

    :cond_14
    return-void

    :pswitch_10
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˋ/ﹳٴ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʽˋ/ﹳٴ;

    invoke-virtual {v0}, Lʽˋ/ﹳٴ;->ˏⁱ()V

    :cond_15
    return-void

    :pswitch_11
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ᵎⁱ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ᵎⁱ;

    sget-object v1, Lʼⁱ/ᵎⁱ;->ﹶʽ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lʼⁱ/ᵎⁱ;->ʽᐧ()Lـי/ⁱˊ;

    move-result-object v0

    iget-object v0, v0, Lـי/ⁱˊ;->ⁱˊ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/ᵔᵢ;->setSelectedPosition(I)V

    :cond_16
    return-void

    :pswitch_12
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ᵎⁱ;

    sget-object v1, Lʼⁱ/ᵎⁱ;->ﹶʽ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lʼⁱ/ᵎⁱ;->ˎᵎ()V

    :cond_17
    return-void

    :pswitch_13
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_18
    return-void

    :pswitch_14
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/ˉʿ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_19
    return-void

    :pswitch_15
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lˊʼ/ⁱˊ;

    invoke-direct {v1, v4, v0}, Lˊʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_9

    :cond_1a
    return-void

    :pswitch_16
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳʽ/ˊʻ;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ﾞᴵ;

    :try_start_5
    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget-object v0, v0, Lʼٴ/ⁱˊ;->ٴᵢ:Lʼٴ/ʽ;

    invoke-interface {v0, v1}, Lʼٴ/ʽ;->ˈ(Lʼٴ/ﾞᴵ;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    const-string v1, "BillingClient"

    const-string v2, "Exception calling onBillingSetupFinished."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ʼˎ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void

    :pswitch_17
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget-object v2, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ˉʿ;

    sget-object v3, Lʼٴ/ˈٴ;->ٴﹶ:Lʼٴ/ﾞᴵ;

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v4, v3}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    sget-object v0, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-interface {v2, v3, v0}, Lʼٴ/ˉʿ;->ʽ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    return-void

    :pswitch_18
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget-object v2, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ﾞʻ;

    sget-object v3, Lʼٴ/ˈٴ;->ٴﹶ:Lʼٴ/ﾞᴵ;

    const/4 v4, 0x7

    invoke-virtual {v0, v1, v4, v3}, Lʼٴ/ⁱˊ;->ⁱˉ(IILʼٴ/ﾞᴵ;)V

    new-instance v0, Lʼٴ/ʼᐧ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/יـ;->ᴵˊ:Lcom/google/android/gms/internal/play_billing/ᵔﹳ;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/ʼʼ;->ᴵᵔ:Lcom/google/android/gms/internal/play_billing/ʼʼ;

    invoke-direct {v0, v1}, Lʼٴ/ʼᐧ;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3, v0}, Lʼٴ/ﾞʻ;->ﹳٴ(Lʼٴ/ﾞᴵ;Lʼٴ/ʼᐧ;)V

    return-void

    :pswitch_19
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "BillingClient"

    const-string v2, "Async task is taking too long, cancel it!"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1b
    return-void

    :pswitch_1a
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ⁱˊ;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʼٴ/ﾞᴵ;

    iget-object v3, v0, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    iget-object v3, v3, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lʼٴ/ᵔʾ;

    if-eqz v3, :cond_1c

    iget-object v0, v0, Lʼٴ/ⁱˊ;->ﾞʻ:Lʼٴ/ٴᵢ;

    iget-object v0, v0, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ᵔʾ;

    check-cast v0, Lar/tvplayer/core/domain/ʻٴ;

    invoke-virtual {v0, v1, v2}, Lar/tvplayer/core/domain/ʻٴ;->ⁱˊ(Lʼٴ/ﾞᴵ;Ljava/util/List;)V

    goto :goto_b

    :cond_1c
    const-string v0, "BillingClient"

    const-string v1, "No valid listener is set in BroadcastManager"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/ʾᵎ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :pswitch_1b
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʻᐧ/ˏי;

    iget-object v2, v1, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v2

    instance-of v3, v2, Lʻᐧ/ـˆ;

    if-nez v3, :cond_1e

    if-nez v2, :cond_1d

    goto :goto_c

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    move-object v3, v2

    check-cast v3, Lʻᐧ/ـˆ;

    invoke-virtual {v3, v0}, Lʻᐧ/ـˆ;->ᵔﹳ(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    iget-object v0, v1, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->ﹶᐧ(I)V

    goto :goto_c

    :cond_1f
    new-instance v3, Lʻᐧ/יـ;

    iget-object v1, v1, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v2

    check-cast v4, Lʻᐧ/ـˆ;

    invoke-direct {v3, v4, v1, v0}, Lʻᐧ/יـ;-><init>(Lʻᐧ/ـˆ;Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    iget-object v0, v2, Lˋˋ/ᴵˑ;->ﹳٴ:Lˋˋ/ˉـ;

    invoke-virtual {v0, v3}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    :goto_c
    return-void

    :pswitch_1c
    iget-object v0, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ⁱי;

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˈˊ/ﹳᐧ;

    instance-of v5, v1, Lˊˑ/ﹳٴ;

    if-eqz v5, :cond_21

    move-object v5, v1

    check-cast v5, Lˊˑ/ﹳٴ;

    check-cast v5, Lˈˊ/ˉʿ;

    instance-of v6, v5, Lˈˊ/ﾞᴵ;

    if-eqz v6, :cond_20

    iget-object v5, v5, Lˈˊ/ˉʿ;->ʾˋ:Ljava/lang/Object;

    instance-of v6, v5, Lˈˊ/ⁱˊ;

    if-eqz v6, :cond_20

    check-cast v5, Lˈˊ/ⁱˊ;

    iget-object v2, v5, Lˈˊ/ⁱˊ;->ﹳٴ:Ljava/lang/Throwable;

    :cond_20
    if-eqz v2, :cond_21

    invoke-virtual {v0, v2}, Lﹶﾞ/ⁱי;->ᵢˏ(Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_21
    :try_start_6
    invoke-static {v1}, Landroid/support/v4/media/session/ⁱˊ;->ᵔᵢ(Lˈˊ/ﹳᐧ;)V
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iget-object v1, v0, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ˈـ;

    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ⁱי;->ᴵᵔ()V

    iput-boolean v3, v1, Lﹶﾞ/ˈـ;->ᵎⁱ:Z

    iput v4, v1, Lﹶﾞ/ˈـ;->ٴʼ:I

    iget-object v2, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    iget-object v0, v0, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˎʼ;

    const-string v3, "Successfully registered trigger URI"

    iget-object v0, v0, Lﹶﾞ/ˎʼ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lﹶﾞ/ˈـ;->ˎـ()V

    goto :goto_d

    :catchall_6
    move-exception v1

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ᵢˏ(Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lﹶﾞ/ⁱי;->ᵢˏ(Ljava/lang/Throwable;)V

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    iget v0, p0, Lˈˊ/ᵔﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Lᵢ/ﹳٴ;

    const-class v1, Lˈˊ/ᵔﹳ;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lᵢ/ﹳٴ;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lˈˊ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ⁱי;

    new-instance v2, Lﹶﾞ/ⁱי;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lﹶﾞ/ⁱי;-><init>(IZ)V

    iget-object v3, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ⁱי;

    iput-object v2, v3, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    iput-object v2, v0, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v2, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Lᵢ/ﹳٴ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
