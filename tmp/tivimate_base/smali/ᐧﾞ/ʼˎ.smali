.class public final Lᐧﾞ/ʼˎ;
.super Lᐧﾞ/ⁱˊ;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ᵎʻ;


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    instance-of v0, p2, Lᐧﾞ/ᵔᵢ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᐧﾞ/ᵔᵢ;

    iget v1, v0, Lᐧﾞ/ᵔᵢ;->ᵎⁱ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᐧﾞ/ᵔᵢ;->ᵎⁱ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᐧﾞ/ᵔᵢ;

    invoke-direct {v0, p0, p2}, Lᐧﾞ/ᵔᵢ;-><init>(Lᐧﾞ/ʼˎ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lᐧﾞ/ᵔᵢ;->ٴᵢ:Ljava/lang/Object;

    iget v1, v0, Lᐧﾞ/ᵔᵢ;->ᵎⁱ:I

    sget-object v2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p1, v0, Lᐧﾞ/ᵔᵢ;->ˊʻ:Lˊᐧ/ʻٴ;

    iget-object v1, v0, Lᐧﾞ/ᵔᵢ;->ᴵᵔ:Lˊᐧ/ᵔﹳ;

    iget-object v0, v0, Lᐧﾞ/ᵔᵢ;->ˈٴ:Lˊᐧ/ᵔﹳ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lᐧﾞ/ⁱˊ;->ʽ:Lˊⁱ/ˑﹳ;

    iget-object p2, p2, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lᐧﾞ/ⁱˊ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    iget-object v1, p0, Lᐧﾞ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʽﹳ;

    invoke-virtual {p2, v1}, Lˊᐧ/ﾞʻ;->ˈٴ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ᵔﹳ;

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lˊᐧ/ᵔﹳ;->ʽ(Lˊᐧ/ᵔﹳ;)Lˊᐧ/ˆʾ;

    move-result-object p2

    new-instance v5, Lˊᐧ/ʻٴ;

    invoke-direct {v5, p2}, Lˊᐧ/ʻٴ;-><init>(Lˊᐧ/ʾˋ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    sget-object p2, Lᴵʼ/ᵔᵢ;->ﹳٴ:Lᴵʼ/ᵔᵢ;

    iput-object v1, v0, Lᐧﾞ/ᵔᵢ;->ˈٴ:Lˊᐧ/ᵔﹳ;

    iput-object v1, v0, Lᐧﾞ/ᵔᵢ;->ᴵᵔ:Lˊᐧ/ᵔﹳ;

    iput-object v5, v0, Lᐧﾞ/ᵔᵢ;->ˊʻ:Lˊᐧ/ʻٴ;

    iput v3, v0, Lᐧﾞ/ᵔᵢ;->ᵎⁱ:I

    invoke-virtual {p2, p1, v5}, Lᴵʼ/ᵔᵢ;->ⁱˊ(Ljava/lang/Object;Lˊᐧ/ʻٴ;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v2, p1, :cond_3

    return-object p1

    :cond_3
    move-object v0, v1

    move-object p1, v5

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lˊᐧ/ᵔﹳ;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    :try_start_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    move-object p1, v4

    :goto_3
    move-object v1, v0

    goto :goto_6

    :catchall_2
    move-exception p2

    move-object v0, v1

    move-object p1, v5

    :goto_4
    if-eqz p1, :cond_5

    :try_start_5
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    :try_start_6
    invoke-static {p2, p1}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    move-object v1, v0

    goto :goto_7

    :cond_5
    :goto_5
    move-object p1, p2

    goto :goto_3

    :goto_6
    if-nez p1, :cond_6

    if-eqz v1, :cond_8

    :try_start_7
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v4

    goto :goto_9

    :cond_6
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p1

    :goto_7
    if-eqz v1, :cond_7

    :try_start_9
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception p2

    invoke-static {p1, p2}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    move-object v4, p1

    :cond_8
    :goto_9
    if-nez v4, :cond_9

    return-object v2

    :cond_9
    throw v4

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This scope has already been closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
