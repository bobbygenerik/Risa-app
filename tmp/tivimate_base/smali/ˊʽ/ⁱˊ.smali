.class public abstract Lˊʽ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʻᴵ/ﹳٴ;

.field public static final ˈ:Lʻᴵ/ﹳٴ;

.field public static final ˑﹳ:Lʼⁱ/ˎᐧ;

.field public static final ᵎﹶ:Lʼⁱ/ˎᐧ;

.field public static final ⁱˊ:Lʻᴵ/ﹳٴ;

.field public static final ﹳٴ:Lʻᴵ/ﹳٴ;

.field public static final ﾞᴵ:Lʼⁱ/ˎᐧ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lˊʽ/ⁱˊ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lˊʽ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lˊʽ/ⁱˊ;->ʽ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lˊʽ/ⁱˊ;->ˈ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʼⁱ/ˎᐧ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lʼⁱ/ˎᐧ;-><init>(I)V

    sput-object v0, Lˊʽ/ⁱˊ;->ˑﹳ:Lʼⁱ/ˎᐧ;

    new-instance v0, Lʼⁱ/ˎᐧ;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lʼⁱ/ˎᐧ;-><init>(I)V

    sput-object v0, Lˊʽ/ⁱˊ;->ﾞᴵ:Lʼⁱ/ˎᐧ;

    new-instance v0, Lʼⁱ/ˎᐧ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lʼⁱ/ˎᐧ;-><init>(I)V

    sput-object v0, Lˊʽ/ⁱˊ;->ᵎﹶ:Lʼⁱ/ˎᐧ;

    return-void
.end method

