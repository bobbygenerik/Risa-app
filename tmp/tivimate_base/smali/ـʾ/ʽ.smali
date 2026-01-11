.class public final Lـʾ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵔʼ/ﹳٴ;


# static fields
.field public static final ﾞʻ:Ljava/lang/String;


# instance fields
.field public final ʼˎ:Ljava/util/HashSet;

.field public final ʽ:Lᴵˋ/ⁱˊ;

.field public final ˆʾ:Ljava/util/ArrayList;

.field public final ˈ:Lᐧᵎ/ᵢי;

.field public final ˑﹳ:Landroidx/work/impl/WorkDatabase;

.field public final ٴﹶ:Ljava/lang/Object;

.field public final ᵎﹶ:Ljava/util/HashMap;

.field public final ᵔᵢ:Ljava/util/HashMap;

.field public final ⁱˊ:Landroid/content/Context;

.field public ﹳٴ:Landroid/os/PowerManager$WakeLock;

.field public final ﾞᴵ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lـʾ/ʽ;->ﾞʻ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lᴵˋ/ⁱˊ;Lᐧᵎ/ᵢי;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـʾ/ʽ;->ⁱˊ:Landroid/content/Context;

    iput-object p2, p0, Lـʾ/ʽ;->ʽ:Lᴵˋ/ⁱˊ;

    iput-object p3, p0, Lـʾ/ʽ;->ˈ:Lᐧᵎ/ᵢי;

    iput-object p4, p0, Lـʾ/ʽ;->ˑﹳ:Landroidx/work/impl/WorkDatabase;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lـʾ/ʽ;->ᵎﹶ:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lـʾ/ʽ;->ﾞᴵ:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lـʾ/ʽ;->ʼˎ:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lـʾ/ʽ;->ˆʾ:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lـʾ/ʽ;->ﹳٴ:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lـʾ/ʽ;->ᵔᵢ:Ljava/util/HashMap;

    return-void
.end method

.method public static ˑﹳ(Ljava/lang/String;Lـʾ/ʾˋ;I)Z
    .locals 2

    .prologue
    sget-object v0, Lـʾ/ʽ;->ﾞʻ:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lـʾ/ʾˋ;->ˉʿ:Lᴵי/ˉـ;

    new-instance v1, Landroidx/work/impl/WorkerStoppedException;

    invoke-direct {v1, p2}, Landroidx/work/impl/WorkerStoppedException;-><init>(I)V

    invoke-virtual {p1, v1}, Lᴵי/ᐧᴵ;->יـ(Ljava/util/concurrent/CancellationException;)V

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "WorkerWrapper interrupted for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "WorkerWrapper could not be found for "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;
    .locals 1

    .prologue
    iget-object v0, p0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lـʾ/ʽ;->ˈ(Ljava/lang/String;)Lـʾ/ʾˋ;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lـʾ/ʾˋ;->ﹳٴ:Lˑᵎ/ﹳᐧ;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˈ(Ljava/lang/String;)Lـʾ/ʾˋ;
    .locals 1

    .prologue
    iget-object v0, p0, Lـʾ/ʽ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـʾ/ʾˋ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lـʾ/ʽ;->ᵎﹶ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lـʾ/ʾˋ;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final ᵎﹶ(Lـʾ/ﹳٴ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lـʾ/ʽ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ᵔᵢ(Lـʾ/ᵔᵢ;I)Z
    .locals 5

    .prologue
    const-string v0, "Ignored stopWork. WorkerWrapper "

    iget-object v1, p1, Lـʾ/ᵔᵢ;->ﹳٴ:Lˑᵎ/ﾞʻ;

    iget-object v1, v1, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, p0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lـʾ/ʽ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object p2, Lـʾ/ʽ;->ﾞʻ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is in foreground"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return v4

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lـʾ/ʽ;->ᵔᵢ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lـʾ/ʽ;->ⁱˊ(Ljava/lang/String;)Lـʾ/ʾˋ;

    move-result-object p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, p1, p2}, Lـʾ/ʽ;->ˑﹳ(Ljava/lang/String;Lـʾ/ʾˋ;I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v2

    return v4

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Ljava/lang/String;)Lـʾ/ʾˋ;
    .locals 5

    .prologue
    iget-object v0, p0, Lـʾ/ʽ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـʾ/ʾˋ;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lـʾ/ʽ;->ᵎﹶ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـʾ/ʾˋ;

    :cond_1
    iget-object v2, p0, Lـʾ/ʽ;->ᵔᵢ:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object p1, p0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lـʾ/ʽ;->ﾞᴵ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lـʾ/ʽ;->ⁱˊ:Landroid/content/Context;

    sget-object v2, Lᵔʼ/ⁱˊ;->ٴʼ:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lـʾ/ʽ;->ⁱˊ:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    sget-object v3, Lـʾ/ʽ;->ﾞʻ:Ljava/lang/String;

    const-string v4, "Unable to stop foreground service"

    invoke-virtual {v2, v3, v4, v1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Lـʾ/ʽ;->ﹳٴ:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lـʾ/ʽ;->ﹳٴ:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p1

    goto :goto_4

    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :goto_4
    return-object v0
.end method

.method public final ﹳٴ(Lـʾ/ﹳٴ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lـʾ/ʽ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﾞᴵ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lـʾ/ʽ;->ˈ(Ljava/lang/String;)Lـʾ/ʾˋ;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
