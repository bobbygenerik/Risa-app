.class public final synthetic Lˏ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﹳ/ⁱˊ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˏ/ˑﹳ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lˏ/ˑﹳ;->ﹳٴ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ﹳٴ:Lˏ/ٴﹶ;

    new-instance v0, Lˏᐧ/ﹳٴ;

    const-string v3, "Firebase Scheduler"

    invoke-direct {v0, v3, v1, v2}, Lˏᐧ/ﹳٴ;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ﹳٴ:Lˏ/ٴﹶ;

    new-instance v0, Lˏᐧ/ﹳٴ;

    const-string v1, "Firebase Blocking"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lˏᐧ/ﹳٴ;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lˏᐧ/ᵎﹶ;

    sget-object v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ˈ:Lˏ/ٴﹶ;

    invoke-virtual {v2}, Lˏ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0, v2}, Lˏᐧ/ᵎﹶ;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1

    :pswitch_1
    sget-object v0, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ﹳٴ:Lˏ/ٴﹶ;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    new-instance v3, Lˏᐧ/ﹳٴ;

    const-string v4, "Firebase Lite"

    invoke-direct {v3, v4, v1, v2}, Lˏᐧ/ﹳٴ;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {v0, v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lˏᐧ/ᵎﹶ;

    sget-object v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ˈ:Lˏ/ٴﹶ;

    invoke-virtual {v2}, Lˏ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v0, v2}, Lˏᐧ/ᵎﹶ;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1

    :pswitch_2
    invoke-static {}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->ﹳٴ()Lˏᐧ/ᵎﹶ;

    move-result-object v0

    return-object v0

    :pswitch_3
    return-object v2

    :pswitch_4
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
