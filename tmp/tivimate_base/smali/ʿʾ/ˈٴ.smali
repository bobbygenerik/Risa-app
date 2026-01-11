.class public final Lʿʾ/ˈٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿʾ/ᵔᵢ;
.implements Lʿʾ/ᵎﹶ;


# instance fields
.field public volatile ʽʽ:I

.field public final ʾˋ:Lʿʾ/ʼˎ;

.field public volatile ˈٴ:Lʿʾ/ˑﹳ;

.field public volatile ˊʻ:Lⁱʼ/ˉˆ;

.field public volatile ٴᵢ:Lʿʾ/ﾞᴵ;

.field public final ᴵˊ:Lʿʾ/ˆʾ;

.field public volatile ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʿʾ/ʼˎ;Lʿʾ/ˆʾ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    iput-object p2, p0, Lʿʾ/ˈٴ;->ᴵˊ:Lʿʾ/ˆʾ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->cancel()V

    :cond_0
    return-void
.end method

.method public final ʽ(Lʼᵔ/ˑﹳ;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/ˑﹳ;I)V
    .locals 1

    iget-object p4, p0, Lʿʾ/ˈٴ;->ᴵˊ:Lʿʾ/ˆʾ;

    iget-object v0, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->ˑﹳ()I

    move-result v0

    invoke-virtual {p4, p1, p2, p3, v0}, Lʿʾ/ˆʾ;->ʽ(Lʼᵔ/ˑﹳ;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/ˑﹳ;I)V

    return-void
.end method

