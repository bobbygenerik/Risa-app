.class public final synthetic Lˆי/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lˆי/ˉˆ;->ʾˋ:I

    iput-object p1, p0, Lˆי/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˆי/ˉˆ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lˆי/ˉˆ;->ˈٴ:Ljava/lang/Object;

    iput-object p4, p0, Lˆי/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lˑᵎ/ﾞʻ;Lᴵˋ/ⁱˊ;Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˆי/ˉˆ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆי/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p2, p0, Lˆי/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˆי/ˉˆ;->ʽʽ:Ljava/lang/Object;

    iput-object p4, p0, Lˆי/ˉˆ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    iget v0, p0, Lˆי/ˉˆ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˆי/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Lˆי/ˉˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᐧﹳ/ʽ;

    iget-object v2, p0, Lˆי/ˉˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    iget-object v3, p0, Lˆי/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Lﹶ/ʼˎ;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lᐧᵢ/ˉʿ;

    const/16 v5, 0xa

    invoke-direct {v0, v1, v5, v3}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, Lﹶ/ʾᵎ;->ٴﹳ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget v1, Lﹶ/ʾᵎ;->ـᵎ:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lﹶ/ʾᵎ;->ـᵎ:I

    if-nez v1, :cond_1

    sget-object v1, Lﹶ/ʾᵎ;->ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v4, Lﹶ/ʾᵎ;->ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lᐧᵢ/ˉʿ;

    const/16 v6, 0xa

    invoke-direct {v5, v1, v6, v3}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object v1, Lﹶ/ʾᵎ;->ٴﹳ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget v2, Lﹶ/ʾᵎ;->ـᵎ:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lﹶ/ʾᵎ;->ـᵎ:I

    if-nez v2, :cond_3

    sget-object v2, Lﹶ/ʾᵎ;->ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v4, Lﹶ/ʾᵎ;->ᵎʻ:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_0
    iget-object v0, p0, Lˆי/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lˆי/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˑᵎ/ﾞʻ;

    iget-object v2, p0, Lˆי/ˉˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᴵˋ/ⁱˊ;

    iget-object v3, p0, Lˆי/ˉˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lـʾ/ˑﹳ;

    iget-object v6, v1, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-interface {v5, v6}, Lـʾ/ˑﹳ;->ⁱˊ(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-static {v2, v3, v0}, Lـʾ/ᵎﹶ;->ⁱˊ(Lᴵˋ/ⁱˊ;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lˆי/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˋﹳ/ﹳٴ;

    iget-object v1, p0, Lˆי/ˉˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˉˋ/ʼˎ;

    iget-object v2, v1, Lˉˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p0, Lˆי/ˉˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lᴵˆ/ﾞᴵ;

    iget-object v4, p0, Lˆי/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v4, Lˉˋ/ᵔᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lˋﹳ/ﹳٴ;->ﾞᴵ:Ljava/util/logging/Logger;

    const-string v6, "Transport backend \'"

    :try_start_4
    iget-object v7, v0, Lˋﹳ/ﹳٴ;->ʽ:Lﹳˑ/ˈ;

    invoke-virtual {v7, v2}, Lﹳˑ/ˈ;->ﹳٴ(Ljava/lang/String;)Lﹳˑ/ˑﹳ;

    move-result-object v7

    if-nez v7, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Lᴵˆ/ﾞᴵ;->ⁱˊ(Ljava/lang/Exception;)V

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    check-cast v7, Lٴי/ⁱˊ;

    invoke-virtual {v7, v4}, Lٴי/ⁱˊ;->ﹳٴ(Lˉˋ/ᵔᵢ;)Lˉˋ/ᵔᵢ;

    move-result-object v2

    iget-object v4, v0, Lˋﹳ/ﹳٴ;->ˑﹳ:Lʻˎ/ⁱˊ;

    new-instance v6, Lˈᵔ/ﹳٴ;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v1, v2, v7}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v4, Lᵔـ/ᵔᵢ;

    invoke-virtual {v4, v6}, Lᵔـ/ᵔᵢ;->ʾˋ(Lʻˎ/ﹳٴ;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lᴵˆ/ﾞᴵ;->ⁱˊ(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error scheduling event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lᴵˆ/ﾞᴵ;->ⁱˊ(Ljava/lang/Exception;)V

    :goto_6
    return-void

    :pswitch_2
    iget-object v0, p0, Lˆי/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉˆ/ˎـ;

    iget-object v1, p0, Lˆי/ˉˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lˆי/ˉˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lˆי/ˉˆ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    const-string v4, "FirebaseCrashlytics"

    iget-object v5, v0, Lˉˆ/ˎـ;->ﹳٴ:Ljava/lang/Object;

    check-cast v5, Lˆי/ᵎﹶ;

    iget-object v0, v0, Lˉˆ/ˎـ;->ᵎﹶ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "Failed to close user metadata file."

    iget-object v8, v5, Lˆי/ᵎﹶ;->ﹳٴ:Lˑˋ/ˈ;

    const-string v9, "user-data"

    invoke-virtual {v8, v1, v9}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    :try_start_5
    new-instance v9, Lˆי/ﾞᴵ;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "userId"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lˆי/ᵎﹶ;->ⁱˊ:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/Writer;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_7
    invoke-static {v9, v6}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v7, v9

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v9, v7

    :goto_8
    :try_start_7
    const-string v8, "Error serializing user metadata."

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :goto_9
    invoke-static {v7, v6}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_a
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v5, v1, v2, v0}, Lˆי/ᵎﹶ;->ᵔᵢ(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Failed to close rollouts state file."

    iget-object v2, v5, Lˆי/ᵎﹶ;->ﹳٴ:Lˑˋ/ˈ;

    const-string v5, "rollouts-state"

    invoke-virtual {v2, v1, v5}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Rollout state is empty for session: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lˆי/ᵎﹶ;->ᵎﹶ(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_d

    :cond_8
    :try_start_8
    invoke-static {v3}, Lˆי/ᵎﹶ;->ˑﹳ(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lˆי/ᵎﹶ;->ⁱˊ:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v3, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_d

    :catchall_5
    move-exception v1

    move-object v7, v3

    goto :goto_c

    :catch_3
    move-exception v1

    move-object v7, v3

    goto :goto_b

    :catchall_6
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    :goto_b
    :try_start_a
    const-string v3, "Error serializing rollouts state."

    nop

    invoke-static {v2}, Lˆי/ᵎﹶ;->ﾞᴵ(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    invoke-static {v7, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    invoke-static {v7, v0}, Lﹳˎ/ᵎﹶ;->ⁱˊ(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
