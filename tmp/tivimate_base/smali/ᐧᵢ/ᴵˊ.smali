.class public final Lᐧᵢ/ᴵˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧᵢ/ˈ;


# instance fields
.field public final ʽʽ:[Ljava/lang/Object;

.field public final ʾˋ:Lᐧᵢ/ˊˋ;

.field public final ˈٴ:Lˎᵢ/ˈ;

.field public ˉٴ:Ljava/lang/Throwable;

.field public volatile ˊʻ:Z

.field public ٴᵢ:Lٴᵎ/ʼᐧ;

.field public final ᴵˊ:Ljava/lang/Object;

.field public final ᴵᵔ:Lᐧᵢ/ﾞʻ;

.field public ᵎⁱ:Z


# direct methods
.method public constructor <init>(Lᐧᵢ/ˊˋ;Ljava/lang/Object;[Ljava/lang/Object;Lˎᵢ/ˈ;Lᐧᵢ/ﾞʻ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧᵢ/ᴵˊ;->ʾˋ:Lᐧᵢ/ˊˋ;

    iput-object p2, p0, Lᐧᵢ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lᐧᵢ/ᴵˊ;->ʽʽ:[Ljava/lang/Object;

    iput-object p4, p0, Lᐧᵢ/ᴵˊ;->ˈٴ:Lˎᵢ/ˈ;

    iput-object p5, p0, Lᐧᵢ/ᴵˊ;->ᴵᵔ:Lᐧᵢ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᐧᵢ/ᴵˊ;->ˊʻ:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lᐧᵢ/ᴵˊ;->ٴᵢ:Lٴᵎ/ʼᐧ;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lٴᵎ/ʼᐧ;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lᐧᵢ/ᴵˊ;

    iget-object v4, p0, Lᐧᵢ/ᴵˊ;->ˈٴ:Lˎᵢ/ˈ;

    iget-object v5, p0, Lᐧᵢ/ᴵˊ;->ᴵᵔ:Lᐧᵢ/ﾞʻ;

    iget-object v1, p0, Lᐧᵢ/ᴵˊ;->ʾˋ:Lᐧᵢ/ˊˋ;

    iget-object v2, p0, Lᐧᵢ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    iget-object v3, p0, Lᐧᵢ/ᴵˊ;->ʽʽ:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lᐧᵢ/ᴵˊ;-><init>(Lᐧᵢ/ˊˋ;Ljava/lang/Object;[Ljava/lang/Object;Lˎᵢ/ˈ;Lᐧᵢ/ﾞʻ;)V

    return-object v0
.end method

.method public final clone()Lᐧᵢ/ˈ;
    .locals 6

    new-instance v0, Lᐧᵢ/ᴵˊ;

    iget-object v4, p0, Lᐧᵢ/ᴵˊ;->ˈٴ:Lˎᵢ/ˈ;

    iget-object v5, p0, Lᐧᵢ/ᴵˊ;->ᴵᵔ:Lᐧᵢ/ﾞʻ;

    iget-object v1, p0, Lᐧᵢ/ᴵˊ;->ʾˋ:Lᐧᵢ/ˊˋ;

    iget-object v2, p0, Lᐧᵢ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    iget-object v3, p0, Lᐧᵢ/ᴵˊ;->ʽʽ:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lᐧᵢ/ᴵˊ;-><init>(Lᐧᵢ/ˊˋ;Ljava/lang/Object;[Ljava/lang/Object;Lˎᵢ/ˈ;Lᐧᵢ/ﾞʻ;)V

    return-object v0
.end method

.method public final ʽ()Lᐧᵢ/ʼˈ;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᐧᵢ/ᴵˊ;->ᵎⁱ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᐧᵢ/ᴵˊ;->ᵎⁱ:Z

    invoke-virtual {p0}, Lᐧᵢ/ᴵˊ;->ⁱˊ()Lٴᵎ/ʼᐧ;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lᐧᵢ/ᴵˊ;->ˊʻ:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lٴᵎ/ʼᐧ;->cancel()V

    :cond_0
    invoke-virtual {v0}, Lٴᵎ/ʼᐧ;->ˑﹳ()Lˎᵢ/ʽʽ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᐧᵢ/ᴵˊ;->ˈ(Lˎᵢ/ʽʽ;)Lᐧᵢ/ʼˈ;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ˈ(Lˎᵢ/ʽʽ;)Lᐧᵢ/ʼˈ;
    .locals 6

    .prologue
    iget-object v0, p1, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {p1}, Lˎᵢ/ʽʽ;->ᵎﹶ()Lˎᵢ/ᴵˊ;

    move-result-object p1

    new-instance v1, Lᐧᵢ/ʾˋ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ᵎﹶ()Lˎᵢ/ﹳᐧ;

    move-result-object v2

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ʽ()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lᐧᵢ/ʾˋ;-><init>(Lˎᵢ/ﹳᐧ;J)V

    iput-object v1, p1, Lˎᵢ/ᴵˊ;->ᵎﹶ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {p1}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object p1

    iget-boolean v1, p1, Lˎᵢ/ʽʽ;->ˈʿ:Z

    iget v2, p1, Lˎᵢ/ʽʽ;->ˈٴ:I

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-lt v2, v3, :cond_6

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0xcc

    const-string v5, "rawResponse must be successful response"

    if-eq v2, v3, :cond_4

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lᐧᵢ/ᵢˏ;

    invoke-direct {v2, v0}, Lᐧᵢ/ᵢˏ;-><init>(Lˎᵢ/ᴵᵔ;)V

    :try_start_0
    iget-object v0, p0, Lᐧᵢ/ᴵˊ;->ᴵᵔ:Lᐧᵢ/ﾞʻ;

    invoke-interface {v0, v2}, Lᐧᵢ/ﾞʻ;->ˆʾ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_2

    new-instance v1, Lᐧᵢ/ʼˈ;

    invoke-direct {v1, p1, v0}, Lᐧᵢ/ʼˈ;-><init>(Lˎᵢ/ʽʽ;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    iget-object v0, v2, Lᐧᵢ/ᵢˏ;->ˈٴ:Ljava/io/IOException;

    if-nez v0, :cond_3

    throw p1

    :cond_3
    throw v0

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    if-eqz v1, :cond_5

    new-instance v0, Lᐧᵢ/ʼˈ;

    invoke-direct {v0, p1, v4}, Lᐧᵢ/ʼˈ;-><init>(Lˎᵢ/ʽʽ;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    :try_start_1
    new-instance v2, Lˊᐧ/ﾞᴵ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ˉˆ()Lˊᐧ/ᵔᵢ;

    move-result-object v3

    invoke-interface {v3, v2}, Lˊᐧ/ᵔᵢ;->ᵢˏ(Lˊᐧ/ﾞᴵ;)J

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ᵎﹶ()Lˎᵢ/ﹳᐧ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ʽ()J

    new-instance v2, Lˎᵢ/ˈٴ;

    if-nez v1, :cond_7

    new-instance v1, Lᐧᵢ/ʼˈ;

    invoke-direct {v1, p1, v4}, Lᐧᵢ/ʼˈ;-><init>(Lˎᵢ/ʽʽ;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    return-object v1

    :cond_7
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    throw p1
.end method

.method public final ˉˆ(Lᐧᵢ/ᵎﹶ;)V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lᐧᵢ/ᴵˊ;->ᵎⁱ:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᐧᵢ/ᴵˊ;->ᵎⁱ:Z

    iget-object v0, p0, Lᐧᵢ/ᴵˊ;->ٴᵢ:Lٴᵎ/ʼᐧ;

    iget-object v1, p0, Lᐧᵢ/ᴵˊ;->ˉٴ:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lᐧᵢ/ᴵˊ;->ﹳٴ()Lٴᵎ/ʼᐧ;

    move-result-object v2

    iput-object v2, p0, Lᐧᵢ/ᴵˊ;->ٴᵢ:Lٴᵎ/ʼᐧ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lᐧᵢ/ʿᵢ;->ᵔﹳ(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lᐧᵢ/ᴵˊ;->ˉٴ:Ljava/lang/Throwable;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Lᐧᵢ/ᵎﹶ;->ⁱˊ(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lᐧᵢ/ᴵˊ;->ˊʻ:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lٴᵎ/ʼᐧ;->cancel()V

    :cond_2
    new-instance v1, Lˑʼ/ᵎˊ;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lˑʼ/ᵎˊ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, Lٴᵎ/ʼᐧ;->ˈ(Lˎᵢ/ˑﹳ;)V

    return-void

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final ᵎﹶ()Z
    .locals 2

    .prologue
    iget-boolean v0, p0, Lᐧᵢ/ᴵˊ;->ˊʻ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lᐧᵢ/ᴵˊ;->ٴᵢ:Lٴᵎ/ʼᐧ;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lٴᵎ/ʼᐧ;->ˆﾞ:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final ⁱˊ()Lٴᵎ/ʼᐧ;
    .locals 2

    .prologue
    iget-object v0, p0, Lᐧᵢ/ᴵˊ;->ٴᵢ:Lٴᵎ/ʼᐧ;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lᐧᵢ/ᴵˊ;->ˉٴ:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lᐧᵢ/ᴵˊ;->ﹳٴ()Lٴᵎ/ʼᐧ;

    move-result-object v0

    iput-object v0, p0, Lᐧᵢ/ᴵˊ;->ٴᵢ:Lٴᵎ/ʼᐧ;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-static {v0}, Lᐧᵢ/ʿᵢ;->ᵔﹳ(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lᐧᵢ/ᴵˊ;->ˉٴ:Ljava/lang/Throwable;

    throw v0
.end method

.method public final ﹳٴ()Lٴᵎ/ʼᐧ;
    .locals 14

    .prologue
    iget-object v0, p0, Lᐧᵢ/ᴵˊ;->ʾˋ:Lᐧᵢ/ˊˋ;

    iget-object v1, v0, Lᐧᵢ/ˊˋ;->ٴﹶ:[Lᐧᵢ/ʿᵢ;

    iget-object v2, p0, Lᐧᵢ/ᴵˊ;->ʽʽ:[Ljava/lang/Object;

    array-length v3, v2

    array-length v4, v1

    if-ne v3, v4, :cond_b

    new-instance v5, Lᐧᵢ/ˑٴ;

    iget-object v6, v0, Lᐧᵢ/ˊˋ;->ˈ:Ljava/lang/String;

    iget-object v7, v0, Lᐧᵢ/ˊˋ;->ʽ:Lˎᵢ/ʼᐧ;

    iget-object v8, v0, Lᐧᵢ/ˊˋ;->ˑﹳ:Ljava/lang/String;

    iget-object v9, v0, Lᐧᵢ/ˊˋ;->ﾞᴵ:Lˎᵢ/ˉˆ;

    iget-object v10, v0, Lᐧᵢ/ˊˋ;->ᵎﹶ:Lˎᵢ/ﹳᐧ;

    iget-boolean v11, v0, Lᐧᵢ/ˊˋ;->ᵔᵢ:Z

    iget-boolean v12, v0, Lᐧᵢ/ˊˋ;->ʼˎ:Z

    iget-boolean v13, v0, Lᐧᵢ/ˊˋ;->ˆʾ:Z

    invoke-direct/range {v5 .. v13}, Lᐧᵢ/ˑٴ;-><init>(Ljava/lang/String;Lˎᵢ/ʼᐧ;Ljava/lang/String;Lˎᵢ/ˉˆ;Lˎᵢ/ﹳᐧ;ZZZ)V

    iget-boolean v4, v0, Lᐧᵢ/ˊˋ;->ﾞʻ:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_1

    aget-object v8, v2, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v8, v1, v7

    aget-object v9, v2, v7

    invoke-virtual {v8, v5, v9}, Lᐧᵢ/ʿᵢ;->ﹳٴ(Lᐧᵢ/ˑٴ;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v5, Lᐧᵢ/ˑٴ;->ˈ:Lˊﹶ/ⁱˊ;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lˊﹶ/ⁱˊ;->ⁱˊ()Lˎᵢ/ʼᐧ;

    move-result-object v1

    goto :goto_3

    :cond_2
    iget-object v1, v5, Lᐧᵢ/ˑٴ;->ʽ:Ljava/lang/String;

    iget-object v2, v5, Lᐧᵢ/ˑٴ;->ⁱˊ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_0
    new-instance v7, Lˊﹶ/ⁱˊ;

    invoke-direct {v7}, Lˊﹶ/ⁱˊ;-><init>()V

    invoke-virtual {v7, v2, v1}, Lˊﹶ/ⁱˊ;->ᵎﹶ(Lˎᵢ/ʼᐧ;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lˊﹶ/ⁱˊ;->ⁱˊ()Lˎᵢ/ʼᐧ;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_a

    :goto_3
    iget-object v2, v5, Lᐧᵢ/ˑٴ;->ٴﹶ:Lˎᵢ/ʾˋ;

    if-nez v2, :cond_7

    iget-object v3, v5, Lᐧᵢ/ˑٴ;->ˆʾ:Lﹶﾞ/ⁱי;

    if-eqz v3, :cond_4

    new-instance v2, Lˎᵢ/ˉʿ;

    iget-object v6, v3, Lﹶﾞ/ⁱי;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v3, v3, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-direct {v2, v6, v3}, Lˎᵢ/ˉʿ;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_4
    iget-object v3, v5, Lᐧᵢ/ˑٴ;->ʼˎ:Lᵢ/ﹳٴ;

    if-eqz v3, :cond_6

    iget-object v2, v3, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Lˎᵢ/ˏי;

    iget-object v7, v3, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lˊᐧ/ʼˎ;

    iget-object v3, v3, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lˎᵢ/ﹳᐧ;

    invoke-static {v2}, Lⁱᐧ/ˑﹳ;->ˆʾ(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v7, v3, v2}, Lˎᵢ/ˏי;-><init>(Lˊᐧ/ʼˎ;Lˎᵢ/ﹳᐧ;Ljava/util/List;)V

    move-object v2, v6

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-boolean v3, v5, Lᐧᵢ/ˑٴ;->ᵔᵢ:Z

    if-eqz v3, :cond_7

    new-array v2, v6, [B

    int-to-long v7, v6

    move-wide v9, v7

    move-wide v11, v7

    invoke-static/range {v7 .. v12}, Lⁱᐧ/ʽ;->ﹳٴ(JJJ)V

    new-instance v3, Lˎᵢ/ᵢˏ;

    invoke-direct {v3, v6, v2}, Lˎᵢ/ᵢˏ;-><init>(I[B)V

    move-object v2, v3

    :cond_7
    :goto_4
    iget-object v3, v5, Lᐧᵢ/ˑٴ;->ᵎﹶ:Lˎᵢ/ﹳᐧ;

    iget-object v6, v5, Lᐧᵢ/ˑٴ;->ﾞᴵ:Lʼٴ/ʼˎ;

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    new-instance v7, Lˎᵢ/ʼʼ;

    invoke-direct {v7, v2, v3}, Lˎᵢ/ʼʼ;-><init>(Lˎᵢ/ʾˋ;Lˎᵢ/ﹳᐧ;)V

    move-object v2, v7

    goto :goto_5

    :cond_8
    const-string v7, "Content-Type"

    iget-object v3, v3, Lˎᵢ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Lʼٴ/ʼˎ;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    iget-object v3, v5, Lᐧᵢ/ˑٴ;->ˑﹳ:Landroidx/leanback/widget/ʻٴ;

    iput-object v1, v3, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v6}, Lʼٴ/ʼˎ;->ᵎﹶ()Lˎᵢ/ˉˆ;

    move-result-object v1

    invoke-virtual {v1}, Lˎᵢ/ˉˆ;->ˈ()Lʼٴ/ʼˎ;

    move-result-object v1

    iput-object v1, v3, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    iget-object v1, v5, Lᐧᵢ/ˑٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroidx/leanback/widget/ʻٴ;->ʼᐧ(Ljava/lang/String;Lˎᵢ/ʾˋ;)V

    new-instance v1, Lᐧᵢ/ˏי;

    iget-object v2, v0, Lᐧᵢ/ˊˋ;->ﹳٴ:Ljava/lang/Class;

    iget-object v0, v0, Lᐧᵢ/ˊˋ;->ⁱˊ:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lᐧᵢ/ᴵˊ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {v1, v2, v5, v0, v4}, Lᐧᵢ/ˏי;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V

    const-class v0, Lᐧᵢ/ˏי;

    invoke-virtual {v3, v0, v1}, Landroidx/leanback/widget/ʻٴ;->ᵢˏ(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lˎᵢ/ʾᵎ;

    invoke-direct {v0, v3}, Lˎᵢ/ʾᵎ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    iget-object v1, p0, Lᐧᵢ/ᴵˊ;->ˈٴ:Lˎᵢ/ˈ;

    check-cast v1, Lˎᵢ/ʻٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lٴᵎ/ʼᐧ;

    invoke-direct {v2, v1, v0}, Lٴᵎ/ʼᐧ;-><init>(Lˎᵢ/ʻٴ;Lˎᵢ/ʾᵎ;)V

    return-object v2

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Malformed URL. Base: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lᐧᵢ/ˑٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument count ("

    const-string v4, ") doesn\'t match expected count ("

    invoke-static {v3, v2, v4}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    const-string v3, ")"

    invoke-static {v2, v1, v3}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized ﹳᐧ()Lˎᵢ/ʾᵎ;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lᐧᵢ/ᴵˊ;->ⁱˊ()Lٴᵎ/ʼᐧ;

    move-result-object v0

    iget-object v0, v0, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
