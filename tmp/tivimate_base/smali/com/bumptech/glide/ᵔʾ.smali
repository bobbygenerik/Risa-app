.class public final Lcom/bumptech/glide/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lٴʽ/ʼˎ;


# static fields
.field public static final ᵎˊ:Lⁱⁱ/ﾞᴵ;


# instance fields
.field public final ʽʽ:Lٴʽ/ᵎﹶ;

.field public final ʾˋ:Lcom/bumptech/glide/ⁱˊ;

.field public final ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

.field public final ˉٴ:Lٴʽ/ⁱˊ;

.field public final ˊʻ:Lٴʽ/ˏי;

.field public ٴʼ:Lⁱⁱ/ﾞᴵ;

.field public final ٴᵢ:Landroidx/leanback/widget/ᵔʾ;

.field public final ᴵˊ:Landroid/content/Context;

.field public final ᴵᵔ:Lٴʽ/ˉʿ;

.field public final ᵎⁱ:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v0}, Lⁱⁱ/ﹳٴ;-><init>()V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lⁱⁱ/ﹳٴ;->ˈ(Ljava/lang/Class;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lⁱⁱ/ﹳٴ;->ᵔٴ:Z

    sput-object v0, Lcom/bumptech/glide/ᵔʾ;->ᵎˊ:Lⁱⁱ/ﾞᴵ;

    new-instance v0, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v0}, Lⁱⁱ/ﹳٴ;-><init>()V

    const-class v2, Lᴵﹶ/ⁱˊ;

    invoke-virtual {v0, v2}, Lⁱⁱ/ﹳٴ;->ˈ(Ljava/lang/Class;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    iput-boolean v1, v0, Lⁱⁱ/ﹳٴ;->ᵔٴ:Z

    new-instance v0, Lⁱⁱ/ﾞᴵ;

    invoke-direct {v0}, Lⁱⁱ/ﹳٴ;-><init>()V

    sget-object v1, Lʿʾ/ﾞʻ;->ʽ:Lʿʾ/ﾞʻ;

    invoke-virtual {v0, v1}, Lⁱⁱ/ﹳٴ;->ˑﹳ(Lʿʾ/ﾞʻ;)Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱⁱ/ﹳٴ;->ˉʿ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    invoke-virtual {v0}, Lⁱⁱ/ﹳٴ;->יـ()Lⁱⁱ/ﹳٴ;

    move-result-object v0

    check-cast v0, Lⁱⁱ/ﾞᴵ;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/ⁱˊ;Lٴʽ/ᵎﹶ;Lٴʽ/ˉʿ;Landroid/content/Context;)V
    .locals 6

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ˊـ;-><init>(I)V

    iget-object v1, p1, Lcom/bumptech/glide/ⁱˊ;->ٴᵢ:Lﹳˋ/ʼˎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lٴʽ/ˏי;

    invoke-direct {v2}, Lٴʽ/ˏי;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    new-instance v2, Landroidx/leanback/widget/ᵔʾ;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/bumptech/glide/ᵔʾ;->ٴᵢ:Landroidx/leanback/widget/ᵔʾ;

    iput-object p1, p0, Lcom/bumptech/glide/ᵔʾ;->ʾˋ:Lcom/bumptech/glide/ⁱˊ;

    iput-object p2, p0, Lcom/bumptech/glide/ᵔʾ;->ʽʽ:Lٴʽ/ᵎﹶ;

    iput-object p3, p0, Lcom/bumptech/glide/ᵔʾ;->ᴵᵔ:Lٴʽ/ˉʿ;

    iput-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iput-object p4, p0, Lcom/bumptech/glide/ᵔʾ;->ᴵˊ:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Lcom/bumptech/glide/ˉʿ;

    invoke-direct {p4, p0, v0}, Lcom/bumptech/glide/ˉʿ;-><init>(Lcom/bumptech/glide/ᵔʾ;Lcom/google/android/gms/internal/measurement/ˊـ;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ConnectivityMonitor"

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v1}, Lʼˉ/ʽ;->ⁱˊ(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    const-string v3, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v3, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    nop

    :cond_2
    if-eqz v1, :cond_3

    new-instance v0, Lٴʽ/ʽ;

    invoke-direct {v0, p3, p4}, Lٴʽ/ʽ;-><init>(Landroid/content/Context;Lcom/bumptech/glide/ˉʿ;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lٴʽ/ٴﹶ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˉٴ:Lٴʽ/ⁱˊ;

    iget-object p3, p1, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    monitor-enter p3

    :try_start_0
    iget-object p4, p1, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    iget-object p4, p1, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p3, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p3, p4, :cond_4

    move v4, v5

    :cond_4
    if-nez v4, :cond_5

    invoke-static {}, Lʿٴ/ᵔʾ;->ﾞᴵ()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    invoke-interface {p2, p0}, Lٴʽ/ᵎﹶ;->ˑﹳ(Lٴʽ/ʼˎ;)V

    :goto_3
    invoke-interface {p2, v0}, Lٴʽ/ᵎﹶ;->ˑﹳ(Lٴʽ/ʼˎ;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lcom/bumptech/glide/ⁱˊ;->ˈٴ:Lcom/bumptech/glide/ˑﹳ;

    iget-object p3, p3, Lcom/bumptech/glide/ˑﹳ;->ˑﹳ:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/ᵔʾ;->ᵎⁱ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p1, p1, Lcom/bumptech/glide/ⁱˊ;->ˈٴ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {p1}, Lcom/bumptech/glide/ˑﹳ;->ﹳٴ()Lⁱⁱ/ﾞᴵ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/ᵔʾ;->ʼᐧ(Lⁱⁱ/ﾞᴵ;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register already registered manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_4
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/ᵔʾ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/ᵔʾ;->ᴵᵔ:Lٴʽ/ˉʿ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ʼᐧ(Lⁱⁱ/ﾞᴵ;)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lⁱⁱ/ﹳٴ;->ⁱˊ()Lⁱⁱ/ﹳٴ;

    move-result-object p1

    check-cast p1, Lⁱⁱ/ﾞᴵ;

    iget-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ᵔٴ:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ˈʿ:Z

    iput-boolean v0, p1, Lⁱⁱ/ﹳٴ;->ᵔٴ:Z

    iput-object p1, p0, Lcom/bumptech/glide/ᵔʾ;->ٴʼ:Lⁱⁱ/ﾞᴵ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ʽ()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    invoke-virtual {v0}, Lٴʽ/ˏי;->ʽ()V

    invoke-virtual {p0}, Lcom/bumptech/glide/ᵔʾ;->ᵔʾ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ˆʾ()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/ᵔʾ;->ˉˆ()V

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    invoke-virtual {v0}, Lٴʽ/ˏי;->ˆʾ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ˉʿ()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    iget-object v0, v0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lʾˎ/ˑﹳ;

    invoke-virtual {p0, v3}, Lcom/bumptech/glide/ᵔʾ;->ﾞʻ(Lʾˎ/ˑﹳ;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    iget-object v0, v0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ˉˆ()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-static {v2}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_0
    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lⁱⁱ/ʽ;

    invoke-interface {v4}, Lⁱⁱ/ʽ;->ᵔᵢ()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Lⁱⁱ/ʽ;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Lⁱⁱ/ʽ;->ﾞᴵ()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ٴﹶ()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    invoke-virtual {v0}, Lٴʽ/ˏי;->ٴﹶ()V

    invoke-virtual {p0}, Lcom/bumptech/glide/ᵔʾ;->ˉʿ()V

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lⁱⁱ/ʽ;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/ˊـ;->ﹳٴ(Lⁱⁱ/ʽ;)Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ʽʽ:Lٴʽ/ᵎﹶ;

    invoke-interface {v0, p0}, Lٴʽ/ᵎﹶ;->ʽ(Lٴʽ/ʼˎ;)V

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ʽʽ:Lٴʽ/ᵎﹶ;

    iget-object v1, p0, Lcom/bumptech/glide/ᵔʾ;->ˉٴ:Lٴʽ/ⁱˊ;

    invoke-interface {v0, v1}, Lٴʽ/ᵎﹶ;->ʽ(Lٴʽ/ʼˎ;)V

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ٴᵢ:Landroidx/leanback/widget/ᵔʾ;

    invoke-static {}, Lʿٴ/ᵔʾ;->ﾞᴵ()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ʾˋ:Lcom/bumptech/glide/ⁱˊ;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/ⁱˊ;->ˈ(Lcom/bumptech/glide/ᵔʾ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ᵔʾ()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lⁱⁱ/ʽ;

    invoke-interface {v4}, Lⁱⁱ/ʽ;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lⁱⁱ/ʽ;->ˈ()V

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized ᵔﹳ(Lʾˎ/ˑﹳ;)Z
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lʾˎ/ˑﹳ;->ᵔᵢ()Lⁱⁱ/ʽ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/ᵔʾ;->ˈٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ﹳٴ(Lⁱⁱ/ʽ;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ˊʻ:Lٴʽ/ˏי;

    iget-object v0, v0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lʾˎ/ˑﹳ;->ﹳٴ(Lⁱⁱ/ʽ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ﾞʻ(Lʾˎ/ˑﹳ;)V
    .locals 6

    .prologue
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/ᵔʾ;->ᵔﹳ(Lʾˎ/ˑﹳ;)Z

    move-result v0

    invoke-interface {p1}, Lʾˎ/ˑﹳ;->ᵔᵢ()Lⁱⁱ/ʽ;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/ᵔʾ;->ʾˋ:Lcom/bumptech/glide/ⁱˊ;

    iget-object v2, v0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/ⁱˊ;->ˉٴ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/bumptech/glide/ᵔʾ;

    invoke-virtual {v5, p1}, Lcom/bumptech/glide/ᵔʾ;->ᵔﹳ(Lʾˎ/ˑﹳ;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lʾˎ/ˑﹳ;->ﹳٴ(Lⁱⁱ/ʽ;)V

    invoke-interface {v1}, Lⁱⁱ/ʽ;->clear()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method
