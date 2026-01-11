.class public final Lʿʾ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lʼᵔ/ᵔᵢ;

.field public ʼᐧ:Lʿʾ/ﾞʻ;

.field public ʽ:Lcom/bumptech/glide/ˑﹳ;

.field public ˆʾ:Ljava/util/Map;

.field public ˈ:Ljava/lang/Object;

.field public ˉʿ:Z

.field public ˉˆ:Lcom/bumptech/glide/ᵎﹶ;

.field public ˑﹳ:I

.field public ٴﹶ:Ljava/lang/Class;

.field public ᵎﹶ:Ljava/lang/Class;

.field public ᵔʾ:Lʼᵔ/ˑﹳ;

.field public ᵔᵢ:Lᴵˈ/ᵔᵢ;

.field public ᵔﹳ:Z

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Ljava/util/ArrayList;

.field public ﹳᐧ:Z

.field public ﾞʻ:Z

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʿʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lʿʾ/ʼˎ;->ⁱˊ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/Class;)Lʿʾ/ʾᵎ;
    .locals 8

    .prologue
    iget-object v0, p0, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v0}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v0

    iget-object v3, p0, Lʿʾ/ʼˎ;->ᵎﹶ:Ljava/lang/Class;

    iget-object v4, p0, Lʿʾ/ʼˎ;->ٴﹶ:Ljava/lang/Class;

    iget-object v1, v0, Lcom/bumptech/glide/ᵔᵢ;->ʼˎ:Lʾ/ⁱˊ;

    iget-object v2, v1, Lʾ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʿٴ/ﾞʻ;

    if-nez v2, :cond_0

    new-instance v2, Lʿٴ/ﾞʻ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :cond_0
    iput-object p1, v2, Lʿٴ/ﾞʻ;->ﹳٴ:Ljava/lang/Class;

    iput-object v3, v2, Lʿٴ/ﾞʻ;->ⁱˊ:Ljava/lang/Class;

    iput-object v4, v2, Lʿٴ/ﾞʻ;->ʽ:Ljava/lang/Class;

    iget-object v6, v1, Lʾ/ⁱˊ;->ﹳٴ:Lיـ/ˑﹳ;

    monitor-enter v6

    :try_start_0
    iget-object v7, v1, Lʾ/ⁱˊ;->ﹳٴ:Lיـ/ˑﹳ;

    invoke-virtual {v7, v2}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʿʾ/ʾᵎ;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v1, Lʾ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/bumptech/glide/ᵔᵢ;->ʼˎ:Lʾ/ⁱˊ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lʾ/ⁱˊ;->ʽ:Lʿʾ/ʾᵎ;

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v5

    :cond_1
    if-nez v7, :cond_3

    move-object v1, v5

    invoke-virtual {v0, p1, v3, v4}, Lcom/bumptech/glide/ᵔᵢ;->ˑﹳ(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lʿʾ/ʾᵎ;

    iget-object v6, v0, Lcom/bumptech/glide/ᵔᵢ;->ˆʾ:Lᵢ/ﹳٴ;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lʿʾ/ʾᵎ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lˑٴ/ʽ;)V

    goto :goto_0

    :goto_1
    iget-object p1, v0, Lcom/bumptech/glide/ᵔᵢ;->ʼˎ:Lʾ/ⁱˊ;

    invoke-virtual {p1, v2, v3, v4, v5}, Lʾ/ⁱˊ;->ﹳٴ(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lʿʾ/ʾᵎ;)V

    return-object v5

    :cond_3
    return-object v7

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˈ(Ljava/lang/Object;)Lʼᵔ/ⁱˊ;
    .locals 7

    .prologue
    iget-object v0, p0, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v0}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/ᵔᵢ;->ⁱˊ:Lʼﹳ/ᵎﹶ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lʾ/ﹳٴ;

    iget-object v6, v5, Lʾ/ﹳٴ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v1, v5, Lʾ/ﹳٴ;->ⁱˊ:Lʼᵔ/ⁱˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "Failed to find source encoder for data class: "

    invoke-static {p1, v1}, Landroid/support/v4/media/session/ﹳٴ;->ﾞʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ˑﹳ(Ljava/lang/Class;)Lʼᵔ/ﾞʻ;
    .locals 4

    .prologue
    iget-object v0, p0, Lʿʾ/ʼˎ;->ˆʾ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼᵔ/ﾞʻ;

    if-nez v0, :cond_1

    iget-object v1, p0, Lʿʾ/ʼˎ;->ˆʾ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼᵔ/ﾞʻ;

    :cond_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lʿʾ/ʼˎ;->ˆʾ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lʿʾ/ʼˎ;->ᵔﹳ:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing transformation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    sget-object p1, Lⁱˆ/ʽ;->ⁱˊ:Lⁱˆ/ʽ;

    return-object p1

    :cond_4
    return-object v0
.end method

.method public final ⁱˊ()Ljava/util/ArrayList;
    .locals 9

    .prologue
    iget-boolean v0, p0, Lʿʾ/ʼˎ;->ﾞʻ:Z

    iget-object v1, p0, Lʿʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʾ/ʼˎ;->ﾞʻ:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v0}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v0

    iget-object v2, p0, Lʿʾ/ʼˎ;->ˈ:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/ᵔᵢ;->ᵎﹶ(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lⁱʼ/ʼᐧ;

    iget-object v5, p0, Lʿʾ/ʼˎ;->ˈ:Ljava/lang/Object;

    iget v6, p0, Lʿʾ/ʼˎ;->ˑﹳ:I

    iget v7, p0, Lʿʾ/ʼˎ;->ﾞᴵ:I

    iget-object v8, p0, Lʿʾ/ʼˎ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    invoke-interface {v4, v5, v6, v7, v8}, Lⁱʼ/ʼᐧ;->ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final ﹳٴ()Ljava/util/ArrayList;
    .locals 8

    .prologue
    iget-boolean v0, p0, Lʿʾ/ʼˎ;->ˉʿ:Z

    iget-object v1, p0, Lʿʾ/ʼˎ;->ⁱˊ:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lʿʾ/ʼˎ;->ˉʿ:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lʿʾ/ʼˎ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lⁱʼ/ˉˆ;

    iget-object v6, v5, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    iget-object v7, v5, Lⁱʼ/ˉˆ;->ⁱˊ:Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v5, v5, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v5, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʼᵔ/ˑﹳ;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method
