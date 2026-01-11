.class public final Lʼˋ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼˋ/ⁱˊ;


# instance fields
.field public final ʽʽ:Ljava/lang/ThreadLocal;

.field public final ʾˋ:Lʼˋ/ˉˆ;

.field public final ˈٴ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ᴵˊ:Lʼˋ/ˉˆ;

.field public final ᴵᵔ:J


# direct methods
.method public constructor <init>(Lﹶﾞ/ⁱי;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lʼˋ/ᵎﹶ;->ʽʽ:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lʼˋ/ᵎﹶ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v0, Lᐧˊ/ﹳٴ;->ˈٴ:I

    const/16 v0, 0x1e

    sget-object v1, Lᐧˊ/ʽ;->ˈٴ:Lᐧˊ/ʽ;

    invoke-static {v0, v1}, Lﹳٴ/ﹳٴ;->ﹳـ(ILᐧˊ/ʽ;)J

    move-result-wide v0

    iput-wide v0, p0, Lʼˋ/ᵎﹶ;->ᴵᵔ:J

    new-instance v0, Lʼˋ/ˉˆ;

    new-instance v1, Landroidx/lifecycle/ـˏ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {v0, p1, v1}, Lʼˋ/ˉˆ;-><init>(ILᴵⁱ/ﹳٴ;)V

    iput-object v0, p0, Lʼˋ/ᵎﹶ;->ʾˋ:Lʼˋ/ˉˆ;

    iput-object v0, p0, Lʼˋ/ᵎﹶ;->ᴵˊ:Lʼˋ/ˉˆ;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ⁱי;Ljava/lang/String;I)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lʼˋ/ᵎﹶ;->ʽʽ:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lʼˋ/ᵎﹶ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v0, Lᐧˊ/ﹳٴ;->ˈٴ:I

    const/16 v0, 0x1e

    sget-object v2, Lᐧˊ/ʽ;->ˈٴ:Lᐧˊ/ʽ;

    invoke-static {v0, v2}, Lﹳٴ/ﹳٴ;->ﹳـ(ILᐧˊ/ʽ;)J

    move-result-wide v2

    iput-wide v2, p0, Lʼˋ/ᵎﹶ;->ᴵᵔ:J

    if-lez p3, :cond_0

    new-instance v0, Lʼˋ/ˉˆ;

    new-instance v2, Lʼˋ/ʽ;

    invoke-direct {v2, p1, p2, v1}, Lʼˋ/ʽ;-><init>(Lﹶﾞ/ⁱי;Ljava/lang/String;I)V

    invoke-direct {v0, p3, v2}, Lʼˋ/ˉˆ;-><init>(ILᴵⁱ/ﹳٴ;)V

    iput-object v0, p0, Lʼˋ/ᵎﹶ;->ʾˋ:Lʼˋ/ˉˆ;

    new-instance p3, Lʼˋ/ˉˆ;

    new-instance v0, Lʼˋ/ʽ;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lʼˋ/ʽ;-><init>(Lﹶﾞ/ⁱי;Ljava/lang/String;I)V

    invoke-direct {p3, v1, v0}, Lʼˋ/ˉˆ;-><init>(ILᴵⁱ/ﹳٴ;)V

    iput-object p3, p0, Lʼˋ/ᵎﹶ;->ᴵˊ:Lʼˋ/ˉˆ;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum number of readers must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lʼˋ/ᵎﹶ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʼˋ/ᵎﹶ;->ʾˋ:Lʼˋ/ˉˆ;

    invoke-virtual {v0}, Lʼˋ/ˉˆ;->ʽ()V

    iget-object v0, p0, Lʼˋ/ᵎﹶ;->ᴵˊ:Lʼˋ/ˉˆ;

    invoke-virtual {v0}, Lʼˋ/ˉˆ;->ʽ()V

    :cond_0
    return-void
.end method

