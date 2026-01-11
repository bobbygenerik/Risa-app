.class public final Lʻᐧ/ᵔﹳ;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʻᐧ/ᵔﹳ;->ﹳٴ:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Lʻᐧ/ᵔﹳ;->ﹳٴ:I

    iput-object p1, p0, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    iget v0, p0, Lʻᐧ/ᵔﹳ;->ﹳٴ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lⁱᴵ/ˑﹳ;

    iget-object v1, v1, Lⁱᴵ/ˑﹳ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lⁱᴵ/ʽ;

    invoke-virtual {v7}, Lⁱᴵ/ʽ;->ˉˆ()V

    iget-object v8, v7, Lⁱᴵ/ʽ;->ʽﹳ:[B

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v4, :cond_2

    goto :goto_0

    :cond_2
    iget p1, v7, Lⁱᴵ/ʽ;->ˉˆ:I

    if-ne p1, v3, :cond_3

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lⁱᴵ/ʽ;->ʼˎ(Z)V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_4

    goto/16 :goto_5

    :cond_4
    iget-object p1, p0, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lⁱᴵ/ʽ;

    iget-object v4, p1, Lⁱᴵ/ʽ;->ـˆ:Lⁱᴵ/ˉˆ;

    if-ne v6, v4, :cond_d

    invoke-virtual {p1}, Lⁱᴵ/ʽ;->ˆʾ()Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_5

    :cond_5
    iput-object v1, p1, Lⁱᴵ/ʽ;->ـˆ:Lⁱᴵ/ˉˆ;

    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/NoSuchMethodError;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    :try_start_0
    check-cast v0, [B

    iget-object v1, p1, Lⁱᴵ/ʽ;->ⁱˊ:Lⁱᴵ/ᵔﹳ;

    iget-object v2, p1, Lⁱᴵ/ʽ;->ʽﹳ:[B

    invoke-interface {v1, v2, v0}, Lⁱᴵ/ᵔﹳ;->ˆʾ([B[B)[B

    move-result-object v0

    iget-object v1, p1, Lⁱᴵ/ʽ;->ʻٴ:[B

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    array-length v1, v0

    if-eqz v1, :cond_7

    iput-object v0, p1, Lⁱᴵ/ʽ;->ʻٴ:[B

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_7
    :goto_1
    iput v3, p1, Lⁱᴵ/ʽ;->ˉˆ:I

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    invoke-virtual {p1, v0}, Lⁱᴵ/ʽ;->ᵔᵢ(Lᵔﹶ/ˉʿ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_2
    invoke-virtual {p1, v0, v5}, Lⁱᴵ/ʽ;->ﾞʻ(Ljava/lang/Throwable;Z)V

    goto :goto_5

    :cond_8
    :goto_3
    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0, v2}, Lⁱᴵ/ʽ;->ﾞʻ(Ljava/lang/Throwable;Z)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lⁱᴵ/ʽ;

    iget-object v3, p1, Lⁱᴵ/ʽ;->ʽ:Lˑʼ/ᵎˊ;

    iget-object v7, p1, Lⁱᴵ/ʽ;->ʾᵎ:Lⁱᴵ/ʼᐧ;

    if-ne v6, v7, :cond_d

    iget v6, p1, Lⁱᴵ/ʽ;->ˉˆ:I

    if-eq v6, v4, :cond_a

    invoke-virtual {p1}, Lⁱᴵ/ʽ;->ˆʾ()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    iput-object v1, p1, Lⁱᴵ/ʽ;->ʾᵎ:Lⁱᴵ/ʼᐧ;

    instance-of v4, v0, Ljava/lang/Exception;

    if-eqz v4, :cond_b

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v3, v0, v2}, Lˑʼ/ᵎˊ;->ᵔٴ(Ljava/lang/Exception;Z)V

    goto :goto_5

    :cond_b
    :try_start_1
    iget-object p1, p1, Lⁱᴵ/ʽ;->ⁱˊ:Lⁱᴵ/ᵔﹳ;

    check-cast v0, [B

    invoke-interface {p1, v0}, Lⁱᴵ/ᵔﹳ;->ˉˆ([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    iput-object v1, v3, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    iget-object p1, v3, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-static {p1}, Lʼʻ/ᵎⁱ;->ٴﹶ(Ljava/util/Collection;)Lʼʻ/ᵎⁱ;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v0, v2}, Lʼʻ/ᵎⁱ;->ˉʿ(I)Lʼʻ/ٴᵢ;

    move-result-object p1

    :cond_c
    :goto_4
    invoke-virtual {p1}, Lʼʻ/ٴᵢ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lʼʻ/ٴᵢ;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lⁱᴵ/ʽ;

    invoke-virtual {v0}, Lⁱᴵ/ʽ;->ˉʿ()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v5}, Lⁱᴵ/ʽ;->ʼˎ(Z)V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p1, v0

    invoke-virtual {v3, p1, v5}, Lˑʼ/ᵎˊ;->ᵔٴ(Ljava/lang/Exception;Z)V

    :cond_d
    :goto_5
    return-void

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_f

    const/4 v1, -0x2

    if-eq v0, v1, :cond_f

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    if-eq v0, v5, :cond_e

    goto :goto_6

    :cond_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/DialogInterface;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_6

    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_6
    return-void

    :pswitch_2
    iget-object v0, p0, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lʼᵢ/ˑﹳ;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_19

    if-eq v0, v4, :cond_16

    const/4 v4, 0x3

    if-eq v0, v4, :cond_15

    if-eq v0, v3, :cond_12

    iget-object v0, v2, Lʼᵢ/ˑﹳ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    goto/16 :goto_9

    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    :try_start_2
    iget-object v0, v2, Lʼᵢ/ˑﹳ;->ﹳٴ:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object p1, v0

    iget-object v0, v2, Lʼᵢ/ˑﹳ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_13
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_13

    goto :goto_9

    :cond_15
    iget-object p1, v2, Lʼᵢ/ˑﹳ;->ˑﹳ:Lᐧˎ/ˑﹳ;

    invoke-virtual {p1}, Lᐧˎ/ˑﹳ;->ˑﹳ()Z

    goto :goto_9

    :cond_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lʼᵢ/ˈ;

    iget v5, v3, Lʼᵢ/ˈ;->ﹳٴ:I

    iget-object v7, v3, Lʼᵢ/ˈ;->ʽ:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v8, v3, Lʼᵢ/ˈ;->ˈ:J

    iget v10, v3, Lʼᵢ/ˈ;->ˑﹳ:I

    :try_start_3
    sget-object p1, Lʼᵢ/ˑﹳ;->ᵔᵢ:Ljava/lang/Object;

    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    iget-object v4, v2, Lʼᵢ/ˑﹳ;->ﹳٴ:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    monitor-exit p1

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    move-object p1, v0

    iget-object v4, v2, Lʼᵢ/ˑﹳ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_17
    invoke-virtual {v4, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_7

    :cond_18
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_17

    :goto_7
    move-object v1, v3

    goto :goto_9

    :cond_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lʼᵢ/ˈ;

    iget v5, v3, Lʼᵢ/ˈ;->ﹳٴ:I

    iget v7, v3, Lʼᵢ/ˈ;->ⁱˊ:I

    iget-wide v8, v3, Lʼᵢ/ˈ;->ˈ:J

    iget v10, v3, Lʼᵢ/ˈ;->ˑﹳ:I

    :try_start_6
    iget-object v4, v2, Lʼᵢ/ˑﹳ;->ﹳٴ:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object p1, v0

    iget-object v2, v2, Lʼᵢ/ˑﹳ;->ˈ:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1a
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1a

    :goto_8
    goto :goto_7

    :goto_9
    if-eqz v1, :cond_1c

    invoke-static {v1}, Lʼᵢ/ˑﹳ;->ﾞᴵ(Lʼᵢ/ˈ;)V

    :cond_1c
    return-void

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v5, :cond_1d

    goto :goto_a

    :cond_1d
    iget-object p1, p0, Lʻᐧ/ᵔﹳ;->ⁱˊ:Ljava/lang/Object;

    check-cast p1, Lʻᐧ/ˏי;

    iget-object v0, p1, Lʻᐧ/ˏי;->ʻᴵ:Lʻᐧ/ʼʼ;

    iget-object v0, v0, Lʻᐧ/ʼʼ;->ᵎﹶ:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1e

    iget-object p1, p1, Lʻᐧ/ˏי;->ـˊ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lʻᐧ/ـˆ;

    invoke-direct {v1, v0}, Lʻᐧ/ـˆ;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lˋˋ/ᴵˑ;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->ﾞʻ()V

    :cond_1e
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
