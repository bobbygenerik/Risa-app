.class public final Lʼˋ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼﾞ/ˋᵔ;
.implements Lʼˋ/ʾᵎ;


# instance fields
.field public final ʽ:Lﹶˈ/ᵔᵢ;

.field public final ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ⁱˊ:Z

.field public final ﹳٴ:Lʼˋ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lʼˋ/ᵔᵢ;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iput-boolean p2, p0, Lʼˋ/ـˆ;->ⁱˊ:Z

    new-instance p1, Lﹶˈ/ᵔᵢ;

    invoke-direct {p1}, Lﹶˈ/ᵔᵢ;-><init>()V

    iput-object p1, p0, Lʼˋ/ـˆ;->ʽ:Lﹶˈ/ᵔᵢ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lʼˋ/ـˆ;->ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final ʽ(Lʼﾞ/ˑٴ;Lᴵⁱ/ʼᐧ;Lᴵʾ/ᵔᵢ;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lʼˋ/ـˆ;->ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-nez v0, :cond_1

    iget-object v0, p3, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    sget-object v3, Lʼˋ/ﹳٴ;->ᴵˊ:Lᵎˉ/ⁱˊ;

    invoke-interface {v0, v3}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lʼˋ/ﹳٴ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lʼˋ/ﹳٴ;->ʾˋ:Lʼˋ/ـˆ;

    if-ne v0, p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lʼˋ/ـˆ;->ᵎﹶ(Lʼﾞ/ˑٴ;Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Attempted to use connection on a different coroutine"

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "Connection is recycled"

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v1
.end method

.method public final ˈ(Lᴵʾ/ᵔᵢ;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lʼˋ/ـˆ;->ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-nez v0, :cond_1

    iget-object p1, p1, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    sget-object v0, Lʼˋ/ﹳٴ;->ᴵˊ:Lᵎˉ/ⁱˊ;

    invoke-interface {p1, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    check-cast p1, Lʼˋ/ﹳٴ;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lʼˋ/ﹳٴ;->ʾˋ:Lʼˋ/ـˆ;

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Lʼˋ/ـˆ;->ʽ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {p1}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Attempted to use connection on a different coroutine"

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "Connection is recycled"

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v1
.end method

.method public final ˑﹳ(Lʼﾞ/ˑٴ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 7

    .prologue
    const-string v0, "SAVEPOINT \'"

    instance-of v1, p2, Lʼˋ/יـ;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lʼˋ/יـ;

    iget v2, v1, Lʼˋ/יـ;->ᵎⁱ:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lʼˋ/יـ;->ᵎⁱ:I

    goto :goto_0

    :cond_0
    new-instance v1, Lʼˋ/יـ;

    invoke-direct {v1, p0, p2}, Lʼˋ/יـ;-><init>(Lʼˋ/ـˆ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v1, Lʼˋ/יـ;->ٴᵢ:Ljava/lang/Object;

    iget v2, v1, Lʼˋ/יـ;->ᵎⁱ:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v1, Lʼˋ/יـ;->ˊʻ:Lʼˋ/ᵔᵢ;

    iget-object v2, v1, Lʼˋ/יـ;->ᴵᵔ:Lʼﾞ/ˑٴ;

    iget-object v1, v1, Lʼˋ/יـ;->ˈٴ:Lʼˋ/ـˆ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p0, v1, Lʼˋ/יـ;->ˈٴ:Lʼˋ/ـˆ;

    iput-object p1, v1, Lʼˋ/יـ;->ᴵᵔ:Lʼﾞ/ˑٴ;

    iget-object p2, p0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iput-object p2, v1, Lʼˋ/יـ;->ˊʻ:Lʼˋ/ᵔᵢ;

    iput v3, v1, Lʼˋ/יـ;->ᵎⁱ:I

    iget-object v2, p2, Lʼˋ/ᵔᵢ;->ᴵˊ:Lﹶי/ʽ;

    invoke-virtual {v2, v1}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v1, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, v1, Lʼˋ/ـˆ;->ʽ:Lﹶˈ/ᵔᵢ;

    iget-object v1, v1, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iget v5, v4, Lﹶˈ/ᵔᵢ;->ʽʽ:I

    invoke-virtual {v4}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const-string p1, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {v1, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_5
    const-string p1, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {v1, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "BEGIN DEFERRED TRANSACTION"

    invoke-static {v1, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :goto_2
    new-instance p1, Lʼˋ/ﹳᐧ;

    invoke-direct {p1, v5}, Lʼˋ/ﹳᐧ;-><init>(I)V

    invoke-virtual {v4, p1}, Lﹶˈ/ᵔᵢ;->addLast(Ljava/lang/Object;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2, v2}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object p1

    :goto_3
    invoke-interface {p2, v2}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1
.end method

.method public final ᵎﹶ(Lʼﾞ/ˑٴ;Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 9

    .prologue
    instance-of v0, p3, Lʼˋ/ʽﹳ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lʼˋ/ʽﹳ;

    iget v1, v0, Lʼˋ/ʽﹳ;->ᵎⁱ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼˋ/ʽﹳ;->ᵎⁱ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼˋ/ʽﹳ;

    invoke-direct {v0, p0, p3}, Lʼˋ/ʽﹳ;-><init>(Lʼˋ/ـˆ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p3, v0, Lʼˋ/ʽﹳ;->ٴᵢ:Ljava/lang/Object;

    iget v1, v0, Lʼˋ/ʽﹳ;->ᵎⁱ:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sget-object v7, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    if-eq v1, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, v0, Lʼˋ/ʽﹳ;->ᴵᵔ:Ljava/io/Serializable;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p3

    goto/16 :goto_5

    :cond_2
    iget-object p1, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    iget p1, v0, Lʼˋ/ʽﹳ;->ˊʻ:I

    iget-object p2, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast p2, Lʼˋ/ـˆ;

    :try_start_1
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lʼˋ/ʽﹳ;->ᴵᵔ:Ljava/io/Serializable;

    move-object p2, p1

    check-cast p2, Lᴵⁱ/ʼᐧ;

    iget-object p1, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lʼˋ/ـˆ;

    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    if-nez p1, :cond_6

    sget-object p1, Lʼﾞ/ˑٴ;->ʾˋ:Lʼﾞ/ˑٴ;

    :cond_6
    iput-object p0, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    move-object p3, p2

    check-cast p3, Ljava/io/Serializable;

    iput-object p3, v0, Lʼˋ/ʽﹳ;->ᴵᵔ:Ljava/io/Serializable;

    iput v6, v0, Lʼˋ/ʽﹳ;->ᵎⁱ:I

    invoke-virtual {p0, p1, v0}, Lʼˋ/ـˆ;->ˑﹳ(Lʼﾞ/ˑٴ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, p0

    :goto_1
    :try_start_2
    new-instance p3, Lʼˋ/ᵔﹳ;

    const/4 v1, 0x0

    invoke-direct {p3, v1, p1}, Lʼˋ/ᵔﹳ;-><init>(ILjava/lang/Object;)V

    iput-object p1, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lʼˋ/ʽﹳ;->ᴵᵔ:Ljava/io/Serializable;

    iput v6, v0, Lʼˋ/ʽﹳ;->ˊʻ:I

    iput v5, v0, Lʼˋ/ʽﹳ;->ᵎⁱ:I

    invoke-interface {p2, p3, v0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p3, v7, :cond_8

    goto :goto_4

    :cond_8
    move-object p2, p1

    move p1, v6

    :goto_2
    if-eqz p1, :cond_9

    move v2, v6

    :cond_9
    iput-object p3, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    iput v4, v0, Lʼˋ/ʽﹳ;->ᵎⁱ:I

    invoke-virtual {p2, v2, v0}, Lʼˋ/ـˆ;->ﾞᴵ(ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_a

    goto :goto_4

    :cond_a
    return-object p3

    :catchall_1
    move-exception p2

    :goto_3
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p3

    :try_start_4
    iput-object p2, v0, Lʼˋ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    iput-object p3, v0, Lʼˋ/ʽﹳ;->ᴵᵔ:Ljava/io/Serializable;

    iput v3, v0, Lʼˋ/ʽﹳ;->ᵎⁱ:I

    invoke-virtual {p1, v2, v0}, Lʼˋ/ـˆ;->ﾞᴵ(ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    if-ne p1, v7, :cond_b

    :goto_4
    return-object v7

    :cond_b
    move-object p1, p3

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v8, p3

    move-object p3, p1

    move-object p1, v8

    :goto_5
    if-eqz p2, :cond_c

    invoke-static {p2, p3}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw p1

    :cond_c
    throw p3
.end method

.method public final ⁱˊ()Lﹳᴵ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/String;Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p3, Lʼˋ/ʻٴ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lʼˋ/ʻٴ;

    iget v1, v0, Lʼˋ/ʻٴ;->ٴʼ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼˋ/ʻٴ;->ٴʼ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼˋ/ʻٴ;

    invoke-direct {v0, p0, p3}, Lʼˋ/ʻٴ;-><init>(Lʼˋ/ـˆ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p3, v0, Lʼˋ/ʻٴ;->ˉٴ:Ljava/lang/Object;

    iget v1, v0, Lʼˋ/ʻٴ;->ٴʼ:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lʼˋ/ʻٴ;->ٴᵢ:Lʼˋ/ᵔᵢ;

    iget-object p2, v0, Lʼˋ/ʻٴ;->ˊʻ:Lᴵⁱ/ﾞʻ;

    iget-object v1, v0, Lʼˋ/ʻٴ;->ᴵᵔ:Ljava/lang/String;

    iget-object v0, v0, Lʼˋ/ʻٴ;->ˈٴ:Lʼˋ/ـˆ;

    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p3, p0, Lʼˋ/ـˆ;->ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    const/16 v1, 0x15

    if-nez p3, :cond_5

    iget-object p3, v0, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    sget-object v4, Lʼˋ/ﹳٴ;->ᴵˊ:Lᵎˉ/ⁱˊ;

    invoke-interface {p3, v4}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p3

    check-cast p3, Lʼˋ/ﹳٴ;

    if-eqz p3, :cond_4

    iget-object p3, p3, Lʼˋ/ﹳٴ;->ʾˋ:Lʼˋ/ـˆ;

    if-ne p3, p0, :cond_4

    iput-object p0, v0, Lʼˋ/ʻٴ;->ˈٴ:Lʼˋ/ـˆ;

    iput-object p1, v0, Lʼˋ/ʻٴ;->ᴵᵔ:Ljava/lang/String;

    iput-object p2, v0, Lʼˋ/ʻٴ;->ˊʻ:Lᴵⁱ/ﾞʻ;

    iget-object p3, p0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iput-object p3, v0, Lʼˋ/ʻٴ;->ٴᵢ:Lʼˋ/ᵔᵢ;

    iput v2, v0, Lʼˋ/ʻٴ;->ٴʼ:I

    iget-object v1, p3, Lʼˋ/ᵔᵢ;->ᴵˊ:Lﹶי/ʽ;

    invoke-virtual {v1, v0}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    :try_start_0
    new-instance v1, Lʼˋ/ʼᐧ;

    iget-object v2, v0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iget-object v2, v2, Lʼˋ/ᵔᵢ;->ʾˋ:Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, p1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lʼˋ/ʼᐧ;-><init>(Lʼˋ/ـˆ;Lﹳᴵ/ʽ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2, v1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v3}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p3, v3}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {v1, p1}, Lﹳˋ/ٴﹶ;->ᵔᵢ(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-interface {p3, v3}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1

    :cond_4
    const-string p1, "Attempted to use connection on a different coroutine"

    invoke-static {v1, p1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v3

    :cond_5
    const-string p1, "Connection is recycled"

    invoke-static {v1, p1}, Landroid/support/v4/media/session/ⁱˊ;->ʻٴ(ILjava/lang/String;)V

    throw v3
.end method

.method public final ﾞᴵ(ZLᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 7

    .prologue
    const-string v0, "ROLLBACK TRANSACTION TO SAVEPOINT \'"

    const-string v1, "RELEASE SAVEPOINT \'"

    instance-of v2, p2, Lʼˋ/ˏי;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lʼˋ/ˏי;

    iget v3, v2, Lʼˋ/ˏי;->ᵎⁱ:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lʼˋ/ˏי;->ᵎⁱ:I

    goto :goto_0

    :cond_0
    new-instance v2, Lʼˋ/ˏי;

    invoke-direct {v2, p0, p2}, Lʼˋ/ˏי;-><init>(Lʼˋ/ـˆ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v2, Lʼˋ/ˏי;->ٴᵢ:Ljava/lang/Object;

    iget v3, v2, Lʼˋ/ˏי;->ᵎⁱ:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-boolean p1, v2, Lʼˋ/ˏי;->ˊʻ:Z

    iget-object v3, v2, Lʼˋ/ˏי;->ᴵᵔ:Lʼˋ/ᵔᵢ;

    iget-object v2, v2, Lʼˋ/ˏי;->ˈٴ:Lʼˋ/ـˆ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p0, v2, Lʼˋ/ˏי;->ˈٴ:Lʼˋ/ـˆ;

    iget-object v3, p0, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    iput-object v3, v2, Lʼˋ/ˏי;->ᴵᵔ:Lʼˋ/ᵔᵢ;

    iput-boolean p1, v2, Lʼˋ/ˏי;->ˊʻ:Z

    iput v4, v2, Lʼˋ/ˏי;->ᵎⁱ:I

    iget-object p2, v3, Lʼˋ/ᵔᵢ;->ᴵˊ:Lﹶי/ʽ;

    invoke-virtual {p2, v2}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p2

    sget-object v2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    move-object v2, p0

    :goto_1
    const/4 p2, 0x0

    :try_start_0
    iget-object v4, v2, Lʼˋ/ـˆ;->ʽ:Lﹶˈ/ᵔᵢ;

    iget-object v2, v2, Lʼˋ/ـˆ;->ﹳٴ:Lʼˋ/ᵔᵢ;

    invoke-virtual {v4}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v4}, Lﹶˈ/ˆʾ;->ʾˊ(Ljava/util/AbstractList;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʼˋ/ﹳᐧ;

    const/16 v6, 0x27

    if-eqz p1, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "END TRANSACTION"

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lʼˋ/ﹳᐧ;->ﹳٴ:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "ROLLBACK TRANSACTION"

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lʼˋ/ﹳᐧ;->ﹳٴ:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/support/v4/media/session/ⁱˊ;->ˑﹳ(Lﹳᴵ/ﹳٴ;Ljava/lang/String;)V

    :goto_2
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3, p2}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object p1

    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not in a transaction"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-interface {v3, p2}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1
.end method
