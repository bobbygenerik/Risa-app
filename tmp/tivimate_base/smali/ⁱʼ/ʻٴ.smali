.class public final Lⁱʼ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Lⁱʼ/ʽ;

.field public static final ﾞᴵ:Lⁱʼ/ʼʼ;


# instance fields
.field public final ʽ:Ljava/util/HashSet;

.field public final ˈ:Lᵢ/ﹳٴ;

.field public final ⁱˊ:Lⁱʼ/ʽ;

.field public final ﹳٴ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lⁱʼ/ʽ;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lⁱʼ/ʽ;-><init>(I)V

    sput-object v0, Lⁱʼ/ʻٴ;->ˑﹳ:Lⁱʼ/ʽ;

    new-instance v0, Lⁱʼ/ʼʼ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lⁱʼ/ʼʼ;-><init>(I)V

    sput-object v0, Lⁱʼ/ʻٴ;->ﾞᴵ:Lⁱʼ/ʼʼ;

    return-void
.end method

.method public constructor <init>(Lᵢ/ﹳٴ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lⁱʼ/ʻٴ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    iput-object p1, p0, Lⁱʼ/ʻٴ;->ˈ:Lᵢ/ﹳٴ;

    sget-object p1, Lⁱʼ/ʻٴ;->ˑﹳ:Lⁱʼ/ʽ;

    iput-object p1, p0, Lⁱʼ/ʻٴ;->ⁱˊ:Lⁱʼ/ʽ;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ʽ(Ljava/lang/Class;Ljava/lang/Class;)Lⁱʼ/ʼᐧ;
    .locals 9

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lⁱʼ/ʻٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lⁱʼ/ʽﹳ;

    iget-object v8, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v8, v7, Lⁱʼ/ʽﹳ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v8, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v7, Lⁱʼ/ʽﹳ;->ⁱˊ:Ljava/lang/Class;

    invoke-virtual {v8, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-eqz v6, :cond_0

    iget-object v6, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v7, Lⁱʼ/ʽﹳ;->ʽ:Lⁱʼ/ᵔﹳ;

    invoke-interface {v6, p0}, Lⁱʼ/ᵔﹳ;->ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v6, :cond_4

    iget-object p1, p0, Lⁱʼ/ʻٴ;->ⁱˊ:Lⁱʼ/ʽ;

    iget-object p2, p0, Lⁱʼ/ʻٴ;->ˈ:Lᵢ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lⁱʼ/ⁱˊ;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p2}, Lⁱʼ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lⁱʼ/ʼᐧ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    if-eqz v4, :cond_6

    :try_start_2
    sget-object p1, Lⁱʼ/ʻٴ;->ﾞᴵ:Lⁱʼ/ʼʼ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_3
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find any ModelLoaders for model: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and data: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    iget-object p2, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final declared-synchronized ˈ(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lⁱʼ/ʻٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lⁱʼ/ʽﹳ;

    iget-object v5, v4, Lⁱʼ/ʽﹳ;->ⁱˊ:Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lⁱʼ/ʽﹳ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, v4, Lⁱʼ/ʽﹳ;->ⁱˊ:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ˑﹳ(Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V
    .locals 2

    .prologue
    const-class v0, Ljava/io/InputStream;

    monitor-enter p0

    :try_start_0
    new-instance v1, Lⁱʼ/ʽﹳ;

    invoke-direct {v1, p1, v0, p2}, Lⁱʼ/ʽﹳ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V

    iget-object p1, p0, Lⁱʼ/ʻٴ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public final declared-synchronized ᵎﹶ(Lᵎʼ/ⁱˊ;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    const-class v0, Lⁱʼ/ᵎﹶ;

    const-class v1, Ljava/io/InputStream;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lⁱʼ/ʻٴ;->ﾞᴵ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1}, Lⁱʼ/ʻٴ;->ﹳٴ(Ljava/lang/Class;Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ⁱˊ(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lⁱʼ/ʻٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lⁱʼ/ʽﹳ;

    iget-object v5, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lⁱʼ/ʽﹳ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lⁱʼ/ʽﹳ;->ʽ:Lⁱʼ/ᵔﹳ;

    invoke-interface {v5, p0}, Lⁱʼ/ᵔﹳ;->ﹳٴ(Lⁱʼ/ʻٴ;)Lⁱʼ/ʼᐧ;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lⁱʼ/ʻٴ;->ʽ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public final declared-synchronized ﹳٴ(Ljava/lang/Class;Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lⁱʼ/ʽﹳ;

    invoke-direct {v0, p1, p2, p3}, Lⁱʼ/ʽﹳ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lⁱʼ/ᵔﹳ;)V

    iget-object p1, p0, Lⁱʼ/ʻٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public final declared-synchronized ﾞᴵ()Ljava/util/ArrayList;
    .locals 6

    .prologue
    const-class v0, Lⁱʼ/ᵎﹶ;

    const-class v1, Ljava/io/InputStream;

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lⁱʼ/ʻٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lⁱʼ/ʽﹳ;

    iget-object v5, v4, Lⁱʼ/ʽﹳ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lⁱʼ/ʽﹳ;->ⁱˊ:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-object v4, v4, Lⁱʼ/ʽﹳ;->ʽ:Lⁱʼ/ᵔﹳ;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    monitor-exit p0

    return-object v2

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
