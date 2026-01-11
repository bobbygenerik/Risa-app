.class public final Lﹳˊ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lﹳˊ/יـ;->ʾˋ:I

    iput-object p2, p0, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹳˊ/ᵎﹶ;Lʼٴ/ʾᵎ;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lﹳˊ/יـ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵎᵔ;Z)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Lﹳˊ/יـ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵢי;Lـﹶ/ﾞʻ;)V
    .locals 0

    const/4 p2, 0x7

    iput p2, p0, Lﹳˊ/יـ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lﹳˊ/יـ;->ʾˋ:I

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lﾞʿ/ʽ;

    monitor-enter v2

    :try_start_0
    iget v0, v2, Lﾞʿ/ʽ;->ᵎﹶ:I

    add-int/2addr v0, v8

    iput v0, v2, Lﾞʿ/ʽ;->ᵎﹶ:I

    invoke-virtual {v2}, Lﾞʿ/ʽ;->ⁱˊ()Lﾞʿ/ﹳٴ;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    monitor-exit v2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v4, v0

    :try_start_1
    iget-object v0, v4, Lﾞʿ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﾞʿ/ʽ;

    iget-object v7, v0, Lﾞʿ/ʽ;->ⁱˊ:Ljava/util/logging/Logger;

    iget-object v10, v4, Lﾞʿ/ﹳٴ;->ʽ:Lﾞʿ/ⁱˊ;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v0, v10, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    const-string v0, "starting"

    invoke-static {v7, v4, v10, v0}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-wide v12, v5

    :goto_0
    :try_start_2
    invoke-virtual {v4}, Lﾞʿ/ﹳٴ;->ﹳٴ()J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_3

    :try_start_3
    iget-object v0, v10, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finished run in "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Landroid/support/v4/media/session/ⁱˊ;->ﾞᴵ(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v4, v10, v0}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lﾞʿ/ʽ;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v7, v4, v14, v15, v8}, Lﾞʿ/ʽ;->ﹳٴ(Lﾞʿ/ʽ;Lﾞʿ/ﹳٴ;JZ)V

    invoke-virtual {v7}, Lﾞʿ/ʽ;->ⁱˊ()Lﾞʿ/ﹳٴ;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v7

    throw v0

    :catchall_2
    move-exception v0

    if-eqz v11, :cond_4

    iget-object v8, v10, Lﾞʿ/ⁱˊ;->ﹳٴ:Lﾞʿ/ʽ;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed a run in "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Landroid/support/v4/media/session/ⁱˊ;->ﾞᴵ(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v4, v10, v8}, Landroid/support/v4/media/session/ⁱˊ;->ﹳٴ(Ljava/util/logging/Logger;Lﾞʿ/ﹳٴ;Lﾞʿ/ⁱˊ;Ljava/lang/String;)V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    :try_start_7
    iget-object v7, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lﾞʿ/ʽ;

    monitor-enter v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v7, v4, v5, v6, v9}, Lﾞʿ/ʽ;->ﹳٴ(Lﾞʿ/ʽ;Lﾞʿ/ﹳٴ;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    monitor-exit v7

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    monitor-exit v7

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_0
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ᵢﹳ;->ʽʾ()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v3}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v0, v3, Lﹶﾞ/ˈـ;->ᵔי:Lﹶﾞ/ﹳⁱ;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lﹶﾞ/ᵔʾ;->ʽ()V

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    new-instance v2, Lﹶﾞ/ʿـ;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lﹶﾞ/ʿـ;-><init>(Lﹶﾞ/ˈـ;I)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4

    :cond_6
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v2, "registerTrigger called but app not eligible"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_1
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʾʽ/ˈ;

    iget-object v0, v0, Lʾʽ/ˈ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ˈٴ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v2, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ﹳᵢ;->ʼᵢ(J)V

    return-void

    :pswitch_2
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    new-instance v2, Lﹶﾞ/ᴵʼ;

    invoke-direct {v2, v0}, Lﹶﾞ/ᴵʼ;-><init>(Lﹶﾞ/ᵢי;)V

    iput-object v2, v0, Lﹶﾞ/ᵢי;->ᵎˊ:Lﹶﾞ/ᴵʼ;

    new-instance v2, Lﹶﾞ/ˉʿ;

    invoke-direct {v2, v0}, Lﹶﾞ/ˉʿ;-><init>(Lﹶﾞ/ᵢי;)V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v2, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    iget-object v2, v0, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᴵʼ()Lﹶﾞ/ᵎﹶ;

    move-result-object v5

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object v2, v5, Lﹶﾞ/ᵎﹶ;->ˈٴ:Lﹶﾞ/ﾞᴵ;

    new-instance v2, Lﹶﾞ/ˆˎ;

    invoke-direct {v2, v0}, Lﹶﾞ/ˆˎ;-><init>(Lﹶﾞ/ᵢי;)V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v2, v0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    new-instance v2, Lﹶﾞ/ʽ;

    invoke-direct {v2, v0}, Lﹶﾞ/ˎᵎ;-><init>(Lﹶﾞ/ᵢי;)V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v2, v0, Lﹶﾞ/ᵢי;->ˊʻ:Lﹶﾞ/ʽ;

    new-instance v2, Lﹶﾞ/ʿ;

    invoke-direct {v2, v0, v8}, Lﹶﾞ/ʿ;-><init>(Lﹶﾞ/ᵢי;I)V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v2, v0, Lﹶﾞ/ᵢי;->ˉٴ:Lﹶﾞ/ʿ;

    new-instance v2, Lﹶﾞ/ʻˆ;

    invoke-direct {v2, v0}, Lﹶﾞ/ʻˆ;-><init>(Lﹶﾞ/ᵢי;)V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ʽˑ()V

    iput-object v2, v0, Lﹶﾞ/ᵢי;->ᴵᵔ:Lﹶﾞ/ʻˆ;

    new-instance v2, Lﹶﾞ/ᵎᵔ;

    invoke-direct {v2, v0}, Lﹶﾞ/ᵎᵔ;-><init>(Lﹶﾞ/ᵢי;)V

    iput-object v2, v0, Lﹶﾞ/ᵢי;->ˈٴ:Lﹶﾞ/ᵎᵔ;

    iget v2, v0, Lﹶﾞ/ᵢי;->ˊˋ:I

    iget v5, v0, Lﹶﾞ/ᵢי;->ʼˈ:I

    if-eq v2, v5, :cond_7

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    iget v5, v0, Lﹶﾞ/ᵢי;->ˊˋ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lﹶﾞ/ᵢי;->ʼˈ:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "Not all upload components initialized"

    invoke-virtual {v2, v5, v6, v9}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    iget-object v2, v0, Lﹶﾞ/ᵢי;->ˆﾞ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v2

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v5, "UploadController is now fully initialized"

    invoke-virtual {v2, v5}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v2, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ˎˉ()V

    iget-object v2, v0, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-virtual {v2}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->ˆʻ()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ˎᐧ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v5, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v8, v3

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v8, v2, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "trigger_uris"

    const-string v8, "abs(timestamp_millis - ?) > cast(? as integer)"

    invoke-virtual {v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_9

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v6, "Deleted stale trigger uris. rowsDeleted"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    :goto_5
    iget-object v2, v0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v2, v2, Lﹶﾞ/ˆˎ;->ˉٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v2}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_a

    iget-object v2, v0, Lﹶﾞ/ᵢי;->ᵎⁱ:Lﹶﾞ/ˆˎ;

    iget-object v2, v2, Lﹶﾞ/ˆˎ;->ˉٴ:Lⁱי/ʻᵎ;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_a
    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ﾞˊ;

    iget-object v3, v0, Lﹶﾞ/ﾞˊ;->ʽʽ:Lـʾ/ᵔﹳ;

    iget-object v3, v3, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ˉʽ;

    invoke-virtual {v3}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v4, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v5, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    iget-object v6, v4, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v10, v5, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v11, "Application going to the background"

    invoke-virtual {v10, v11}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v10, v4, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v10}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v10, v10, Lﹶﾞ/ᐧᴵ;->ʼˈ:Lﹶﾞ/ᐧﾞ;

    invoke-virtual {v10, v8}, Lﹶﾞ/ᐧﾞ;->ⁱˊ(Z)V

    invoke-virtual {v3}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iput-boolean v8, v3, Lﹶﾞ/ˉʽ;->ˈٴ:Z

    iget-object v10, v4, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v10}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v11

    if-nez v11, :cond_b

    iget-wide v11, v0, Lﹶﾞ/ﾞˊ;->ᴵˊ:J

    iget-object v3, v3, Lﹶﾞ/ˉʽ;->ˊʻ:Lʻˆ/ʽ;

    invoke-virtual {v3, v11, v12, v9, v9}, Lʻˆ/ʽ;->ﹳٴ(JZZ)Z

    iget-object v3, v3, Lʻˆ/ʽ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ˆʻ;

    invoke-virtual {v3}, Lﹶﾞ/ᵔʾ;->ʽ()V

    :cond_b
    iget-wide v11, v0, Lﹶﾞ/ﾞˊ;->ʾˋ:J

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v5, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v3, "Application backgrounded at: timestamp_millis"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v3, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {v3}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˈـ()Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_6

    :cond_c
    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v0}, Lﹶﾞ/ᵢﹳ;->ˉʽ()I

    move-result v0

    const v9, 0x3b3a8

    if-lt v0, v9, :cond_d

    :goto_6
    invoke-virtual {v3}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {v0, v8}, Lﹶﾞ/ʿʽ;->ٴʿ(Z)Lﹶﾞ/ʻᐧ;

    move-result-object v3

    new-instance v8, Lﹶﾞ/ˊﹳ;

    invoke-direct {v8, v0, v3, v2}, Lﹶﾞ/ˊﹳ;-><init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ʻᐧ;I)V

    invoke-virtual {v0, v8}, Lﹶﾞ/ʿʽ;->ﹶʽ(Ljava/lang/Runnable;)V

    :cond_d
    sget-object v0, Lﹶﾞ/ᴵᵔ;->ʽˑ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v10, v7, v0}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Lﹶﾞ/ᵎﹶ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ᵢﹳ;->ˆﹳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide/16 v2, 0x3e8

    goto :goto_7

    :cond_e
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lﹶﾞ/ᴵᵔ;->ᴵᵔ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v10, v0, v2}, Lﹶﾞ/ᵎﹶ;->ˈـ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)J

    move-result-wide v2

    :goto_7
    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v5, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v5, "[sgtm] Scheduling batch upload with minimum latency in millis"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-virtual {v0, v2, v3}, Lﹶﾞ/ﹳᵢ;->ʼᵢ(J)V

    :cond_f
    return-void

    :pswitch_4
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ﹶˎ;

    iget-object v0, v0, Lﹶﾞ/ﹶˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵢʻ;

    iget-object v0, v0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v3, Lﹶﾞ/ˎـ;

    invoke-direct {v3, v0, v9}, Lﹶﾞ/ˎـ;-><init>(Lﹶﾞ/ʿʽ;I)V

    invoke-virtual {v2, v3}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void

    :pswitch_5
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵢʻ;

    iget-object v0, v0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lﹶﾞ/ʿʽ;->ﹳᵢ(Landroid/content/ComponentName;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎᵔ;

    iget-object v0, v0, Lﹶﾞ/ᵎᵔ;->ﹳٴ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ˆﾞ()V

    return-void

    :pswitch_7
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʻˑ/ﹳٴ;

    iput-boolean v9, v0, Lʻˑ/ﹳٴ;->ʽ:Z

    iget-object v3, v0, Lʻˑ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈʿ:Lˉـ/ˑﹳ;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lˉـ/ˑﹳ;->ﾞᴵ()Z

    move-result v4

    if-eqz v4, :cond_10

    iget v2, v0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v0, v2}, Lʻˑ/ﹳٴ;->ﹳٴ(I)V

    goto :goto_8

    :cond_10
    iget v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ᵔٴ:I

    if-ne v4, v2, :cond_11

    iget v0, v0, Lʻˑ/ﹳٴ;->ⁱˊ:I

    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ˈٴ(I)V

    :cond_11
    :goto_8
    return-void

    :pswitch_8
    iget-object v0, v1, Lﹳˊ/יـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹳـ/ˈ;

    iget-object v2, v0, Lﹳـ/ˈ;->ʽʽ:Lˉˆ/ʾˊ;

    iget-object v7, v0, Lﹳـ/ˈ;->ʾˋ:Lﹳـ/ﹳٴ;

    iget-boolean v8, v0, Lﹳـ/ˈ;->ˈʿ:Z

    if-nez v8, :cond_12

    goto/16 :goto_a

    :cond_12
    iget-boolean v8, v0, Lﹳـ/ˈ;->ˆﾞ:Z

    if-eqz v8, :cond_13

    iput-boolean v9, v0, Lﹳـ/ˈ;->ˆﾞ:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Lﹳـ/ﹳٴ;->ˑﹳ:J

    iput-wide v5, v7, Lﹳـ/ﹳٴ;->ᵎﹶ:J

    iput-wide v10, v7, Lﹳـ/ﹳٴ;->ﾞᴵ:J

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v7, Lﹳـ/ﹳٴ;->ᵔᵢ:F

    :cond_13
    iget-wide v5, v7, Lﹳـ/ﹳٴ;->ᵎﹶ:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_14

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v10, v7, Lﹳـ/ﹳٴ;->ᵎﹶ:J

    iget v8, v7, Lﹳـ/ﹳٴ;->ʼˎ:I

    int-to-long v12, v8

    add-long/2addr v10, v12

    cmp-long v5, v5, v10

    if-lez v5, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {v0}, Lﹳـ/ˈ;->ˑﹳ()Z

    move-result v5

    if-nez v5, :cond_15

    :goto_9
    iput-boolean v9, v0, Lﹳـ/ˈ;->ˈʿ:Z

    goto :goto_a

    :cond_15
    iget-boolean v5, v0, Lﹳـ/ˈ;->ᵔٴ:Z

    if-eqz v5, :cond_16

    iput-boolean v9, v0, Lﹳـ/ˈ;->ᵔٴ:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-wide v12, v10

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v2, v5}, Lˉˆ/ʾˊ;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    :cond_16
    iget-wide v5, v7, Lﹳـ/ﹳٴ;->ﾞᴵ:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_17

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lﹳـ/ﹳٴ;->ﹳٴ(J)F

    move-result v5

    const/high16 v6, -0x3f800000    # -4.0f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v5

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v5, v8

    add-float/2addr v5, v6

    iget-wide v8, v7, Lﹳـ/ﹳٴ;->ﾞᴵ:J

    sub-long v8, v3, v8

    iput-wide v3, v7, Lﹳـ/ﹳٴ;->ﾞᴵ:J

    long-to-float v3, v8

    mul-float/2addr v3, v5

    iget v4, v7, Lﹳـ/ﹳٴ;->ˈ:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v0, v0, Lﹳـ/ˈ;->ˋᵔ:Lˉˆ/ʾˊ;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->scrollListBy(I)V

    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_a
    return-void

    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    throw v7

    :pswitch_data_0
    .packed-switch 0x0
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
