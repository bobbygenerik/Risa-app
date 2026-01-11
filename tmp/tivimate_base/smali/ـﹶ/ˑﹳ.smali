.class public final Lـﹶ/ˑﹳ;
.super Lˉᵎ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ᵔʾ:Lـﹶ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lـﹶ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـﹶ/ˑﹳ;->ᵔʾ:Lـﹶ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ˉٴ(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lـﹶ/ˑﹳ;->ᵔʾ:Lـﹶ/ﾞᴵ;

    iget-object v0, v0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lـﹶ/ˆʾ;

    invoke-virtual {v0, p1}, Lـﹶ/ˆʾ;->ˈ(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ᵎⁱ(Lˏˆ/ﹳٴ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lـﹶ/ˑﹳ;->ᵔʾ:Lـﹶ/ﾞᴵ;

    iput-object p1, v0, Lـﹶ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    new-instance p1, Lᵢ/ﹳٴ;

    iget-object v1, v0, Lـﹶ/ﾞᴵ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lˏˆ/ﹳٴ;

    iget-object v2, v0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lـﹶ/ˆʾ;

    iget-object v3, v2, Lـﹶ/ˆʾ;->ᵎﹶ:Lᵎˉ/ⁱˊ;

    iget-object v2, v2, Lـﹶ/ˆʾ;->ʼˎ:Lـﹶ/ˈ;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_0

    invoke-static {}, Lـﹶ/ᵔʾ;->ﹳٴ()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lᴵˋ/ˊʻ;->יـ()Ljava/util/Set;

    move-result-object v4

    :goto_0
    invoke-direct {p1, v1, v3, v2, v4}, Lᵢ/ﹳٴ;-><init>(Lˏˆ/ﹳٴ;Lᵎˉ/ⁱˊ;Lـﹶ/ˈ;Ljava/util/Set;)V

    iput-object p1, v0, Lـﹶ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    iget-object p1, v0, Lـﹶ/ﾞᴵ;->ʽ:Ljava/lang/Object;

    check-cast p1, Lـﹶ/ˆʾ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    iput v1, p1, Lـﹶ/ˆʾ;->ʽ:I

    iget-object v1, p1, Lـﹶ/ˆʾ;->ⁱˊ:Lיـ/ﾞᴵ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p1, Lـﹶ/ˆʾ;->ⁱˊ:Lיـ/ﾞᴵ;

    invoke-virtual {v1}, Lיـ/ﾞᴵ;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p1, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v1, p1, Lـﹶ/ˆʾ;->ˈ:Landroid/os/Handler;

    new-instance v2, Landroidx/leanback/widget/ˏᵢ;

    iget p1, p1, Lـﹶ/ˆʾ;->ʽ:I

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Landroidx/leanback/widget/ˏᵢ;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p1, p1, Lـﹶ/ˆʾ;->ﹳٴ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
