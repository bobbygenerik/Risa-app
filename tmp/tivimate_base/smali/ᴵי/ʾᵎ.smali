.class public abstract Lᴵי/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʼˎ:Lᴵי/ٴʼ;

.field public static final ʽ:Lʻᴵ/ﹳٴ;

.field public static final ˆʾ:Lᴵי/ٴʼ;

.field public static final ˈ:Lʻᴵ/ﹳٴ;

.field public static final ˑﹳ:Lʻᴵ/ﹳٴ;

.field public static final ᵎﹶ:Lʻᴵ/ﹳٴ;

.field public static final ᵔᵢ:Lʻᴵ/ﹳٴ;

.field public static final ⁱˊ:Lʻᴵ/ﹳٴ;

.field public static final ﹳٴ:Lʻᴵ/ﹳٴ;

.field public static final ﾞᴵ:Lʻᴵ/ﹳٴ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "RESUME_TOKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ʽ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ᵎﹶ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "SEALED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᴵי/ʾᵎ;->ᵔᵢ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lᴵי/ٴʼ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᴵי/ٴʼ;-><init>(Z)V

    sput-object v0, Lᴵי/ʾᵎ;->ʼˎ:Lᴵי/ٴʼ;

    new-instance v0, Lᴵי/ٴʼ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᴵי/ٴʼ;-><init>(Z)V

    sput-object v0, Lᴵי/ʾᵎ;->ˆʾ:Lᴵי/ٴʼ;

    return-void
.end method