.method public final ˈ(Ljava/lang/Object;)Z
    .locals 13

    .prologue
    const-string v0, "SourceGenerator"

    const-string v1, "Attempt to write: "

    const-string v2, "Finished encoding source to cache, key: "

    sget v3, Lʿٴ/ᵔᵢ;->ⁱˊ:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    iget-object v6, v6, Lʿʾ/ʼˎ;->ʽ:Lcom/bumptech/glide/ˑﹳ;

    invoke-virtual {v6}, Lcom/bumptech/glide/ˑﹳ;->ⁱˊ()Lcom/bumptech/glide/ᵔᵢ;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/bumptech/glide/ᵔᵢ;->ᵔᵢ(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/ᵎﹶ;

    move-result-object v6

    invoke-interface {v6}, Lcom/bumptech/glide/load/data/ᵎﹶ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    invoke-virtual {v8, v7}, Lʿʾ/ʼˎ;->ˈ(Ljava/lang/Object;)Lʼᵔ/ⁱˊ;

    move-result-object v8

    new-instance v9, Lˑי/ʽ;

    iget-object v10, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    iget-object v10, v10, Lʿʾ/ʼˎ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    invoke-direct {v9, v8, v7, v10}, Lˑי/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lʿʾ/ﾞᴵ;

    iget-object v10, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v10, v10, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    iget-object v11, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    iget-object v12, v11, Lʿʾ/ʼˎ;->ᵔʾ:Lʼᵔ/ˑﹳ;

    invoke-direct {v7, v10, v12}, Lʿʾ/ﾞᴵ;-><init>(Lʼᵔ/ˑﹳ;Lʼᵔ/ˑﹳ;)V

    iget-object v10, v11, Lʿʾ/ʼˎ;->ᵔᵢ:Lᴵˈ/ᵔᵢ;

    invoke-virtual {v10}, Lᴵˈ/ᵔᵢ;->ﹳٴ()Lʾⁱ/ﹳٴ;

    move-result-object v10

    invoke-interface {v10, v7, v9}, Lʾⁱ/ﹳٴ;->ٴﹶ(Lʼᵔ/ˑﹳ;Lˑי/ʽ;)V

    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, ", data: "

    if-eqz v9, :cond_0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", encoder: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lʿٴ/ᵔᵢ;->ﹳٴ(J)D

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v10, v7}, Lʾⁱ/ﹳٴ;->ˆʾ(Lʼᵔ/ˑﹳ;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-object v7, p0, Lʿʾ/ˈٴ;->ٴᵢ:Lʿʾ/ﾞᴵ;

    new-instance p1, Lʿʾ/ˑﹳ;

    iget-object v0, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    invoke-direct {p1, v0, v1, p0}, Lʿʾ/ˑﹳ;-><init>(Ljava/util/List;Lʿʾ/ʼˎ;Lʿʾ/ᵎﹶ;)V

    iput-object p1, p0, Lʿʾ/ˈٴ;->ˈٴ:Lʿʾ/ˑﹳ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object p1, p1, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/ˑﹳ;->ⁱˊ()V

    return v3

    :cond_1
    const/4 v2, 0x3

    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿʾ/ˈٴ;->ٴᵢ:Lʿʾ/ﾞᴵ;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object p1, v6

    :try_start_3
    iget-object v6, p0, Lʿʾ/ˈٴ;->ᴵˊ:Lʿʾ/ˆʾ;

    iget-object v0, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v7, v0, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/ᵎﹶ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v8

    iget-object p1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v9, p1, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    iget-object p1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object p1, p1, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/ˑﹳ;->ˑﹳ()I

    move-result v10

    iget-object p1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v11, p1, Lⁱʼ/ˉˆ;->ﹳٴ:Lʼᵔ/ˑﹳ;

    invoke-virtual/range {v6 .. v11}, Lʿʾ/ˆʾ;->ⁱˊ(Lʼᵔ/ˑﹳ;Ljava/lang/Object;Lcom/bumptech/glide/load/data/ˑﹳ;ILʼᵔ/ˑﹳ;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v5

    :catchall_1
    move-exception v0

    move-object p1, v0

    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    iget-object v0, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v0, v0, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/ˑﹳ;->ⁱˊ()V

    :cond_3
    throw p1
.end method

.method public final ⁱˊ(Lʼᵔ/ˑﹳ;Ljava/lang/Object;Lcom/bumptech/glide/load/data/ˑﹳ;ILʼᵔ/ˑﹳ;)V
    .locals 6

    iget-object v0, p0, Lʿʾ/ˈٴ;->ᴵˊ:Lʿʾ/ˆʾ;

    iget-object p4, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object p4, p4, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {p4}, Lcom/bumptech/glide/load/data/ˑﹳ;->ˑﹳ()I

    move-result v4

    move-object v5, p1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lʿʾ/ˆʾ;->ⁱˊ(Lʼᵔ/ˑﹳ;Ljava/lang/Object;Lcom/bumptech/glide/load/data/ˑﹳ;ILʼᵔ/ˑﹳ;)V

    return-void
.end method

.method public final ﹳٴ()Z
    .locals 6

    .prologue
    iget-object v0, p0, Lʿʾ/ˈٴ;->ᴵᵔ:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/ˈٴ;->ᴵᵔ:Ljava/lang/Object;

    iput-object v1, p0, Lʿʾ/ˈٴ;->ᴵᵔ:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, v0}, Lʿʾ/ˈٴ;->ˈ(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x3

    const-string v4, "SourceGenerator"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Failed to properly rewind or write data to cache"

    nop

    :cond_0
    iget-object v0, p0, Lʿʾ/ˈٴ;->ˈٴ:Lʿʾ/ˑﹳ;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʿʾ/ˈٴ;->ˈٴ:Lʿʾ/ˑﹳ;

    invoke-virtual {v0}, Lʿʾ/ˑﹳ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v2

    :cond_1
    iput-object v1, p0, Lʿʾ/ˈٴ;->ˈٴ:Lʿʾ/ˑﹳ;

    iput-object v1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    iget v1, p0, Lʿʾ/ˈٴ;->ʽʽ:I

    iget-object v3, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    invoke-virtual {v3}, Lʿʾ/ʼˎ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v1, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    invoke-virtual {v1}, Lʿʾ/ʼˎ;->ⁱˊ()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lʿʾ/ˈٴ;->ʽʽ:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lʿʾ/ˈٴ;->ʽʽ:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱʼ/ˉˆ;

    iput-object v1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    iget-object v1, v1, Lʿʾ/ʼˎ;->ʼᐧ:Lʿʾ/ﾞʻ;

    iget-object v3, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v3, v3, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/ˑﹳ;->ˑﹳ()I

    move-result v3

    invoke-virtual {v1, v3}, Lʿʾ/ﾞʻ;->ﹳٴ(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    iget-object v3, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v3, v3, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lʿʾ/ʼˎ;->ʽ(Ljava/lang/Class;)Lʿʾ/ʾᵎ;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v1, p0, Lʿʾ/ˈٴ;->ˊʻ:Lⁱʼ/ˉˆ;

    iget-object v1, v1, Lⁱʼ/ˉˆ;->ʽ:Lcom/bumptech/glide/load/data/ˑﹳ;

    iget-object v3, p0, Lʿʾ/ˈٴ;->ʾˋ:Lʿʾ/ʼˎ;

    iget-object v3, v3, Lʿʾ/ʼˎ;->ˉˆ:Lcom/bumptech/glide/ᵎﹶ;

    new-instance v4, Lﹶﾞ/ⁱי;

    const/16 v5, 0xf

    invoke-direct {v4, p0, v5, v0}, Lﹶﾞ/ⁱי;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/ˑﹳ;->ﾞᴵ(Lcom/bumptech/glide/ᵎﹶ;Lcom/bumptech/glide/load/data/ˈ;)V

    move v0, v2

    goto :goto_1

    :cond_4
    return v0
.end method
