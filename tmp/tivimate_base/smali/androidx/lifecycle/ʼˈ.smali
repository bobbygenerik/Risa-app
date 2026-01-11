.class public abstract Landroidx/lifecycle/ʼˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lٴﾞ/ˆʾ;

.field public static final ˈ:Lﹳˋ/ʼˎ;

.field public static final ˑﹳ:Lﹳˋ/ʼˎ;

.field public static final ⁱˊ:Lـˎ/ˈ;

.field public static final ﹳٴ:Lˋⁱ/ﾞᴵ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/ʼˈ;->ﹳٴ:Lˋⁱ/ﾞᴵ;

    new-instance v0, Lـˎ/ˈ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lـˎ/ˈ;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/ʼˈ;->ⁱˊ:Lـˎ/ˈ;

    new-instance v0, Lٴﾞ/ˆʾ;

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/ʼˈ;->ʽ:Lٴﾞ/ˆʾ;

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/ʼˈ;->ˈ:Lﹳˋ/ʼˎ;

    new-instance v0, Lﹳˋ/ʼˎ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Landroidx/lifecycle/ʼˈ;->ˑﹳ:Lﹳˋ/ʼˎ;

    return-void
.end method

.method public static final ʽ(Landroidx/lifecycle/ʽﹳ;)Landroidx/lifecycle/ʼᐧ;
    .locals 5

    .prologue
    invoke-interface {p0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p0

    iget-object v0, p0, Landroidx/lifecycle/ـˆ;->ﹳٴ:Landroidx/leanback/widget/ˉˆ;

    :goto_0
    iget-object v1, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ʼᐧ;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroidx/lifecycle/ʼᐧ;

    invoke-static {}, Lᴵי/ʾᵎ;->ˈ()Lᴵי/ﹶᐧ;

    move-result-object v2

    sget-object v3, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object v3, Lˊʽ/ᵔʾ;->ﹳٴ:Lᐧʼ/ʽ;

    iget-object v3, v3, Lᐧʼ/ʽ;->ˈٴ:Lᐧʼ/ʽ;

    invoke-static {v2, v3}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/ʼᐧ;-><init>(Landroidx/lifecycle/ـˆ;Lˈי/ᵔᵢ;)V

    iget-object v2, v0, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p0, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object p0, Lˊʽ/ᵔʾ;->ﹳٴ:Lᐧʼ/ʽ;

    iget-object p0, p0, Lᐧʼ/ʽ;->ˈٴ:Lᐧʼ/ʽ;

    new-instance v0, Landroidx/lifecycle/ˉˆ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/lifecycle/ˉˆ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 v2, 0x2

    invoke-static {v1, p0, v0, v2}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    return-object v1

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method public static final ˈ(Landroidx/lifecycle/ᴵʼ;)Landroidx/lifecycle/ˈⁱ;
    .locals 3

    .prologue
    new-instance v0, Landroidx/lifecycle/ˊˋ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/ˊˋ;-><init>(I)V

    instance-of v1, p0, Landroidx/lifecycle/ʼˎ;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ʼˎ;

    invoke-interface {v1}, Landroidx/lifecycle/ʼˎ;->ʾˋ()Lʼـ/ˈ;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lʼـ/ﹳٴ;->ⁱˊ:Lʼـ/ﹳٴ;

    :goto_0
    invoke-interface {p0}, Landroidx/lifecycle/ᴵʼ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object p0

    new-instance v2, Lˏˆ/ﹳٴ;

    invoke-direct {v2, p0, v0, v1}, Lˏˆ/ﹳٴ;-><init>(Landroidx/lifecycle/ˏᵢ;Landroidx/lifecycle/ᐧᴵ;Lʼـ/ʽ;)V

    const-class p0, Landroidx/lifecycle/ˈⁱ;

    invoke-static {p0}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object p0

    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v2, p0, v0}, Lˏˆ/ﹳٴ;->ᵢˏ(Lˊʼ/ﾞᴵ;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ˈⁱ;

    return-object p0
.end method

.method public static final ˑﹳ(Landroidx/lifecycle/ᵎᵔ;)Lˎᐧ/ﹳٴ;
    .locals 4

    .prologue
    sget-object v0, Landroidx/lifecycle/ʼˈ;->ˈ:Lﹳˋ/ʼˎ;

    monitor-enter v0

    :try_start_0
    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/ᵎᵔ;->ˑﹳ(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object v1

    check-cast v1, Lˎᐧ/ﹳٴ;

    if-nez v1, :cond_0

    sget-object v1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    sget-object v2, Lˊʽ/ᵔʾ;->ﹳٴ:Lᐧʼ/ʽ;

    iget-object v1, v2, Lᐧʼ/ʽ;->ˈٴ:Lᐧʼ/ʽ;
    :try_end_1
    .catch Lʻᵢ/ˈ; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    new-instance v2, Lˎᐧ/ﹳٴ;

    invoke-static {}, Lᴵי/ʾᵎ;->ˈ()Lᴵי/ﹶᐧ;

    move-result-object v3

    invoke-interface {v1, v3}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v1

    invoke-direct {v2, v1}, Lˎᐧ/ﹳٴ;-><init>(Lˈי/ᵔᵢ;)V

    const-string v1, "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v1, v2}, Landroidx/lifecycle/ᵎᵔ;->ʽ(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final ⁱˊ(Lᵎ/ˑﹳ;)V
    .locals 3

    .prologue
    invoke-interface {p0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ʽʽ:Landroidx/lifecycle/ᵔʾ;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lᵎ/ˑﹳ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object v0

    invoke-virtual {v0}, Lˑʼ/ᵎˊ;->ٴʼ()Lᵎ/ˈ;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/ﹳـ;

    invoke-interface {p0}, Lᵎ/ˑﹳ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ᴵʼ;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ﹳـ;-><init>(Lˑʼ/ᵎˊ;Landroidx/lifecycle/ᴵʼ;)V

    invoke-interface {p0}, Lᵎ/ˑﹳ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Lˑʼ/ᵎˊ;->ˊˋ(Ljava/lang/String;Lᵎ/ˈ;)V

    invoke-interface {p0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p0

    new-instance v1, Lᵎ/ⁱˊ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lᵎ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    :cond_2
    return-void
.end method

.method public static final ﹳٴ(Lʼـ/ʽ;)Landroidx/lifecycle/ˑٴ;
    .locals 7

    .prologue
    sget-object v0, Landroidx/lifecycle/ʼˈ;->ﹳٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {p0, v0}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᵎ/ˑﹳ;

    if-eqz v0, :cond_c

    sget-object v1, Landroidx/lifecycle/ʼˈ;->ⁱˊ:Lـˎ/ˈ;

    invoke-virtual {p0, v1}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ᴵʼ;

    if-eqz v1, :cond_b

    sget-object v2, Landroidx/lifecycle/ʼˈ;->ʽ:Lٴﾞ/ˆʾ;

    invoke-virtual {p0, v2}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/ʼˈ;->ˑﹳ:Lﹳˋ/ʼˎ;

    invoke-virtual {p0, v3}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-interface {v0}, Lᵎ/ˑﹳ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object v0

    invoke-virtual {v0}, Lˑʼ/ᵎˊ;->ٴʼ()Lᵎ/ˈ;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/ﹳـ;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/ﹳـ;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_9

    invoke-static {v1}, Landroidx/lifecycle/ʼˈ;->ˈ(Landroidx/lifecycle/ᴵʼ;)Landroidx/lifecycle/ˈⁱ;

    move-result-object v1

    iget-object v3, v1, Landroidx/lifecycle/ˈⁱ;->ⁱˊ:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/ˑٴ;

    if-nez v3, :cond_8

    invoke-virtual {v0}, Landroidx/lifecycle/ﹳـ;->ⁱˊ()V

    iget-object v3, v0, Landroidx/lifecycle/ﹳـ;->ʽ:Landroid/os/Bundle;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    new-array v6, v5, [Lʻᵢ/ˑﹳ;

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lʻᵢ/ˑﹳ;

    invoke-static {v5}, Lˉᵎ/ⁱˊ;->ﹳٴ([Lʻᵢ/ˑﹳ;)Landroid/os/Bundle;

    move-result-object v5

    :cond_3
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v4, v0, Landroidx/lifecycle/ﹳـ;->ʽ:Landroid/os/Bundle;

    :cond_4
    move-object v4, v5

    :goto_1
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_6

    new-instance v0, Landroidx/lifecycle/ˑٴ;

    invoke-direct {v0}, Landroidx/lifecycle/ˑٴ;-><init>()V

    goto :goto_4

    :cond_6
    const-class v0, Landroidx/lifecycle/ˑٴ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->size()I

    move-result v0

    new-instance v3, Lⁱˏ/ﾞᴵ;

    invoke-direct {v3, v0}, Lⁱˏ/ﾞᴵ;-><init>(I)V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lⁱˏ/ﾞᴵ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lⁱˏ/ﾞᴵ;->ⁱˊ()Lⁱˏ/ﾞᴵ;

    move-result-object v0

    new-instance v2, Landroidx/lifecycle/ˑٴ;

    invoke-direct {v2, v0}, Landroidx/lifecycle/ˑٴ;-><init>(Lⁱˏ/ﾞᴵ;)V

    move-object v0, v2

    :goto_4
    iget-object v1, v1, Landroidx/lifecycle/ˈⁱ;->ⁱˊ:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_8
    return-object v3

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