.method public static final ʻٴ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    instance-of v0, p0, Lᴵי/ﹳـ;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lᴵי/ﹳـ;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lᴵי/ﹳـ;->ﹳٴ:Lᴵי/ـˏ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final ʼʼ(JLʼˋ/ᵔʾ;Lʼˋ/ˉʿ;)Ljava/lang/Object;
    .locals 12

    .prologue
    sget v0, Lᐧˊ/ﹳٴ;->ˈٴ:I

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v3, :cond_b

    const-wide/32 v4, 0xf423f

    sget-object v2, Lᐧˊ/ʽ;->ᴵˊ:Lᐧˊ/ʽ;

    invoke-static {v4, v5, v2}, Lﹳٴ/ﹳٴ;->ˈⁱ(JLᐧˊ/ʽ;)J

    move-result-wide v4

    invoke-static {p0, p1}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4, v5}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v2

    if-eqz v2, :cond_9

    xor-long/2addr v4, p0

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v4, v5}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move-wide p0, v4

    goto :goto_1

    :cond_3
    long-to-int v2, p0

    and-int/2addr v2, v3

    long-to-int v6, v4

    and-int/2addr v6, v3

    if-ne v2, v6, :cond_7

    shr-long/2addr p0, v3

    shr-long/2addr v4, v3

    add-long v6, p0, v4

    const p0, 0xf4240

    if-nez v2, :cond_5

    const-wide v4, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long p1, v4, v6

    if-gtz p1, :cond_4

    const-wide v4, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    invoke-static {v6, v7}, Lﹳٴ/ﹳٴ;->ᵔﹳ(J)J

    move-result-wide p0

    goto :goto_1

    :cond_4
    int-to-long p0, p0

    div-long/2addr v6, p0

    invoke-static {v6, v7}, Lﹳٴ/ﹳٴ;->ʼᐧ(J)J

    move-result-wide p0

    goto :goto_1

    :cond_5
    const-wide v4, -0x431bde82d7aL

    cmp-long p1, v4, v6

    if-gtz p1, :cond_6

    const-wide v4, 0x431bde82d7bL

    cmp-long p1, v6, v4

    if-gez p1, :cond_6

    int-to-long p0, p0

    mul-long/2addr v6, p0

    invoke-static {v6, v7}, Lﹳٴ/ﹳٴ;->ᵔﹳ(J)J

    move-result-wide p0

    goto :goto_1

    :cond_6
    const-wide v8, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v10, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v6 .. v11}, Lˈˊ/ˉˆ;->ˆʾ(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lﹳٴ/ﹳٴ;->ʼᐧ(J)J

    move-result-wide p0

    goto :goto_1

    :cond_7
    if-ne v2, v3, :cond_8

    shr-long/2addr p0, v3

    shr-long/2addr v4, v3

    invoke-static {p0, p1, v4, v5}, Lᐧˊ/ﹳٴ;->ﹳٴ(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_8
    shr-long/2addr v4, v3

    shr-long/2addr p0, v3

    invoke-static {v4, v5, p0, p1}, Lᐧˊ/ﹳٴ;->ﹳٴ(JJ)J

    move-result-wide p0

    :cond_9
    :goto_1
    long-to-int v2, p0

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_a

    invoke-static {p0, p1}, Lᐧˊ/ﹳٴ;->ˈ(J)Z

    move-result v2

    if-nez v2, :cond_a

    shr-long/2addr p0, v3

    goto :goto_2

    :cond_a
    sget-object v2, Lᐧˊ/ʽ;->ʽʽ:Lᐧˊ/ʽ;

    invoke-static {p0, p1, v2}, Lᐧˊ/ﹳٴ;->ˑﹳ(JLᐧˊ/ʽ;)J

    move-result-wide p0

    goto :goto_2

    :cond_b
    if-nez v2, :cond_d

    move-wide p0, v0

    :goto_2
    cmp-long v0, p0, v0

    if-lez v0, :cond_c

    new-instance v0, Lᴵי/ʻˋ;

    invoke-direct {v0, p0, p1, p3}, Lᴵי/ʻˋ;-><init>(JLᴵʾ/ʽ;)V

    invoke-static {v0, p2}, Lᴵי/ʾᵎ;->ˏי(Lᴵי/ʻˋ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Lkotlinx/coroutines/TimeoutCancellationException;

    const-string p1, "Timed out immediately"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lᴵי/ᴵˑ;)V

    throw p0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final ʼˎ(Ljava/util/concurrent/Executor;)Lᴵי/ˏי;
    .locals 1

    new-instance v0, Lᴵי/ˊˋ;

    invoke-direct {v0, p0}, Lᴵי/ˊˋ;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final ʼᐧ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;
    .locals 1

    .prologue
    invoke-interface {p0}, Lᴵי/ـˆ;->ʾˋ()Lˈי/ᵔᵢ;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lᴵי/ʾᵎ;->ᵔᵢ(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;Z)Lˈי/ᵔᵢ;

    move-result-object p0

    sget-object p1, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    if-eq p0, p1, :cond_0

    sget-object v0, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-interface {p0, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static ʽ()Lᴵי/ˉـ;
    .locals 2

    new-instance v0, Lᴵי/ˉـ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᴵי/ˉـ;-><init>(Lᴵי/ᴵˑ;)V

    return-object v0
.end method

.method public static final ʽﹳ(Lˈי/ˈ;)Ljava/lang/String;
    .locals 3

    .prologue
    instance-of v0, p0, Lˊʽ/ﾞᴵ;

    if-eqz v0, :cond_0

    check-cast p0, Lˊʽ/ﾞᴵ;

    invoke-virtual {p0}, Lˊʽ/ﾞᴵ;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lʻᵢ/ﾞᴵ;

    invoke-direct {v2, v1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lʻᵢ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static final ʾˋ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 8

    .prologue
    invoke-interface {p0}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    invoke-static {v0}, Lᴵי/ʾᵎ;->ᵎﹶ(Lˈי/ᵔᵢ;)V

    invoke-static {p0}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p0

    instance-of v1, p0, Lˊʽ/ﾞᴵ;

    if-eqz v1, :cond_0

    check-cast p0, Lˊʽ/ﾞᴵ;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    sget-object v2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    if-nez p0, :cond_1

    :goto_1
    move-object p0, v2

    goto/16 :goto_6

    :cond_1
    iget-object v3, p0, Lˊʽ/ﾞᴵ;->ˈٴ:Lᴵי/ˏי;

    invoke-static {v3, v0}, Lˊʽ/ⁱˊ;->ˆʾ(Lᴵי/ˏי;Lˈי/ᵔᵢ;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iput-object v2, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    iput v5, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {v3, v0, p0}, Lᴵי/ˏי;->ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2
    new-instance v4, Lᴵי/ᐧﹶ;

    sget-object v6, Lᴵי/ᐧﹶ;->ʽʽ:Lᴵי/ʽﹳ;

    invoke-direct {v4, v6}, Lˈי/ﹳٴ;-><init>(Lˈי/ᵎﹶ;)V

    invoke-interface {v0, v4}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v0

    iput-object v2, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    iput v5, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {v3, v0, p0}, Lᴵי/ˏי;->ʽᵔ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    iget-boolean v0, v4, Lᴵי/ᐧﹶ;->ᴵˊ:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lᴵי/ﹳﹳ;->ﹳٴ()Lᴵי/ˑٴ;

    move-result-object v0

    iget-object v3, v0, Lᴵי/ˑٴ;->ˈٴ:Lﹶˈ/ᵔᵢ;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v3, v0, Lᴵי/ˑٴ;->ᴵˊ:J

    const-wide v6, 0x100000000L

    cmp-long v3, v3, v6

    if-ltz v3, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    iput-object v2, p0, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    iput v5, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {v0, p0}, Lᴵי/ˑٴ;->ˑ(Lᴵי/ᴵᵔ;)V

    :cond_6
    :goto_4
    move-object p0, v1

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v5}, Lᴵי/ˑٴ;->ˎᐧ(Z)V

    :try_start_0
    invoke-virtual {p0}, Lᴵי/ᴵᵔ;->run()V

    :cond_8
    invoke-virtual {v0}, Lᴵי/ˑٴ;->ʽⁱ()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_8

    :goto_5
    invoke-virtual {v0, v5}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {p0, v3}, Lᴵי/ᴵᵔ;->ʼˎ(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v5}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    throw p0

    :goto_6
    if-ne p0, v1, :cond_9

    return-object p0

    :cond_9
    return-object v2
.end method

.method public static final ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 5

    .prologue
    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lʼⁱ/ˎᐧ;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lʼⁱ/ˎᐧ;-><init>(I)V

    invoke-interface {p0, v1, v2}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, Lᴵי/ʾᵎ;->ᵔᵢ(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;Z)Lˈי/ᵔᵢ;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lᴵי/ʾᵎ;->ᵎﹶ(Lˈי/ᵔᵢ;)V

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    new-instance v0, Lˊʽ/ᵔﹳ;

    invoke-direct {v0, p2, p0}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    invoke-static {v0, v1, v0, p1}, Lﹳˋ/ʽʽ;->ˈٴ(Lˊʽ/ᵔﹳ;ZLˊʽ/ᵔﹳ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v3, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-interface {p0, v3}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v4

    invoke-interface {v0, v3}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    invoke-static {v4, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lᴵי/ᵎʻ;

    invoke-direct {v0, p2, p0}, Lᴵי/ᵎʻ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    const/4 p0, 0x0

    iget-object p2, v0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    invoke-static {p2, p0}, Lˊʽ/ⁱˊ;->ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    invoke-static {v0, v1, v0, p1}, Lﹳˋ/ʽʽ;->ˈٴ(Lˊʽ/ᵔﹳ;ZLˊʽ/ᵔﹳ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p0}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p2, p0}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v0, Lᴵי/ˈٴ;

    invoke-direct {v0, p2, p0}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    :try_start_1
    invoke-static {v0, v0, p1}, Lˉᵎ/ⁱˊ;->ﾞᴵ(Lˈי/ˈ;Lˈי/ˈ;Lᴵⁱ/ʼᐧ;)Lˈי/ˈ;

    move-result-object p0

    invoke-static {p0}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p0

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-static {p1, p0}, Lˊʽ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;Lˈי/ˈ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p0, Lᴵי/ˈٴ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    sget-object p0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lᴵי/ʾᵎ;->ʻٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lᴵי/יـ;

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    check-cast p0, Lᴵי/יـ;

    iget-object p0, p0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0, v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    return-object p0

    :catchall_1
    move-exception p0

    instance-of p1, p0, Lkotlinx/coroutines/DispatchException;

    if-eqz p1, :cond_7

    check-cast p0, Lkotlinx/coroutines/DispatchException;

    iget-object p0, p0, Lkotlinx/coroutines/DispatchException;->ʾˋ:Ljava/lang/Throwable;

    :cond_7
    new-instance p1, Lʻᵢ/ﾞᴵ;

    invoke-direct {p1, p0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lᴵי/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final ˆʾ(Lˈי/ᵔᵢ;)Lᴵי/ʽʽ;
    .locals 1

    .prologue
    sget-object v0, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-interface {p0, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p0

    instance-of v0, p0, Lᴵי/ʽʽ;

    if-eqz v0, :cond_0

    check-cast p0, Lᴵי/ʽʽ;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lᴵי/ᵢˏ;->ﹳٴ:Lᴵי/ʽʽ;

    :cond_1
    return-object p0
.end method

.method public static ˈ()Lᴵי/ﹶᐧ;
    .locals 2

    new-instance v0, Lᴵי/ﹶᐧ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lᴵי/ˉـ;-><init>(Lᴵי/ᴵˑ;)V

    return-object v0
.end method

.method public static final ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V
    .locals 3

    .prologue
    instance-of v0, p0, Lkotlinx/coroutines/DispatchException;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/DispatchException;

    iget-object p0, p0, Lkotlinx/coroutines/DispatchException;->ʾˋ:Ljava/lang/Throwable;

    :cond_0
    :try_start_0
    sget-object v0, Lᴵי/ʽﹳ;->ʾˋ:Lᴵי/ʽﹳ;

    invoke-interface {p1, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᐧʼ/ⁱˊ;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lᐧʼ/ⁱˊ;->ـᵎ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lˊʽ/ⁱˊ;->ˈ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    return-void

    :goto_0
    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_1
    invoke-static {p0, p1}, Lˊʽ/ⁱˊ;->ˈ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    return-void
.end method

.method public static ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;
    .locals 1

    .prologue
    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    sget-object p1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    :cond_0
    invoke-static {p0, p1}, Lᴵי/ʾᵎ;->ʼᐧ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    new-instance p1, Lᴵי/ˈˏ;

    invoke-direct {p1, p0, v0, v0}, Lᴵי/ﹳٴ;-><init>(Lˈי/ᵔᵢ;ZZ)V

    invoke-virtual {p1, v0, p1, p2}, Lᴵי/ﹳٴ;->ˈˏ(ILᴵי/ﹳٴ;Lᴵⁱ/ʼᐧ;)V

    return-object p1
.end method

.method public static final ˏי(Lᴵי/ʻˋ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lˊʽ/ᵔﹳ;->ˈٴ:Lˈי/ˈ;

    invoke-interface {v0}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    invoke-static {v0}, Lᴵי/ʾᵎ;->ˆʾ(Lˈי/ᵔᵢ;)Lᴵי/ʽʽ;

    move-result-object v0

    iget-wide v1, p0, Lᴵי/ʻˋ;->ᴵᵔ:J

    iget-object v3, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    invoke-interface {v0, v1, v2, p0, v3}, Lᴵי/ʽʽ;->ᴵʼ(JLᴵי/ʻˋ;Lˈי/ᵔᵢ;)Lᴵי/ᵎⁱ;

    move-result-object v0

    new-instance v1, Lᴵי/ˉʿ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lᴵי/ˉʿ;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lᴵי/ʾᵎ;->ᵔʾ(Lᴵי/ᴵˑ;ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;

    const/4 v0, 0x0

    invoke-static {p0, v0, p0, p1}, Lﹳˋ/ʽʽ;->ˈٴ(Lˊʽ/ᵔﹳ;ZLˊʽ/ᵔﹳ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ˑﹳ(Lᴵי/ـˆ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ᴵˊ;
    .locals 2

    .prologue
    sget-object v0, Lʿⁱ/ʽ;->ᴵˊ:Lʿⁱ/ʽ;

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    sget-object v0, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    :cond_0
    invoke-static {p0, v0}, Lᴵי/ʾᵎ;->ʼᐧ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    new-instance p2, Lᴵי/ᴵˊ;

    invoke-direct {p2, p0, v1, v1}, Lᴵי/ﹳٴ;-><init>(Lˈי/ᵔᵢ;ZZ)V

    invoke-virtual {p2, v1, p2, p1}, Lᴵי/ﹳٴ;->ˈˏ(ILᴵי/ﹳٴ;Lᴵⁱ/ʼᐧ;)V

    return-object p2
.end method

.method public static final יـ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-interface {p0, v1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v2

    check-cast v2, Lᴵי/ˏי;

    sget-object v3, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Lᴵי/ﹳﹳ;->ﹳٴ()Lᴵי/ˑٴ;

    move-result-object v2

    invoke-interface {p0, v2}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    invoke-static {v3, p0, v4}, Lᴵי/ʾᵎ;->ᵔᵢ(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;Z)Lˈי/ᵔᵢ;

    move-result-object p0

    sget-object v3, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    if-eq p0, v3, :cond_2

    invoke-interface {p0, v1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p0, v3}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v5, v2, Lᴵי/ˑٴ;

    if-eqz v5, :cond_1

    check-cast v2, Lᴵי/ˑٴ;

    :cond_1
    sget-object v2, Lᴵי/ﹳﹳ;->ﹳٴ:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᴵי/ˑٴ;

    invoke-static {v3, p0, v4}, Lᴵי/ʾᵎ;->ᵔᵢ(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;Z)Lˈי/ᵔᵢ;

    move-result-object p0

    sget-object v3, Lᴵי/ٴᵢ;->ﹳٴ:Lʿⁱ/ˈ;

    if-eq p0, v3, :cond_2

    invoke-interface {p0, v1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p0, v3}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    :cond_2
    :goto_0
    new-instance v1, Lᴵי/ﾞᴵ;

    invoke-direct {v1, p0, v0, v2}, Lᴵי/ﾞᴵ;-><init>(Lˈי/ᵔᵢ;Ljava/lang/Thread;Lᴵי/ˑٴ;)V

    invoke-virtual {v1, v4, v1, p1}, Lᴵי/ﹳٴ;->ˈˏ(ILᴵי/ﹳٴ;Lᴵⁱ/ʼᐧ;)V

    const/4 p0, 0x0

    iget-object p1, v1, Lᴵי/ﾞᴵ;->ᴵᵔ:Lᴵי/ˑٴ;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lᴵי/ˑٴ;->ˎᐧ(Z)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lᴵי/ˑٴ;->יﹳ()J

    move-result-wide v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    :goto_2
    invoke-virtual {v1}, Lᴵי/ᐧᴵ;->ˆﾞ()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v1, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v1, v0}, Lᴵי/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    :cond_6
    sget-object p0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lᴵי/ʾᵎ;->ʻٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lᴵי/יـ;

    if-eqz p1, :cond_7

    move-object p1, p0

    check-cast p1, Lᴵי/יـ;

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_8

    return-object p0

    :cond_8
    iget-object p0, p1, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    throw p0

    :goto_4
    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    :cond_9
    throw v0
.end method

.method public static final ـˆ(Lˈי/ˈ;Lˈי/ᵔᵢ;Ljava/lang/Object;)Lᴵי/ᵎʻ;
    .locals 2

    .prologue
    instance-of v0, p0, Lᴵʾ/ˈ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lᴵי/ـᵎ;->ʾˋ:Lᴵי/ـᵎ;

    invoke-interface {p1, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast p0, Lᴵʾ/ˈ;

    :cond_1
    instance-of v0, p0, Lᴵי/ˈٴ;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lᴵʾ/ˈ;->ˈ()Lᴵʾ/ˈ;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lᴵי/ᵎʻ;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lᴵי/ᵎʻ;

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lᴵי/ᵎʻ;->ٴﹳ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static final ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ᵎﹶ(Lˈי/ᵔᵢ;)V
    .locals 1

    .prologue
    sget-object v0, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p0, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p0

    check-cast p0, Lᴵי/ᴵˑ;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lᴵי/ᴵˑ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lᴵי/ᴵˑ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final ᵔʾ(Lᴵי/ᴵˑ;ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;
    .locals 10

    .prologue
    instance-of v0, p0, Lᴵי/ᐧᴵ;

    if-eqz v0, :cond_0

    check-cast p0, Lᴵי/ᐧᴵ;

    invoke-virtual {p0, p1, p2}, Lᴵי/ᐧᴵ;->ᵔי(ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lᴵי/ʿ;->ˆʾ()Z

    move-result v0

    new-instance v1, Lʼⁱ/ᴵˊ;

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v2, 0x1

    const-class v4, Lᴵי/ʿ;

    const-string v5, "invoke"

    const-string v6, "invoke(Ljava/lang/Throwable;)V"

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lʼⁱ/ᴵˊ;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {p0, v0, p1, v1}, Lᴵי/ᴵˑ;->ﹳᐧ(ZZLʼⁱ/ᴵˊ;)Lᴵי/ᵎⁱ;

    move-result-object p0

    return-object p0
.end method

.method public static final ᵔᵢ(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;Z)Lˈי/ᵔᵢ;
    .locals 3

    .prologue
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lʼⁱ/ˎᐧ;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lʼⁱ/ˎᐧ;-><init>(I)V

    invoke-interface {p0, p2, v0}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lʼⁱ/ˎᐧ;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lʼⁱ/ˎᐧ;-><init>(I)V

    invoke-interface {p1, p2, v1}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lʼⁱ/ˎᐧ;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lʼⁱ/ˎᐧ;-><init>(I)V

    sget-object v1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-interface {p0, v1, v0}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lˈי/ᵔᵢ;

    if-eqz p2, :cond_1

    check-cast p1, Lˈי/ᵔᵢ;

    new-instance p2, Lʼⁱ/ˎᐧ;

    const/16 v0, 0xf

    invoke-direct {p2, v0}, Lʼⁱ/ˎᐧ;-><init>(I)V

    invoke-interface {p1, v1, p2}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    check-cast p1, Lˈי/ᵔᵢ;

    invoke-interface {p0, p1}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    return-object p0
.end method

.method public static final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    instance-of v0, p0, Lᴵי/יـ;

    if-eqz v0, :cond_0

    check-cast p0, Lᴵי/יـ;

    iget-object p0, p0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    new-instance v0, Lʻᵢ/ﾞᴵ;

    invoke-direct {v0, p0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static final ᵢˏ(JLᵢʿ/ʻˋ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p3, Lᴵי/ˑʼ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lᴵי/ˑʼ;

    iget v1, v0, Lᴵי/ˑʼ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᴵי/ˑʼ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᴵי/ˑʼ;

    invoke-direct {v0, p3}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p3, v0, Lᴵי/ˑʼ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᴵי/ˑʼ;->ˊʻ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lᴵי/ˑʼ;->ˈٴ:Lˊʼ/ˏי;

    :try_start_0
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmp-long p3, p0, v3

    if-gtz p3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p3, Lˊʼ/ˏי;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    :try_start_1
    iput-object p3, v0, Lᴵי/ˑʼ;->ˈٴ:Lˊʼ/ˏי;

    iput v2, v0, Lᴵי/ˑʼ;->ˊʻ:I

    new-instance v1, Lᴵי/ʻˋ;

    invoke-direct {v1, p0, p1, v0}, Lᴵי/ʻˋ;-><init>(JLᴵʾ/ʽ;)V

    iput-object v1, p3, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    invoke-static {v1, p2}, Lᴵי/ʾᵎ;->ˏי(Lᴵי/ʻˋ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_4

    return-object p1

    :cond_4
    return-object p0

    :catch_1
    move-exception p1

    move-object p0, p3

    :goto_1
    iget-object p2, p1, Lkotlinx/coroutines/TimeoutCancellationException;->ʾˋ:Lᴵי/ᴵˑ;

    iget-object p0, p0, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    if-ne p2, p0, :cond_5

    :goto_2
    const/4 p0, 0x0

    return-object p0

    :cond_5
    throw p1
.end method

.method public static final ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;
    .locals 2

    .prologue
    new-instance v0, Lˊʽ/ˈ;

    sget-object v1, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p0, v1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lᴵי/ʾᵎ;->ʽ()Lᴵי/ˉـ;

    move-result-object v1

    invoke-interface {p0, v1}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lˊʽ/ˈ;-><init>(Lˈי/ᵔᵢ;)V

    return-object v0
.end method

.method public static ﹳٴ()Lᴵי/ᵔﹳ;
    .locals 2

    new-instance v0, Lᴵי/ᵔﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lᴵי/ᐧᴵ;-><init>(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lᴵי/ᐧᴵ;->ٴʼ(Lᴵי/ᴵˑ;)V

    return-object v0
.end method

.method public static final ﹳᐧ(Lᴵי/ٴﹶ;Lˈי/ˈ;Z)V
    .locals 3

    .prologue
    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᴵי/ٴﹶ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p0, Lʻᵢ/ﾞᴵ;

    invoke-direct {p0, v1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lᴵי/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_6

    check-cast p1, Lˊʽ/ﾞᴵ;

    iget-object p2, p1, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    iget-object v0, p1, Lˊʽ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v1

    invoke-static {v1, v0}, Lˊʽ/ⁱˊ;->ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lˊʽ/ⁱˊ;->ˈ:Lʻᴵ/ﹳٴ;

    if-eq v0, v2, :cond_1

    invoke-static {p2, v1, v0}, Lᴵי/ʾᵎ;->ـˆ(Lˈי/ˈ;Lˈי/ᵔᵢ;Ljava/lang/Object;)Lᴵי/ᵎʻ;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    :try_start_0
    iget-object p1, p1, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    invoke-virtual {p1, p0}, Lᴵʾ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lᴵי/ᵎʻ;->ʻˋ()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {v1, v0}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lᴵי/ᵎʻ;->ʻˋ()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v1, v0}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_5
    throw p0

    :cond_6
    invoke-interface {p1, p0}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public static final ﾞʻ(Lˈי/ˈ;)Lᴵי/ٴﹶ;
    .locals 6

    .prologue
    instance-of v0, p0, Lˊʽ/ﾞᴵ;

    if-nez v0, :cond_0

    new-instance v0, Lᴵי/ٴﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lˊʽ/ﾞᴵ;

    sget-object v1, Lˊʽ/ⁱˊ;->ʽ:Lʻᴵ/ﹳٴ;

    sget-object v2, Lˊʽ/ﾞᴵ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_1

    :cond_2
    instance-of v5, v3, Lᴵי/ٴﹶ;

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v3, Lᴵי/ٴﹶ;

    :goto_1
    if-eqz v3, :cond_6

    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lᴵי/ﹳᐧ;

    if-eqz v2, :cond_4

    check-cast v1, Lᴵי/ﹳᐧ;

    iget-object v1, v1, Lᴵי/ﹳᐧ;->ˈ:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lᴵי/ٴﹶ;->ﹳᐧ()V

    goto :goto_2

    :cond_4
    sget-object v1, Lᴵי/ٴﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Lᴵי/ⁱˊ;->ﹳٴ:Lᴵי/ⁱˊ;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    new-instance v0, Lᴵי/ٴﹶ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    return-object v0

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_3

    goto :goto_0

    :cond_8
    if-eq v3, v1, :cond_1

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ﾞᴵ(JLˈי/ˈ;)Ljava/lang/Object;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʻٴ()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p2, p0, v1

    if-gez p2, :cond_1

    iget-object p2, v0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    invoke-static {p2}, Lᴵי/ʾᵎ;->ˆʾ(Lˈי/ᵔᵢ;)Lᴵי/ʽʽ;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0}, Lᴵי/ʽʽ;->ʾˋ(JLᴵי/ٴﹶ;)V

    :cond_1
    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method
