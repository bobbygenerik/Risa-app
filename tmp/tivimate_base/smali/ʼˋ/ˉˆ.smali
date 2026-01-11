.class public final Lʼˋ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/concurrent/locks/ReentrantLock;

.field public ˈ:I

.field public ˑﹳ:Z

.field public final ᵎﹶ:Lﹶי/ᵔᵢ;

.field public final ᵔᵢ:Lʽᴵ/יـ;

.field public final ⁱˊ:Lᴵⁱ/ﹳٴ;

.field public final ﹳٴ:I

.field public final ﾞᴵ:[Lʼˋ/ᵔᵢ;


# direct methods
.method public constructor <init>(ILᴵⁱ/ﹳٴ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lʼˋ/ˉˆ;->ﹳٴ:I

    iput-object p2, p0, Lʼˋ/ˉˆ;->ⁱˊ:Lᴵⁱ/ﹳٴ;

    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lʼˋ/ˉˆ;->ʽ:Ljava/util/concurrent/locks/ReentrantLock;

    new-array p2, p1, [Lʼˋ/ᵔᵢ;

    iput-object p2, p0, Lʼˋ/ˉˆ;->ﾞᴵ:[Lʼˋ/ᵔᵢ;

    sget p2, Lﹶי/ʼˎ;->ﹳٴ:I

    new-instance p2, Lﹶי/ᵔᵢ;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lﹶי/ᵎﹶ;-><init>(II)V

    iput-object p2, p0, Lʼˋ/ˉˆ;->ᵎﹶ:Lﹶי/ᵔᵢ;

    new-instance p2, Lʽᴵ/יـ;

    invoke-direct {p2, p1}, Lʽᴵ/יـ;-><init>(I)V

    iput-object p2, p0, Lʼˋ/ˉˆ;->ᵔᵢ:Lʽᴵ/יـ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lʼˋ/ˉˆ;->ʽ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lʼˋ/ˉˆ;->ˑﹳ:Z

    iget-object v1, p0, Lʼˋ/ˉˆ;->ﾞᴵ:[Lʼˋ/ᵔᵢ;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lʼˋ/ᵔᵢ;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final ˈ(Ljava/lang/StringBuilder;)V
    .locals 12

    .prologue
    const-string v0, ", "

    iget-object v1, p0, Lʼˋ/ˉˆ;->ᵔᵢ:Lʽᴵ/יـ;

    iget-object v2, p0, Lʼˋ/ˉˆ;->ʽ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lˈˊ/ᵔʾ;->ᵎﹶ()Lⁱˏ/ʽ;

    move-result-object v3

    invoke-virtual {v1}, Lʽᴵ/יـ;->ﾞᴵ()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    if-ltz v6, :cond_0

    invoke-virtual {v1}, Lʽᴵ/יـ;->ﾞᴵ()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v7, v1, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    iget v8, v1, Lʽᴵ/יـ;->ⁱˊ:I

    add-int/2addr v8, v6

    iget v9, v1, Lʽᴵ/יـ;->ˈ:I

    and-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v3, v7}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_1
    invoke-static {v3}, Lˈˊ/ᵔʾ;->ﹳٴ(Lⁱˏ/ʽ;)Lⁱˏ/ʽ;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capacity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lʼˋ/ˉˆ;->ﹳٴ:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permits="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lʼˋ/ˉˆ;->ᵎﹶ:Lﹶי/ᵔᵢ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queue=(size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lﹶˈ/ˑﹳ;->ﹳٴ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʼˋ/ˉˆ;->ﾞᴵ:[Lʼˋ/ᵔᵢ;

    array-length v3, v1

    move v4, v5

    :goto_1
    if-ge v5, v3, :cond_4

    aget-object v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t\t["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_2

    iget-object v8, v6, Lʼˋ/ᵔᵢ;->ʾˋ:Lﹳᴵ/ﹳٴ;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_3

    invoke-virtual {v6, p1}, Lʼˋ/ᵔᵢ;->ﹳᐧ(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final ˑﹳ(Lʼˋ/ᵔᵢ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼˋ/ˉˆ;->ʽ:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lʼˋ/ˉˆ;->ᵔᵢ:Lʽᴵ/יـ;

    invoke-virtual {v1, p1}, Lʽᴵ/יـ;->ⁱˊ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object p1, p0, Lʼˋ/ˉˆ;->ᵎﹶ:Lﹶי/ᵔᵢ;

    invoke-virtual {p1}, Lﹶי/ᵎﹶ;->ⁱˊ()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final ⁱˊ(JLʼˋ/ˈ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 7

    .prologue
    instance-of v0, p4, Lʼˋ/ˉʿ;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lʼˋ/ˉʿ;

    iget v1, v0, Lʼˋ/ˉʿ;->ٴʼ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼˋ/ˉʿ;->ٴʼ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼˋ/ˉʿ;

    invoke-direct {v0, p0, p4}, Lʼˋ/ˉʿ;-><init>(Lʼˋ/ˉˆ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p4, v0, Lʼˋ/ˉʿ;->ˉٴ:Ljava/lang/Object;

    iget v1, v0, Lʼˋ/ˉʿ;->ٴʼ:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-wide p1, v0, Lʼˋ/ˉʿ;->ٴᵢ:J

    iget-object p3, v0, Lʼˋ/ˉʿ;->ˊʻ:Lˊʼ/ˏי;

    iget-object v1, v0, Lʼˋ/ˉʿ;->ᴵᵔ:Lᴵⁱ/ﹳٴ;

    iget-object v4, v0, Lʼˋ/ˉʿ;->ˈٴ:Lʼˋ/ˉˆ;

    :try_start_0
    invoke-static {p4}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p4

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object v4, p0

    :goto_1
    new-instance p4, Lˊʼ/ˏי;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    :try_start_1
    new-instance v1, Lʼˋ/ᵔʾ;

    const/4 v5, 0x0

    invoke-direct {v1, p4, v4, v3, v5}, Lʼˋ/ᵔʾ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    iput-object v4, v0, Lʼˋ/ˉʿ;->ˈٴ:Lʼˋ/ˉˆ;

    iput-object p3, v0, Lʼˋ/ˉʿ;->ᴵᵔ:Lᴵⁱ/ﹳٴ;

    iput-object p4, v0, Lʼˋ/ˉʿ;->ˊʻ:Lˊʼ/ˏי;

    iput-wide p1, v0, Lʼˋ/ˉʿ;->ٴᵢ:J

    iput v2, v0, Lʼˋ/ˉʿ;->ٴʼ:I

    invoke-static {p1, p2, v1, v0}, Lᴵי/ʾᵎ;->ʼʼ(JLʼˋ/ᵔʾ;Lʼˋ/ˉʿ;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v1, v5, :cond_3

    return-object v5

    :cond_3
    move-object v1, p3

    move-object p3, p4

    :goto_2
    move-object p4, p3

    move-object p3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, p3

    move-object p3, p4

    move-object p4, v6

    :goto_3
    move-object v6, p4

    move-object p4, p3

    move-object p3, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    :try_start_2
    instance-of v5, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v5, :cond_4

    invoke-interface {p3}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_4
    if-nez v0, :cond_6

    iget-object p4, p4, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    if-eqz p4, :cond_5

    return-object p4

    :cond_5
    :goto_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_6
    iget-object p2, p4, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lʼˋ/ᵔᵢ;

    if-eqz p2, :cond_7

    invoke-virtual {v4, p2}, Lʼˋ/ˉˆ;->ˑﹳ(Lʼˋ/ᵔᵢ;)V

    :cond_7
    throw p1
.end method

.method public final ﹳٴ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 8

    .prologue
    instance-of v0, p1, Lʼˋ/ﾞʻ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lʼˋ/ﾞʻ;

    iget v1, v0, Lʼˋ/ﾞʻ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼˋ/ﾞʻ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼˋ/ﾞʻ;

    invoke-direct {v0, p0, p1}, Lʼˋ/ﾞʻ;-><init>(Lʼˋ/ˉˆ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v0, Lʼˋ/ﾞʻ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lʼˋ/ﾞʻ;->ٴᵢ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lʼˋ/ﾞʻ;->ˈٴ:Lʼˋ/ˉˆ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p0, v0, Lʼˋ/ﾞʻ;->ˈٴ:Lʼˋ/ˉˆ;

    iput v2, v0, Lʼˋ/ﾞʻ;->ٴᵢ:I

    iget-object p1, p0, Lʼˋ/ˉˆ;->ᵎﹶ:Lﹶי/ᵔᵢ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lﹶי/ᵎﹶ;->ʾˋ:I

    :cond_3
    sget-object v3, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v3

    if-gt v3, v1, :cond_3

    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-lez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object v0

    invoke-static {v0}, Lᴵי/ʾᵎ;->ﾞʻ(Lˈי/ˈ;)Lᴵי/ٴﹶ;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, v0}, Lﹶי/ᵎﹶ;->ﹳٴ(Lᴵי/ʽᵔ;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    sget-object v3, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v3

    if-gt v3, v1, :cond_5

    if-lez v3, :cond_6

    iget-object p1, p1, Lﹶי/ᵎﹶ;->ᴵˊ:Lʼⁱ/ˏי;

    invoke-virtual {v0, v4, p1}, Lᴵי/ٴﹶ;->ˉʿ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0}, Lﹶי/ᵎﹶ;->ﹳٴ(Lᴵי/ʽᵔ;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_5

    :cond_7
    :goto_1
    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_8

    goto :goto_2

    :cond_8
    move-object p1, v4

    :goto_2
    if-ne p1, v5, :cond_9

    move-object v4, p1

    :cond_9
    :goto_3
    if-ne v4, v5, :cond_a

    return-object v5

    :cond_a
    move-object v0, p0

    :goto_4
    :try_start_1
    iget-object p1, v0, Lʼˋ/ˉˆ;->ʽ:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, v0, Lʼˋ/ˉˆ;->ᵔᵢ:Lʽᴵ/יـ;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v3, v0, Lʼˋ/ˉˆ;->ˑﹳ:Z

    const/4 v4, 0x0

    if-nez v3, :cond_e

    iget v3, v1, Lʽᴵ/יـ;->ⁱˊ:I

    iget v5, v1, Lʽᴵ/יـ;->ʽ:I

    if-ne v3, v5, :cond_c

    iget v3, v0, Lʼˋ/ˉˆ;->ˈ:I

    iget v5, v0, Lʼˋ/ˉˆ;->ﹳٴ:I

    if-lt v3, v5, :cond_b

    goto :goto_5

    :cond_b
    new-instance v3, Lʼˋ/ᵔᵢ;

    iget-object v5, v0, Lʼˋ/ˉˆ;->ⁱˊ:Lᴵⁱ/ﹳٴ;

    invoke-interface {v5}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹳᴵ/ﹳٴ;

    invoke-direct {v3, v5}, Lʼˋ/ᵔᵢ;-><init>(Lﹳᴵ/ﹳٴ;)V

    iget-object v5, v0, Lʼˋ/ˉˆ;->ﾞᴵ:[Lʼˋ/ᵔᵢ;

    iget v6, v0, Lʼˋ/ˉˆ;->ˈ:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lʼˋ/ˉˆ;->ˈ:I

    aput-object v3, v5, v6

    invoke-virtual {v1, v3}, Lʽᴵ/יـ;->ⁱˊ(Ljava/lang/Object;)V

    :cond_c
    :goto_5
    iget v3, v1, Lʽᴵ/יـ;->ⁱˊ:I

    iget v5, v1, Lʽᴵ/יـ;->ʽ:I

    if-eq v3, v5, :cond_d

    iget-object v5, v1, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    aget-object v6, v5, v3

    aput-object v4, v5, v3

    add-int/2addr v3, v2

    iget v2, v1, Lʽᴵ/יـ;->ˈ:I

    and-int/2addr v2, v3

    iput v2, v1, Lʽᴵ/יـ;->ⁱˊ:I

    check-cast v6, Lʼˋ/ᵔᵢ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catchall_1
    move-exception v1

    goto :goto_6

    :cond_d
    :try_start_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_e
    const-string v1, "Connection pool is closed"

    const/16 v2, 0x15

    invoke-static {v2, v1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    :try_start_5
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    iget-object v0, v0, Lʼˋ/ˉˆ;->ᵎﹶ:Lﹶי/ᵔᵢ;

    invoke-virtual {v0}, Lﹶי/ᵎﹶ;->ⁱˊ()V

    throw p1

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ˈٴ()V

    throw p1
.end method
