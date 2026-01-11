.class public final synthetic Landroidx/lifecycle/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/lifecycle/ᵎⁱ;->ʾˋ:I

    iput-object p2, p0, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ⁱˊ()V
    .locals 5

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/ʼˎ;

    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˆי/ˈ;

    invoke-virtual {v1}, Lˆי/ˈ;->ﹳٴ()Ljava/util/Map;

    move-result-object v2

    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˆי/ˈ;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˉˆ/ˎـ;

    iget-object v3, v1, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    check-cast v3, Lˆי/ᵎﹶ;

    iget-object v1, v1, Lˉˆ/ˎـ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v0, v0, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    invoke-virtual {v3, v1, v2, v0}, Lˆי/ᵎﹶ;->ᵔᵢ(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final ﹳٴ()V
    .locals 6

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼᵢ/ﾞᴵ;

    iget-object v1, v0, Lʼᵢ/ﾞᴵ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lʼᵢ/ﾞᴵ;->ˉʿ:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lʼᵢ/ﾞᴵ;->ﾞʻ:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lʼᵢ/ﾞᴵ;->ﾞʻ:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {v0, v2}, Lʼᵢ/ﾞᴵ;->ⁱˊ(Ljava/lang/IllegalStateException;)V

    monitor-exit v1

    return-void

    :cond_2
    invoke-virtual {v0}, Lʼᵢ/ﾞᴵ;->ﹳٴ()V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 35

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Landroidx/lifecycle/ᵎⁱ;->ʾˋ:I

    const v2, 0x7f130066

    const v3, 0x7f130067

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x4

    const v7, 0x7f130064

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lـﹶ/ᵔﹳ;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v3, v2, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lـﹶ/ᵔﹳ;->ˉٴ:Lˉᵎ/ⁱˊ;

    if-nez v4, :cond_0

    monitor-exit v3

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lـﹶ/ᵔﹳ;->ˈ()Lᵔٴ/ᵔᵢ;

    move-result-object v3

    iget v4, v3, Lᵔٴ/ᵔᵢ;->ﾞᴵ:I

    if-ne v4, v8, :cond_1

    iget-object v5, v2, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    if-nez v4, :cond_4

    :try_start_4
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    sget-object v4, Lˆﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/reflect/Method;

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v2, Lـﹶ/ᵔﹳ;->ʽʽ:Lﹳˋ/ʼˎ;

    iget-object v4, v2, Lـﹶ/ᵔﹳ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v0, v10, [Lᵔٴ/ᵔᵢ;

    aput-object v3, v0, v11

    sget-object v5, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    const-string v5, "TypefaceCompat.createFromFontInfo"

    invoke-static {v5}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    sget-object v5, Lᵎⁱ/ˑﹳ;->ﹳٴ:Lﹳˋ/ٴﹶ;

    invoke-virtual {v5, v4, v0, v11}, Lﹳˋ/ٴﹶ;->ٴﹶ(Landroid/content/Context;[Lᵔٴ/ᵔᵢ;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v4, v2, Lـﹶ/ᵔﹳ;->ʾˋ:Landroid/content/Context;

    iget-object v3, v3, Lᵔٴ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-static {v4, v3}, Lﹳˋ/ʽʽ;->יـ(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :try_start_7
    const-string v4, "EmojiCompat.MetadataRepo.create"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v4, Lˏˆ/ﹳٴ;

    invoke-static {v3}, Lﹳˋ/ٴﹶ;->ˊʻ(Ljava/nio/MappedByteBuffer;)Lˈˏ/ⁱˊ;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lˏˆ/ﹳٴ;-><init>(Landroid/graphics/Typeface;Lˈˏ/ⁱˊ;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v3, v2, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v0, v2, Lـﹶ/ᵔﹳ;->ˉٴ:Lˉᵎ/ⁱˊ;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Lˉᵎ/ⁱˊ;->ᵎⁱ(Lˏˆ/ﹳٴ;)V

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v2}, Lـﹶ/ᵔﹳ;->ⁱˊ()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_6

    :goto_2
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_4
    move-exception v0

    :try_start_e
    sget-object v3, Lˆﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/reflect/Method;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Unable to open file."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3

    :catchall_6
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_3
    :try_start_f
    sget-object v3, Lˆﾞ/ᵎﹶ;->ⁱˊ:Ljava/lang/reflect/Method;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :goto_4
    iget-object v4, v2, Lـﹶ/ᵔﹳ;->ˈٴ:Ljava/lang/Object;

    monitor-enter v4

    :try_start_10
    iget-object v3, v2, Lـﹶ/ᵔﹳ;->ˉٴ:Lˉᵎ/ⁱˊ;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Lˉᵎ/ⁱˊ;->ˉٴ(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_7
    move-exception v0

    goto :goto_7

    :cond_5
    :goto_5
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-virtual {v2}, Lـﹶ/ᵔﹳ;->ⁱˊ()V

    :goto_6
    return-void

    :goto_7
    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0

    :goto_8
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـˏ/ˈ;

    iget-object v0, v0, Lـˏ/ˈ;->ﹳٴ:Lـˏ/ⁱˊ;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    return-void

    :pswitch_1
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑˆ/ˈ;

    invoke-virtual {v0}, Lˑˆ/ˈ;->ʾˋ()V

    return-void

    :pswitch_2
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ʿ;

    iget-object v0, v0, Lˑʼ/ʿ;->ˉˆ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_9
    if-ge v11, v2, :cond_7

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Lˉˑ/ʽ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_9

    :cond_7
    return-void

    :pswitch_3
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v2, v0, Lˑʼ/ᴵᵔ;->י:Lˑʼ/ٴﹳ;

    iget-object v3, v0, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    iget-object v2, v2, Lˑʼ/ٴﹳ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    invoke-virtual {v2, v3}, Lـʾ/ᵔﹳ;->יـ(Landroid/os/Bundle;)V

    iput-object v9, v0, Lˑʼ/ᴵᵔ;->ˈٴ:Landroid/os/Bundle;

    return-void

    :pswitch_4
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ˉˆ;

    invoke-static {v8}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "FragmentManager"

    const-string v3, "Transition for all operations has completed"

    nop

    :cond_8
    iget-object v2, v0, Lˑʼ/ˉˆ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_a
    if-ge v11, v3, :cond_9

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v11, v11, 0x1

    check-cast v4, Lˑʼ/ʼᐧ;

    iget-object v4, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lˑʼ/ʽᵔ;

    invoke-virtual {v4, v0}, Lˑʼ/ʽᵔ;->ʽ(Lˑʼ/ـᵎ;)V

    goto :goto_a

    :cond_9
    return-void

    :pswitch_5
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v6, v0}, Lˑʼ/ˊᵔ;->ﹳٴ(ILjava/util/ArrayList;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊʼ/ˏי;

    iget-object v0, v0, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lᴵⁱ/ﹳٴ;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    :cond_a
    return-void

    :pswitch_7
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᵔ/ʽ;

    iget-object v0, v0, Lˊᵔ/ʽ;->ʽ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊᵔ/ʽ;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lˊᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move v7, v11

    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1c

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˊᵔ/ᵔᵢ;

    if-nez v8, :cond_c

    :cond_b
    :goto_c
    move-wide/from16 v16, v2

    move-wide/from16 v18, v5

    move v12, v7

    goto/16 :goto_16

    :cond_c
    iget-object v12, v0, Lˊᵔ/ʽ;->ﹳٴ:Lיـ/ﹳᐧ;

    invoke-virtual {v12, v8}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-nez v13, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v5

    if-gez v13, :cond_b

    invoke-virtual {v12, v8}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    iget-wide v12, v8, Lˊᵔ/ᵔᵢ;->ʼˎ:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_e

    iput-wide v2, v8, Lˊᵔ/ᵔᵢ;->ʼˎ:J

    iget v12, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    invoke-virtual {v8, v12}, Lˊᵔ/ᵔᵢ;->ʽ(F)V

    goto :goto_c

    :cond_e
    sub-long v12, v2, v12

    iput-wide v2, v8, Lˊᵔ/ᵔᵢ;->ʼˎ:J

    invoke-static {}, Lˊᵔ/ᵔᵢ;->ⁱˊ()Lˊᵔ/ʽ;

    move-result-object v14

    iget v14, v14, Lˊᵔ/ʽ;->ᵎﹶ:F

    const/4 v15, 0x0

    cmpl-float v18, v14, v15

    if-nez v18, :cond_f

    const-wide/32 v12, 0x7fffffff

    :goto_e
    move-wide/from16 v23, v12

    goto :goto_f

    :cond_f
    long-to-float v12, v12

    div-float/2addr v12, v14

    float-to-long v12, v12

    goto :goto_e

    :goto_f
    iget-boolean v12, v8, Lˊᵔ/ᵔᵢ;->ˉˆ:Z

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v12, :cond_11

    iget v12, v8, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    cmpl-float v14, v12, v13

    if-eqz v14, :cond_10

    iget-object v14, v8, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    float-to-double v9, v12

    iput-wide v9, v14, Lˊᵔ/ʼˎ;->ʼˎ:D

    iput v13, v8, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    :cond_10
    iget-object v9, v8, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iget-wide v9, v9, Lˊᵔ/ʼˎ;->ʼˎ:D

    double-to-float v9, v9

    iput v9, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iput v15, v8, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    iput-boolean v11, v8, Lˊᵔ/ᵔᵢ;->ˉˆ:Z

    :goto_10
    const/4 v9, 0x1

    goto/16 :goto_12

    :cond_11
    iget v9, v8, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    cmpl-float v9, v9, v13

    if-eqz v9, :cond_12

    iget-object v9, v8, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iget v10, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    float-to-double v11, v10

    iget v10, v8, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    float-to-double v14, v10

    const-wide/16 v18, 0x2

    div-long v32, v23, v18

    move-object/from16 v27, v9

    move-wide/from16 v28, v11

    move-wide/from16 v30, v14

    invoke-virtual/range {v27 .. v33}, Lˊᵔ/ʼˎ;->ʽ(DDJ)Lˊᵔ/ﾞᴵ;

    move-result-object v9

    iget-object v10, v8, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iget v11, v8, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    float-to-double v11, v11

    iput-wide v11, v10, Lˊᵔ/ʼˎ;->ʼˎ:D

    iput v13, v8, Lˊᵔ/ᵔᵢ;->ᵔʾ:F

    iget v11, v9, Lˊᵔ/ﾞᴵ;->ﹳٴ:F

    float-to-double v11, v11

    iget v9, v9, Lˊᵔ/ﾞᴵ;->ⁱˊ:F

    float-to-double v13, v9

    move-object/from16 v27, v10

    move-wide/from16 v28, v11

    move-wide/from16 v30, v13

    invoke-virtual/range {v27 .. v33}, Lˊᵔ/ʼˎ;->ʽ(DDJ)Lˊᵔ/ﾞᴵ;

    move-result-object v9

    iget v10, v9, Lˊᵔ/ﾞᴵ;->ﹳٴ:F

    iput v10, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v9, v9, Lˊᵔ/ﾞᴵ;->ⁱˊ:F

    iput v9, v8, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    goto :goto_11

    :cond_12
    iget-object v9, v8, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iget v10, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    float-to-double v10, v10

    iget v12, v8, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    float-to-double v12, v12

    move-object/from16 v18, v9

    move-wide/from16 v19, v10

    move-wide/from16 v21, v12

    invoke-virtual/range {v18 .. v24}, Lˊᵔ/ʼˎ;->ʽ(DDJ)Lˊᵔ/ﾞᴵ;

    move-result-object v9

    iget v10, v9, Lˊᵔ/ﾞᴵ;->ﹳٴ:F

    iput v10, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v9, v9, Lˊᵔ/ﾞᴵ;->ⁱˊ:F

    iput v9, v8, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    :goto_11
    iget v9, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v10, v8, Lˊᵔ/ᵔᵢ;->ᵔᵢ:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v10, v8, Lˊᵔ/ᵔᵢ;->ᵎﹶ:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v10, v8, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    iget-object v11, v8, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v12, v10

    iget-wide v14, v11, Lˊᵔ/ʼˎ;->ˑﹳ:D

    cmpg-double v10, v12, v14

    if-gez v10, :cond_13

    iget-wide v12, v11, Lˊᵔ/ʼˎ;->ʼˎ:D

    double-to-float v10, v12

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    iget-wide v11, v11, Lˊᵔ/ʼˎ;->ˈ:D

    cmpg-double v9, v9, v11

    if-gez v9, :cond_13

    iget-object v9, v8, Lˊᵔ/ᵔᵢ;->ˉʿ:Lˊᵔ/ʼˎ;

    iget-wide v9, v9, Lˊᵔ/ʼˎ;->ʼˎ:D

    double-to-float v9, v9

    iput v9, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    const/4 v9, 0x0

    iput v9, v8, Lˊᵔ/ᵔᵢ;->ﹳٴ:F

    goto/16 :goto_10

    :cond_13
    const/4 v9, 0x0

    :goto_12
    iget v10, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v11, v8, Lˊᵔ/ᵔᵢ;->ᵎﹶ:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget v11, v8, Lˊᵔ/ᵔᵢ;->ᵔᵢ:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    invoke-virtual {v8, v10}, Lˊᵔ/ᵔᵢ;->ʽ(F)V

    if-eqz v9, :cond_b

    iget-object v9, v8, Lˊᵔ/ᵔᵢ;->ٴﹶ:Ljava/util/ArrayList;

    const/4 v14, 0x0

    iput-boolean v14, v8, Lˊᵔ/ᵔᵢ;->ﾞᴵ:Z

    invoke-static {}, Lˊᵔ/ᵔᵢ;->ⁱˊ()Lˊᵔ/ʽ;

    move-result-object v10

    iget-object v11, v10, Lˊᵔ/ʽ;->ﹳٴ:Lיـ/ﹳᐧ;

    invoke-virtual {v11, v8}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v10, Lˊᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    if-ltz v12, :cond_14

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lˊᵔ/ʽ;->ﾞᴵ:Z

    :cond_14
    const-wide/16 v10, 0x0

    iput-wide v10, v8, Lˊᵔ/ᵔᵢ;->ʼˎ:J

    const/4 v14, 0x0

    iput-boolean v14, v8, Lˊᵔ/ᵔᵢ;->ʽ:Z

    const/4 v10, 0x0

    :goto_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_19

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_17

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lˑʿ/ᵔﹳ;

    iget v12, v8, Lˊᵔ/ᵔᵢ;->ⁱˊ:F

    iget-object v11, v11, Lˑʿ/ᵔﹳ;->ﹳٴ:Lˑʿ/ﹳᐧ;

    sget-object v13, Lˑʿ/ʽﹳ;->יـ:Lˊˋ/ⁱˊ;

    iget-object v15, v11, Lˑʿ/ﹳᐧ;->ᵎﹶ:Lˑʿ/ᴵˊ;

    const/high16 v16, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v16

    if-gez v12, :cond_16

    move-wide/from16 v16, v2

    iget-wide v2, v15, Lˑʿ/ʻٴ;->ʿ:J

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Lˑʿ/ᴵˊ;->ᴵˑ(I)Lˑʿ/ʻٴ;

    move-result-object v12

    iget-object v14, v12, Lˑʿ/ʻٴ;->ـˏ:Lˑʿ/ʻٴ;

    move-wide/from16 v18, v5

    const/4 v5, 0x0

    iput-object v5, v12, Lˑʿ/ʻٴ;->ـˏ:Lˑʿ/ʻٴ;

    iget-wide v5, v11, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    move v12, v7

    move-object/from16 v20, v8

    const-wide/16 v7, -0x1

    invoke-virtual {v15, v7, v8, v5, v6}, Lˑʿ/ᴵˊ;->ᵔי(JJ)V

    invoke-virtual {v15, v2, v3, v7, v8}, Lˑʿ/ᴵˊ;->ᵔי(JJ)V

    iput-wide v2, v11, Lˑʿ/ﹳᐧ;->ﹳٴ:J

    iget-object v2, v11, Lˑʿ/ﹳᐧ;->ﾞᴵ:Lʻʿ/ᵔʾ;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lʻʿ/ᵔʾ;->run()V

    :cond_15
    iget-object v2, v15, Lˑʿ/ʻٴ;->ˈⁱ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v14, :cond_18

    const/4 v11, 0x1

    invoke-virtual {v14, v14, v13, v11}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    goto :goto_14

    :cond_16
    move-wide/from16 v16, v2

    move-wide/from16 v18, v5

    move v12, v7

    move-object/from16 v20, v8

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-virtual {v15, v15, v13, v14}, Lˑʿ/ʻٴ;->ˈٴ(Lˑʿ/ʻٴ;Lˑʿ/ʽﹳ;Z)V

    goto :goto_14

    :cond_17
    move-wide/from16 v16, v2

    move-wide/from16 v18, v5

    move v12, v7

    move-object/from16 v20, v8

    :cond_18
    const/4 v11, 0x1

    :goto_14
    add-int/lit8 v10, v10, 0x1

    move v7, v12

    move-wide/from16 v2, v16

    move-wide/from16 v5, v18

    move-object/from16 v8, v20

    goto :goto_13

    :cond_19
    move-wide/from16 v16, v2

    move-wide/from16 v18, v5

    move v12, v7

    const/4 v11, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_15
    if-ltz v2, :cond_1b

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1a

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_1b
    :goto_16
    add-int/lit8 v7, v12, 0x1

    move-wide/from16 v2, v16

    move-wide/from16 v5, v18

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_b

    :cond_1c
    iget-boolean v2, v0, Lˊᵔ/ʽ;->ﾞᴵ:Z

    if-eqz v2, :cond_20

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v25, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_1e

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_1e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1f

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1f

    iget-object v2, v0, Lˊᵔ/ʽ;->ᵔᵢ:Lˊᵔ/ⁱˊ;

    invoke-virtual {v2}, Lˊᵔ/ⁱˊ;->ﹳٴ()Z

    :cond_1f
    const/4 v14, 0x0

    iput-boolean v14, v0, Lˊᵔ/ʽ;->ﾞᴵ:Z

    :cond_20
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_21

    iget-object v2, v0, Lˊᵔ/ʽ;->ˑﹳ:Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lˊᵔ/ʽ;->ˈ:Landroidx/lifecycle/ᵎⁱ;

    iget-object v2, v2, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Landroid/view/Choreographer;

    new-instance v3, Lʻʻ/ﾞᴵ;

    invoke-direct {v3, v0}, Lʻʻ/ﾞᴵ;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_21
    return-void

    :pswitch_8
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊˊ/ٴﹶ;

    iget-object v2, v0, Lˊˊ/ٴﹶ;->ˉٴ:Landroid/view/Surface;

    if-eqz v2, :cond_22

    iget-object v3, v0, Lˊˊ/ٴﹶ;->ʾˋ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lⁱי/ʻٴ;

    iget-object v4, v4, Lⁱי/ʻٴ;->ʾˋ:Lⁱי/ʼʼ;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lⁱי/ʼʼ;->ˆʻ(Ljava/lang/Object;)V

    goto :goto_18

    :cond_22
    iget-object v3, v0, Lˊˊ/ٴﹶ;->ٴᵢ:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_23
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    :cond_24
    const/4 v5, 0x0

    iput-object v5, v0, Lˊˊ/ٴﹶ;->ٴᵢ:Landroid/graphics/SurfaceTexture;

    iput-object v5, v0, Lˊˊ/ٴﹶ;->ˉٴ:Landroid/view/Surface;

    return-void

    :pswitch_9
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v3, Lˊʻ/ʽ;->ᵎﹶ:Landroid/os/Handler;

    sget-object v0, Lˊʻ/ʽ;->ﾞᴵ:Ljava/lang/reflect/Method;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v7, v9, :cond_25

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    goto/16 :goto_1e

    :cond_25
    const/16 v9, 0x1a

    const/16 v10, 0x1b

    if-eq v7, v9, :cond_26

    if-ne v7, v10, :cond_27

    :cond_26
    if-nez v0, :cond_27

    goto/16 :goto_1d

    :cond_27
    sget-object v11, Lˊʻ/ʽ;->ˑﹳ:Ljava/lang/reflect/Method;

    if-nez v11, :cond_28

    sget-object v11, Lˊʻ/ʽ;->ˈ:Ljava/lang/reflect/Method;

    if-nez v11, :cond_28

    goto/16 :goto_1d

    :cond_28
    :try_start_13
    sget-object v11, Lˊʻ/ʽ;->ʽ:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_29

    goto :goto_1d

    :cond_29
    sget-object v12, Lˊʻ/ʽ;->ⁱˊ:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2a

    goto :goto_1d

    :cond_2a
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    new-instance v15, Lˊʻ/ⁱˊ;

    invoke-direct {v15, v2}, Lˊʻ/ⁱˊ;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v13, v15}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    move/from16 v16, v6

    new-instance v6, Lˈˊ/ᵔﹳ;

    invoke-direct {v6, v15, v9, v11}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-eq v7, v9, :cond_2c

    if-ne v7, v10, :cond_2b

    goto :goto_19

    :cond_2b
    const/4 v6, 0x0

    goto :goto_1a

    :cond_2c
    :goto_19
    const/4 v6, 0x1

    :goto_1a
    if-eqz v6, :cond_2d

    const/4 v14, 0x0

    :try_start_14
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v11, v7, v14

    const/16 v25, 0x1

    const/16 v26, 0x0

    aput-object v26, v7, v25

    aput-object v26, v7, v8

    const/4 v8, 0x3

    aput-object v6, v7, v8

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v7, v16

    const/4 v8, 0x5

    aput-object v26, v7, v8

    aput-object v26, v7, v5

    aput-object v6, v7, v4

    const/16 v4, 0x8

    aput-object v6, v7, v4

    invoke-virtual {v0, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :catchall_8
    move-exception v0

    goto :goto_1c

    :cond_2d
    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :goto_1b
    :try_start_15
    new-instance v0, Lˈˊ/ᵔﹳ;

    invoke-direct {v0, v13, v10, v15}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    :goto_1c
    new-instance v4, Lˈˊ/ᵔﹳ;

    invoke-direct {v4, v13, v10, v15}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_9
    :goto_1d
    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    :cond_2e
    :goto_1e
    return-void

    :pswitch_a
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const/4 v11, 0x1

    invoke-virtual {v2, v0, v11}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :pswitch_b
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :pswitch_c
    invoke-direct {v1}, Landroidx/lifecycle/ᵎⁱ;->ⁱˊ()V

    return-void

    :pswitch_d
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    :try_start_16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_1f

    :catch_0
    sget-object v0, Lﹶـ/ﹳٴ;->ﹳٴ:Lᐧﹳ/ʽ;

    const-string v2, "SafeExecutor"

    invoke-virtual {v0, v2}, Lᐧﹳ/ʽ;->ـˆ(Ljava/lang/String;)V

    const/4 v14, 0x0

    new-array v0, v14, [Ljava/lang/Object;

    invoke-static {v0}, Lᐧﹳ/ʽ;->ʾˋ([Ljava/lang/Object;)V

    :goto_1f
    return-void

    :pswitch_e
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->ᴵᵔ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_f
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˊ/ٴﹶ;

    iget-object v2, v0, Lʽˊ/ٴﹶ;->ᵔᵢ:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Lʽˊ/ٴﹶ;->יـ(Z)V

    iput-boolean v2, v0, Lʽˊ/ٴﹶ;->ˉʿ:Z

    return-void

    :pswitch_10
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽˊ/ʽ;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lʽˊ/ʽ;->יـ(Z)V

    return-void

    :pswitch_11
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽ/ﾞʻ;

    invoke-static {v0}, Lʽ/ﾞʻ;->ﹳٴ(Lʽ/ﾞʻ;)V

    return-void

    :pswitch_12
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽ/ˆʾ;

    iget-object v2, v0, Lʽ/ˆʾ;->ᴵˊ:Ljava/lang/Runnable;

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v5, 0x0

    iput-object v5, v0, Lʽ/ˆʾ;->ᴵˊ:Ljava/lang/Runnable;

    :cond_2f
    return-void

    :pswitch_13
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʽ/ٴﹶ;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :pswitch_14
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ٴᵢ;

    iget v2, v0, Landroidx/lifecycle/ʽʽ;->ʽ:I

    if-lez v2, :cond_30

    const/4 v2, 0x1

    goto :goto_20

    :cond_30
    const/4 v2, 0x0

    :goto_20
    iget-object v3, v0, Lʼﾞ/ٴᵢ;->ʼᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v2, :cond_32

    iget-object v2, v0, Lʼﾞ/ٴᵢ;->ﾞʻ:Lʼﾞ/ˊʻ;

    iget-object v2, v2, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    if-nez v2, :cond_31

    const/4 v2, 0x0

    :cond_31
    iget-object v3, v0, Lʼﾞ/ٴᵢ;->יـ:Lˈי/ᵔᵢ;

    new-instance v4, Lʼﾞ/ᵎˊ;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v14}, Lʼﾞ/ᵎˊ;-><init>(Lʼﾞ/ٴᵢ;Lˈי/ˈ;I)V

    invoke-static {v2, v3, v4, v8}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    :cond_32
    return-void

    :pswitch_15
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼⁱ/י;

    sget-object v2, Lʼⁱ/י;->ﹶʽ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lʼⁱ/י;->ˎـ()V

    return-void

    :pswitch_16
    invoke-direct {v1}, Landroidx/lifecycle/ᵎⁱ;->ﹳٴ()V

    return-void

    :pswitch_17
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼי/ˆʾ;

    iget-object v4, v0, Lʼי/ˆʾ;->ʻᴵ:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lﹳˋ/ʽʽ;->ٴﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lʼי/ˆʾ;->ـˊ:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lʼי/ˆʾ;->ᵎʿ:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lʼי/ˆʾ;->ﹶ:Lʼי/ﹳٴ;

    iget-object v10, v10, Lʼי/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v10, :cond_33

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    goto :goto_21

    :cond_33
    const/16 v34, 0x0

    :goto_21
    if-eqz v34, :cond_34

    iget-object v10, v0, Lʼי/ˆʾ;->ʻᴵ:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lﹳˋ/ʽʽ;->ٴﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_22

    :cond_34
    iget-object v10, v0, Lʼי/ˆʾ;->ʿـ:Landroid/widget/EditText;

    if-eqz v10, :cond_35

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lﹳˋ/ʽʽ;->ٴﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_22

    :cond_35
    const/4 v13, 0x0

    :goto_22
    iget-object v10, v0, Lʼי/ˆʾ;->ﹳⁱ:Landroid/widget/EditText;

    if-eqz v10, :cond_36

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_23

    :cond_36
    const/4 v10, 0x0

    :goto_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_39

    iget-object v2, v0, Lʼי/ˆʾ;->ﹶ:Lʼי/ﹳٴ;

    iget-object v2, v2, Lʼי/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_24

    :cond_37
    const/4 v11, 0x0

    :goto_24
    if-eqz v11, :cond_38

    invoke-virtual {v0, v7}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto/16 :goto_28

    :cond_38
    invoke-virtual {v0, v3}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto/16 :goto_28

    :cond_39
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {v0, v2}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto/16 :goto_28

    :cond_3a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, v0, Lʼי/ˆʾ;->ـᵢ:I

    if-ge v2, v3, :cond_3b

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᐧﾞ()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lʼי/ˆʾ;->ـᵢ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v5, v14

    const/high16 v4, 0x7f110000

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->ᴵˑ()Lᵔᵢ/ˆʾ;

    move-result-object v0

    if-eqz v0, :cond_45

    if-eqz v2, :cond_45

    invoke-static {v0, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_28

    :cond_3b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3c

    const v2, 0x7f13006e

    invoke-virtual {v0, v2}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto/16 :goto_28

    :cond_3c
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    const v2, 0x7f130062

    invoke-virtual {v0, v2}, Lʼי/ˑﹳ;->ˎʾ(I)V

    iget-object v2, v0, Lʼי/ˆʾ;->ᵎʿ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    iget-object v0, v0, Lʼי/ˆʾ;->ᵎʿ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_28

    :cond_3d
    if-eqz v13, :cond_3e

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3e

    invoke-virtual {v0, v7}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto/16 :goto_28

    :cond_3e
    if-eqz v10, :cond_40

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, v0, Lʼי/ˆʾ;->ﹶ:Lʼי/ﹳٴ;

    iget-object v2, v2, Lʼי/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3f

    goto :goto_25

    :cond_3f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_25
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_40

    const v2, 0x7f130065

    invoke-virtual {v0, v2}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto/16 :goto_28

    :cond_40
    invoke-static {}, Lcom/parse/ʾˋ;->ʽ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar.tvplayer.companion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    const v2, 0x7f13006f

    invoke-virtual {v0, v2}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto :goto_28

    :cond_41
    const-class v2, Lcom/parse/ˎـ;

    sget-object v3, Lcom/parse/ⁱˉ;->ᵎⁱ:Lcom/parse/ˑ;

    sget-object v3, Lcom/parse/ﹳـ;->ˉʿ:Lcom/parse/ﹳـ;

    invoke-virtual {v3}, Lcom/parse/ﹳـ;->ʽ()Lcom/parse/ᵎʿ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/parse/ᵎʿ;->ﹳٴ(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ⁱˉ;->ʽ(Ljava/lang/String;)Lcom/parse/ⁱˉ;

    move-result-object v2

    check-cast v2, Lcom/parse/ˎـ;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "username"

    invoke-virtual {v2, v3, v4}, Lcom/parse/ˎـ;->ᵔי(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "password"

    invoke-virtual {v2, v6, v3}, Lcom/parse/ˎـ;->ᵔי(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_42

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    goto :goto_26

    :cond_42
    const/4 v9, 0x0

    :goto_26
    const-string v3, "email"

    invoke-virtual {v2, v9, v3}, Lcom/parse/ˎـ;->ᵔי(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_44

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, v0, Lʼי/ˆʾ;->ﹶ:Lʼי/ﹳٴ;

    iget-object v3, v3, Lʼי/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_43

    goto :goto_27

    :cond_43
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_27
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "name"

    invoke-virtual {v2, v10, v3}, Lcom/parse/ˎـ;->ᵔי(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_44
    invoke-virtual {v0}, Lʼי/ˑﹳ;->ˈـ()V

    new-instance v3, Lʻʿ/ˈ;

    invoke-direct {v3, v5, v0}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    iget-object v0, v2, Lcom/parse/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱי;

    new-instance v4, Lcom/parse/ʽ;

    const/4 v11, 0x1

    invoke-direct {v4, v2, v11}, Lcom/parse/ʽ;-><init>(Lcom/parse/ˎـ;I)V

    invoke-virtual {v0, v4}, Lﹶﾞ/ⁱי;->ٴﹶ(Lʿʿ/ˑﹳ;)Lʿʿ/ʼˎ;

    move-result-object v0

    new-instance v2, Lar/tvplayer/core/data/api/parse/ʽ;

    invoke-direct {v2, v8, v3}, Lar/tvplayer/core/data/api/parse/ʽ;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/parse/ﹳᐧ;->ⁱˊ(Lʿʿ/ʼˎ;Lcom/parse/ᵔי;)Lʿʿ/ʼˎ;

    :cond_45
    :goto_28
    return-void

    :pswitch_18
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼי/ᵎﹶ;

    iget-boolean v2, v0, Lʼי/ᵎﹶ;->ʿـ:Z

    if-nez v2, :cond_47

    iget-object v2, v0, Lʼי/ᵎﹶ;->ـˊ:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lﹳˋ/ʽʽ;->ٴﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {v0, v7}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto :goto_29

    :cond_46
    invoke-virtual {v0}, Lʼי/ˑﹳ;->ˈـ()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/leanback/widget/ˉˆ;

    invoke-direct {v3, v4, v0}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/parse/ˎـ;->ˈˏ()Lcom/parse/ʻٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Lcom/parse/ˎʾ;->ˉʿ:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-wide v5, -0x5a352e8842L

    invoke-static {v5, v6}, Lᐧʻ/ﹳٴ;->ﹳٴ(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/parse/ˎʾ;

    const-wide v5, -0x60352e8842L

    invoke-static {v5, v6}, Lᐧʻ/ﹳٴ;->ﹳٴ(J)Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    invoke-direct {v2, v5, v8, v4, v13}, Lcom/parse/ﹶˎ;-><init>(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    iput-object v13, v2, Lcom/parse/ˎʾ;->ˆʾ:Ljava/lang/String;

    iput-object v13, v2, Lcom/parse/ˎʾ;->ٴﹶ:Ljava/lang/String;

    iget-object v0, v0, Lcom/parse/ʻٴ;->ﹳٴ:Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v2, v0, v13, v13}, Lcom/parse/ﹶˎ;->ʽ(Lar/tvplayer/core/domain/ʽﹳ;Landroid/support/v4/media/session/ﹳٴ;Lʿʿ/ʼˎ;)Lʿʿ/ʼˎ;

    move-result-object v0

    invoke-virtual {v0}, Lʿʿ/ʼˎ;->ﾞʻ()Lʿʿ/ʼˎ;

    move-result-object v0

    new-instance v2, Lar/tvplayer/core/data/api/parse/ʽ;

    invoke-direct {v2, v8, v3}, Lar/tvplayer/core/data/api/parse/ʽ;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/parse/ﹳᐧ;->ⁱˊ(Lʿʿ/ʼˎ;Lcom/parse/ᵔי;)Lʿʿ/ʼˎ;

    goto :goto_29

    :cond_47
    iget-object v0, v0, Lʼי/ᵎﹶ;->ﹳⁱ:Lʼי/ﾞᴵ;

    check-cast v0, Lcom/parse/ui/login/ParseLoginActivity;

    invoke-virtual {v0}, Lᵔᵢ/ˆʾ;->ٴﹶ()Lˑʼ/ʿ;

    move-result-object v0

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˉـ()Z

    :goto_29
    return-void

    :pswitch_19
    move v14, v11

    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼי/ˈ;

    iget-object v4, v0, Lʼי/ˈ;->ـˊ:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lﹳˋ/ʽʽ;->ٴﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lʼי/ˈ;->ᵎʿ:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v2, v0, Lʼי/ˈ;->ـᵢ:Lʼי/ﹳٴ;

    iget-object v2, v2, Lʼי/ﹳٴ;->ˈ:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_48

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_2a

    :cond_48
    move v11, v14

    :goto_2a
    if-eqz v11, :cond_49

    invoke-virtual {v0, v7}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto :goto_2b

    :cond_49
    invoke-virtual {v0, v3}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto :goto_2b

    :cond_4a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v0, v2}, Lʼי/ˑﹳ;->ˎʾ(I)V

    goto :goto_2b

    :cond_4b
    invoke-static {}, Lcom/parse/ʾˋ;->ʽ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar.tvplayer.companion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v2, "[h]:"

    invoke-virtual {v0, v4, v5, v2}, Lʼי/ˈ;->ˑˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_4c
    const-string v2, ""

    invoke-virtual {v0, v4, v5, v2}, Lʼי/ˈ;->ˑˆ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :pswitch_1a
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lar/tvplayer/tv/base/ui/view/CustomTextClock;

    sget v2, Lar/tvplayer/tv/base/ui/view/CustomTextClock;->ᴵˊ:I

    invoke-virtual {v0}, Landroid/widget/TextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    iget-object v2, v0, Lar/tvplayer/tv/base/ui/view/CustomTextClock;->ʾˋ:Landroidx/lifecycle/ᵎⁱ;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1b
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻʿ/ˆʾ;

    invoke-virtual {v0}, Lʻʿ/ˆʾ;->ٴʼ()Lʻʿ/ﹳٴ;

    move-result-object v2

    new-instance v3, Lar/tvplayer/core/data/api/parse/ˈ;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Lar/tvplayer/core/data/api/parse/ˈ;-><init>(I)V

    const/16 v4, 0x404

    invoke-virtual {v0, v2, v4, v3}, Lʻʿ/ˆʾ;->ـˏ(Lʻʿ/ﹳٴ;ILᐧˎ/ˆʾ;)V

    iget-object v0, v0, Lʻʿ/ˆʾ;->ˊʻ:Lᐧˎ/ˉʿ;

    invoke-virtual {v0}, Lᐧˎ/ˉʿ;->ˑﹳ()V

    return-void

    :pswitch_1c
    iget-object v0, v1, Landroidx/lifecycle/ᵎⁱ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ᵔי;

    iget-object v2, v0, Landroidx/lifecycle/ᵔי;->ˊʻ:Landroidx/lifecycle/ـˆ;

    iget v3, v0, Landroidx/lifecycle/ᵔי;->ᴵˊ:I

    if-nez v3, :cond_4d

    const/4 v11, 0x1

    iput-boolean v11, v0, Landroidx/lifecycle/ᵔי;->ʽʽ:Z

    sget-object v3, Landroidx/lifecycle/ˉʿ;->ON_PAUSE:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    goto :goto_2c

    :cond_4d
    const/4 v11, 0x1

    :goto_2c
    iget v3, v0, Landroidx/lifecycle/ᵔי;->ʾˋ:I

    if-nez v3, :cond_4e

    iget-boolean v3, v0, Landroidx/lifecycle/ᵔי;->ʽʽ:Z

    if-eqz v3, :cond_4e

    sget-object v3, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/ـˆ;->ˈ(Landroidx/lifecycle/ˉʿ;)V

    iput-boolean v11, v0, Landroidx/lifecycle/ᵔי;->ˈٴ:Z

    :cond_4e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
