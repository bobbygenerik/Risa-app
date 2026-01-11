.class public final Lٴﾞ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public ʽʽ:Z

.field public final ʾˋ:Ljava/util/HashMap;

.field public ˈٴ:Landroid/os/IBinder;

.field public ˊʻ:Landroid/content/ComponentName;

.field public final synthetic ٴᵢ:Lٴﾞ/ˊʻ;

.field public ᴵˊ:I

.field public final ᴵᵔ:Lٴﾞ/ʽʽ;


# direct methods
.method public constructor <init>(Lٴﾞ/ˊʻ;Lٴﾞ/ʽʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iput-object p2, p0, Lٴﾞ/ˈٴ;->ᴵᵔ:Lٴﾞ/ʽʽ;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    const/4 p1, 0x2

    iput p1, p0, Lٴﾞ/ˈٴ;->ᴵˊ:I

    return-void
.end method

.method public static ﹳٴ(Lٴﾞ/ˈٴ;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lᴵˈ/ⁱˊ;
    .locals 9

    .prologue
    :try_start_0
    iget-object v0, p0, Lٴﾞ/ˈٴ;->ᴵᵔ:Lٴﾞ/ʽʽ;

    iget-object v1, p0, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v1, v1, Lٴﾞ/ˊʻ;->ⁱˊ:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lٴﾞ/ʽʽ;->ﹳٴ(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/zzaj; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    iput v0, p0, Lٴﾞ/ˈٴ;->ᴵˊ:I

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0, v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    invoke-static {v0}, Lᵎᴵ/ˑﹳ;->ﹳٴ(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    :try_start_1
    iget-object v0, p0, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v2, v0, Lٴﾞ/ˊʻ;->ˈ:Lˑʻ/ﹳٴ;

    iget-object v3, v0, Lٴﾞ/ˊʻ;->ⁱˊ:Landroid/content/Context;

    const/16 v7, 0x1081

    move-object v6, p0

    move-object v4, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lˑʻ/ﹳٴ;->ʽ(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p0

    iput-boolean p0, v6, Lٴﾞ/ˈٴ;->ʽʽ:Z

    if-eqz p0, :cond_1

    iget-object p0, v6, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object p0, p0, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-object p1, v6, Lٴﾞ/ˈٴ;->ᴵᵔ:Lٴﾞ/ʽʽ;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-object p1, v6, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object p1, p1, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-object p2, v6, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-wide v2, p2, Lٴﾞ/ˊʻ;->ﾞᴵ:J

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p0, Lᴵˈ/ⁱˊ;->ᴵᵔ:Lᴵˈ/ⁱˊ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :try_start_2
    iput p0, v6, Lٴﾞ/ˈٴ;->ᴵˊ:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, v6, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object p1, p0, Lٴﾞ/ˊʻ;->ˈ:Lˑʻ/ﹳٴ;

    iget-object p0, p0, Lٴﾞ/ˊʻ;->ⁱˊ:Landroid/content/Context;

    invoke-virtual {p1, p0, v6}, Lˑʻ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    new-instance p0, Lᴵˈ/ⁱˊ;

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lᴵˈ/ⁱˊ;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_1

    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzaj;->ʾˋ:Lᴵˈ/ⁱˊ;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0, p1}, Lٴﾞ/ˈٴ;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v0, v0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v1, v1, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-object v2, p0, Lٴﾞ/ˈٴ;->ᴵᵔ:Lٴﾞ/ʽʽ;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lٴﾞ/ˈٴ;->ˈٴ:Landroid/os/IBinder;

    iput-object p1, p0, Lٴﾞ/ˈٴ;->ˊʻ:Landroid/content/ComponentName;

    iget-object v1, p0, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput v3, p0, Lٴﾞ/ˈٴ;->ᴵˊ:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v0, v0, Lٴﾞ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lٴﾞ/ˈٴ;->ٴᵢ:Lٴﾞ/ˊʻ;

    iget-object v1, v1, Lٴﾞ/ˊʻ;->ʽ:Lcom/google/android/gms/internal/measurement/ˉٴ;

    iget-object v2, p0, Lٴﾞ/ˈٴ;->ᴵᵔ:Lٴﾞ/ʽʽ;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lٴﾞ/ˈٴ;->ˈٴ:Landroid/os/IBinder;

    iput-object p1, p0, Lٴﾞ/ˈٴ;->ˊʻ:Landroid/content/ComponentName;

    iget-object v1, p0, Lٴﾞ/ˈٴ;->ʾˋ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lٴﾞ/ˈٴ;->ᴵˊ:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
