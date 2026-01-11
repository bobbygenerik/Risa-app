.class public final Lʿᵢ/ᵔٴ;
.super Lʿᵢ/ˊʻ;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ᵎʻ;


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p2, Lʿᵢ/ˆﾞ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʿᵢ/ˆﾞ;

    iget v1, v0, Lʿᵢ/ˆﾞ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ˆﾞ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵢ/ˆﾞ;

    invoke-direct {v0, p0, p2}, Lʿᵢ/ˆﾞ;-><init>(Lʿᵢ/ᵔٴ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lʿᵢ/ˆﾞ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ˆﾞ;->ˉٴ:I

    sget-object v2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p1, v0, Lʿᵢ/ˆﾞ;->ᴵᵔ:Ljava/io/FileOutputStream;

    iget-object v0, v0, Lʿᵢ/ˆﾞ;->ˈٴ:Ljava/io/FileOutputStream;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʿᵢ/ˊʻ;->ʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lʿᵢ/ˊʻ;->ﹳٴ:Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_1
    iget-object v1, p0, Lʿᵢ/ˊʻ;->ⁱˊ:Lʿᵢ/ˏᵢ;

    new-instance v4, Lʿᵢ/ʻˋ;

    invoke-direct {v4, p2}, Lʿᵢ/ʻˋ;-><init>(Ljava/io/FileOutputStream;)V

    iput-object p2, v0, Lʿᵢ/ˆﾞ;->ˈٴ:Ljava/io/FileOutputStream;

    iput-object p2, v0, Lʿᵢ/ˆﾞ;->ᴵᵔ:Ljava/io/FileOutputStream;

    iput v3, v0, Lʿᵢ/ˆﾞ;->ˉٴ:I

    invoke-interface {v1, p1, v4}, Lʿᵢ/ˏᵢ;->ⁱˊ(Ljava/lang/Object;Lʿᵢ/ʻˋ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v2, p1, :cond_3

    return-object p1

    :cond_3
    move-object p1, p2

    move-object v0, p1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {v0, p1}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This scope has already been closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
