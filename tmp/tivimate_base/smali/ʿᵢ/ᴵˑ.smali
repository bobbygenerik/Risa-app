.class public final Lʿᵢ/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ˑٴ;


# instance fields
.field public final ʼˎ:Lʻᵢ/ʼˎ;

.field public final ʽ:Lʿᵔ/ˈ;

.field public final ˈ:Ljava/lang/String;

.field public final ˑﹳ:Ljava/lang/String;

.field public final ᵎﹶ:Lﹶי/ʽ;

.field public final ᵔᵢ:Lʻᵢ/ʼˎ;

.field public final ⁱˊ:Ljava/io/File;

.field public final ﹳٴ:Lˈי/ᵔᵢ;

.field public final ﾞᴵ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lˈי/ᵔᵢ;Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵢ/ᴵˑ;->ﹳٴ:Lˈי/ᵔᵢ;

    iput-object p2, p0, Lʿᵢ/ᴵˑ;->ⁱˊ:Ljava/io/File;

    sget-object p1, Lʿᵢ/ʿᵢ;->ⁱˊ:Ljava/lang/Object;

    new-instance p1, Lʼˋ/ᵔʾ;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-direct {p1, p2, v0, v1}, Lʼˋ/ᵔʾ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    new-instance p2, Lʿᵔ/ˈ;

    sget-object v0, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lʿᵔ/ˈ;-><init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V

    iput-object p2, p0, Lʿᵢ/ᴵˑ;->ʽ:Lʿᵔ/ˈ;

    const-string p1, ".lock"

    iput-object p1, p0, Lʿᵢ/ᴵˑ;->ˈ:Ljava/lang/String;

    const-string p1, ".version"

    iput-object p1, p0, Lʿᵢ/ᴵˑ;->ˑﹳ:Ljava/lang/String;

    const-string p1, "fcntl failed: EAGAIN"

    iput-object p1, p0, Lʿᵢ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {}, Lﹶי/ˈ;->ﹳٴ()Lﹶי/ʽ;

    move-result-object p1

    iput-object p1, p0, Lʿᵢ/ᴵˑ;->ᵎﹶ:Lﹶי/ʽ;

    new-instance p1, Lʿᵢ/ـˏ;

    invoke-direct {p1, p0, v2}, Lʿᵢ/ـˏ;-><init>(Lʿᵢ/ᴵˑ;I)V

    new-instance p2, Lʻᵢ/ʼˎ;

    invoke-direct {p2, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p2, p0, Lʿᵢ/ᴵˑ;->ᵔᵢ:Lʻᵢ/ʼˎ;

    new-instance p1, Lʿᵢ/ـˏ;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lʿᵢ/ـˏ;-><init>(Lʿᵢ/ᴵˑ;I)V

    new-instance p2, Lʻᵢ/ʼˎ;

    invoke-direct {p2, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p2, p0, Lʿᵢ/ᴵˑ;->ʼˎ:Lʻᵢ/ʼˎ;

    return-void
.end method

.method public static final ﾞᴵ(Lʿᵢ/ᴵˑ;Ljava/io/File;)V
    .locals 2

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create parent directories of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final ʽ()Lᵎˈ/ᵎﹶ;
    .locals 1

    iget-object v0, p0, Lʿᵢ/ᴵˑ;->ʽ:Lʿᵔ/ˈ;

    return-object v0
.end method

.method public final ˈ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lʿᵢ/ᴵˑ;->ʼˎ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʿᵢ/ᴵʼ;

    sget-object v0, Lʿᵢ/ᴵʼ;->ⁱˊ:Landroidx/datastore/core/NativeSharedCounter;

    iget-wide v1, p1, Lʿᵢ/ᴵʼ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/core/NativeSharedCounter;->nativeGetCounterValue(J)I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lʿᵢ/ʼˈ;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lʿᵢ/ʼˈ;-><init>(Lʿᵢ/ᴵˑ;Lˈי/ˈ;I)V

    iget-object v1, p0, Lʿᵢ/ᴵˑ;->ﹳٴ:Lˈי/ᵔᵢ;

    invoke-static {v1, v0, p1}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˑﹳ(Lʿᵢ/ʽʽ;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget-object v0, p0, Lʿᵢ/ᴵˑ;->ʼˎ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʿᵢ/ᴵʼ;

    sget-object v0, Lʿᵢ/ᴵʼ;->ⁱˊ:Landroidx/datastore/core/NativeSharedCounter;

    iget-wide v1, p1, Lʿᵢ/ᴵʼ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/core/NativeSharedCounter;->nativeIncrementAndGetCounterValue(J)I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lʿᵢ/ʼˈ;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lʿᵢ/ʼˈ;-><init>(Lʿᵢ/ᴵˑ;Lˈי/ˈ;I)V

    iget-object v1, p0, Lʿᵢ/ᴵˑ;->ﹳٴ:Lˈי/ᵔᵢ;

    invoke-static {v1, v0, p1}, Lᴵי/ʾᵎ;->ʾᵎ(Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ⁱˊ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 18

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    instance-of v3, v0, Lʿᵢ/ˈⁱ;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lʿᵢ/ˈⁱ;

    iget v4, v3, Lʿᵢ/ˈⁱ;->ٴʼ:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lʿᵢ/ˈⁱ;->ٴʼ:I

    goto :goto_0

    :cond_0
    new-instance v3, Lʿᵢ/ˈⁱ;

    invoke-direct {v3, v1, v0}, Lʿᵢ/ˈⁱ;-><init>(Lʿᵢ/ᴵˑ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object v0, v3, Lʿᵢ/ˈⁱ;->ˉٴ:Ljava/lang/Object;

    iget v4, v3, Lʿᵢ/ˈⁱ;->ٴʼ:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-boolean v2, v3, Lʿᵢ/ˈⁱ;->ٴᵢ:Z

    iget-object v4, v3, Lʿᵢ/ˈⁱ;->ˊʻ:Ljava/nio/channels/FileLock;

    iget-object v5, v3, Lʿᵢ/ˈⁱ;->ᴵᵔ:Ljava/io/FileInputStream;

    iget-object v3, v3, Lʿᵢ/ˈⁱ;->ˈٴ:Lﹶי/ʽ;

    :try_start_0
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v2, v3, Lʿᵢ/ˈⁱ;->ٴᵢ:Z

    iget-object v3, v3, Lʿᵢ/ˈⁱ;->ˈٴ:Lﹶי/ʽ;

    :try_start_1
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :cond_3
    invoke-static {v0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object v4, v1, Lʿᵢ/ᴵˑ;->ᵎﹶ:Lﹶי/ʽ;

    invoke-virtual {v4}, Lﹶי/ʽ;->ˈ()Z

    move-result v8

    sget-object v9, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-nez v8, :cond_6

    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v3, Lʿᵢ/ˈⁱ;->ˈٴ:Lﹶי/ʽ;

    iput-boolean v8, v3, Lʿᵢ/ˈⁱ;->ٴᵢ:Z

    iput v6, v3, Lʿᵢ/ˈⁱ;->ٴʼ:I

    invoke-interface {v2, v0, v3}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v9, :cond_4

    goto/16 :goto_5

    :cond_4
    move-object v3, v4

    move v2, v8

    :goto_1
    if-eqz v2, :cond_5

    invoke-interface {v3, v7}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_5
    return-object v0

    :catchall_2
    move-exception v0

    move-object v3, v4

    move v2, v8

    goto/16 :goto_a

    :cond_6
    :try_start_3
    new-instance v10, Ljava/io/FileInputStream;

    iget-object v0, v1, Lʿᵢ/ᴵˑ;->ᵔᵢ:Lʻᵢ/ʼˎ;

    invoke-virtual {v0}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x1

    const-wide/16 v13, 0x0

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v12, v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v4

    move-object v4, v7

    move v2, v8

    move-object v5, v10

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v13, v1, Lʿᵢ/ᴵˑ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v12, v13, v11}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-ne v12, v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    const-string v13, "Resource deadlock would occur"

    invoke-static {v12, v13, v11}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v12, v6, :cond_c

    :goto_2
    move-object v12, v7

    :goto_3
    if-eqz v12, :cond_8

    goto :goto_4

    :cond_8
    move v6, v11

    :goto_4
    :try_start_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v4, v3, Lʿᵢ/ˈⁱ;->ˈٴ:Lﹶי/ʽ;

    iput-object v10, v3, Lʿᵢ/ˈⁱ;->ᴵᵔ:Ljava/io/FileInputStream;

    iput-object v12, v3, Lʿᵢ/ˈⁱ;->ˊʻ:Ljava/nio/channels/FileLock;

    iput-boolean v8, v3, Lʿᵢ/ˈⁱ;->ٴᵢ:Z

    iput v5, v3, Lʿᵢ/ˈⁱ;->ٴʼ:I

    invoke-interface {v2, v0, v3}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v9, :cond_9

    :goto_5
    return-object v9

    :cond_9
    move-object v3, v4

    move v2, v8

    move-object v5, v10

    move-object v4, v12

    :goto_6
    if-eqz v4, :cond_a

    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v4, v3

    move v3, v2

    move-object v2, v0

    goto :goto_9

    :cond_a
    :goto_7
    :try_start_8
    invoke-static {v5, v7}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_b

    invoke-interface {v3, v7}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_b
    return-object v0

    :catchall_5
    move-exception v0

    move-object v3, v4

    move v2, v8

    move-object v5, v10

    move-object v4, v12

    goto :goto_8

    :cond_c
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_8
    if-eqz v4, :cond_d

    :try_start_a
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    :cond_d
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_9
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-static {v5, v2}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v0

    move v2, v3

    move-object v3, v4

    :goto_a
    if-eqz v2, :cond_e

    invoke-interface {v3, v7}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    :cond_e
    throw v0
.end method

.method public final ﹳٴ(Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 8

    .prologue
    instance-of v0, p2, Lʿᵢ/ﹳـ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʿᵢ/ﹳـ;

    iget v1, v0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵢ/ﹳـ;

    invoke-direct {v0, p0, p2}, Lʿᵢ/ﹳـ;-><init>(Lʿᵢ/ᴵˑ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lʿᵢ/ﹳـ;->ٴᵢ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lʿᵢ/ﹳـ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Ljava/nio/channels/FileLock;

    iget-object v1, v0, Lʿᵢ/ﹳـ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v0, v0, Lʿᵢ/ﹳـ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lﹶי/ﹳٴ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p2

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lʿᵢ/ﹳـ;->ˊʻ:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/io/Closeable;

    iget-object p1, v0, Lʿᵢ/ﹳـ;->ᴵᵔ:Ljava/lang/Object;

    check-cast p1, Lﹶי/ﹳٴ;

    iget-object v3, v0, Lʿᵢ/ﹳـ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lᴵⁱ/ﾞʻ;

    :try_start_1
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_1
    move-object p1, v5

    goto/16 :goto_7

    :cond_3
    iget-object p1, v0, Lʿᵢ/ﹳـ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lﹶי/ﹳٴ;

    iget-object v1, v0, Lʿᵢ/ﹳـ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lᴵⁱ/ﾞʻ;

    iget-object v4, v0, Lʿᵢ/ﹳـ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Lʿᵢ/ᴵˑ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v1

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p0, v0, Lʿᵢ/ﹳـ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, v0, Lʿᵢ/ﹳـ;->ᴵᵔ:Ljava/lang/Object;

    iget-object p2, p0, Lʿᵢ/ᴵˑ;->ᵎﹶ:Lﹶי/ʽ;

    iput-object p2, v0, Lʿᵢ/ﹳـ;->ˊʻ:Ljava/lang/Object;

    iput v4, v0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    invoke-virtual {p2, v0}, Lﹶי/ʽ;->ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_5

    goto :goto_4

    :cond_5
    move-object v4, p0

    :goto_2
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, v4, Lʿᵢ/ᴵˑ;->ᵔᵢ:Lʻᵢ/ʼˎ;

    invoke-virtual {v4}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    iput-object p1, v0, Lʿᵢ/ﹳـ;->ˈٴ:Ljava/lang/Object;

    iput-object p2, v0, Lʿᵢ/ﹳـ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v1, v0, Lʿᵢ/ﹳـ;->ˊʻ:Ljava/lang/Object;

    iput v3, v0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    invoke-static {v1, v0}, Lʿᵢ/ˑʼ;->ﹳٴ(Ljava/io/FileOutputStream;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-ne v3, v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, v3

    move-object v3, p1

    move-object p1, p2

    move-object p2, v7

    :goto_3
    :try_start_4
    check-cast p2, Ljava/nio/channels/FileLock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-object p1, v0, Lʿᵢ/ﹳـ;->ˈٴ:Ljava/lang/Object;

    iput-object v1, v0, Lʿᵢ/ﹳـ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p2, v0, Lʿᵢ/ﹳـ;->ˊʻ:Ljava/lang/Object;

    iput v2, v0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    invoke-interface {v3, v0}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v0, v6, :cond_7

    :goto_4
    return-object v6

    :cond_7
    move-object v7, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v7

    :goto_5
    if-eqz p1, :cond_8

    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p2, v0

    goto :goto_8

    :cond_8
    :goto_6
    :try_start_7
    invoke-static {v1, v5}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-interface {v0, v5}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    return-object p2

    :catchall_3
    move-exception p1

    move-object p2, v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v7

    goto :goto_7

    :catchall_5
    move-exception p1

    move-object v0, p2

    move-object p2, p1

    goto :goto_1

    :goto_7
    if-eqz p1, :cond_9

    :try_start_8
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    :cond_9
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_8
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_a
    invoke-static {v1, p1}, Lcom/bumptech/glide/ˈ;->ʼˎ(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :catchall_7
    move-exception p1

    :goto_9
    invoke-interface {p2, v5}, Lﹶי/ﹳٴ;->ᵎﹶ(Ljava/lang/Object;)V

    throw p1
.end method
