.class public final Lʼﾞ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Landroid/content/Intent;

.field public final ʽ:Lʼﾞ/ᐧﾞ;

.field public ˆʾ:Lʼﾞ/ᵔﹳ;

.field public final ˈ:Ljava/util/LinkedHashMap;

.field public final ˑﹳ:Ljava/util/concurrent/locks/ReentrantLock;

.field public final ٴﹶ:Ljava/lang/Object;

.field public final ᵎﹶ:Lʼﾞ/ᵔᵢ;

.field public final ᵔᵢ:Lﹳʽ/ˊʻ;

.field public final ⁱˊ:[Ljava/lang/String;

.field public final ﹳٴ:Lʼﾞ/ˊʻ;

.field public final ﾞᴵ:Lʼⁱ/ᵔʾ;


# direct methods
.method public varargs constructor <init>(Lʼﾞ/ˊʻ;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    move-object/from16 v9, p4

    iput-object v9, p0, Lʼﾞ/ٴﹶ;->ⁱˊ:[Ljava/lang/String;

    new-instance v10, Lʼﾞ/ᐧﾞ;

    iget-boolean v11, p1, Lʼﾞ/ˊʻ;->ٴﹶ:Z

    new-instance v0, Lʼⁱ/ᴵˊ;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x1

    const-class v3, Lʼﾞ/ٴﹶ;

    const-string v4, "notifyInvalidatedObservers"

    const-string v5, "notifyInvalidatedObservers(Ljava/util/Set;)V"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lʼⁱ/ᴵˊ;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    move-object v4, v9

    move-object v0, v10

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lʼﾞ/ᐧﾞ;-><init>(Lʼﾞ/ˊʻ;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;ZLʼⁱ/ᴵˊ;)V

    iput-object v0, p0, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lʼﾞ/ٴﹶ;->ˈ:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lʼﾞ/ٴﹶ;->ˑﹳ:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Lʼⁱ/ᵔʾ;

    invoke-direct {v2, p0}, Lʼⁱ/ᵔʾ;-><init>(Lʼﾞ/ٴﹶ;)V

    iput-object v2, p0, Lʼﾞ/ٴﹶ;->ﾞᴵ:Lʼⁱ/ᵔʾ;

    new-instance v2, Lʼﾞ/ᵔᵢ;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lʼﾞ/ᵔᵢ;-><init>(Lʼﾞ/ٴﹶ;I)V

    iput-object v2, p0, Lʼﾞ/ٴﹶ;->ᵎﹶ:Lʼﾞ/ᵔᵢ;

    new-instance v2, Lﹳʽ/ˊʻ;

    invoke-direct {v2, p1}, Lﹳʽ/ˊʻ;-><init>(Lʼﾞ/ˊʻ;)V

    iput-object v2, p0, Lʼﾞ/ٴﹶ;->ᵔᵢ:Lﹳʽ/ˊʻ;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lʼﾞ/ٴﹶ;->ٴﹶ:Ljava/lang/Object;

    new-instance v1, Lʼﾞ/ᵔᵢ;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lʼﾞ/ᵔᵢ;-><init>(Lʼﾞ/ٴﹶ;I)V

    iput-object v1, v0, Lʼﾞ/ᐧﾞ;->ٴﹶ:Lᴵⁱ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ʽ(Lʼﾞ/ʼˎ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼﾞ/ٴﹶ;->ˑﹳ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lʼﾞ/ٴﹶ;->ˈ:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼﾞ/ـˆ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_0

    iget-object p1, p1, Lʼﾞ/ـˆ;->ⁱˊ:[I

    iget-object v0, p0, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    iget-object v0, v0, Lʼﾞ/ᐧﾞ;->ᵔᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ʼˎ;->ʼˎ([I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lʼﾞ/ˆʾ;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lʼﾞ/ˆʾ;-><init>(Lʼﾞ/ٴﹶ;Lˈי/ˈ;I)V

    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ᵎˊ(Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final ˈ(Lᴵʾ/ᵔᵢ;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼﾞ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    invoke-virtual {v0}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lʼﾞ/ˊʻ;->ᵔʾ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    invoke-virtual {v0, p1}, Lʼﾞ/ᐧﾞ;->ﾞᴵ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method

.method public final ⁱˊ([Ljava/lang/String;ZLᴵⁱ/ﾞʻ;)Lʼﾞ/ٴᵢ;
    .locals 7

    iget-object v0, p0, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    invoke-virtual {v0, p1}, Lʼﾞ/ᐧﾞ;->ᵎﹶ([Ljava/lang/String;)Lʻᵢ/ˑﹳ;

    new-instance v1, Lʼﾞ/ٴᵢ;

    iget-object v3, p0, Lʼﾞ/ٴﹶ;->ᵔᵢ:Lﹳʽ/ˊʻ;

    iget-object v0, v3, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lʼﾞ/ˊʻ;

    move-object v5, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lʼﾞ/ٴᵢ;-><init>(Lʼﾞ/ˊʻ;Lﹳʽ/ˊʻ;Z[Ljava/lang/String;Lᴵⁱ/ﾞʻ;)V

    return-object v1
.end method

.method public final ﹳٴ(Lʼﾞ/ʼˎ;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lʼﾞ/ٴﹶ;->ˈ:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lʼﾞ/ʼˎ;->ﹳٴ:[Ljava/lang/String;

    iget-object v2, p0, Lʼﾞ/ٴﹶ;->ʽ:Lʼﾞ/ᐧﾞ;

    invoke-virtual {v2, v1}, Lʼﾞ/ᐧﾞ;->ᵎﹶ([Ljava/lang/String;)Lʻᵢ/ˑﹳ;

    move-result-object v1

    iget-object v3, v1, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget-object v1, v1, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, [I

    new-instance v4, Lʼﾞ/ـˆ;

    invoke-direct {v4, p1, v1, v3}, Lʼﾞ/ـˆ;-><init>(Lʼﾞ/ʼˎ;[I[Ljava/lang/String;)V

    iget-object v3, p0, Lʼﾞ/ٴﹶ;->ˑﹳ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0, p1}, Lﹶˈ/ˏי;->ᴵˑ(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼﾞ/ـˆ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʼﾞ/ـˆ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_1

    iget-object p1, v2, Lʼﾞ/ᐧﾞ;->ᵔᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/ʼˎ;->ᵎﹶ([I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
