.class public final Landroidx/work/impl/workers/ConstraintTrackingWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# instance fields
.field public final ᵎﹶ:Landroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p2, p0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->ᵎﹶ:Landroidx/work/WorkerParameters;

    return-void
.end method

.method public static final ᵎﹶ(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lᴵˋ/יـ;Lʼﹳ/ᵎﹶ;Lˑᵎ/ﹳᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 4

    .prologue
    instance-of v0, p4, Lﹶﹳ/ⁱˊ;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lﹶﹳ/ⁱˊ;

    iget v1, v0, Lﹶﹳ/ⁱˊ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lﹶﹳ/ⁱˊ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lﹶﹳ/ⁱˊ;

    invoke-direct {v0, p0, p4}, Lﹶﹳ/ⁱˊ;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p0, v0, Lﹶﹳ/ⁱˊ;->ˈٴ:Ljava/lang/Object;

    iget p4, v0, Lﹶﹳ/ⁱˊ;->ˊʻ:I

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-ne p4, v1, :cond_1

    invoke-static {p0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance p0, Lʿᵢ/ﾞᴵ;

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lʿᵢ/ﾞᴵ;-><init>(Lᴵˋ/יـ;Lʼﹳ/ᵎﹶ;Lˑᵎ/ﹳᐧ;Lˈי/ˈ;)V

    iput v1, v0, Lﹶﹳ/ⁱˊ;->ˊʻ:I

    new-instance p1, Lˊʽ/ᵔﹳ;

    invoke-virtual {v0}, Lᴵʾ/ʽ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    invoke-static {p1, v1, p1, p0}, Lﹳˋ/ʽʽ;->ˈٴ(Lˊʽ/ᵔﹳ;ZLˊʽ/ᵔﹳ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static final ᵔᵢ(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 19

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->ᵎﹶ:Landroidx/work/WorkerParameters;

    iget-object v3, v1, Lᴵˋ/יـ;->ﹳٴ:Landroid/content/Context;

    iget-object v4, v1, Lᴵˋ/יـ;->ⁱˊ:Landroidx/work/WorkerParameters;

    instance-of v5, v0, Lﹶﹳ/ʽ;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lﹶﹳ/ʽ;

    iget v6, v5, Lﹶﹳ/ʽ;->ٴᵢ:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lﹶﹳ/ʽ;->ٴᵢ:I

    :goto_0
    move-object v7, v5

    goto :goto_1

    :cond_0
    new-instance v5, Lﹶﹳ/ʽ;

    invoke-direct {v5, v1, v0}, Lﹶﹳ/ʽ;-><init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lᴵʾ/ʽ;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lﹶﹳ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    iget v5, v7, Lﹶﹳ/ʽ;->ٴᵢ:I

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v2, v7, Lﹶﹳ/ʽ;->ˈٴ:Lᴵˋ/יـ;

    :try_start_0
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/work/WorkerParameters;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    const-string v5, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    iget-object v0, v0, Lᴵˋ/ᵔᵢ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v5, "No worker to delegate to."

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-static {v3}, Lـʾ/ﹳᐧ;->ﹳـ(Landroid/content/Context;)Lـʾ/ﹳᐧ;

    move-result-object v6

    iget-object v9, v6, Lـʾ/ﹳᐧ;->ˑﹳ:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v9

    iget-object v10, v4, Landroidx/work/WorkerParameters;->ﹳٴ:Ljava/util/UUID;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lˑᵎ/ʾᵎ;->ˈ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v0, Lᴵˋ/ˉˆ;

    invoke-direct {v0}, Lᴵˋ/ˉˆ;-><init>()V

    return-object v0

    :cond_5
    new-instance v10, Lʼﹳ/ᵎﹶ;

    iget-object v11, v6, Lـʾ/ﹳᐧ;->ﾞʻ:Landroidx/leanback/widget/ʻٴ;

    invoke-direct {v10, v11}, Lʼﹳ/ᵎﹶ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    iget-object v11, v10, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_7

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    move-object v8, v15

    check-cast v8, Lᵎﾞ/ˈ;

    invoke-interface {v8, v9}, Lᵎﾞ/ˈ;->ʽ(Lˑᵎ/ﹳᐧ;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v8

    sget-object v11, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Work "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " constrained by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Lˑᵢ/ﹳـ;

    const/16 v15, 0x1c

    invoke-direct {v14, v15}, Lˑᵢ/ﹳـ;-><init>(I)V

    const/16 v17, 0x1f

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move-object/from16 v1, v18

    invoke-static/range {v12 .. v17}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v11, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lﹶﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Constraints not met for delegate "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Requesting retry."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᴵˋ/ʼᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :cond_9
    sget-object v1, Lﹶﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v8

    const-string v11, "Constraints met for delegate "

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v1, v11}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, v4, Landroidx/work/WorkerParameters;->ᵔᵢ:Lᴵˋ/ˆʾ;

    invoke-virtual {v1, v3, v0, v2}, Lᴵˋ/ˆʾ;->ﹳٴ(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lᴵˋ/יـ;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Landroidx/work/WorkerParameters;->ᵎﹶ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʿʿ/ʽ;

    :try_start_2
    invoke-static {v0}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object v8

    new-instance v0, Lʼⁱ/ˏⁱ;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x0

    const/16 v6, 0xe

    move-object v2, v1

    move-object v4, v9

    move-object v3, v10

    move-object/from16 v1, p0

    :try_start_3
    invoke-direct/range {v0 .. v6}, Lʼⁱ/ˏⁱ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    iput-object v2, v7, Lﹶﹳ/ʽ;->ˈٴ:Lᴵˋ/יـ;

    const/4 v3, 0x1

    iput v3, v7, Lﹶﹳ/ʽ;->ٴᵢ:I

    invoke-static {v8, v0, v7}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    sget-object v3, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v0, v3, :cond_a

    return-object v3

    :cond_a
    :goto_4
    :try_start_4
    check-cast v0, Lᴵˋ/ﹳᐧ;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object/from16 v1, p0

    :goto_5
    invoke-virtual {v1}, Lᴵˋ/יـ;->ʽ()Z

    move-result v3

    if-nez v3, :cond_b

    instance-of v3, v0, Lﹶﹳ/ﹳٴ;

    if-eqz v3, :cond_e

    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_c

    const/16 v1, -0x200

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Lᴵˋ/יـ;->ʽ()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v1, v1, Lᴵˋ/יـ;->ʽ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_6

    :cond_d
    instance-of v1, v0, Lﹶﹳ/ﹳٴ;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Lﹶﹳ/ﹳٴ;

    iget v1, v1, Lﹶﹳ/ﹳٴ;->ʾˋ:I

    :goto_6
    iget-object v2, v2, Lᴵˋ/יـ;->ʽ:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v3, -0x100

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :cond_e
    instance-of v1, v0, Lﹶﹳ/ﹳٴ;

    if-eqz v1, :cond_f

    new-instance v0, Lᴵˋ/ʼᐧ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_7

    :cond_f
    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    sget-object v0, Lﹶﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lᴵˋ/ˉˆ;

    invoke-direct {v0}, Lᴵˋ/ˉˆ;-><init>()V

    :goto_7
    return-object v0

    :cond_11
    :goto_8
    sget-object v0, Lﹶﹳ/ﾞᴵ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᴵˋ/ˉˆ;

    invoke-direct {v0}, Lᴵˋ/ˉˆ;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final ˑﹳ(Lˈי/ˈ;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lᴵˋ/יـ;->ⁱˊ:Landroidx/work/WorkerParameters;

    iget-object v0, v0, Landroidx/work/WorkerParameters;->ˑﹳ:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lᴵי/ʾᵎ;->ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;

    move-result-object v0

    new-instance v1, Lᵢʿ/ʻˋ;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, p0, v2, v3}, Lᵢʿ/ʻˋ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    invoke-static {v0, v1, p1}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
