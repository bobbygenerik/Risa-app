.class public final Lᵎˈ/ٴᵢ;
.super Lʿᵔ/ﹳٴ;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵢˏ;
.implements Lᵎˈ/ᵎﹶ;
.implements Lʿᵔ/ٴﹶ;


# static fields
.field public static final synthetic ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public ˈٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lᵎˈ/ٴᵢ;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lᵎˈ/ٴᵢ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎˈ/ٴᵢ;->_state$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v0, Lᵎˈ/ٴᵢ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lᵎˈ/ٴᵢ;->ˈٴ:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_b

    add-int/2addr p1, v1

    iput p1, p0, Lᵎˈ/ٴᵢ;->ˈٴ:I

    iget-object p2, p0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [Lᵎˈ/ˉٴ;

    if-eqz p2, :cond_9

    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_9

    aget-object v4, p2, v3

    if-eqz v4, :cond_8

    iget-object v4, v4, Lᵎˈ/ˉٴ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v6, Lᵎˈ/ˈٴ;->ʽ:Lʻᴵ/ﹳٴ;

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v7, Lᵎˈ/ˈٴ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    if-ne v5, v7, :cond_6

    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast v5, Lᴵי/ٴﹶ;

    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v5, v4}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_6

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lᵎˈ/ٴᵢ;->ˈٴ:I

    if-ne p2, p1, :cond_a

    add-int/2addr p1, v1

    iput p1, p0, Lᵎˈ/ٴᵢ;->ˈٴ:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_a
    :try_start_4
    iget-object p1, p0, Lʿᵔ/ﹳٴ;->ʾˋ:[Lʿᵔ/ʽ;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_0

    :goto_4
    monitor-exit p0

    throw p1

    :cond_b
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lᵎˈ/ٴᵢ;->ˈٴ:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final ʽ(Lˈי/ᵔᵢ;II)Lᵎˈ/ᵎﹶ;
    .locals 7

    .prologue
    const/4 v0, 0x2

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    :goto_0
    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, -0x3

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    :goto_1
    return-object p0

    :cond_3
    new-instance v1, Lʿᵔ/ˈ;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lʿᵔ/ˈ;-><init>(Ljava/lang/Object;Lˈי/ᵔᵢ;III)V

    return-object v1
.end method

.method public final ˑﹳ()Lʿᵔ/ʽ;
    .locals 1

    new-instance v0, Lᵎˈ/ˉٴ;

    invoke-direct {v0}, Lᵎˈ/ˉٴ;-><init>()V

    return-object v0
.end method

.method public final ᵔᵢ()Ljava/lang/Object;
    .locals 2

    .prologue
    sget-object v0, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    sget-object v1, Lᵎˈ/ٴᵢ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 17

    .prologue
    move-object/from16 v0, p2

    instance-of v1, v0, Lᵎˈ/ˊʻ;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lᵎˈ/ˊʻ;

    iget v2, v1, Lᵎˈ/ˊʻ;->ᵎˊ:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lᵎˈ/ˊʻ;->ᵎˊ:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lᵎˈ/ˊʻ;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lᵎˈ/ˊʻ;-><init>(Lᵎˈ/ٴᵢ;Lˈי/ˈ;)V

    :goto_0
    iget-object v0, v1, Lᵎˈ/ˊʻ;->ᵎⁱ:Ljava/lang/Object;

    iget v3, v1, Lᵎˈ/ˊʻ;->ᵎˊ:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    sget-object v7, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Lᵎˈ/ˊʻ;->ˉٴ:Ljava/lang/Object;

    iget-object v9, v1, Lᵎˈ/ˊʻ;->ٴᵢ:Lᴵי/ᴵˑ;

    iget-object v10, v1, Lᵎˈ/ˊʻ;->ˊʻ:Lᵎˈ/ˉٴ;

    iget-object v11, v1, Lᵎˈ/ˊʻ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iget-object v12, v1, Lᵎˈ/ˊʻ;->ˈٴ:Lᵎˈ/ٴᵢ;

    :try_start_0
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v1, Lᵎˈ/ˊʻ;->ˉٴ:Ljava/lang/Object;

    iget-object v9, v1, Lᵎˈ/ˊʻ;->ٴᵢ:Lᴵי/ᴵˑ;

    iget-object v10, v1, Lᵎˈ/ˊʻ;->ˊʻ:Lᵎˈ/ˉٴ;

    iget-object v11, v1, Lᵎˈ/ˊʻ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iget-object v12, v1, Lᵎˈ/ˊʻ;->ˈٴ:Lᵎˈ/ٴᵢ;

    :try_start_1
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_3
    iget-object v10, v1, Lᵎˈ/ˊʻ;->ˊʻ:Lᵎˈ/ˉٴ;

    iget-object v3, v1, Lᵎˈ/ˊʻ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iget-object v12, v1, Lᵎˈ/ˊʻ;->ˈٴ:Lᵎˈ/ٴᵢ;

    :try_start_2
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lʿᵔ/ﹳٴ;->ˈ()Lʿᵔ/ʽ;

    move-result-object v0

    check-cast v0, Lᵎˈ/ˉٴ;

    move-object/from16 v3, p1

    move-object v10, v0

    move-object v12, v2

    :goto_1
    :try_start_3
    iget-object v0, v1, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    sget-object v9, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v0, v9}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵי/ᴵˑ;

    move-object v9, v0

    move-object v11, v3

    const/4 v0, 0x0

    :cond_5
    :goto_2
    sget-object v3, Lᵎˈ/ٴᵢ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v12}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v9, :cond_7

    invoke-interface {v9}, Lᴵי/ᴵˑ;->ʽ()Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v9}, Lᴵי/ᴵˑ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    :cond_8
    sget-object v0, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    if-ne v3, v0, :cond_9

    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    move-object v0, v3

    :goto_4
    iput-object v12, v1, Lᵎˈ/ˊʻ;->ˈٴ:Lᵎˈ/ٴᵢ;

    iput-object v11, v1, Lᵎˈ/ˊʻ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iput-object v10, v1, Lᵎˈ/ˊʻ;->ˊʻ:Lᵎˈ/ˉٴ;

    iput-object v9, v1, Lᵎˈ/ˊʻ;->ٴᵢ:Lᴵי/ᴵˑ;

    iput-object v3, v1, Lᵎˈ/ˊʻ;->ˉٴ:Ljava/lang/Object;

    iput v6, v1, Lᵎˈ/ˊʻ;->ᵎˊ:I

    invoke-interface {v11, v0, v1}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_a

    goto :goto_7

    :cond_a
    :goto_5
    move-object v0, v3

    :cond_b
    iget-object v3, v10, Lᵎˈ/ˉٴ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v13, Lᵎˈ/ˈٴ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v14, Lᵎˈ/ˈٴ;->ʽ:Lʻᴵ/ﹳٴ;

    if-ne v3, v14, :cond_c

    goto :goto_2

    :cond_c
    iput-object v12, v1, Lᵎˈ/ˊʻ;->ˈٴ:Lᵎˈ/ٴᵢ;

    iput-object v11, v1, Lᵎˈ/ˊʻ;->ᴵᵔ:Lᵎˈ/ᵔᵢ;

    iput-object v10, v1, Lᵎˈ/ˊʻ;->ˊʻ:Lᵎˈ/ˉٴ;

    iput-object v9, v1, Lᵎˈ/ˊʻ;->ٴᵢ:Lᴵי/ᴵˑ;

    iput-object v0, v1, Lᵎˈ/ˊʻ;->ˉٴ:Ljava/lang/Object;

    iput v5, v1, Lᵎˈ/ˊʻ;->ᵎˊ:I

    sget-object v3, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    new-instance v14, Lᴵי/ٴﹶ;

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object v15

    invoke-direct {v14, v8, v15}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v14}, Lᴵי/ٴﹶ;->ʻٴ()V

    iget-object v15, v10, Lᵎˈ/ˉٴ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_d
    invoke-virtual {v15, v13, v14}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v13, :cond_d

    invoke-virtual {v14, v3}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v14}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v7, :cond_f

    move-object v3, v4

    :cond_f
    if-ne v3, v7, :cond_5

    :goto_7
    return-object v7

    :goto_8
    invoke-virtual {v12, v10}, Lʿᵔ/ﹳٴ;->ᵎﹶ(Lʿᵔ/ʽ;)V

    throw v0
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 0

    .prologue
    if-nez p1, :cond_0

    sget-object p1, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lᵎˈ/ٴᵢ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method

.method public final ﾞᴵ()[Lʿᵔ/ʽ;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lᵎˈ/ˉٴ;

    return-object v0
.end method
