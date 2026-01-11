.class public abstract Lˋˋ/ˈʿ;
.super Lˋˋ/ᴵˑ;
.source "SourceFile"


# instance fields
.field public final ˈ:Lˋˋ/ᵎﹶ;


# direct methods
.method public constructor <init>(Lˋˋ/ⁱˊ;)V
    .locals 7

    .prologue
    invoke-direct {p0}, Lˋˋ/ᴵˑ;-><init>()V

    new-instance v0, Lˋˋ/ᵔٴ;

    invoke-direct {v0, p0}, Lˋˋ/ᵔٴ;-><init>(Lˋˋ/ˈʿ;)V

    new-instance v1, Lˋˋ/ᵎﹶ;

    new-instance v2, Lˉˆ/ʿ;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    sget-object v3, Lˋˋ/ⁱˊ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lˋˋ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Lˋˋ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lˋˋ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lﹳʽ/ˊʻ;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-direct {v4, v3, p1, v5, v6}, Lﹳʽ/ˊʻ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-direct {v1, v2, v4}, Lˋˋ/ᵎﹶ;-><init>(Lˉˆ/ʿ;Lﹳʽ/ˊʻ;)V

    iput-object v1, p0, Lˋˋ/ˈʿ;->ˈ:Lˋˋ/ᵎﹶ;

    iget-object p1, v1, Lˋˋ/ᵎﹶ;->ˈ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final ˉˆ(Ljava/util/List;)V
    .locals 7

    .prologue
    iget-object v1, p0, Lˋˋ/ˈʿ;->ˈ:Lˋˋ/ᵎﹶ;

    iget-object v0, v1, Lˋˋ/ᵎﹶ;->ﹳٴ:Lˉˆ/ʿ;

    iget v2, v1, Lˋˋ/ᵎﹶ;->ᵎﹶ:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v1, Lˋˋ/ᵎﹶ;->ᵎﹶ:I

    iget-object v2, v1, Lˋˋ/ᵎﹶ;->ˑﹳ:Ljava/util/List;

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-nez p1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    iput-object v2, v1, Lˋˋ/ᵎﹶ;->ˑﹳ:Ljava/util/List;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, v1, Lˋˋ/ᵎﹶ;->ﾞᴵ:Ljava/util/List;

    invoke-virtual {v0, v3, p1}, Lˉˆ/ʿ;->ʼˎ(II)V

    invoke-virtual {v1}, Lˋˋ/ᵎﹶ;->ﹳٴ()V

    return-void

    :cond_1
    if-nez v2, :cond_2

    iput-object p1, v1, Lˋˋ/ᵎﹶ;->ˑﹳ:Ljava/util/List;

    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lˋˋ/ᵎﹶ;->ﾞᴵ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Lˉˆ/ʿ;->ᵢˏ(II)V

    invoke-virtual {v1}, Lˋˋ/ᵎﹶ;->ﹳٴ()V

    return-void

    :cond_2
    iget-object v0, v1, Lˋˋ/ᵎﹶ;->ⁱˊ:Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v0, Lˋˋ/ˑﹳ;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lˋˋ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ᵔʾ(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lˋˋ/ˈʿ;->ˈ:Lˋˋ/ᵎﹶ;

    iget-object v0, v0, Lˋˋ/ᵎﹶ;->ﾞᴵ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ()I
    .locals 1

    iget-object v0, p0, Lˋˋ/ˈʿ;->ˈ:Lˋˋ/ᵎﹶ;

    iget-object v0, v0, Lˋˋ/ᵎﹶ;->ﾞᴵ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