.method public final ʼʼ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lʼˋ/ˑﹳ;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lʼˋ/ˑﹳ;

    iget v5, v4, Lʼˋ/ˑﹳ;->ˆﾞ:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lʼˋ/ˑﹳ;->ˆﾞ:I

    goto :goto_0

    :cond_0
    new-instance v4, Lʼˋ/ˑﹳ;

    invoke-direct {v4, v1, v3}, Lʼˋ/ˑﹳ;-><init>(Lʼˋ/ᵎﹶ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object v3, v4, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    iget-object v5, v4, Lʼˋ/ˑﹳ;->ᵎˊ:Ljava/lang/Object;

    iget v6, v4, Lʼˋ/ˑﹳ;->ˆﾞ:I

    const-string v7, "ROLLBACK TRANSACTION"

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget-object v14, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v6, :cond_5

    if-eq v6, v12, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_2

    if-ne v6, v9, :cond_1

    iget-object v0, v4, Lʼˋ/ˑﹳ;->ᴵᵔ:Ljava/io/Serializable;

    move-object v2, v0

    check-cast v2, Lˊʼ/ˏי;

    iget-object v0, v4, Lʼˋ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lʼˋ/ˉˆ;

    :try_start_0
    invoke-static {v5}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v10, v3

    move-object v3, v2

    :goto_1
    move-object v2, v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v4, Lʼˋ/ˑﹳ;->ٴʼ:Z

    iget-object v2, v4, Lʼˋ/ˑﹳ;->ᵎⁱ:Lˊʼ/ˏי;

    iget-object v3, v4, Lʼˋ/ˑﹳ;->ˉٴ:Lˈי/ᵔᵢ;

    iget-object v6, v4, Lʼˋ/ˑﹳ;->ٴᵢ:Lˊʼ/ˏי;

    iget-object v10, v4, Lʼˋ/ˑﹳ;->ˊʻ:Lʼˋ/ˉˆ;

    iget-object v11, v4, Lʼˋ/ˑﹳ;->ᴵᵔ:Ljava/io/Serializable;

    check-cast v11, Lᴵⁱ/ʼᐧ;

    iget-object v15, v4, Lʼˋ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast v15, Lʼˋ/ᵎﹶ;

    :try_start_1
    invoke-static {v5}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v2

    move-object v2, v11

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_2
    move-object v3, v6

    goto/16 :goto_a

    :cond_3
    invoke-static {v5}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object v5

    :cond_4
    invoke-static {v5}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object v5

    :cond_5
    invoke-static {v5}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v5, v1, Lʼˋ/ᵎﹶ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, v1, Lʼˋ/ᵎﹶ;->ʽʽ:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʼˋ/ـˆ;

    sget-object v15, Lʼˋ/ﹳٴ;->ᴵˊ:Lᵎˉ/ⁱˊ;

    if-nez v6, :cond_7

    invoke-interface {v3, v15}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v6

    check-cast v6, Lʼˋ/ﹳٴ;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lʼˋ/ﹳٴ;->ʾˋ:Lʼˋ/ـˆ;

    goto :goto_3

    :cond_6
    move-object v6, v13

    :cond_7
    :goto_3
    if-eqz v6, :cond_d

    if-nez v0, :cond_9

    iget-boolean v0, v6, Lʼˋ/ـˆ;->ⁱˊ:Z

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const-string v0, "Cannot upgrade connection from reader to writer"

    invoke-static {v12, v0}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v13

    :cond_9
    :goto_4
    invoke-interface {v3, v15}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lʼˋ/ﹳٴ;

    invoke-direct {v0, v6}, Lʼˋ/ﹳٴ;-><init>(Lʼˋ/ـˆ;)V

    new-instance v3, Lˊʽ/ʽﹳ;

    invoke-direct {v3, v6, v5}, Lˊʽ/ʽﹳ;-><init>(Lʼˋ/ـˆ;Ljava/lang/ThreadLocal;)V

    invoke-static {v0, v3}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v0

    new-instance v3, Lʼˋ/ﾞᴵ;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v6, v13, v5}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    iput v12, v4, Lʼˋ/ˑﹳ;->ˆﾞ:I

    invoke-static {v0, v3, v4}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_a

    goto/16 :goto_8

    :cond_a
    return-object v0

    :cond_b
    iput v11, v4, Lʼˋ/ˑﹳ;->ˆﾞ:I

    invoke-interface {v2, v6, v4}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_c

    goto/16 :goto_8

    :cond_c
    return-object v0

    :cond_d
    if-eqz v0, :cond_e

    iget-object v5, v1, Lʼˋ/ᵎﹶ;->ʾˋ:Lʼˋ/ˉˆ;

    goto :goto_5

    :cond_e
    iget-object v5, v1, Lʼˋ/ᵎﹶ;->ᴵˊ:Lʼˋ/ˉˆ;

    :goto_5
    new-instance v6, Lˊʼ/ˏי;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    :try_start_2
    iget-wide v8, v1, Lʼˋ/ᵎﹶ;->ᴵᵔ:J

    new-instance v15, Lʼˋ/ˈ;

    const/4 v11, 0x0

    invoke-direct {v15, v11, v1, v0}, Lʼˋ/ˈ;-><init>(ILjava/lang/Object;Z)V

    iput-object v1, v4, Lʼˋ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/io/Serializable;

    iput-object v11, v4, Lʼˋ/ˑﹳ;->ᴵᵔ:Ljava/io/Serializable;

    iput-object v5, v4, Lʼˋ/ˑﹳ;->ˊʻ:Lʼˋ/ˉˆ;

    iput-object v6, v4, Lʼˋ/ˑﹳ;->ٴᵢ:Lˊʼ/ˏי;

    iput-object v3, v4, Lʼˋ/ˑﹳ;->ˉٴ:Lˈי/ᵔᵢ;

    iput-object v6, v4, Lʼˋ/ˑﹳ;->ᵎⁱ:Lˊʼ/ˏי;

    iput-boolean v0, v4, Lʼˋ/ˑﹳ;->ٴʼ:Z

    iput v10, v4, Lʼˋ/ˑﹳ;->ˆﾞ:I

    invoke-virtual {v5, v8, v9, v15, v4}, Lʼˋ/ˉˆ;->ⁱˊ(JLʼˋ/ˈ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v8, v14, :cond_f

    goto :goto_8

    :cond_f
    move-object v15, v1

    move-object v10, v5

    move-object v5, v3

    move-object v3, v6

    :goto_6
    :try_start_3
    check-cast v8, Lʼˋ/ᵔᵢ;

    iput-object v5, v8, Lʼˋ/ᵔᵢ;->ʽʽ:Lˈי/ᵔᵢ;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    iput-object v5, v8, Lʼˋ/ᵔᵢ;->ˈٴ:Ljava/lang/Throwable;

    iget-object v5, v15, Lʼˋ/ᵎﹶ;->ʾˋ:Lʼˋ/ˉˆ;

    iget-object v9, v15, Lʼˋ/ᵎﹶ;->ᴵˊ:Lʼˋ/ˉˆ;

    if-eq v5, v9, :cond_10

    if-eqz v0, :cond_10

    move v0, v12

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_7
    new-instance v5, Lʼˋ/ـˆ;

    invoke-direct {v5, v8, v0}, Lʼˋ/ـˆ;-><init>(Lʼˋ/ᵔᵢ;Z)V

    iput-object v5, v6, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    iget-object v0, v3, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_14

    check-cast v0, Lʼˋ/ـˆ;

    new-instance v5, Lʼˋ/ﹳٴ;

    invoke-direct {v5, v0}, Lʼˋ/ﹳٴ;-><init>(Lʼˋ/ـˆ;)V

    iget-object v6, v15, Lʼˋ/ᵎﹶ;->ʽʽ:Ljava/lang/ThreadLocal;

    new-instance v8, Lˊʽ/ʽﹳ;

    invoke-direct {v8, v0, v6}, Lˊʽ/ʽﹳ;-><init>(Lʼˋ/ـˆ;Ljava/lang/ThreadLocal;)V

    invoke-static {v5, v8}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v0

    new-instance v5, Lʼˋ/ﾞᴵ;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v3, v13, v6}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    iput-object v10, v4, Lʼˋ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    iput-object v3, v4, Lʼˋ/ˑﹳ;->ᴵᵔ:Ljava/io/Serializable;

    iput-object v13, v4, Lʼˋ/ˑﹳ;->ˊʻ:Lʼˋ/ˉˆ;

    iput-object v13, v4, Lʼˋ/ˑﹳ;->ٴᵢ:Lˊʼ/ˏי;

    iput-object v13, v4, Lʼˋ/ˑﹳ;->ˉٴ:Lˈי/ᵔᵢ;

    iput-object v13, v4, Lʼˋ/ˑﹳ;->ᵎⁱ:Lˊʼ/ˏי;

    const/4 v11, 0x4

    iput v11, v4, Lʼˋ/ˑﹳ;->ˆﾞ:I

    invoke-static {v0, v5, v4}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v5, v14, :cond_11

    :goto_8
    return-object v14

    :cond_11
    move-object v2, v3

    move-object v3, v10

    :goto_9
    :try_start_4
    iget-object v0, v2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʼˋ/ـˆ;

    if-eqz v0, :cond_13

    iget-object v2, v0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iget-object v0, v0, Lʼˋ/ـˆ;->ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_12

    :try_start_5
    invoke-static {v2, v7}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    :cond_12
    :try_start_6
    iput-object v13, v2, Lʼˋ/ᵔᵢ;->ʽʽ:Lˈי/ᵔᵢ;

    iput-object v13, v2, Lʼˋ/ᵔᵢ;->ˈٴ:Ljava/lang/Throwable;

    invoke-virtual {v3, v2}, Lʼˋ/ˉˆ;->ˑﹳ(Lʼˋ/ᵔᵢ;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :cond_13
    return-object v5

    :catchall_3
    move-exception v0

    goto/16 :goto_1

    :cond_14
    :try_start_7
    const-string v0, "Required value was null."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v10, v5

    goto/16 :goto_2

    :goto_a
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_9
    iget-object v0, v3, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʼˋ/ـˆ;

    if-eqz v0, :cond_16

    iget-object v3, v0, Lʼˋ/ـˆ;->ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v3, :cond_15

    :try_start_a
    iget-object v3, v0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    invoke-static {v3, v7}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catch_1
    :cond_15
    :try_start_b
    iget-object v0, v0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iput-object v13, v0, Lʼˋ/ᵔᵢ;->ʽʽ:Lˈי/ᵔᵢ;

    iput-object v13, v0, Lʼˋ/ᵔᵢ;->ˈٴ:Ljava/lang/Throwable;

    invoke-virtual {v10, v0}, Lʼˋ/ˉˆ;->ˑﹳ(Lʼˋ/ᵔᵢ;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    invoke-static {v2, v0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_16
    :goto_b
    throw v4

    :cond_17
    const/16 v0, 0x15

    const-string v2, "Connection pool is closed"

    invoke-static {v0, v2}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v13
.end method
