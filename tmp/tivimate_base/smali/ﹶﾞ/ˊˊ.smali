.class public final Lﹶﾞ/ˊˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/String;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Lﹶﾞ/ʻᐧ;

.field public final synthetic ˊʻ:Lﹶﾞ/ʿʽ;

.field public final synthetic ٴᵢ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Ljava/lang/String;

.field public final synthetic ᴵᵔ:Z


# direct methods
.method public constructor <init>(Lﹶﾞ/ʿʽ;Ljava/lang/String;Ljava/lang/String;Lﹶﾞ/ʻᐧ;ZLcom/google/android/gms/internal/measurement/ᵔٴ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹶﾞ/ˊˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ˊˊ;->ᴵˊ:Ljava/lang/String;

    iput-object p3, p0, Lﹶﾞ/ˊˊ;->ʽʽ:Ljava/lang/String;

    iput-object p4, p0, Lﹶﾞ/ˊˊ;->ˈٴ:Lﹶﾞ/ʻᐧ;

    iput-boolean p5, p0, Lﹶﾞ/ˊˊ;->ᴵᵔ:Z

    iput-object p6, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    iput-object p1, p0, Lﹶﾞ/ˊˊ;->ˊʻ:Lﹶﾞ/ʿʽ;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ʿʽ;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lﹶﾞ/ʻᐧ;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹶﾞ/ˊˊ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    iput-object p3, p0, Lﹶﾞ/ˊˊ;->ᴵˊ:Ljava/lang/String;

    iput-object p4, p0, Lﹶﾞ/ˊˊ;->ʽʽ:Ljava/lang/String;

    iput-object p5, p0, Lﹶﾞ/ˊˊ;->ˈٴ:Lﹶﾞ/ʻᐧ;

    iput-boolean p6, p0, Lﹶﾞ/ˊˊ;->ᴵᵔ:Z

    iput-object p1, p0, Lﹶﾞ/ˊˊ;->ˊʻ:Lﹶﾞ/ʿʽ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    iget v0, p0, Lﹶﾞ/ˊˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lﹶﾞ/ˊˊ;->ˊʻ:Lﹶﾞ/ʿʽ;

    iget-object v3, v2, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    if-nez v3, :cond_0

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    iget-object v4, p0, Lﹶﾞ/ˊˊ;->ᴵˊ:Ljava/lang/String;

    iget-object v5, p0, Lﹶﾞ/ˊˊ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4, v5}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lﹶﾞ/ˊˊ;->ˈٴ:Lﹶﾞ/ʻᐧ;

    iget-object v5, p0, Lﹶﾞ/ˊˊ;->ᴵˊ:Ljava/lang/String;

    iget-object v6, p0, Lﹶﾞ/ˊˊ;->ʽʽ:Ljava/lang/String;

    iget-boolean v7, p0, Lﹶﾞ/ˊˊ;->ᴵᵔ:Z

    invoke-interface {v3, v5, v6, v7, v4}, Lﹶﾞ/ˉٴ;->יـ(Ljava/lang/String;Ljava/lang/String;ZLﹶﾞ/ʻᐧ;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lﹶﾞ/ˊˊ;->ᴵˊ:Ljava/lang/String;

    iget-object v5, p0, Lﹶﾞ/ˊˊ;->ʽʽ:Ljava/lang/String;

    iget-boolean v6, p0, Lﹶﾞ/ˊˊ;->ᴵᵔ:Z

    invoke-interface {v3, v1, v4, v5, v6}, Lﹶﾞ/ˉٴ;->ˆʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_4
    iget-object v3, p0, Lﹶﾞ/ˊˊ;->ˊʻ:Lﹶﾞ/ʿʽ;

    iget-object v3, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v3, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v4, "(legacy) Failed to get user properties; remote exception"

    iget-object v5, p0, Lﹶﾞ/ˊˊ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v5, v2}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_1

    :goto_3
    monitor-exit v0

    :goto_4
    return-void

    :goto_5
    iget-object v2, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v1

    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˊˊ;->ʽʽ:Ljava/lang/String;

    iget-object v1, p0, Lﹶﾞ/ˊˊ;->ᴵˊ:Ljava/lang/String;

    iget-object v2, p0, Lﹶﾞ/ˊˊ;->ٴᵢ:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    iget-object v3, p0, Lﹶﾞ/ˊˊ;->ˊʻ:Lﹶﾞ/ʿʽ;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :try_start_6
    iget-object v5, v3, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    iget-object v6, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lﹶﾞ/ᵎʻ;

    if-nez v5, :cond_2

    :try_start_7
    iget-object v5, v6, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v7, "Failed to get user properties; not connected to service"

    invoke-virtual {v5, v1, v0, v7}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, v6, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    :goto_7
    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v0, v2, v4}, Lﹶﾞ/ᵢﹳ;->יⁱ(Lcom/google/android/gms/internal/measurement/ᵔٴ;Landroid/os/Bundle;)V

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_2
    :try_start_8
    iget-object v7, p0, Lﹶﾞ/ˊˊ;->ˈٴ:Lﹶﾞ/ʻᐧ;

    iget-boolean v8, p0, Lﹶﾞ/ˊˊ;->ᴵᵔ:Z

    invoke-interface {v5, v1, v0, v8, v7}, Lﹶﾞ/ˉٴ;->יـ(Ljava/lang/String;Ljava/lang/String;ZLﹶﾞ/ʻᐧ;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    if-nez v0, :cond_3

    goto :goto_9

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lﹶﾞ/ʿˎ;

    iget-object v8, v7, Lﹶﾞ/ʿˎ;->ᴵᵔ:Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v9, v7, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    if-eqz v8, :cond_5

    :try_start_9
    invoke-virtual {v5, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_5
    iget-object v8, v7, Lﹶﾞ/ʿˎ;->ˈٴ:Ljava/lang/Long;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    :cond_6
    iget-object v7, v7, Lﹶﾞ/ʿˎ;->ٴᵢ:Ljava/lang/Double;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v5, v9, v7, v8}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    :cond_7
    :goto_9
    :try_start_a
    invoke-virtual {v3}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    iget-object v0, v6, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v0, v2, v5}, Lﹶﾞ/ᵢﹳ;->יⁱ(Lcom/google/android/gms/internal/measurement/ᵔٴ;Landroid/os/Bundle;)V

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v4, v5

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v4, v5

    :goto_a
    :try_start_b
    iget-object v5, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v6, "Failed to get user properties; remote exception"

    invoke-virtual {v5, v1, v0, v6}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    iget-object v0, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    goto :goto_7

    :goto_b
    return-void

    :goto_c
    iget-object v1, v3, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v1, v2, v4}, Lﹶﾞ/ᵢﹳ;->יⁱ(Lcom/google/android/gms/internal/measurement/ᵔٴ;Landroid/os/Bundle;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
