.class public abstract Lᵎˈ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʻᴵ/ﹳٴ;

.field public static final ⁱˊ:Lʻᴵ/ﹳٴ;

.field public static final ﹳٴ:Lʻᴵ/ﹳٴ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᵎˈ/ˈٴ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "NONE"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᵎˈ/ˈٴ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    new-instance v0, Lʻᴵ/ﹳٴ;

    const-string v1, "PENDING"

    invoke-direct {v0, v2, v1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    sput-object v0, Lᵎˈ/ˈٴ;->ʽ:Lʻᴵ/ﹳٴ;

    return-void
.end method

.method public static final ʽ(Lᵎˈ/ᵎﹶ;Lᵎˈ/ᵔᵢ;Lᴵʾ/ʽ;)Ljava/io/Serializable;
    .locals 4

    .prologue
    instance-of v0, p2, Lᵎˈ/ˉˆ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎˈ/ˉˆ;

    iget v1, v0, Lᵎˈ/ˉˆ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ˉˆ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ˉˆ;

    invoke-direct {v0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lᵎˈ/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ˉˆ;->ˊʻ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lᵎˈ/ˉˆ;->ˈٴ:Lˊʼ/ˏי;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance p2, Lˊʼ/ˏי;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :try_start_1
    new-instance v1, Lᵎˈ/ˑﹳ;

    invoke-direct {v1, p1, p2}, Lᵎˈ/ˑﹳ;-><init>(Lᵎˈ/ᵔᵢ;Lˊʼ/ˏי;)V

    iput-object p2, v0, Lᵎˈ/ˉˆ;->ˈٴ:Lˊʼ/ˏי;

    iput v2, v0, Lᵎˈ/ˉˆ;->ˊʻ:I

    invoke-interface {p0, v1, v0}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    iget-object p0, p0, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_4
    iget-object p2, v0, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    sget-object v0, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p2, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p2

    check-cast p2, Lᴵי/ᴵˑ;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lᴵי/ᴵˑ;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Lᴵי/ᴵˑ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    throw p1

    :cond_7
    :goto_3
    if-nez p0, :cond_8

    return-object p1

    :cond_8
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_9

    invoke-static {p0, p1}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    invoke-static {p1, p0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final ˈ(Lᵎˈ/ᵎﹶ;)Lᵎˈ/ᵎﹶ;
    .locals 7

    .prologue
    instance-of v0, p0, Lʿᵔ/ٴﹶ;

    sget-object v3, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    const/4 v5, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lʿᵔ/ٴﹶ;

    invoke-interface {p0, v3, v4, v5}, Lʿᵔ/ٴﹶ;->ʽ(Lˈי/ᵔᵢ;II)Lᵎˈ/ᵎﹶ;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lʿᵔ/ˈ;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lʿᵔ/ˈ;-><init>(Ljava/lang/Object;Lˈי/ᵔᵢ;III)V

    return-object v1
.end method

.method public static final ˑﹳ(Lᵎˈ/ᵎﹶ;)Lᵎˈ/ᵎﹶ;
    .locals 1

    .prologue
    instance-of v0, p0, Lᵎˈ/ᵢˏ;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lᵎˈ/ﾞᴵ;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lᵎˈ/ﾞᴵ;

    invoke-direct {v0, p0}, Lᵎˈ/ﾞᴵ;-><init>(Lᵎˈ/ᵎﹶ;)V

    return-object v0
.end method

.method public static final ᵎﹶ(Lᵎˈ/ᵎﹶ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    sget-object v0, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    instance-of v1, p1, Lᵎˈ/ـˆ;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lᵎˈ/ـˆ;

    iget v2, v1, Lᵎˈ/ـˆ;->ٴᵢ:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lᵎˈ/ـˆ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v1, Lᵎˈ/ـˆ;

    invoke-direct {v1, p1}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p1, v1, Lᵎˈ/ـˆ;->ˊʻ:Ljava/lang/Object;

    iget v2, v1, Lᵎˈ/ـˆ;->ٴᵢ:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v1, Lᵎˈ/ـˆ;->ᴵᵔ:Lᵎˈ/ʻٴ;

    iget-object v2, v1, Lᵎˈ/ـˆ;->ˈٴ:Lˊʼ/ˏי;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance v2, Lˊʼ/ˏי;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    new-instance p1, Lᵎˈ/ʻٴ;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4}, Lᵎˈ/ʻٴ;-><init>(Lˊʼ/ˏי;I)V

    :try_start_1
    iput-object v2, v1, Lᵎˈ/ـˆ;->ˈٴ:Lˊʼ/ˏי;

    iput-object p1, v1, Lᵎˈ/ـˆ;->ᴵᵔ:Lᵎˈ/ʻٴ;

    iput v3, v1, Lᵎˈ/ـˆ;->ٴᵢ:I

    invoke-interface {p0, p1, v1}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_3

    return-object p1

    :catch_1
    move-exception p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_1
    iget-object v3, p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;->ʾˋ:Ljava/lang/Object;

    if-ne v3, p0, :cond_5

    iget-object p0, v1, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ᵎﹶ(Lˈי/ᵔᵢ;)V

    :cond_3
    :goto_2
    iget-object p0, v2, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    if-eq p0, v0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    throw p1
.end method

.method public static final ᵔᵢ(Lᵎˈ/ᵎﹶ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p1, Lᵎˈ/ʾᵎ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lᵎˈ/ʾᵎ;

    iget v1, v0, Lᵎˈ/ʾᵎ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ʾᵎ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ʾᵎ;

    invoke-direct {v0, p1}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p1, v0, Lᵎˈ/ʾᵎ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ʾᵎ;->ٴᵢ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lᵎˈ/ʾᵎ;->ᴵᵔ:Lᵎˈ/ʻٴ;

    iget-object v1, v0, Lᵎˈ/ʾᵎ;->ˈٴ:Lˊʼ/ˏי;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance v1, Lˊʼ/ˏי;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lᵎˈ/ʻٴ;

    const/4 v3, 0x1

    invoke-direct {p1, v1, v3}, Lᵎˈ/ʻٴ;-><init>(Lˊʼ/ˏי;I)V

    :try_start_1
    iput-object v1, v0, Lᵎˈ/ʾᵎ;->ˈٴ:Lˊʼ/ˏי;

    iput-object p1, v0, Lᵎˈ/ʾᵎ;->ᴵᵔ:Lᵎˈ/ʻٴ;

    iput v2, v0, Lᵎˈ/ʾᵎ;->ٴᵢ:I

    invoke-interface {p0, p1, v0}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_1 .. :try_end_1} :catch_1

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_3

    return-object p1

    :catch_1
    move-exception p0

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    iget-object v2, p1, Lkotlinx/coroutines/flow/internal/AbortFlowException;->ʾˋ:Ljava/lang/Object;

    if-ne v2, p0, :cond_4

    iget-object p0, v0, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ᵎﹶ(Lˈי/ᵔᵢ;)V

    :cond_3
    :goto_2
    iget-object p0, v1, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    return-object p0

    :cond_4
    throw p1
.end method

.method public static final ⁱˊ([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    long-to-int p1, p1

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    aput-object p3, p0, p1

    return-void
.end method

.method public static final ﹳٴ(Lᵎˈ/ᵎⁱ;Lʿᵢ/ˉˆ;Ljava/lang/Throwable;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 4

    .prologue
    instance-of v0, p3, Lᵎˈ/ˆʾ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lᵎˈ/ˆʾ;

    iget v1, v0, Lᵎˈ/ˆʾ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ˆʾ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ˆʾ;

    invoke-direct {v0, p3}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p3, v0, Lᵎˈ/ˆʾ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ˆʾ;->ˊʻ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p2, v0, Lᵎˈ/ˆʾ;->ˈٴ:Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_1
    iput-object p2, v0, Lᵎˈ/ˆʾ;->ˈٴ:Ljava/lang/Throwable;

    iput v2, v0, Lᵎˈ/ˆʾ;->ˊʻ:I

    invoke-virtual {p1, p0, p2, v0}, Lʿᵢ/ˉˆ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p0, p1, :cond_3

    return-object p1

    :cond_3
    :goto_1
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0

    :goto_2
    if-eqz p2, :cond_4

    if-eq p2, p0, :cond_4

    invoke-static {p0, p2}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_4
    throw p0
.end method

.method public static final ﾞᴵ(Lᵎˈ/ᵔᵢ;Lʽʿ/ʽﹳ;ZLᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 7

    .prologue
    instance-of v0, p3, Lᵎˈ/ʼˎ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lᵎˈ/ʼˎ;

    iget v1, v0, Lᵎˈ/ʼˎ;->ᵎⁱ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ʼˎ;->ᵎⁱ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ʼˎ;

    invoke-direct {v0, p3}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    :goto_0
    iget-object p3, v0, Lᵎˈ/ʼˎ;->ˉٴ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ʼˎ;->ᵎⁱ:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_2

    iget-boolean p2, v0, Lᵎˈ/ʼˎ;->ٴᵢ:Z

    iget-object p0, v0, Lᵎˈ/ʼˎ;->ˊʻ:Lʽʿ/ʽ;

    iget-object p1, v0, Lᵎˈ/ʼˎ;->ᴵᵔ:Lʽʿ/ʽﹳ;

    iget-object v1, v0, Lᵎˈ/ʼˎ;->ˈٴ:Lᵎˈ/ᵔᵢ;

    :try_start_0
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, Lᵎˈ/ʼˎ;->ٴᵢ:Z

    iget-object p0, v0, Lᵎˈ/ʼˎ;->ˊʻ:Lʽʿ/ʽ;

    iget-object p1, v0, Lᵎˈ/ʼˎ;->ᴵᵔ:Lʽʿ/ʽﹳ;

    iget-object v1, v0, Lᵎˈ/ʼˎ;->ˈٴ:Lᵎˈ/ᵔᵢ;

    :try_start_1
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    instance-of p3, p0, Lᵎˈ/ᵎⁱ;

    if-nez p3, :cond_b

    :try_start_2
    invoke-interface {p1}, Lʽʿ/ʽﹳ;->iterator()Lʽʿ/ʽ;

    move-result-object p3

    :goto_1
    iput-object p0, v0, Lᵎˈ/ʼˎ;->ˈٴ:Lᵎˈ/ᵔᵢ;

    iput-object p1, v0, Lᵎˈ/ʼˎ;->ᴵᵔ:Lʽʿ/ʽﹳ;

    iput-object p3, v0, Lᵎˈ/ʼˎ;->ˊʻ:Lʽʿ/ʽ;

    iput-boolean p2, v0, Lᵎˈ/ʼˎ;->ٴᵢ:Z

    iput v4, v0, Lᵎˈ/ʼˎ;->ᵎⁱ:I

    invoke-virtual {p3, v0}, Lʽʿ/ʽ;->ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v1

    move-object v1, p0

    move-object p0, p3

    move-object p3, v6

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lʽʿ/ʽ;->ʽ()Ljava/lang/Object;

    move-result-object p3

    iput-object v1, v0, Lᵎˈ/ʼˎ;->ˈٴ:Lᵎˈ/ᵔᵢ;

    iput-object p1, v0, Lᵎˈ/ʼˎ;->ᴵᵔ:Lʽʿ/ʽﹳ;

    iput-object p0, v0, Lᵎˈ/ʼˎ;->ˊʻ:Lʽʿ/ʽ;

    iput-boolean p2, v0, Lᵎˈ/ʼˎ;->ٴᵢ:Z

    iput v3, v0, Lᵎˈ/ʼˎ;->ᵎⁱ:I

    invoke-interface {v1, p3, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v5, :cond_1

    :goto_3
    return-object v5

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p1, v2}, Lʽʿ/ʽﹳ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_a

    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_8

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/CancellationException;

    :cond_8
    if-nez v2, :cond_9

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string p2, "Channel was consumed, consumer had failed"

    invoke-direct {v2, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_9
    invoke-interface {p1, v2}, Lʽʿ/ʽﹳ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    throw p3

    :cond_b
    check-cast p0, Lᵎˈ/ᵎⁱ;

    iget-object p0, p0, Lᵎˈ/ᵎⁱ;->ʾˋ:Ljava/lang/Throwable;

    throw p0
.end method
