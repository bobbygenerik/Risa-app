.class public final Lﹳˎ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lˑˋ/ˈ;

.field public final ʽ:Lˑʼ/ᵎˊ;

.field public final ˆʾ:Lᵎˉ/ﹳٴ;

.field public final ˈ:J

.field public final ˉʿ:Lיˎ/ⁱˊ;

.field public final ˉˆ:Lˈᵔ/ˈ;

.field public ˑﹳ:Lـʾ/ᵔﹳ;

.field public final ٴﹶ:Lᵎˉ/ﹳٴ;

.field public ᵎﹶ:Lﹳˎ/ˉʿ;

.field public final ᵔʾ:Lˊⁱ/ˑﹳ;

.field public final ᵔᵢ:Lﹳˎ/ʻٴ;

.field public final ⁱˊ:Lʼٴ/ٴᵢ;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞʻ:Lﹳˎ/ʼˎ;

.field public ﾞᴵ:Lـʾ/ᵔﹳ;


# direct methods
.method public constructor <init>(Lˉᵎ/ᵎﹶ;Lﹳˎ/ʻٴ;Lיˎ/ⁱˊ;Lʼٴ/ٴᵢ;Lᵎˉ/ﹳٴ;Lᵎˉ/ﹳٴ;Lˑˋ/ˈ;Lﹳˎ/ʼˎ;Lˊⁱ/ˑﹳ;Lˈᵔ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lﹳˎ/ᵔﹳ;->ⁱˊ:Lʼٴ/ٴᵢ;

    invoke-virtual {p1}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object p1, p1, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    iput-object p1, p0, Lﹳˎ/ᵔﹳ;->ﹳٴ:Landroid/content/Context;

    iput-object p2, p0, Lﹳˎ/ᵔﹳ;->ᵔᵢ:Lﹳˎ/ʻٴ;

    iput-object p3, p0, Lﹳˎ/ᵔﹳ;->ˉʿ:Lיˎ/ⁱˊ;

    iput-object p5, p0, Lﹳˎ/ᵔﹳ;->ˆʾ:Lᵎˉ/ﹳٴ;

    iput-object p6, p0, Lﹳˎ/ᵔﹳ;->ٴﹶ:Lᵎˉ/ﹳٴ;

    iput-object p7, p0, Lﹳˎ/ᵔﹳ;->ʼˎ:Lˑˋ/ˈ;

    iput-object p8, p0, Lﹳˎ/ᵔﹳ;->ﾞʻ:Lﹳˎ/ʼˎ;

    iput-object p9, p0, Lﹳˎ/ᵔﹳ;->ᵔʾ:Lˊⁱ/ˑﹳ;

    iput-object p10, p0, Lﹳˎ/ᵔﹳ;->ˉˆ:Lˈᵔ/ˈ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lﹳˎ/ᵔﹳ;->ˈ:J

    new-instance p1, Lˑʼ/ᵎˊ;

    const/16 p2, 0x19

    invoke-direct {p1, p2}, Lˑʼ/ᵎˊ;-><init>(I)V

    iput-object p1, p0, Lﹳˎ/ᵔﹳ;->ʽ:Lˑʼ/ᵎˊ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    .prologue
    const-string v0, "FirebaseCrashlytics"

    invoke-static {}, Lˈᵔ/ˈ;->ﹳٴ()V

    :try_start_0
    iget-object v1, p0, Lﹳˎ/ᵔﹳ;->ˑﹳ:Lـʾ/ᵔﹳ;

    iget-object v2, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˑˋ/ˈ;

    iget-object v1, v1, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Initialization marker file was not properly removed."

    const/4 v2, 0x0

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v2, "Problem encountered deleting Crashlytics initialization marker."

    nop

    return-void
.end method

.method public final ⁱˊ(Lʾٴ/ⁱˊ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳˎ/ᵔﹳ;->ˉˆ:Lˈᵔ/ˈ;

    iget-object v0, v0, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    iget-object v0, v0, Lˈᵔ/ʽ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lﹳˎ/ᵔʾ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lﹳˎ/ᵔʾ;-><init>(Lﹳˎ/ᵔﹳ;Lʾٴ/ⁱˊ;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    const/4 v2, 0x0

    nop

    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    const-string v1, "Crashlytics timed out during initialization."

    nop

    goto :goto_3

    :goto_1
    const-string v1, "Crashlytics encountered a problem during initialization."

    nop

    goto :goto_3

    :goto_2
    const-string v1, "Crashlytics was interrupted during initialization."

    nop

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_3
    return-void
.end method

.method public final ﹳٴ(Lʾٴ/ⁱˊ;)V
    .locals 4

    .prologue
    invoke-static {}, Lˈᵔ/ˈ;->ﹳٴ()V

    invoke-static {}, Lˈᵔ/ˈ;->ﹳٴ()V

    iget-object v0, p0, Lﹳˎ/ᵔﹳ;->ˑﹳ:Lـʾ/ᵔﹳ;

    invoke-virtual {v0}, Lـʾ/ᵔﹳ;->ᵎﹶ()V

    const-string v0, "FirebaseCrashlytics"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "Initialization marker file was created."

    nop

    :cond_0
    :try_start_0
    iget-object v1, p0, Lﹳˎ/ᵔﹳ;->ˆʾ:Lᵎˉ/ﹳٴ;

    new-instance v3, Lﹳˎ/ˉˆ;

    invoke-direct {v3, p0}, Lﹳˎ/ˉˆ;-><init>(Lﹳˎ/ᵔﹳ;)V

    invoke-virtual {v1, v3}, Lᵎˉ/ﹳٴ;->ﾞᴵ(Lﹳˎ/ˉˆ;)V

    iget-object v1, p0, Lﹳˎ/ᵔﹳ;->ᵎﹶ:Lﹳˎ/ˉʿ;

    invoke-virtual {v1}, Lﹳˎ/ˉʿ;->ﾞᴵ()V

    invoke-virtual {p1}, Lʾٴ/ⁱˊ;->ⁱˊ()Lʾٴ/ﹳٴ;

    move-result-object v1

    iget-object v1, v1, Lʾٴ/ﹳٴ;->ⁱˊ:Lʻˆ/ˑﹳ;

    iget-boolean v1, v1, Lʻˆ/ˑﹳ;->ﹳٴ:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lﹳˎ/ᵔﹳ;->ᵎﹶ:Lﹳˎ/ˉʿ;

    invoke-virtual {v1, p1}, Lﹳˎ/ˉʿ;->ˈ(Lʾٴ/ⁱˊ;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Previous sessions could not be finalized."

    nop

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lﹳˎ/ᵔﹳ;->ᵎﹶ:Lﹳˎ/ˉʿ;

    iget-object p1, p1, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˏـ/ᵎﹶ;

    iget-object p1, p1, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    invoke-virtual {v1, p1}, Lﹳˎ/ˉʿ;->ᵎﹶ(Lˏـ/ˉʿ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lﹳˎ/ᵔﹳ;->ʽ()V

    return-void

    :cond_2
    const/4 p1, 0x3

    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Collection of crash reports disabled in Crashlytics settings."

    if-eqz p1, :cond_3

    :try_start_2
    nop

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lﹳˎ/ᵔﹳ;->ʽ()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lﹳˎ/ᵔﹳ;->ʽ()V

    throw p1
.end method
