.class public Lᐧﾞ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ᐧﾞ;


# instance fields
.field public final ʽ:Lˊⁱ/ˑﹳ;

.field public final ⁱˊ:Lˊᐧ/ʽﹳ;

.field public final ﹳٴ:Lˊᐧ/ﾞʻ;


# direct methods
.method public constructor <init>(Lˊᐧ/ﾞʻ;Lˊᐧ/ʽﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧﾞ/ⁱˊ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    iput-object p2, p0, Lᐧﾞ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʽﹳ;

    new-instance p1, Lˊⁱ/ˑﹳ;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, Lˊⁱ/ˑﹳ;-><init>(I)V

    iput-object p1, p0, Lᐧﾞ/ⁱˊ;->ʽ:Lˊⁱ/ˑﹳ;

    return-void
.end method

.method public static ʽ(Lᐧﾞ/ⁱˊ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 8

    .prologue
    instance-of v0, p1, Lᐧﾞ/ﹳٴ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lᐧﾞ/ﹳٴ;

    iget v1, v0, Lᐧﾞ/ﹳٴ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᐧﾞ/ﹳٴ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᐧﾞ/ﹳٴ;

    invoke-direct {v0, p0, p1}, Lᐧﾞ/ﹳٴ;-><init>(Lᐧﾞ/ⁱˊ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v0, Lᐧﾞ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lᐧﾞ/ﹳٴ;->ˉٴ:I

    sget-object v2, Lᴵʼ/ᵔᵢ;->ﹳٴ:Lᴵʼ/ᵔᵢ;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-ne v1, v3, :cond_1

    iget-object p0, v0, Lᐧﾞ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lᐧﾞ/ﹳٴ;->ᴵᵔ:Lˊᐧ/ـˆ;

    iget-object v1, v0, Lᐧﾞ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lᐧﾞ/ⁱˊ;

    :try_start_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lᐧﾞ/ⁱˊ;->ʽ:Lˊⁱ/ˑﹳ;

    iget-object p1, p1, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_d

    :try_start_2
    iget-object p1, p0, Lᐧﾞ/ⁱˊ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    iget-object v1, p0, Lᐧﾞ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʽﹳ;

    invoke-virtual {p1, v1}, Lˊᐧ/ﾞʻ;->ᵎˊ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ᴵˊ;

    move-result-object p1

    new-instance v1, Lˊᐧ/ـˆ;

    invoke-direct {v1, p1}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iput-object p0, v0, Lᐧﾞ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v0, Lᐧﾞ/ﹳٴ;->ᴵᵔ:Lˊᐧ/ـˆ;

    iput v4, v0, Lᐧﾞ/ﹳٴ;->ˉٴ:I

    invoke-virtual {v2, v1}, Lᴵʼ/ᵔᵢ;->ﹳٴ(Lˊᐧ/ـˆ;)Lᴵʼ/ⁱˊ;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne p1, v6, :cond_4

    goto :goto_7

    :cond_4
    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_1
    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_5
    :goto_2
    move-object p0, v5

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_3
    if-eqz p0, :cond_6

    :try_start_5
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    :try_start_6
    invoke-static {p1, p0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_0
    move-object p0, v1

    goto :goto_6

    :cond_6
    :goto_4
    move-object p0, p1

    move-object p1, v5

    :goto_5
    if-nez p0, :cond_7

    goto :goto_c

    :cond_7
    throw p0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    :goto_6
    iget-object p1, p0, Lᐧﾞ/ⁱˊ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    iget-object v1, p0, Lᐧﾞ/ⁱˊ;->ⁱˊ:Lˊᐧ/ʽﹳ;

    invoke-virtual {p1, v1}, Lˊᐧ/ﾞʻ;->ﹳᐧ(Lˊᐧ/ʽﹳ;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lᐧﾞ/ⁱˊ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    invoke-virtual {p0, v1}, Lˊᐧ/ﾞʻ;->ᵎˊ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ᴵˊ;

    move-result-object p0

    new-instance p1, Lˊᐧ/ـˆ;

    invoke-direct {p1, p0}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    :try_start_7
    iput-object p1, v0, Lᐧﾞ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iput-object v5, v0, Lᐧﾞ/ﹳٴ;->ᴵᵔ:Lˊᐧ/ـˆ;

    iput v3, v0, Lᐧﾞ/ﹳٴ;->ˉٴ:I

    invoke-virtual {v2, p1}, Lᴵʼ/ᵔᵢ;->ﹳٴ(Lˊᐧ/ـˆ;)Lᴵʼ/ⁱˊ;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-ne p0, v6, :cond_8

    :goto_7
    return-object v6

    :cond_8
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_8
    if-eqz p0, :cond_a

    :try_start_8
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v5

    goto :goto_b

    :catchall_6
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_9
    if-eqz p0, :cond_9

    :try_start_9
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception p0

    invoke-static {p1, p0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    move-object v7, v5

    move-object v5, p1

    move-object p1, v7

    :cond_a
    :goto_b
    if-nez v5, :cond_b

    goto :goto_c

    :cond_b
    throw v5

    :cond_c
    new-instance p0, Lᴵʼ/ⁱˊ;

    invoke-direct {p0, v4}, Lᴵʼ/ⁱˊ;-><init>(Z)V

    move-object p1, p0

    :goto_c
    return-object p1

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This scope has already been closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lᐧﾞ/ⁱˊ;->ʽ:Lˊⁱ/ˑﹳ;

    iget-object v0, v0, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final ﹳٴ(Lʿᵢ/ˉˆ;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lᐧﾞ/ⁱˊ;->ʽ(Lᐧﾞ/ⁱˊ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
