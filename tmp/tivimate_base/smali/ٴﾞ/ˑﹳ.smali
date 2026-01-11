.class public abstract Lٴﾞ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʾᵎ:[Lᴵˈ/ˈ;


# instance fields
.field public volatile ʻٴ:Lٴﾞ/ᴵˊ;

.field public ʼˎ:Lٴﾞ/ﹳᐧ;

.field public final ʼᐧ:Lٴﾞ/ʽ;

.field public final ʽ:Landroid/content/Context;

.field public ʽﹳ:Z

.field public ˆʾ:Lٴﾞ/ˈ;

.field public final ˈ:Lٴﾞ/ˊʻ;

.field public ˉʿ:Lٴﾞ/ʼʼ;

.field public final ˉˆ:Lٴﾞ/ⁱˊ;

.field public ˏי:Lᴵˈ/ⁱˊ;

.field public final ˑﹳ:Lᴵˈ/ﾞᴵ;

.field public volatile יـ:Ljava/lang/String;

.field public final ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public ٴﹶ:Landroid/os/IInterface;

.field public final ᵎﹶ:Ljava/lang/Object;

.field public ᵔʾ:I

.field public final ᵔᵢ:Ljava/lang/Object;

.field public final ᵔﹳ:I

.field public ⁱˊ:Lʼﾞ/ˉٴ;

.field public volatile ﹳٴ:Ljava/lang/String;

.field public final ﹳᐧ:Ljava/lang/String;

.field public final ﾞʻ:Ljava/util/ArrayList;

.field public final ﾞᴵ:Lٴﾞ/ـˆ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lᴵˈ/ˈ;

    sput-object v0, Lٴﾞ/ˑﹳ;->ʾᵎ:[Lᴵˈ/ˈ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lٴﾞ/ˊʻ;Lᴵˈ/ﾞᴵ;ILٴﾞ/ⁱˊ;Lٴﾞ/ʽ;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lٴﾞ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lٴﾞ/ˑﹳ;->ᵎﹶ:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lٴﾞ/ˑﹳ;->ᵔᵢ:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lٴﾞ/ˑﹳ;->ﾞʻ:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lٴﾞ/ˑﹳ;->ᵔʾ:I

    iput-object v0, p0, Lٴﾞ/ˑﹳ;->ˏי:Lᴵˈ/ⁱˊ;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lٴﾞ/ˑﹳ;->ʽﹳ:Z

    iput-object v0, p0, Lٴﾞ/ˑﹳ;->ʻٴ:Lٴﾞ/ᴵˊ;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lٴﾞ/ˑﹳ;->ʽ:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lٴﾞ/ˑﹳ;->ˈ:Lٴﾞ/ˊʻ;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lٴﾞ/ˑﹳ;->ˑﹳ:Lᴵˈ/ﾞᴵ;

    new-instance p1, Lٴﾞ/ـˆ;

    invoke-direct {p1, p0, p2}, Lٴﾞ/ـˆ;-><init>(Lٴﾞ/ˑﹳ;Landroid/os/Looper;)V

    iput-object p1, p0, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    iput p5, p0, Lٴﾞ/ˑﹳ;->ᵔﹳ:I

    iput-object p6, p0, Lٴﾞ/ˑﹳ;->ˉˆ:Lٴﾞ/ⁱˊ;

    iput-object p7, p0, Lٴﾞ/ˑﹳ;->ʼᐧ:Lٴﾞ/ʽ;

    iput-object p8, p0, Lٴﾞ/ˑﹳ;->ﹳᐧ:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic ʼʼ(Lٴﾞ/ˑﹳ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lٴﾞ/ˑﹳ;->ᵔʾ:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lٴﾞ/ˑﹳ;->ʽﹳ:Z

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    iget-object p0, p0, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic ᵢˏ(Lٴﾞ/ˑﹳ;IILandroid/os/IInterface;)Z
    .locals 2

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lٴﾞ/ˑﹳ;->ᵔʾ:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lٴﾞ/ˑﹳ;->ʾˋ(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract ʻٴ()Ljava/lang/String;
.end method

.method public final ʼˎ(Lⁱʽ/ﹳٴ;)V
    .locals 3

    iget-object v0, p1, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹳˊ/ʼˎ;

    iget-object v0, v0, Lﹳˊ/ʼˎ;->ᵔʾ:Lﹳˊ/ˈ;

    iget-object v0, v0, Lﹳˊ/ˈ;->ˆﾞ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    new-instance v1, Landroidx/leanback/widget/ᵔʾ;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p1}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract ʼᐧ(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final ʽ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lٴﾞ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ٴﹶ()V

    return-void
.end method

.method public final ʽﹳ()Landroid/os/IInterface;
    .locals 3

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lٴﾞ/ˑﹳ;->ᵔʾ:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ٴﹶ:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ʾˋ(ILandroid/os/IInterface;)V
    .locals 10

    .prologue
    const-string v0, " on com.google.android.gms"

    const-string v1, " on com.google.android.gms"

    const-string v2, "unable to connect to service: "

    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    if-nez p2, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    if-ne v7, v8, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    invoke-static {v7}, Lٴﾞ/ʻٴ;->ﹳٴ(Z)V

    iget-object v7, p0, Lٴﾞ/ˑﹳ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iput p1, p0, Lٴﾞ/ˑﹳ;->ᵔʾ:I

    iput-object p2, p0, Lٴﾞ/ˑﹳ;->ٴﹶ:Landroid/os/IInterface;

    const/4 v8, 0x0

    if-eq p1, v5, :cond_d

    const/4 v9, 0x2

    if-eq p1, v9, :cond_4

    const/4 v9, 0x3

    if-eq p1, v9, :cond_4

    if-eq p1, v6, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_4
    iget-object p1, p0, Lٴﾞ/ˑﹳ;->ˉʿ:Lٴﾞ/ʼʼ;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    if-eqz p2, :cond_6

    const-string v6, "GmsClient"

    iget-object p2, p2, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    iget-object p2, p0, Lٴﾞ/ˑﹳ;->ˈ:Lٴﾞ/ˊʻ;

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-object v1, v1, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ﹳᐧ:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ʽ:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-boolean v3, v3, Lʼﾞ/ˉٴ;->ʽ:Z

    invoke-virtual {p2, v1, p1, v3}, Lٴﾞ/ˊʻ;->ˈ(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    iget-object p1, p0, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_6
    new-instance p1, Lٴﾞ/ʼʼ;

    iget-object p2, p0, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lٴﾞ/ʼʼ;-><init>(Lٴﾞ/ˑﹳ;I)V

    iput-object p1, p0, Lٴﾞ/ˑﹳ;->ˉʿ:Lٴﾞ/ʼʼ;

    new-instance p2, Lʼﾞ/ˉٴ;

    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ـˆ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ʾᵎ()Z

    move-result v3

    const/4 v6, 0x1

    invoke-direct {p2, v6, v1, v3}, Lʼﾞ/ˉٴ;-><init>(ILjava/lang/String;Z)V

    iput-object p2, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ˈ()I

    move-result p2

    const v1, 0x1110e58

    if-lt p2, v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-object p2, p2, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    const-string v0, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    iget-object p2, p0, Lٴﾞ/ˑﹳ;->ˈ:Lٴﾞ/ˊʻ;

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-object v1, v1, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ﹳᐧ:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ʽ:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_9
    iget-object v6, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-boolean v6, v6, Lʼﾞ/ˉٴ;->ʽ:Z

    new-instance v9, Lٴﾞ/ʽʽ;

    invoke-direct {v9, v1, v6}, Lٴﾞ/ʽʽ;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v9, p1, v3, v8}, Lٴﾞ/ˊʻ;->ʽ(Lٴﾞ/ʽʽ;Lٴﾞ/ʼʼ;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lᴵˈ/ⁱˊ;

    move-result-object p1

    iget p2, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    if-nez p2, :cond_a

    move v4, v5

    :cond_a
    if-nez v4, :cond_f

    const-string p2, "GmsClient"

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-object v1, v1, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    iget p2, p1, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    const/16 p2, 0x10

    :cond_b
    iget-object v1, p1, Lᴵˈ/ⁱˊ;->ʽʽ:Landroid/app/PendingIntent;

    if-eqz v1, :cond_c

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pendingIntent"

    iget-object p1, p1, Lᴵˈ/ⁱˊ;->ʽʽ:Landroid/app/PendingIntent;

    invoke-virtual {v8, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c
    iget-object p1, p0, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance v1, Lٴﾞ/ʾˋ;

    invoke-direct {v1, p0, p2, v8}, Lٴﾞ/ʾˋ;-><init>(Lٴﾞ/ˑﹳ;ILandroid/os/Bundle;)V

    iget-object p2, p0, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    const/4 v2, 0x7

    invoke-virtual {p2, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lٴﾞ/ˑﹳ;->ˉʿ:Lٴﾞ/ʼʼ;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lٴﾞ/ˑﹳ;->ˈ:Lٴﾞ/ˊʻ;

    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-object v0, v0, Lʼﾞ/ˉٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ﹳᐧ:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ʽ:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_e
    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    iget-boolean v1, v1, Lʼﾞ/ˉٴ;->ʽ:Z

    invoke-virtual {p2, v0, p1, v1}, Lٴﾞ/ˊʻ;->ˈ(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V

    iput-object v8, p0, Lٴﾞ/ˑﹳ;->ˉʿ:Lٴﾞ/ʼʼ;

    :cond_f
    :goto_4
    monitor-exit v7

    return-void

    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ʾᵎ()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ˈ()I

    move-result v0

    const v1, 0xc9e4920

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˆʾ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method

.method public abstract ˈ()I
.end method

.method public final ˉˆ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ʽ:Landroid/content/Context;

    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ˈ()I

    move-result v1

    iget-object v2, p0, Lٴﾞ/ˑﹳ;->ˑﹳ:Lᴵˈ/ﾞᴵ;

    invoke-virtual {v2, v0, v1}, Lᴵˈ/ﾞᴵ;->ⁱˊ(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lٴﾞ/ˑﹳ;->ʾˋ(ILandroid/os/IInterface;)V

    new-instance v1, Lˉˆ/ʿ;

    const/16 v3, 0x1b

    invoke-direct {v1, v3, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lٴﾞ/ˑﹳ;->ˆʾ:Lٴﾞ/ˈ;

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x3

    iget-object v4, p0, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    invoke-virtual {v4, v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance v0, Lˉˆ/ʿ;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lٴﾞ/ˑﹳ;->ﾞᴵ(Lٴﾞ/ˈ;)V

    return-void
.end method

.method public ˏי()Ljava/util/Set;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final ˑﹳ()Z
    .locals 4

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lٴﾞ/ˑﹳ;->ᵔʾ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public יـ()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public abstract ـˆ()Ljava/lang/String;
.end method

.method public final ٴﹶ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ﾞʻ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lٴﾞ/ˑﹳ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lٴﾞ/ʼᐧ;

    invoke-virtual {v3}, Lٴﾞ/ʼᐧ;->ʽ()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ﾞʻ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lٴﾞ/ˑﹳ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lٴﾞ/ˑﹳ;->ʼˎ:Lٴﾞ/ﹳᐧ;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lٴﾞ/ˑﹳ;->ʾˋ(ILandroid/os/IInterface;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public final ᵎﹶ()[Lᴵˈ/ˈ;
    .locals 1

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ʻٴ:Lٴﾞ/ᴵˊ;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lٴﾞ/ᴵˊ;->ᴵˊ:[Lᴵˈ/ˈ;

    return-object v0
.end method

.method public final ᵔʾ(Lٴﾞ/ᵔᵢ;Ljava/util/Set;)V
    .locals 18

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual {v1}, Lٴﾞ/ˑﹳ;->יـ()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lٴﾞ/ᵎﹶ;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_0

    iget-object v4, v1, Lٴﾞ/ˑﹳ;->יـ:Ljava/lang/String;

    :goto_0
    move-object/from16 v17, v4

    goto :goto_1

    :cond_0
    iget-object v4, v1, Lٴﾞ/ˑﹳ;->יـ:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget v5, v1, Lٴﾞ/ˑﹳ;->ᵔﹳ:I

    sget v6, Lᴵˈ/ﾞᴵ;->ﹳٴ:I

    sget-object v9, Lٴﾞ/ᵎﹶ;->ˈʿ:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v12, Lٴﾞ/ᵎﹶ;->ˑٴ:[Lᴵˈ/ˈ;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v13, v12

    invoke-direct/range {v3 .. v17}, Lٴﾞ/ᵎﹶ;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lᴵˈ/ˈ;[Lᴵˈ/ˈ;ZIZLjava/lang/String;)V

    iget-object v4, v1, Lٴﾞ/ˑﹳ;->ʽ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lٴﾞ/ᵎﹶ;->ˈٴ:Ljava/lang/String;

    iput-object v2, v3, Lٴﾞ/ᵎﹶ;->ٴᵢ:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v3, Lٴﾞ/ᵎﹶ;->ˊʻ:[Lcom/google/android/gms/common/api/Scope;

    :cond_1
    invoke-virtual {v1}, Lٴﾞ/ˑﹳ;->ﾞʻ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lٴﾞ/ˑﹳ;->ᵔﹳ()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v4, "com.google"

    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object v0, v3, Lٴﾞ/ᵎﹶ;->ˉٴ:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʾᵎ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ:Landroid/os/IBinder;

    iput-object v0, v3, Lٴﾞ/ᵎﹶ;->ᴵᵔ:Landroid/os/IBinder;

    :cond_3
    sget-object v0, Lٴﾞ/ˑﹳ;->ʾᵎ:[Lᴵˈ/ˈ;

    iput-object v0, v3, Lٴﾞ/ᵎﹶ;->ᵎⁱ:[Lᴵˈ/ˈ;

    invoke-virtual {v1}, Lٴﾞ/ˑﹳ;->ﹳᐧ()[Lᴵˈ/ˈ;

    move-result-object v0

    iput-object v0, v3, Lٴﾞ/ᵎﹶ;->ٴʼ:[Lᴵˈ/ˈ;

    :try_start_0
    iget-object v2, v1, Lٴﾞ/ˑﹳ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lٴﾞ/ˑﹳ;->ʼˎ:Lٴﾞ/ﹳᐧ;

    if-eqz v0, :cond_4

    new-instance v4, Lٴﾞ/ʾᵎ;

    iget-object v5, v1, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v4, v1, v5}, Lٴﾞ/ʾᵎ;-><init>(Lٴﾞ/ˑﹳ;I)V

    invoke-virtual {v0, v4, v3}, Lٴﾞ/ﹳᐧ;->ʽ(Lٴﾞ/ʾᵎ;Lٴﾞ/ᵎﹶ;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    const-string v0, "GmsClient"

    const-string v3, "mServiceBroker is null, client disconnected"

    nop

    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :goto_4
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    nop

    iget-object v0, v1, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v2, Lٴﾞ/ᵢˏ;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v4}, Lٴﾞ/ᵢˏ;-><init>(Lٴﾞ/ˑﹳ;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    iget-object v3, v1, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :goto_5
    throw v0

    :goto_6
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    nop

    iget-object v0, v1, Lٴﾞ/ˑﹳ;->ـˆ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, v1, Lٴﾞ/ˑﹳ;->ﾞᴵ:Lٴﾞ/ـˆ;

    const/4 v3, 0x6

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lٴﾞ/ˑﹳ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ⁱˊ:Lʼﾞ/ˉٴ;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ᵔﹳ()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lٴﾞ/ˑﹳ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lٴﾞ/ˑﹳ;->ᵔʾ:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ﹳᐧ()[Lᴵˈ/ˈ;
    .locals 1

    sget-object v0, Lٴﾞ/ˑﹳ;->ʾᵎ:[Lᴵˈ/ˈ;

    return-object v0
.end method

.method public ﾞʻ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ﾞᴵ(Lٴﾞ/ˈ;)V
    .locals 1

    iput-object p1, p0, Lٴﾞ/ˑﹳ;->ˆʾ:Lٴﾞ/ˈ;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lٴﾞ/ˑﹳ;->ʾˋ(ILandroid/os/IInterface;)V

    return-void
.end method
