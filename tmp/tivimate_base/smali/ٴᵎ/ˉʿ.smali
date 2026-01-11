.class public final Lٴᵎ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lٴᵎ/ʼᐧ;

.field public final ʾˋ:Lˎᵢ/ˑﹳ;

.field public volatile ᴵˊ:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lٴᵎ/ʼᐧ;Lˎᵢ/ˑﹳ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ˉʿ;->ʽʽ:Lٴᵎ/ʼᐧ;

    iput-object p2, p0, Lٴᵎ/ˉʿ;->ʾˋ:Lˎᵢ/ˑﹳ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lٴᵎ/ˉʿ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const-string v0, "Callback failure for "

    const-string v1, "canceled due to "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OkHttp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lٴᵎ/ˉʿ;->ʽʽ:Lٴᵎ/ʼᐧ;

    iget-object v3, v3, Lٴᵎ/ʼᐧ;->ᴵˊ:Lˎᵢ/ʾᵎ;

    iget-object v3, v3, Lˎᵢ/ʾᵎ;->ﹳٴ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v3}, Lˎᵢ/ʼᐧ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lٴᵎ/ˉʿ;->ʽʽ:Lٴᵎ/ʼᐧ;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v3, Lٴᵎ/ʼᐧ;->ˈٴ:Lٴᵎ/ˉˆ;

    invoke-virtual {v2}, Lˊᐧ/ˈ;->ᵔᵢ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v3}, Lٴᵎ/ʼᐧ;->ᵔᵢ()Lˎᵢ/ʽʽ;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v6, 0x1

    :try_start_2
    iget-object v7, p0, Lٴᵎ/ˉʿ;->ʾˋ:Lˎᵢ/ˑﹳ;

    invoke-interface {v7, v2}, Lˎᵢ/ˑﹳ;->ʼˎ(Lˎᵢ/ʽʽ;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v3, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    :goto_0
    iget-object v0, v0, Lˎᵢ/ʻٴ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0, p0}, Lˏˆ/ﹳٴ;->ˏי(Lٴᵎ/ˉʿ;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move v2, v6

    goto :goto_1

    :catch_0
    move-exception v1

    move v2, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Lٴᵎ/ʼᐧ;->cancel()V

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lٴᵎ/ˉʿ;->ʾˋ:Lˎᵢ/ˑﹳ;

    invoke-interface {v1, v2}, Lˎᵢ/ˑﹳ;->ᵎﹶ(Ljava/io/IOException;)V

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_0
    :goto_2
    throw v0

    :catch_1
    move-exception v1

    :goto_3
    if-eqz v2, :cond_1

    sget-object v2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lٴᵎ/ʼᐧ;->ﹳٴ(Lٴᵎ/ʼᐧ;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {v2, v0, v6, v1}, Lـᐧ/ˑﹳ;->ˆʾ(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lٴᵎ/ˉʿ;->ʾˋ:Lˎᵢ/ˑﹳ;

    invoke-interface {v0, v1}, Lˎᵢ/ˑﹳ;->ᵎﹶ(Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_4
    :try_start_5
    iget-object v0, v3, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_6
    :try_start_6
    iget-object v1, v3, Lٴᵎ/ʼᐧ;->ʾˋ:Lˎᵢ/ʻٴ;

    iget-object v1, v1, Lˎᵢ/ʻٴ;->ﹳٴ:Lˏˆ/ﹳٴ;

    invoke-virtual {v1, p0}, Lˏˆ/ﹳٴ;->ˏי(Lٴᵎ/ˉʿ;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_7
    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
