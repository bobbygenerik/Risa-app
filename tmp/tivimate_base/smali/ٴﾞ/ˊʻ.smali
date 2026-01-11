.class public final Lٴﾞ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʼˎ:Landroid/os/HandlerThread;

.field public static final ᵎﹶ:Ljava/lang/Object;

.field public static ᵔᵢ:Lٴﾞ/ˊʻ;


# instance fields
.field public volatile ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

.field public final ˈ:Lˑʻ/ﹳٴ;

.field public final ˑﹳ:J

.field public final ⁱˊ:Landroid/content/Context;

.field public final ﹳٴ:Ljava/util/HashMap;

.field public final ﾞᴵ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lٴﾞ/ˊʻ;->ᵎﹶ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    new-instance v0, Lٴﾞ/ᴵᵔ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lٴﾞ/ᴵᵔ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lٴﾞ/ˊʻ;->ⁱˊ:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object p1, p0, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    invoke-static {}, Lˑʻ/ﹳٴ;->ﹳٴ()Lˑʻ/ﹳٴ;

    move-result-object p1

    iput-object p1, p0, Lٴﾞ/ˊʻ;->ˈ:Lˑʻ/ﹳٴ;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lٴﾞ/ˊʻ;->ˑﹳ:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lٴﾞ/ˊʻ;->ﾞᴵ:J

    return-void
.end method

.method public static ⁱˊ()Landroid/os/HandlerThread;
    .locals 4

    .prologue
    sget-object v0, Lٴﾞ/ˊʻ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lٴﾞ/ˊʻ;->ʼˎ:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lٴﾞ/ˊʻ;->ʼˎ:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lٴﾞ/ˊʻ;->ʼˎ:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ﹳٴ(Landroid/content/Context;)Lٴﾞ/ˊʻ;
    .locals 3

    .prologue
    sget-object v0, Lٴﾞ/ˊʻ;->ᵎﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lٴﾞ/ˊʻ;->ᵔᵢ:Lٴﾞ/ˊʻ;

    if-nez v1, :cond_0

    new-instance v1, Lٴﾞ/ˊʻ;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lٴﾞ/ˊʻ;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lٴﾞ/ˊʻ;->ᵔᵢ:Lٴﾞ/ˊʻ;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lٴﾞ/ˊʻ;->ᵔᵢ:Lٴﾞ/ˊʻ;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final ʽ(Lٴﾞ/ʽʽ;Lٴﾞ/ʼʼ;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lᴵˈ/ⁱˊ;
    .locals 6

    .prologue
    const-string v0, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    iget-object v1, p0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lٴﾞ/ˈٴ;

    const/4 v3, 0x0

    if-nez p4, :cond_0

    move-object p4, v3

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Lٴﾞ/ˈٴ;

    invoke-direct {v2, p0, p1}, Lٴﾞ/ˈٴ;-><init>(Lٴﾞ/ˊʻ;Lٴﾞ/ʽʽ;)V

    iget-object v0, v2, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, p3, p4}, Lٴﾞ/ˈٴ;->ﹳٴ(Lٴﾞ/ˈٴ;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lᴵˈ/ⁱˊ;

    move-result-object v3

    iget-object p2, p0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v2, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object p1, v2, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v2, Lٴﾞ/ˈٴ;->ᴵˊ:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, p3, p4}, Lٴﾞ/ˈٴ;->ﹳٴ(Lٴﾞ/ˈٴ;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lᴵˈ/ⁱˊ;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object p1, v2, Lٴﾞ/ˈٴ;->ˊʻ:Landroid/content/ComponentName;

    iget-object p3, v2, Lٴﾞ/ˈٴ;->ˈٴ:Landroid/os/IBinder;

    invoke-virtual {p2, p1, p3}, Lٴﾞ/ʼʼ;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_0
    iget-boolean p1, v2, Lٴﾞ/ˈٴ;->ʽʽ:Z

    if-eqz p1, :cond_4

    sget-object p1, Lᴵˈ/ⁱˊ;->ᴵᵔ:Lᴵˈ/ⁱˊ;

    monitor-exit v1

    return-object p1

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Lᴵˈ/ⁱˊ;

    const/4 p1, -0x1

    invoke-direct {v3, p1}, Lᴵˈ/ⁱˊ;-><init>(I)V

    :cond_5
    monitor-exit v1

    return-object v3

    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lٴﾞ/ʽʽ;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˈ(Ljava/lang/String;Landroid/content/ServiceConnection;Z)V
    .locals 4

    .prologue
    new-instance v0, Lٴﾞ/ʽʽ;

    invoke-direct {v0, p1, p3}, Lٴﾞ/ʽʽ;-><init>(Ljava/lang/String;Z)V

    const-string p1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    const-string p3, "Nonexistent connection status for service config: "

    const-string v1, "ServiceConnection must not be null"

    invoke-static {p2, v1}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lٴﾞ/ˈٴ;

    if-eqz v2, :cond_2

    iget-object p3, v2, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p1, v2, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v2, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-wide v2, p0, Lٴﾞ/ˊʻ;->ˑﹳ:J

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lٴﾞ/ʽʽ;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lٴﾞ/ʽʽ;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
