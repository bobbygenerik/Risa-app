.class public final Lcom/google/android/gms/internal/measurement/ʾˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final ˆʾ:[Ljava/lang/String;


# instance fields
.field public final ʽ:Ljava/lang/Runnable;

.field public ˈ:Lcom/google/android/gms/internal/measurement/יⁱ;

.field public volatile ˑﹳ:Z

.field public volatile ᵎﹶ:Ljava/util/Map;

.field public final ᵔᵢ:Ljava/util/ArrayList;

.field public final ⁱˊ:Landroid/net/Uri;

.field public final ﹳٴ:Landroid/content/ContentResolver;

.field public final ﾞᴵ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ʼˎ:Lj$/util/concurrent/ConcurrentHashMap;

    const-string v0, "key"

    const-string v1, "value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˆʾ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˈ:Lcom/google/android/gms/internal/measurement/יⁱ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˑﹳ:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ᵔᵢ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﹳٴ:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ⁱˊ:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ʽ:Ljava/lang/Runnable;

    return-void
.end method

.method public static ʽ()V
    .locals 4

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ʼˎ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʾˏ;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˑﹳ:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˑﹳ:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˈ:Lcom/google/android/gms/internal/measurement/יⁱ;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﹳٴ:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˈ:Lcom/google/android/gms/internal/measurement/יⁱ;

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method public static ﹳٴ(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/ʾˏ;
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ʼˎ:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/google/android/gms/internal/measurement/ˎᵎ;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ˎᵎ;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V

    invoke-static {v0, p1, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/ʾˏ;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ʼˎ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʾˏ;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/ʾˏ;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ʾˏ;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/ʾˏ;

    if-nez p0, :cond_2

    :cond_1
    move-object p0, v1

    :cond_2
    :goto_0
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˑﹳ:Z

    if-eqz p1, :cond_4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˑﹳ:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/measurement/יⁱ;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/measurement/יⁱ;-><init>(Lcom/google/android/gms/internal/measurement/ʾˏ;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﹳٴ:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ⁱˊ:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˈ:Lcom/google/android/gms/internal/measurement/יⁱ;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ˑﹳ:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p0

    return-object p0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ⁱˊ()Ljava/util/Map;
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ᵎﹶ:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ﾞᴵ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ᵎﹶ:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/google/android/gms/internal/measurement/ᐧˉ;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/ᐧˉ;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ʽ()Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ᐧˉ;->ʽ()Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    check-cast v2, Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    :try_start_8
    const-string v3, "ConfigurationContentLdr"

    const-string v4, "Unable to query ContentProvider, using default values"

    nop

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :goto_3
    :try_start_9
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/ʾˏ;->ᵎﹶ:Ljava/util/Map;

    move-object v0, v2

    goto :goto_5

    :goto_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    :cond_0
    :goto_5
    monitor-exit v1

    goto :goto_7

    :goto_6
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :cond_1
    :goto_7
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method