.method public static final ʼˎ(Lᴵי/ˏי;Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lᴵי/ˏי;->ـᵎ(Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/DispatchException;

    invoke-direct {v0, p2, p0, p1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/Throwable;Lᴵי/ˏי;Lˈי/ᵔᵢ;)V

    throw v0
.end method

.method public static final ʽ(Ljava/lang/Object;)Lˊʽ/ﹳᐧ;
    .locals 1

    .prologue
    sget-object v0, Lˊʽ/ⁱˊ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    if-eq p0, v0, :cond_0

    check-cast p0, Lˊʽ/ﹳᐧ;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Does not contain segment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final ˆʾ(Lᴵי/ˏי;Lˈי/ᵔᵢ;)Z
    .locals 2

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lᴵי/ˏי;->ᐧﹶ(Lˈי/ᵔᵢ;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    new-instance v1, Lkotlinx/coroutines/DispatchException;

    invoke-direct {v1, v0, p0, p1}, Lkotlinx/coroutines/DispatchException;-><init>(Ljava/lang/Throwable;Lᴵי/ˏי;Lˈי/ᵔᵢ;)V

    throw v1
.end method

.method public static final ˈ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V
    .locals 4

    .prologue
    sget-object v0, Lˊʽ/ˑﹳ;->ﹳٴ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᐧʼ/ⁱˊ;

    :try_start_0
    invoke-virtual {v1, p0}, Lᐧʼ/ⁱˊ;->ـᵎ(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lkotlinx/coroutines/internal/ExceptionSuccessfullyProcessed; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-ne p0, v1, :cond_0

    move-object v2, p0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while trying to handle coroutine exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2, p0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lkotlinx/coroutines/internal/DiagnosticCoroutineContextException;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/internal/DiagnosticCoroutineContextException;-><init>(Lˈי/ᵔᵢ;)V

    invoke-static {p0, v0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p1, Lˊʽ/ⁱˊ;->ˑﹳ:Lʼⁱ/ˎᐧ;

    invoke-interface {p0, v0, p1}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    sget-object p0, Lˊʽ/ⁱˊ;->ˈ:Lʻᴵ/ﹳٴ;

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lˊʽ/ʾᵎ;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p1, p0}, Lˊʽ/ʾᵎ;-><init>(ILˈי/ᵔᵢ;)V

    sget-object p1, Lˊʽ/ⁱˊ;->ᵎﹶ:Lʼⁱ/ˎᐧ;

    invoke-interface {p0, v0, p1}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast p1, Lˊʽ/ʽﹳ;

    invoke-virtual {p1, p0}, Lˊʽ/ʽﹳ;->ⁱˊ(Lˈי/ᵔᵢ;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final ˑﹳ(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    sget-object v0, Lˊʽ/ⁱˊ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final ٴﹶ(Ljava/lang/String;JJJ)J
    .locals 4

    .prologue
    sget v0, Lˊʽ/ˏי;->ﹳٴ:I

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    invoke-static {v0}, Lﹶˑ/ᵔﹳ;->ᐧᴵ(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x27

    const-string v1, "System property \'"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-gtz p1, :cond_1

    cmp-long p1, v2, p5

    if-gtz p1, :cond_1

    return-wide v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' should be in range "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", but is \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has unrecognized value \'"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    sget-object v0, Lˊʽ/ⁱˊ;->ˈ:Lʻᴵ/ﹳٴ;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lˊʽ/ʾᵎ;

    if-eqz v0, :cond_3

    check-cast p1, Lˊʽ/ʾᵎ;

    iget-object p0, p1, Lˊʽ/ʾᵎ;->ʽ:[Lˊʽ/ʽﹳ;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    aget-object v2, p0, v0

    iget-object v3, p1, Lˊʽ/ʾᵎ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lˊʽ/ʽﹳ;->ﹳٴ(Ljava/lang/Object;)V

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    sget-object v1, Lˊʽ/ⁱˊ;->ﾞᴵ:Lʼⁱ/ˎᐧ;

    invoke-interface {p0, v0, v1}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lˊʽ/ʽﹳ;

    invoke-virtual {p0, p1}, Lˊʽ/ʽﹳ;->ﹳٴ(Ljava/lang/Object;)V

    return-void
.end method

.method public static final ᵔᵢ(Ljava/lang/Object;Lˈי/ˈ;)V
    .locals 9

    .prologue
    instance-of v0, p1, Lˊʽ/ﾞᴵ;

    if-eqz v0, :cond_9

    check-cast p1, Lˊʽ/ﾞᴵ;

    iget-object v0, p1, Lˊʽ/ﾞᴵ;->ˈٴ:Lᴵי/ˏי;

    iget-object v1, p1, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    invoke-static {p0}, Lʻᵢ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    new-instance v3, Lᴵי/יـ;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-interface {v1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v2

    invoke-static {v0, v2}, Lˊʽ/ⁱˊ;->ˆʾ(Lᴵי/ˏי;Lˈי/ᵔᵢ;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iput-object v3, p1, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    iput v4, p1, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-interface {v1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lˊʽ/ⁱˊ;->ʼˎ(Lᴵי/ˏי;Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lᴵי/ﹳﹳ;->ﹳٴ()Lᴵי/ˑٴ;

    move-result-object v0

    iget-wide v5, v0, Lᴵי/ˑٴ;->ᴵˊ:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2

    iput-object v3, p1, Lˊʽ/ﾞᴵ;->ˊʻ:Ljava/lang/Object;

    iput v4, p1, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {v0, p1}, Lᴵי/ˑٴ;->ˑ(Lᴵי/ᴵᵔ;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v0, v4}, Lᴵי/ˑٴ;->ˎᐧ(Z)V

    :try_start_0
    invoke-interface {v1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v2

    sget-object v3, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v2, v3}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v2

    check-cast v2, Lᴵי/ᴵˑ;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lᴵי/ᴵˑ;->ʽ()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lᴵי/ᴵˑ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    new-instance v1, Lʻᵢ/ﾞᴵ;

    invoke-direct {v1, p0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lˊʽ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    iget-object v2, p1, Lˊʽ/ﾞᴵ;->ٴᵢ:Ljava/lang/Object;

    invoke-interface {v1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v3

    invoke-static {v3, v2}, Lˊʽ/ⁱˊ;->ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lˊʽ/ⁱˊ;->ˈ:Lʻᴵ/ﹳٴ;

    if-eq v2, v5, :cond_4

    invoke-static {v1, v3, v2}, Lᴵי/ʾᵎ;->ـˆ(Lˈי/ˈ;Lˈי/ᵔᵢ;Ljava/lang/Object;)Lᴵי/ᵎʻ;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v1, p0}, Lᴵʾ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_5

    :try_start_2
    invoke-virtual {v5}, Lᴵי/ᵎʻ;->ʻˋ()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    invoke-static {v3, v2}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lᴵי/ˑٴ;->ʽⁱ()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_6

    :goto_3
    invoke-virtual {v0, v4}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    goto :goto_5

    :catchall_1
    move-exception p0

    if-eqz v5, :cond_7

    :try_start_3
    invoke-virtual {v5}, Lᴵי/ᵎʻ;->ʻˋ()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-static {v3, v2}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_8
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {p1, p0}, Lᴵי/ᴵᵔ;->ʼˎ(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :goto_5
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v4}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    throw p0

    :cond_9
    invoke-interface {p1, p0}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void
.end method

.method public static final ⁱˊ(Lˊʽ/ﹳᐧ;JLᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 5

    .prologue
    :goto_0
    iget-wide v0, p0, Lˊʽ/ﹳᐧ;->ʽ:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lˊʽ/ﹳᐧ;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    return-object p0

    :cond_1
    :goto_1
    sget-object v0, Lˊʽ/ʽ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lˊʽ/ⁱˊ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    if-ne v1, v2, :cond_2

    return-object v2

    :cond_2
    check-cast v1, Lˊʽ/ʽ;

    check-cast v1, Lˊʽ/ﹳᐧ;

    if-eqz v1, :cond_4

    :cond_3
    :goto_2
    move-object p0, v1

    goto :goto_0

    :cond_4
    iget-wide v1, p0, Lˊʽ/ﹳᐧ;->ʽ:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊʽ/ﹳᐧ;

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lˊʽ/ﹳᐧ;->ˈ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lˊʽ/ʽ;->ˑﹳ()V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_0
.end method

.method public static final ﹳٴ(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Expected positive parallelism level, but got "

    invoke-static {p0, v0}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ﾞʻ(IILjava/lang/String;)I
    .locals 7

    .prologue
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const p1, 0x1ffffe

    :goto_0
    int-to-long v1, p0

    const/4 p0, 0x1

    int-to-long v3, p0

    int-to-long v5, p1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lˊʽ/ⁱˊ;->ٴﹶ(Ljava/lang/String;JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final ﾞᴵ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
