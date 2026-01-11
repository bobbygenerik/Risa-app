.class public Lʿᵢ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ᐧﾞ;


# instance fields
.field public final ʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ⁱˊ:Lʿᵢ/ˏᵢ;

.field public final ﹳٴ:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lʿᵢ/ˏᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵢ/ˊʻ;->ﹳٴ:Ljava/io/File;

    iput-object p2, p0, Lʿᵢ/ˊʻ;->ⁱˊ:Lʿᵢ/ˏᵢ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lʿᵢ/ˊʻ;->ʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static ʽ(Lʿᵢ/ˊʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 7

    .prologue
    instance-of v0, p1, Lʿᵢ/ᴵᵔ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lʿᵢ/ᴵᵔ;

    iget v1, v0, Lʿᵢ/ᴵᵔ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ᴵᵔ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵢ/ᴵᵔ;

    invoke-direct {v0, p0, p1}, Lʿᵢ/ᴵᵔ;-><init>(Lʿᵢ/ˊʻ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v0, Lʿᵢ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ᴵᵔ;->ˉٴ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v0, Lʿᵢ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lʿᵢ/ᴵᵔ;->ᴵᵔ:Ljava/io/FileInputStream;

    iget-object v1, v0, Lʿᵢ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʿᵢ/ˊʻ;

    :try_start_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ˊʻ;->ʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v1, p0, Lʿᵢ/ˊʻ;->ﹳٴ:Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lʿᵢ/ˊʻ;->ⁱˊ:Lʿᵢ/ˏᵢ;

    iput-object p0, v0, Lʿᵢ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, v0, Lʿᵢ/ᴵᵔ;->ᴵᵔ:Ljava/io/FileInputStream;

    iput v3, v0, Lʿᵢ/ᴵᵔ;->ˉٴ:I

    invoke-interface {v1, p1}, Lʿᵢ/ˏᵢ;->ʽ(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v1, v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v6, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v6

    :goto_1
    :try_start_4
    invoke-static {p0, v4}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-object p0, v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v6

    :goto_2
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_6
    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    :goto_3
    iget-object p1, p0, Lʿᵢ/ˊʻ;->ﹳٴ:Ljava/io/File;

    iget-object v1, p0, Lʿᵢ/ˊʻ;->ⁱˊ:Lʿᵢ/ˏᵢ;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lʿᵢ/ˊʻ;->ﹳٴ:Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_7
    iput-object p1, v0, Lʿᵢ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    iput-object v4, v0, Lʿᵢ/ᴵᵔ;->ᴵᵔ:Ljava/io/FileInputStream;

    iput v2, v0, Lʿᵢ/ᴵᵔ;->ˉٴ:I

    invoke-interface {v1, p1}, Lʿᵢ/ˏᵢ;->ʽ(Ljava/io/FileInputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ne p0, v5, :cond_5

    :goto_4
    return-object v5

    :cond_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_5
    invoke-static {p0, v4}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_4
    move-exception p0

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_6
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    invoke-interface {v1}, Lʿᵢ/ˏᵢ;->ﹳٴ()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This scope has already been closed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lʿᵢ/ˊʻ;->ʽ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final ﹳٴ(Lʿᵢ/ˉˆ;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lʿᵢ/ˊʻ;->ʽ(Lʿᵢ/ˊʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
