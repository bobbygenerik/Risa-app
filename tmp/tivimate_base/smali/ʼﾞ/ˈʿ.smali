.class public final Lʼﾞ/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final ʽʽ:Ljava/util/concurrent/Executor;

.field public final synthetic ʾˋ:I

.field public ˈٴ:Ljava/lang/Runnable;

.field public final ᴵˊ:Ljava/util/ArrayDeque;

.field public final ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 0

    .prologue
    iput p2, p0, Lʼﾞ/ˈʿ;->ʾˋ:I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˈʿ;->ʽʽ:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˈʿ;->ʽʽ:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lʿʿ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʼﾞ/ˈʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    iput-object p1, p0, Lʼﾞ/ˈʿ;->ʽʽ:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final ˈ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, p0, Lʼﾞ/ˈʿ;->ˈٴ:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lʼﾞ/ˈʿ;->ʽʽ:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method private final ⁱˊ(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    new-instance v2, Lˈˊ/ᵔﹳ;

    const/16 v3, 0x15

    invoke-direct {v2, p0, v3, p1}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lʼﾞ/ˈʿ;->ˈٴ:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʼﾞ/ˈʿ;->ʽ()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final ﹳٴ(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    new-instance v2, Lʻʿ/ᵔʾ;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3, p0}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lʼﾞ/ˈʿ;->ˈٴ:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʼﾞ/ˈʿ;->ʽ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    iget v0, p0, Lʼﾞ/ˈʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    new-instance v2, Lᐧᵢ/ˉʿ;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3, p1}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lʼﾞ/ˈʿ;->ˈٴ:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lʼﾞ/ˈʿ;->ʽ()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_0
    invoke-direct {p0, p1}, Lʼﾞ/ˈʿ;->ⁱˊ(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lʼﾞ/ˈʿ;->ﹳٴ(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ʽ()V
    .locals 3

    .prologue
    iget v0, p0, Lʼﾞ/ˈʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼﾞ/ˈʿ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lʼﾞ/ˈʿ;->ˈٴ:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lʼﾞ/ˈʿ;->ʽʽ:Ljava/util/concurrent/Executor;

    check-cast v2, Lʿʿ/ﹳٴ;

    invoke-virtual {v2, v1}, Lʿʿ/ﹳٴ;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    iget-object v0, p0, Lʼﾞ/ˈʿ;->ᴵˊ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lʼﾞ/ˈʿ;->ˈٴ:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lʼﾞ/ˈʿ;->ʽʽ:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :pswitch_1
    invoke-direct {p0}, Lʼﾞ/ˈʿ;->ˈ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
