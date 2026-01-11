.class public final Lٴᵎ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴᵎ/ʾᵎ;


# instance fields
.field public final ʼˎ:Lˎᵢ/ﹳٴ;

.field public final ʽ:I

.field public final ˆʾ:Lˉˆ/ʿ;

.field public final ˈ:I

.field public ˉʿ:Lٴᵎ/ʼʼ;

.field public final ˉˆ:Lﹶˈ/ᵔᵢ;

.field public final ˑﹳ:I

.field public final ٴﹶ:Lٴᵎ/ﹳٴ;

.field public final ᵎﹶ:Z

.field public ᵔʾ:Lˎᵢ/ˊʻ;

.field public final ᵔᵢ:Z

.field public final ⁱˊ:Lٴᵎ/יـ;

.field public final ﹳٴ:Lﾞʿ/ʽ;

.field public ﾞʻ:Lʽᴵ/ʾᵎ;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;IIIIZZLˎᵢ/ﹳٴ;Lˉˆ/ʿ;Lٴᵎ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴᵎ/ˏי;->ﹳٴ:Lﾞʿ/ʽ;

    iput-object p2, p0, Lٴᵎ/ˏי;->ⁱˊ:Lٴᵎ/יـ;

    iput p3, p0, Lٴᵎ/ˏי;->ʽ:I

    iput p4, p0, Lٴᵎ/ˏי;->ˈ:I

    iput p5, p0, Lٴᵎ/ˏי;->ˑﹳ:I

    iput p6, p0, Lٴᵎ/ˏי;->ﾞᴵ:I

    iput-boolean p7, p0, Lٴᵎ/ˏי;->ᵎﹶ:Z

    iput-boolean p8, p0, Lٴᵎ/ˏי;->ᵔᵢ:Z

    iput-object p9, p0, Lٴᵎ/ˏי;->ʼˎ:Lˎᵢ/ﹳٴ;

    iput-object p10, p0, Lٴᵎ/ˏי;->ˆʾ:Lˉˆ/ʿ;

    iput-object p11, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    new-instance p1, Lﹶˈ/ᵔᵢ;

    invoke-direct {p1}, Lﹶˈ/ᵔᵢ;-><init>()V

    iput-object p1, p0, Lٴᵎ/ˏי;->ˉˆ:Lﹶˈ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ʼˎ()Lٴᵎ/ـˆ;
    .locals 6

    .prologue
    iget-object v0, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v0}, Lٴᵎ/ﹳٴ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v2, v1

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v2}, Lٴᵎ/ﹳٴ;->ˉˆ()Z

    move-result v2

    invoke-virtual {v0, v2}, Lٴᵎ/ᵔﹳ;->ʼˎ(Z)Z

    move-result v2

    monitor-enter v0

    if-nez v2, :cond_2

    :try_start_0
    iget-boolean v2, v0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v3, v0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    iget-object v3, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v3}, Lٴᵎ/ﹳٴ;->ˏי()Ljava/net/Socket;

    move-result-object v3

    goto :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_2
    iget-boolean v2, v0, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-object v2, v0, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v2, v2, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-virtual {p0, v2}, Lٴᵎ/ˏי;->ﾞʻ(Lˎᵢ/ʼᐧ;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    move-object v3, v1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v2}, Lٴᵎ/ﹳٴ;->ˏי()Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v3

    move-object v3, v2

    move v2, v5

    :goto_2
    monitor-exit v0

    iget-object v4, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v4}, Lٴᵎ/ﹳٴ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_5

    new-instance v2, Lٴᵎ/ʽﹳ;

    invoke-direct {v2, v0}, Lٴᵎ/ʽﹳ;-><init>(Lٴᵎ/ᵔﹳ;)V

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {v3}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_7
    iget-object v0, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_8

    iget-object v0, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_0

    iget-object v0, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :goto_3
    if-eqz v2, :cond_9

    return-object v2

    :cond_9
    invoke-virtual {p0, v1, v1}, Lٴᵎ/ˏי;->ʽ(Lٴᵎ/ˑﹳ;Ljava/util/List;)Lٴᵎ/ʽﹳ;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_a
    iget-object v0, p0, Lٴᵎ/ˏי;->ˉˆ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lٴᵎ/ˏי;->ˉˆ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lٴᵎ/ـˆ;

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lٴᵎ/ˏי;->ﹳٴ()Lٴᵎ/ˑﹳ;

    move-result-object v0

    iget-object v1, v0, Lٴᵎ/ˑﹳ;->ٴﹶ:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lٴᵎ/ˏי;->ʽ(Lٴᵎ/ˑﹳ;Ljava/util/List;)Lٴᵎ/ʽﹳ;

    move-result-object v1

    if-eqz v1, :cond_c

    return-object v1

    :cond_c
    return-object v0

    :goto_4
    monitor-exit v0

    throw v1
