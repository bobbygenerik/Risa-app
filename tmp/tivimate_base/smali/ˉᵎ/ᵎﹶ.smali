.class public final Lˉᵎ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ٴﹶ:Ljava/lang/Object;

.field public static final ﾞʻ:Lיـ/ˑﹳ;


# instance fields
.field public final ʼˎ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ʽ:Lˉᵎ/ʼˎ;

.field public final ˆʾ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ˈ:Lˏ/ﾞᴵ;

.field public final ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ᵎﹶ:Lˏ/ٴﹶ;

.field public final ᵔᵢ:Lʾﹳ/ⁱˊ;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞᴵ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˉᵎ/ᵎﹶ;->ٴﹶ:Ljava/lang/Object;

    new-instance v0, Lיـ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    sput-object v0, Lˉᵎ/ᵎﹶ;->ﾞʻ:Lיـ/ˑﹳ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lˉᵎ/ʼˎ;)V
    .locals 8

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lˉᵎ/ᵎﹶ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lˉᵎ/ᵎﹶ;->ﾞᴵ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lˉᵎ/ᵎﹶ;->ʼˎ:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lˉᵎ/ᵎﹶ;->ˆʾ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p2, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lˉᵎ/ᵎﹶ;->ʽ:Lˉᵎ/ʼˎ;

    sget-object p2, Lcom/google/firebase/provider/FirebaseInitProvider;->ʾˋ:Lˉᵎ/ﹳٴ;

    const-string v0, "Firebase"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "ComponentDiscovery"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-class v2, Lcom/google/firebase/components/ComponentDiscoveryService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v2, "Context has no PackageManager."

    nop

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no service info."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto :goto_0

    :cond_1
    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Application info not found."

    nop

    :goto_0
    if-nez v4, :cond_2

    const-string v2, "Could not retrieve metadata, returning empty list of registrars."

    nop

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "com.google.firebase.components.ComponentRegistrar"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "com.google.firebase.components:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lʽʼ/ⁱˊ;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lʽʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "Runtime"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lˏᐧ/ٴﹶ;->ʾˋ:Lˏᐧ/ٴﹶ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v3}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    new-instance v4, Lʽʼ/ⁱˊ;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, Lʽʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    invoke-direct {v3}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    new-instance v4, Lʽʼ/ⁱˊ;

    invoke-direct {v4, v5, v3}, Lʽʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v3, Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {p1, v3, v4}, Lˏ/ⁱˊ;->ʽ(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lˏ/ⁱˊ;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v3, Lˉᵎ/ᵎﹶ;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {p0, v3, v4}, Lˏ/ⁱˊ;->ʽ(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lˏ/ⁱˊ;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v3, Lˉᵎ/ʼˎ;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {p3, v3, v4}, Lˏ/ⁱˊ;->ʽ(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lˏ/ⁱˊ;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Lﹳˋ/ʼˎ;

    const/16 v3, 0x14

    invoke-direct {p3, v3}, Lﹳˋ/ʼˎ;-><init>(I)V

    invoke-static {p1}, Lᴵˋ/ˊʻ;->ᴵˊ(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/google/firebase/provider/FirebaseInitProvider;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_6

    const-class v3, Lˉᵎ/ﹳٴ;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {p2, v3, v4}, Lˏ/ⁱˊ;->ʽ(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lˏ/ⁱˊ;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance p2, Lˏ/ﾞᴵ;

    invoke-direct {p2, v0, v2, p3}, Lˏ/ﾞᴵ;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lﹳˋ/ʼˎ;)V

    iput-object p2, p0, Lˉᵎ/ᵎﹶ;->ˈ:Lˏ/ﾞᴵ;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance p3, Lˏ/ٴﹶ;

    new-instance v0, Lˉᵎ/ʽ;

    invoke-direct {v0, p0, v1, p1}, Lˉᵎ/ʽ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {p3, v0}, Lˏ/ٴﹶ;-><init>(Lʾﹳ/ⁱˊ;)V

    iput-object p3, p0, Lˉᵎ/ᵎﹶ;->ᵎﹶ:Lˏ/ٴﹶ;

    const-class p1, Lـˎ/ʽ;

    invoke-virtual {p2, p1}, Lˏ/ﾞᴵ;->ᵎﹶ(Ljava/lang/Class;)Lʾﹳ/ⁱˊ;

    move-result-object p1

    iput-object p1, p0, Lˉᵎ/ᵎﹶ;->ᵔᵢ:Lʾﹳ/ⁱˊ;

    new-instance p1, Lˉᵎ/ˈ;

    invoke-direct {p1, p0}, Lˉᵎ/ˈ;-><init>(Lˉᵎ/ᵎﹶ;)V

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object p2, p0, Lˉᵎ/ᵎﹶ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lﹳˊ/ʽ;->ᴵᵔ:Lﹳˊ/ʽ;

    iget-object p2, p2, Lﹳˊ/ʽ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    :cond_7
    iget-object p2, p0, Lˉᵎ/ᵎﹶ;->ʼˎ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static ˑﹳ(Landroid/content/Context;)Lˉᵎ/ᵎﹶ;
    .locals 3

    .prologue
    sget-object v0, Lˉᵎ/ᵎﹶ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lˉᵎ/ᵎﹶ;->ﾞʻ:Lיـ/ˑﹳ;

    const-string v2, "[DEFAULT]"

    invoke-virtual {v1, v2}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lˉᵎ/ᵎﹶ;->ⁱˊ()Lˉᵎ/ᵎﹶ;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lˉᵎ/ʼˎ;->ﹳٴ(Landroid/content/Context;)Lˉᵎ/ʼˎ;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    nop

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-static {p0, v1}, Lˉᵎ/ᵎﹶ;->ﾞᴵ(Landroid/content/Context;Lˉᵎ/ʼˎ;)Lˉᵎ/ᵎﹶ;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static ⁱˊ()Lˉᵎ/ᵎﹶ;
    .locals 4

    .prologue
    const-string v0, "Default FirebaseApp is not initialized in this process "

    sget-object v1, Lˉᵎ/ᵎﹶ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lˉᵎ/ᵎﹶ;->ﾞʻ:Lיـ/ˑﹳ;

    const-string v3, "[DEFAULT]"

    invoke-virtual {v2, v3}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˉᵎ/ᵎﹶ;

    if-eqz v2, :cond_0

    iget-object v0, v2, Lˉᵎ/ᵎﹶ;->ᵔᵢ:Lʾﹳ/ⁱˊ;

    invoke-interface {v0}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـˎ/ʽ;

    invoke-virtual {v0}, Lـˎ/ʽ;->ⁱˊ()V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lᵎᴵ/ʽ;->ﹳٴ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static ﾞᴵ(Landroid/content/Context;Lˉᵎ/ʼˎ;)Lˉᵎ/ᵎﹶ;
    .locals 6

    .prologue
    const-string v0, "[DEFAULT]"

    sget-object v1, Lˉᵎ/ˑﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lˉᵎ/ˑﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lˉᵎ/ˑﹳ;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1}, Lﹳˊ/ʽ;->ⁱˊ(Landroid/app/Application;)V

    sget-object v1, Lﹳˊ/ʽ;->ᴵᵔ:Lﹳˊ/ʽ;

    invoke-virtual {v1, v3}, Lﹳˊ/ʽ;->ﹳٴ(Lﹳˊ/ⁱˊ;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_1
    sget-object v1, Lˉᵎ/ᵎﹶ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lˉᵎ/ᵎﹶ;->ﾞʻ:Lיـ/ˑﹳ;

    invoke-virtual {v2, v0}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirebaseApp name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already exists!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lٴﾞ/ʻٴ;->ᵔᵢ(Ljava/lang/String;Z)V

    const-string v3, "Application context cannot be null."

    invoke-static {p0, v3}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lˉᵎ/ᵎﹶ;

    invoke-direct {v3, p0, v0, p1}, Lˉᵎ/ᵎﹶ;-><init>(Landroid/content/Context;Ljava/lang/String;Lˉᵎ/ʼˎ;)V

    invoke-virtual {v2, v0, v3}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lˉᵎ/ᵎﹶ;->ˈ()V

    return-object v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˉᵎ/ᵎﹶ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lˉᵎ/ᵎﹶ;

    invoke-virtual {p1}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object p1, p1, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lˑʼ/ᵎˊ;

    invoke-direct {v0, p0}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;)V

    const-string v1, "name"

    iget-object v2, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    iget-object v2, p0, Lˉᵎ/ᵎﹶ;->ʽ:Lˉᵎ/ʼˎ;

    invoke-virtual {v0, v2, v1}, Lˑʼ/ᵎˊ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lˑʼ/ᵎˊ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v1, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v1, p0, Lˉᵎ/ᵎﹶ;->ʽ:Lˉᵎ/ʼˎ;

    iget-object v1, v1, Lˉᵎ/ʼˎ;->ⁱˊ:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ᴵˊ(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "FirebaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v3, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ﹳٴ:Landroid/content/Context;

    sget-object v2, Lˉᵎ/ﾞᴵ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lˉᵎ/ﾞᴵ;

    invoke-direct {v3, v0}, Lˉᵎ/ﾞᴵ;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    :cond_2
    return-void

    :cond_3
    const-string v0, "FirebaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device unlocked: initializing all Firebase APIs for app "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v3, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ˈ:Lˏ/ﾞᴵ;

    const-string v2, "[DEFAULT]"

    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v3, p0, Lˉᵎ/ᵎﹶ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lˏ/ﾞᴵ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :cond_4
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, v0, Lˏ/ﾞᴵ;->ʾˋ:Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1, v2}, Lˏ/ﾞᴵ;->ﹳٴ(Ljava/util/HashMap;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    :goto_0
    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ᵔᵢ:Lʾﹳ/ⁱˊ;

    invoke-interface {v0}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـˎ/ʽ;

    invoke-virtual {v0}, Lـˎ/ʽ;->ⁱˊ()V

    return-void
.end method

.method public final ᵎﹶ()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lˉᵎ/ᵎﹶ;->ﹳٴ()V

    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ᵎﹶ:Lˏ/ٴﹶ;

    invoke-virtual {v0}, Lˏ/ٴﹶ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋˆ/ﹳٴ;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lˋˆ/ﹳٴ;->ﹳٴ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final ﹳٴ()V
    .locals 2

    iget-object v0, p0, Lˉᵎ/ᵎﹶ;->ﾞᴵ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v1, v0}, Lٴﾞ/ʻٴ;->ᵔᵢ(Ljava/lang/String;Z)V

    return-void
.end method
