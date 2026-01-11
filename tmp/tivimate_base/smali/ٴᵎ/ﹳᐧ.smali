.class public final Lٴᵎ/ﹳᐧ;
.super Lﾞʿ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final synthetic ˑﹳ:I

.field public final synthetic ﾞᴵ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lᴵⁱ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lٴᵎ/ﹳᐧ;->ˑﹳ:I

    iput-object p2, p0, Lٴᵎ/ﹳᐧ;->ﾞᴵ:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lﾞʿ/ﹳٴ;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lٴᵎ/יـ;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lٴᵎ/ﹳᐧ;->ˑﹳ:I

    iput-object p1, p0, Lٴᵎ/ﹳᐧ;->ﾞᴵ:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lﾞʿ/ﹳٴ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()J
    .locals 19

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lٴᵎ/ﹳᐧ;->ˑﹳ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lٴᵎ/ﹳᐧ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lᴵⁱ/ﹳٴ;

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    const-wide/16 v2, -0x1

    return-wide v2

    :pswitch_0
    iget-object v0, v1, Lٴᵎ/ﹳᐧ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Lٴᵎ/יـ;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, v0, Lٴᵎ/יـ;->ⁱˊ:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v5, v0, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lٴᵎ/ᵔﹳ;

    iget-object v6, v6, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v6, v6, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_1
    iget-wide v5, v0, Lٴᵎ/יـ;->ﹳٴ:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-object v7, v0, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const-wide v10, 0x7fffffffffffffffL

    move-wide v11, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v10, v8

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lٴᵎ/ᵔﹳ;

    monitor-enter v15

    :try_start_0
    invoke-virtual {v0, v15, v2, v3}, Lٴᵎ/יـ;->ﹳٴ(Lٴᵎ/ᵔﹳ;J)I

    move-result v16

    if-lez v16, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    iget-wide v9, v15, Lٴᵎ/ᵔﹳ;->יـ:J

    cmp-long v18, v9, v5

    if-gez v18, :cond_3

    move-wide v5, v9

    move-object v13, v15

    :cond_3
    iget-object v1, v15, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v1, v1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    add-int/lit8 v8, v8, 0x1

    cmp-long v1, v9, v11

    if-gez v1, :cond_4

    move-wide v11, v9

    move-object v14, v15

    :cond_4
    move/from16 v10, v17

    :goto_2
    monitor-exit v15

    move-object/from16 v1, p0

    goto :goto_1

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v15

    throw v0

    :cond_6
    move/from16 v17, v10

    const-wide/16 v9, -0x1

    if-eqz v13, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x5

    if-le v8, v1, :cond_8

    move-wide v5, v11

    move-object v13, v14

    goto :goto_3

    :cond_8
    move-wide v5, v9

    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_c

    monitor-enter v13

    :try_start_2
    iget-object v1, v13, Lٴᵎ/ᵔﹳ;->ﹳᐧ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v9, 0x0

    if-nez v1, :cond_9

    monitor-exit v13

    goto :goto_4

    :cond_9
    :try_start_3
    iget-wide v1, v13, Lٴᵎ/ᵔﹳ;->יـ:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_a

    monitor-exit v13

    goto :goto_4

    :cond_a
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, v13, Lٴᵎ/ᵔﹳ;->ﾞʻ:Z

    iget-object v1, v0, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v13

    iget-object v1, v13, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v1, v1, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, v13, Lٴᵎ/ᵔﹳ;->ﾞᴵ:Ljava/net/Socket;

    invoke-static {v1}, Lⁱᐧ/ˑﹳ;->ʽ(Ljava/net/Socket;)V

    iget-object v1, v0, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, v0, Lٴᵎ/יـ;->ʽ:Lﾞʿ/ⁱˊ;

    invoke-virtual {v0}, Lﾞʿ/ⁱˊ;->ﹳٴ()V

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_c
    if-eqz v14, :cond_d

    iget-wide v0, v0, Lٴᵎ/יـ;->ﹳٴ:J

    add-long/2addr v11, v0

    sub-long v9, v11, v2

    goto :goto_4

    :cond_d
    if-lez v17, :cond_e

    iget-wide v9, v0, Lٴᵎ/יـ;->ﹳٴ:J

    :cond_e
    :goto_4
    return-wide v9

    :cond_f
    invoke-static {v5}, Lˉˆ/ٴᴵ;->ˑﹳ(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
