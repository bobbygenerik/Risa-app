.class public final Lʿʾ/ᵔʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lʿʾ/ᵔﹳ;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Lⁱⁱ/ᵎﹶ;


# direct methods
.method public synthetic constructor <init>(Lʿʾ/ᵔﹳ;Lⁱⁱ/ᵎﹶ;I)V
    .locals 0

    iput p3, p0, Lʿʾ/ᵔʾ;->ʾˋ:I

    iput-object p1, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    iput-object p2, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ﹳٴ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;

    iget-object v1, v0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v1}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-object v0, v0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    iget-object v2, v2, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object v3, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;

    iget-object v2, v2, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    new-instance v4, Lʿʾ/ˉˆ;

    sget-object v5, Lʿٴ/ﾞᴵ;->ⁱˊ:Lʿʿ/ﹳٴ;

    invoke-direct {v4, v3, v5}, Lʿʾ/ˉˆ;-><init>(Lⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    iget-object v3, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v2, Lʿʾ/ᵔﹳ;->ˋᵔ:Lcom/bumptech/glide/load/engine/GlideException;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Lⁱⁱ/ᵎﹶ;->ˆʾ(Lcom/bumptech/glide/load/engine/GlideException;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    new-instance v3, Lʿʾ/ˈ;

    invoke-direct {v3, v2}, Lʿʾ/ˈ;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_1
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    invoke-virtual {v2}, Lʿʾ/ᵔﹳ;->ˈ()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    iget v0, p0, Lʿʾ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;

    iget-object v1, v0, Lⁱⁱ/ᵎﹶ;->ⁱˊ:Lˈﹳ/ˑﹳ;

    invoke-virtual {v1}, Lˈﹳ/ˑﹳ;->ﹳٴ()V

    iget-object v0, v0, Lⁱⁱ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    iget-object v2, v2, Lʿʾ/ᵔﹳ;->ʾˋ:Lʿʾ/ʼᐧ;

    iget-object v3, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;

    iget-object v2, v2, Lʿʾ/ʼᐧ;->ʾˋ:Ljava/util/ArrayList;

    new-instance v4, Lʿʾ/ˉˆ;

    sget-object v5, Lʿٴ/ﾞᴵ;->ⁱˊ:Lʿʿ/ﹳٴ;

    invoke-direct {v4, v3, v5}, Lʿʾ/ˉˆ;-><init>(Lⁱⁱ/ᵎﹶ;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    iget-object v2, v2, Lʿʾ/ᵔﹳ;->ʼˈ:Lʿʾ/ʽﹳ;

    invoke-virtual {v2}, Lʿʾ/ʽﹳ;->ﹳٴ()V

    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    iget-object v3, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v2, Lʿʾ/ᵔﹳ;->ʼˈ:Lʿʾ/ʽﹳ;

    iget v5, v2, Lʿʾ/ᵔﹳ;->ˈʿ:I

    iget-boolean v2, v2, Lʿʾ/ᵔﹳ;->ˈⁱ:Z

    invoke-virtual {v3, v4, v5, v2}, Lⁱⁱ/ᵎﹶ;->ٴﹶ(Lʿʾ/ᵢˏ;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    iget-object v3, p0, Lʿʾ/ᵔʾ;->ᴵˊ:Lⁱⁱ/ᵎﹶ;

    invoke-virtual {v2, v3}, Lʿʾ/ᵔﹳ;->ˆʾ(Lⁱⁱ/ᵎﹶ;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    new-instance v3, Lʿʾ/ˈ;

    invoke-direct {v3, v2}, Lʿʾ/ˈ;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :goto_0
    iget-object v2, p0, Lʿʾ/ᵔʾ;->ʽʽ:Lʿʾ/ᵔﹳ;

    invoke-virtual {v2}, Lʿʾ/ᵔﹳ;->ˈ()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :pswitch_0
    invoke-direct {p0}, Lʿʾ/ᵔʾ;->ﹳٴ()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