.end method

.method public final ʽ(Lٴᵎ/ˑﹳ;Ljava/util/List;)Lٴᵎ/ʽﹳ;
    .locals 10

    .prologue
    iget-object v0, p0, Lٴᵎ/ˏי;->ⁱˊ:Lٴᵎ/יـ;

    iget-object v1, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v1}, Lٴᵎ/ﹳٴ;->ˉˆ()Z

    move-result v1

    iget-object v2, p0, Lٴᵎ/ˏי;->ʼˎ:Lˎᵢ/ﹳٴ;

    iget-object v3, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lٴᵎ/ˑﹳ;->ﹳٴ()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iget-object v0, v0, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lٴᵎ/ᵔﹳ;

    monitor-enter v7

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v9, v7, Lٴᵎ/ᵔﹳ;->ٴﹶ:Lᵔᐧ/ᵔʾ;

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    if-nez v9, :cond_3

    :goto_3
    move v9, v4

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    invoke-virtual {v7, v2, p2}, Lٴᵎ/ᵔﹳ;->ᵎﹶ(Lˎᵢ/ﹳٴ;Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v7}, Lٴᵎ/ﹳٴ;->ﹳٴ(Lٴᵎ/ᵔﹳ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v5

    :goto_4
    monitor-exit v7

    if-eqz v9, :cond_1

    invoke-virtual {v7, v1}, Lٴᵎ/ᵔﹳ;->ʼˎ(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_6

    :cond_5
    monitor-enter v7

    :try_start_1
    iput-boolean v5, v7, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    invoke-virtual {v3}, Lٴᵎ/ﹳٴ;->ˏי()Ljava/net/Socket;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    if-eqz v8, :cond_1

    invoke-static {v8}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v7

    throw p1

    :goto_5
    monitor-exit v7

    throw p1

    :cond_6
    move-object v7, v8

    :goto_6
    if-nez v7, :cond_7

    return-object v8

    :cond_7
    if-eqz p1, :cond_8

    iget-object p2, p1, Lٴᵎ/ˑﹳ;->ˆʾ:Lˎᵢ/ˊʻ;

    iput-object p2, p0, Lٴᵎ/ˏי;->ᵔʾ:Lˎᵢ/ˊʻ;

    iget-object p1, p1, Lٴᵎ/ˑﹳ;->ᵔﹳ:Ljava/net/Socket;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    :cond_8
    iget-object p1, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {p1, v7}, Lٴᵎ/ﹳٴ;->ʼˎ(Lٴᵎ/ᵔﹳ;)V

    new-instance p1, Lٴᵎ/ʽﹳ;

    invoke-direct {p1, v7}, Lٴᵎ/ʽﹳ;-><init>(Lٴᵎ/ᵔﹳ;)V

    return-object p1
.end method

.method public final ˆʾ(Lٴᵎ/ᵔﹳ;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lٴᵎ/ˏי;->ˉˆ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lٴᵎ/ˏי;->ᵔʾ:Lˎᵢ/ˊʻ;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_5

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lٴᵎ/ᵔﹳ;->ᵔʾ:I

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p1, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v0, v0, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v3, p0, Lٴᵎ/ˏי;->ʼˎ:Lˎᵢ/ﹳٴ;

    iget-object v3, v3, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-static {v0, v3}, Lⁱᐧ/ˑﹳ;->ﹳٴ(Lˎᵢ/ʼᐧ;Lˎᵢ/ʼᐧ;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p1

    if-eqz v2, :cond_5

    iput-object v2, p0, Lٴᵎ/ˏי;->ᵔʾ:Lˎᵢ/ˊʻ;

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_5
    iget-object p1, p0, Lٴᵎ/ˏי;->ﾞʻ:Lʽᴵ/ʾᵎ;

    if-eqz p1, :cond_6

    iget v0, p1, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    iget-object p1, p1, Lʽᴵ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_6

    return v1

    :cond_6
    iget-object p1, p0, Lٴᵎ/ˏי;->ˉʿ:Lٴᵎ/ʼʼ;

    if-nez p1, :cond_7

    :goto_1
    return v1

    :cond_7
    invoke-virtual {p1}, Lٴᵎ/ʼʼ;->ﹳٴ()Z

    move-result p1

    return p1
.end method

.method public final ٴﹶ()Lˎᵢ/ﹳٴ;
    .locals 1

    iget-object v0, p0, Lٴᵎ/ˏי;->ʼˎ:Lˎᵢ/ﹳٴ;

    return-object v0
.end method

.method public final ᵎﹶ()Z
    .locals 1

    iget-object v0, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v0}, Lٴᵎ/ﹳٴ;->ʼᐧ()Z

    move-result v0

    return v0
.end method

.method public final ᵔᵢ()Lﹶˈ/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lٴᵎ/ˏי;->ˉˆ:Lﹶˈ/ᵔᵢ;

    return-object v0
.end method

.method public final ⁱˊ(Lˎᵢ/ˊʻ;Ljava/util/ArrayList;)Lٴᵎ/ˑﹳ;
    .locals 15

    .prologue
    move-object/from16 v10, p1

    sget-object v0, Lˎᵢ/ـˆ;->ˊʻ:Lˎᵢ/ـˆ;

    iget-object v1, v10, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v1, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_2

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ˆʾ:Ljava/util/List;

    sget-object v2, Lˎᵢ/ˆʾ;->ᵎﹶ:Lˎᵢ/ˆʾ;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v10, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v1, v1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    sget-object v2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v2, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    invoke-virtual {v2, v1}, Lـᐧ/ˑﹳ;->ʼˎ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication to "

    const-string v3, " not permitted by network security policy"

    invoke-static {v2, v1, v3}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "CLEARTEXT communication not enabled for client"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_0
    iget-object v1, v10, Lˎᵢ/ˊʻ;->ⁱˊ:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v10, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v1, Lˎᵢ/ﹳٴ;->ʽ:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_5

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ʼˎ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move-object v12, v3

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v0, Landroidx/leanback/widget/ʻٴ;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/leanback/widget/ʻٴ;-><init>(I)V

    iget-object v1, v10, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v1, v1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iput-object v1, v0, Landroidx/leanback/widget/ʻٴ;->ʽʽ:Ljava/lang/Object;

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1, v3}, Landroidx/leanback/widget/ʻٴ;->ʼᐧ(Ljava/lang/String;Lˎᵢ/ʾˋ;)V

    iget-object v1, v10, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v2, v1, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lⁱᐧ/ˑﹳ;->ʼˎ(Lˎᵢ/ʼᐧ;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lʼٴ/ʼˎ;

    const-string v4, "Host"

    invoke-virtual {v3, v4, v2}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ʼˎ;

    const-string v3, "Proxy-Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/leanback/widget/ʻٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ʼˎ;

    const-string v3, "User-Agent"

    const-string v4, "okhttp/5.1.0"

    invoke-virtual {v2, v3, v4}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lˎᵢ/ʾᵎ;

    invoke-direct {v3, v0}, Lˎᵢ/ʾᵎ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    sget-object v0, Lˎᵢ/ᴵᵔ;->ʾˋ:Lˎᵢ/ˈٴ;

    new-instance v0, Lʼٴ/ʼˎ;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lʼٴ/ʼˎ;-><init>(I)V

    const-string v2, "Proxy-Authenticate"

    const-string v4, "OkHttp-Preemptive"

    invoke-virtual {v0, v2, v4}, Lʼٴ/ʼˎ;->ﾞʻ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lʼٴ/ʼˎ;->ᵎﹶ()Lˎᵢ/ˉˆ;

    iget-object v0, v1, Lˎᵢ/ﹳٴ;->ﾞᴵ:Lˎᵢ/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :goto_3
    new-instance v0, Lٴᵎ/ˑﹳ;

    iget-object v1, p0, Lٴᵎ/ˏי;->ﹳٴ:Lﾞʿ/ʽ;

    iget-object v2, p0, Lٴᵎ/ˏי;->ⁱˊ:Lٴᵎ/יـ;

    iget v3, p0, Lٴᵎ/ˏי;->ʽ:I

    iget v4, p0, Lٴᵎ/ˏי;->ˈ:I

    iget v5, p0, Lٴᵎ/ˏי;->ˑﹳ:I

    iget v6, p0, Lٴᵎ/ˏי;->ﾞᴵ:I

    iget-boolean v7, p0, Lٴᵎ/ˏי;->ᵎﹶ:Z

    iget-object v8, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v9, p0

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v14}, Lٴᵎ/ˑﹳ;-><init>(Lﾞʿ/ʽ;Lٴᵎ/יـ;IIIIZLٴᵎ/ﹳٴ;Lٴᵎ/ˏי;Lˎᵢ/ˊʻ;Ljava/util/List;Lˎᵢ/ʾᵎ;IZ)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ()Lٴᵎ/ˑﹳ;
    .locals 11

    .prologue
    iget-object v0, p0, Lٴᵎ/ˏי;->ᵔʾ:Lˎᵢ/ˊʻ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lٴᵎ/ˏי;->ᵔʾ:Lˎᵢ/ˊʻ;

    invoke-virtual {p0, v0, v1}, Lٴᵎ/ˏי;->ⁱˊ(Lˎᵢ/ˊʻ;Ljava/util/ArrayList;)Lٴᵎ/ˑﹳ;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lٴᵎ/ˏי;->ﾞʻ:Lʽᴵ/ʾᵎ;

    if-eqz v0, :cond_2

    iget v2, v0, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    iget-object v3, v0, Lʽᴵ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v2, v0, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    iget-object v3, v0, Lʽᴵ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget v2, v0, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵢ/ˊʻ;

    invoke-virtual {p0, v0, v1}, Lٴᵎ/ˏי;->ⁱˊ(Lˎᵢ/ˊʻ;Ljava/util/ArrayList;)Lٴᵎ/ˑﹳ;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lٴᵎ/ˏי;->ˉʿ:Lٴᵎ/ʼʼ;

    if-nez v0, :cond_3

    new-instance v0, Lٴᵎ/ʼʼ;

    iget-object v1, p0, Lٴᵎ/ˏי;->ʼˎ:Lˎᵢ/ﹳٴ;

    iget-object v2, p0, Lٴᵎ/ˏי;->ˆʾ:Lˉˆ/ʿ;

    iget-object v3, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    iget-boolean v4, p0, Lٴᵎ/ˏי;->ᵔᵢ:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lٴᵎ/ʼʼ;-><init>(Lˎᵢ/ﹳٴ;Lˉˆ/ʿ;Lٴᵎ/ﹳٴ;Z)V

    iput-object v0, p0, Lٴᵎ/ˏי;->ˉʿ:Lٴᵎ/ʼʼ;

    :cond_3
    invoke-virtual {v0}, Lٴᵎ/ʼʼ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lٴᵎ/ʼʼ;->ﹳٴ()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    iget v2, v0, Lٴᵎ/ʼʼ;->ﾞᴵ:I

    iget-object v3, v0, Lٴᵎ/ʼʼ;->ˑﹳ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    iget-object v2, v0, Lٴᵎ/ʼʼ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    const-string v3, "No route to "

    iget v4, v0, Lٴᵎ/ʼʼ;->ﾞᴵ:I

    iget-object v5, v0, Lٴᵎ/ʼʼ;->ˑﹳ:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_19

    iget-object v4, v0, Lٴᵎ/ʼʼ;->ˑﹳ:Ljava/util/List;

    iget v5, v0, Lٴᵎ/ʼʼ;->ﾞᴵ:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lٴᵎ/ʼʼ;->ﾞᴵ:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    iget-object v5, v0, Lٴᵎ/ʼʼ;->ʽ:Lٴᵎ/ﹳٴ;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lٴᵎ/ʼʼ;->ᵎﹶ:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v7, v8, :cond_8

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    instance-of v8, v7, Ljava/net/InetSocketAddress;

    if-eqz v8, :cond_7

    check-cast v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_6
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_1
    iget-object v7, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v8, v7, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget v7, v7, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    :goto_2
    const/4 v9, 0x1

    if-gt v9, v7, :cond_18

    const/high16 v9, 0x10000

    if-ge v7, v9, :cond_18

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v3, v9, :cond_9

    invoke-static {v8, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_9
    sget-object v3, Lⁱᐧ/ⁱˊ;->ﹳٴ:Lﹶˑ/ʼˎ;

    iget-object v3, v3, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lˎᵢ/ﹳٴ;->ﹳٴ:Lˎᵢ/ⁱˊ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v3}, Lﹶˈ/ʼˎ;->י([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_17

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v3

    :goto_3
    iget-boolean v3, v0, Lٴᵎ/ʼʼ;->ˈ:Z

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_b

    goto/16 :goto_7

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/net/InetAddress;

    instance-of v10, v10, Ljava/net/Inet6Address;

    if-eqz v10, :cond_c

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_7

    :cond_e
    sget-object v2, Lⁱᐧ/ʽ;->ﹳٴ:[B

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-static {}, Lˈˊ/ᵔʾ;->ᵎﹶ()Lⁱˏ/ʽ;

    move-result-object v8

    :cond_f
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {v8}, Lˈˊ/ᵔʾ;->ﹳٴ(Lⁱˏ/ʽ;)Lⁱˏ/ʽ;

    move-result-object v2

    goto :goto_7

    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lⁱˏ/ʽ;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    :goto_9
    iget-object v2, v0, Lٴᵎ/ʼʼ;->ᵎﹶ:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    new-instance v5, Lˎᵢ/ˊʻ;

    iget-object v6, v0, Lٴᵎ/ʼʼ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-direct {v5, v6, v4, v3}, Lˎᵢ/ˊʻ;-><init>(Lˎᵢ/ﹳٴ;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v3, v0, Lٴᵎ/ʼʼ;->ⁱˊ:Lˉˆ/ʿ;

    monitor-enter v3

    :try_start_1
    iget-object v6, v3, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashSet;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    if-eqz v6, :cond_15

    iget-object v3, v0, Lٴᵎ/ʼʼ;->ᵔᵢ:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_b

    :cond_17
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lˎᵢ/ﹳٴ;->ﹳٴ:Lˎᵢ/ⁱˊ;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "Broken system behaviour for dns lookup of "

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_18
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; port is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v1, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget-object v2, v2, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; exhausted proxy configurations: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lٴᵎ/ʼʼ;->ˑﹳ:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lٴᵎ/ʼʼ;->ᵔᵢ:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iget-object v0, v0, Lٴᵎ/ʼʼ;->ᵔᵢ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1b
    new-instance v0, Lʽᴵ/ʾᵎ;

    invoke-direct {v0, v1}, Lʽᴵ/ʾᵎ;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lٴᵎ/ˏי;->ﾞʻ:Lʽᴵ/ʾᵎ;

    iget-object v2, p0, Lٴᵎ/ˏי;->ٴﹶ:Lٴᵎ/ﹳٴ;

    invoke-virtual {v2}, Lٴᵎ/ﹳٴ;->ʼᐧ()Z

    move-result v2

    if-nez v2, :cond_1d

    iget v2, v0, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    iget v2, v0, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lʽᴵ/ʾᵎ;->ⁱˊ:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵢ/ˊʻ;

    invoke-virtual {p0, v0, v1}, Lٴᵎ/ˏי;->ⁱˊ(Lˎᵢ/ˊʻ;Ljava/util/ArrayList;)Lٴᵎ/ˑﹳ;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exhausted all routes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﾞʻ(Lˎᵢ/ʼᐧ;)Z
    .locals 3

    .prologue
    iget-object v0, p0, Lٴᵎ/ˏי;->ʼˎ:Lˎᵢ/ﹳٴ;

    iget-object v0, v0, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    iget v1, p1, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    iget v2, v0, Lˎᵢ/ʼᐧ;->ˑﹳ:I

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    iget-object v0, v0, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    invoke-static {p1, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
