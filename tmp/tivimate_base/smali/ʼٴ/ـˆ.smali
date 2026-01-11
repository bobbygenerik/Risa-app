.class public final synthetic Lʼٴ/ـˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ˈٴ:Ljava/lang/Object;

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lʼٴ/ـˆ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lʼٴ/ـˆ;->ʾˋ:I

    iput-object p1, p0, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p4, p0, Lʼٴ/ـˆ;->ʾˋ:I

    iput-object p1, p0, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    iput-object p2, p0, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ʿʽ;Ljava/util/concurrent/atomic/AtomicReference;Lﹶﾞ/ʻᐧ;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lʼٴ/ـˆ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lʼٴ/ـˆ;->ʾˋ:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧﹳ/ʽ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ﹳـ;

    iget-object v3, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Landroid/app/job/JobParameters;

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v4, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v2, v4}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    check-cast v0, Lﹶﾞ/ʻʼ;

    invoke-interface {v0, v3}, Lﹶﾞ/ʻʼ;->ʽ(Landroid/app/job/JobParameters;)V

    return-void

    :pswitch_0
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʿʽ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʻᐧ;

    iget-object v3, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ˈ;

    iget-object v4, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    iget-object v5, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    if-nez v5, :cond_0

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "[sgtm] Discarding data. Failed to update batch upload status."

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v5, v2, v3}, Lﹶﾞ/ˉٴ;->ʾˋ(Lﹶﾞ/ʻᐧ;Lﹶﾞ/ˈ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    iget-wide v3, v3, Lﹶﾞ/ˈ;->ʾˋ:J

    const-string v5, "[sgtm] Failed to update batch upload status, rowId, exception"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    const-string v2, "Failed to get app instance id"

    iget-object v0, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔٴ;

    iget-object v0, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lﹶﾞ/ʿʽ;

    :try_start_1
    iget-object v0, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v6, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    iget-object v7, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v6}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v8

    sget-object v9, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v8, v9}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v7, v7, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v8, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v7, v8}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v7, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v7}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v7, v7, Lﹶﾞ/ˈـ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v6, v6, Lﹶﾞ/ᐧᴵ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v6, v5}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v8, v4, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    if-nez v8, :cond_2

    invoke-static {v7}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v6, v7, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v6, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    :goto_2
    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v0, v5, v3}, Lﹶﾞ/ᵢﹳ;->ᴵٴ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    goto :goto_5

    :cond_2
    :try_start_2
    iget-object v7, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Lﹶﾞ/ʻᐧ;

    invoke-interface {v8, v7}, Lﹶﾞ/ˉٴ;->ٴﹶ(Lﹶﾞ/ʻᐧ;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, v0, Lﹶﾞ/ˈـ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v0, v6, Lﹶﾞ/ᐧᴵ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_3
    iget-object v6, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lﹶﾞ/ᵎʻ;

    iget-object v6, v6, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v6, v6, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v6, v0, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    iget-object v0, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    goto :goto_2

    :goto_5
    return-void

    :goto_6
    iget-object v2, v4, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v2, v5, v3}, Lﹶﾞ/ᵢﹳ;->ᴵٴ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    throw v0

    :pswitch_2
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4

    :try_start_4
    iget-object v0, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʿʽ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v3}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v3

    sget-object v6, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v3, v6}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v6, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v3, v6}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, v0, Lﹶﾞ/ˈـ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v0, v0, Lﹶﾞ/ᐧᴵ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_7
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_4
    :try_start_6
    iget-object v3, v0, Lﹶﾞ/ʿʽ;->ˈٴ:Lﹶﾞ/ˉٴ;

    if-nez v3, :cond_5

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to get app instance id"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    iget-object v5, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ʻᐧ;

    invoke-interface {v3, v5}, Lﹶﾞ/ˉٴ;->ٴﹶ(Lﹶﾞ/ʻᐧ;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v5, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v5, v5, Lﹶﾞ/ˈـ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v2, v2, Lﹶﾞ/ᐧᴵ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˋـ()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_9

    :goto_8
    :try_start_8
    iget-object v2, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʿʽ;

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Failed to get app instance id"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    :goto_a
    return-void

    :goto_b
    iget-object v2, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    throw v0

    :goto_c
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :pswitch_3
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʼـ;

    iget-object v4, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ʻᐧ;

    iget-object v6, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v6, Lﹶﾞ/ˈ;

    iget-object v7, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v4, v4, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v4}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v8, v7, Lﹶﾞ/ᵢי;->ᴵʼ:Ljava/util/HashMap;

    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ʻˋ()V

    iget-object v9, v7, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v9}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-wide v11, v6, Lﹶﾞ/ˈ;->ʾˋ:J

    iget-wide v13, v6, Lﹶﾞ/ˈ;->ʽʽ:J

    invoke-virtual {v9}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v9}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    const/4 v10, 0x4

    :try_start_a
    invoke-virtual {v9}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v16, "upload_queue"

    const-string v17, "rowId"

    const-string v18, "app_id"

    const-string v19, "measurement_batch"

    const-string v20, "upload_uri"

    const-string v21, "upload_headers"

    const-string v22, "upload_type"

    const-string v23, "retry_count"

    const-string v24, "creation_timestamp"

    const-string v25, "associated_row_id"

    const-string v26, "last_upload_timestamp"

    filled-new-array/range {v17 .. v26}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "rowId=?"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v19

    const-string v23, "1"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    move v3, v10

    move-wide/from16 v27, v13

    goto/16 :goto_12

    :cond_7
    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const/4 v5, 0x2

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-wide/from16 v16, v13

    :try_start_c
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const/4 v10, 0x5

    :try_start_d
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x6

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const/16 v3, 0x8

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/16 v3, 0x9

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-wide/from16 v18, v19

    move-wide/from16 v20, v21

    move-wide/from16 v22, v27

    const/4 v3, 0x4

    move-wide/from16 v27, v16

    move/from16 v17, v2

    move/from16 v16, v10

    move-object v2, v15

    move-object v10, v0

    move-object v15, v13

    move-object v13, v5

    :try_start_e
    invoke-virtual/range {v9 .. v23}, Lﹶﾞ/ˉʿ;->ʿʽ(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lﹶﾞ/ˑˉ;

    move-result-object v5
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_13

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v2, v15

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v2, v15

    move-wide/from16 v27, v16

    const/4 v3, 0x4

    goto :goto_e

    :catch_5
    move-exception v0

    move v3, v10

    move-object v2, v15

    move-wide/from16 v27, v16

    goto :goto_e

    :catch_6
    move-exception v0

    move v3, v10

    move-wide/from16 v27, v13

    move-object v2, v15

    goto :goto_e

    :goto_d
    move-object v5, v2

    goto/16 :goto_18

    :goto_e
    move-object v15, v2

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    move v3, v10

    move-wide/from16 v27, v13

    goto :goto_10

    :goto_f
    const/4 v5, 0x0

    goto/16 :goto_18

    :goto_10
    const/4 v15, 0x0

    :goto_11
    :try_start_f
    iget-object v2, v9, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v5, "Error to querying MeasurementBatch from upload_queue. rowId"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9, v0, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_12
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_8
    const/4 v5, 0x0

    :goto_13
    if-nez v5, :cond_9

    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "[sgtm] Queued batch doesn\'t exist. appId, rowId"

    invoke-virtual {v0, v4, v2, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_9
    iget-object v0, v5, Lﹶﾞ/ˑˉ;->ʽ:Ljava/lang/String;

    iget v2, v6, Lﹶﾞ/ˈ;->ᴵˊ:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, v7, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lﹶﾞ/ˉʿ;->ˈـ(Ljava/lang/Long;)V

    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v5, "[sgtm] queued batch deleted after successful client upload. appId, rowId"

    invoke-virtual {v0, v4, v2, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v0, v27, v5

    if-lez v0, :cond_f

    iget-object v0, v7, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "upload_type"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v8, v2, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "creation_timestamp"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_10
    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "upload_queue"

    const-string v9, "rowid=? AND app_id=? AND upload_type=?"

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v10, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v6, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v10, 0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_b

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v2, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v3, "Google Signal pending batch not updated. appId, rowId"

    invoke-virtual {v0, v4, v5, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_14

    :catch_8
    move-exception v0

    goto :goto_15

    :cond_b
    :goto_14
    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "[sgtm] queued Google Signal batch updated. appId, signalRowId"

    invoke-virtual {v0, v4, v2, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lﹶﾞ/ᵢי;->ʼᐧ(Ljava/lang/String;)V

    goto :goto_17

    :goto_15
    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "Failed to update google Signal pending batch. appid, rowId"

    invoke-virtual {v2, v5, v4, v3, v0}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0

    :cond_c
    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ˊـ;

    if-nez v2, :cond_d

    new-instance v2, Lﹶﾞ/ˊـ;

    invoke-direct {v2, v7}, Lﹶﾞ/ˊـ;-><init>(Lﹶﾞ/ᵢי;)V

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_d
    iget v3, v2, Lﹶﾞ/ˊـ;->ⁱˊ:I

    const/16 v26, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lﹶﾞ/ˊـ;->ⁱˊ:I

    invoke-virtual {v2}, Lﹶﾞ/ˊـ;->ﹳٴ()J

    move-result-wide v8

    iput-wide v8, v2, Lﹶﾞ/ˊـ;->ʽ:J

    :goto_16
    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ᵎˊ()Lᵎᴵ/ﹳٴ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v2, v2, Lﹶﾞ/ˊـ;->ʽ:J

    sub-long/2addr v2, v8

    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds"

    invoke-virtual {v5, v3, v4, v0, v2}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v7, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-wide v2, v6, Lﹶﾞ/ˈ;->ʾˋ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lﹶﾞ/ˉʿ;->ᵢˋ(Ljava/lang/Long;)V

    invoke-virtual {v7}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "[sgtm] increased batch retry count after failed client upload. appId, rowId"

    invoke-virtual {v0, v4, v2, v3}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    :goto_17
    return-void

    :catchall_6
    move-exception v0

    move-object v5, v15

    :goto_18
    if-eqz v5, :cond_10

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    :pswitch_4
    iget-object v0, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʻᐧ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʼـ;

    iget-object v2, v2, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v3, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ʿˎ;

    invoke-virtual {v3}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_11

    iget-object v3, v3, Lﹶﾞ/ʿˎ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lﹶﾞ/ᵢי;->ˉـ(Ljava/lang/String;Lﹶﾞ/ʻᐧ;)V

    goto :goto_19

    :cond_11
    invoke-virtual {v2, v3, v0}, Lﹶﾞ/ᵢי;->ᴵˑ(Lﹶﾞ/ʿˎ;Lﹶﾞ/ʻᐧ;)V

    :goto_19
    return-void

    :pswitch_5
    iget-object v0, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʼـ;

    iget-object v2, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v0, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    iget-object v2, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ˏי;

    iget-object v3, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lﹶﾞ/ᵢי;->ʽ(Ljava/lang/String;Lﹶﾞ/ˏי;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˏי;

    iget-object v2, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʻᐧ;

    iget-object v3, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ʼـ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    const-string v5, "_cmp"

    iget-object v6, v0, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v8, v0, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    if-eqz v8, :cond_14

    iget-object v5, v8, Lﹶﾞ/יـ;->ʾˋ:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/BaseBundle;->size()I

    move-result v6

    if-nez v6, :cond_12

    goto :goto_1a

    :cond_12
    const-string v6, "_cis"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "referrer broadcast"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "referrer API"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v5

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    invoke-virtual {v0}, Lﹶﾞ/ˏי;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Event has been filtered "

    invoke-virtual {v5, v6, v7}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lﹶﾞ/ˏי;

    iget-object v9, v0, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v10, v0, Lﹶﾞ/ˏי;->ˈٴ:J

    const-string v7, "_cmpx"

    invoke-direct/range {v6 .. v11}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    move-object v0, v6

    :cond_14
    :goto_1a
    iget-object v5, v0, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iget-object v6, v3, Lﹶﾞ/ᵢי;->ʾˋ:Lﹶﾞ/ـﹶ;

    iget-object v7, v3, Lﹶﾞ/ᵢי;->ٴᵢ:Lﹶﾞ/ʿ;

    invoke-static {v6}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v8, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v6, 0x0

    goto :goto_1b

    :cond_15
    iget-object v6, v6, Lﹶﾞ/ـﹶ;->ٴʼ:Lﹶﾞ/ʻᵎ;

    invoke-virtual {v6, v8}, Lˋˋ/ـˊ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/ᴵᵔ;

    :goto_1b
    if-eqz v6, :cond_19

    :try_start_11
    iget-object v8, v6, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ʽ:Lᵢ/ﹳٴ;

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v9, v0, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    invoke-virtual {v9}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lﹶﾞ/ʿ;->ʽᐧ(Landroid/os/Bundle;Z)Ljava/util/HashMap;

    move-result-object v9

    sget-object v10, Lﹶﾞ/ʻᴵ;->ʽ:[Ljava/lang/String;

    sget-object v11, Lﹶﾞ/ʻᴵ;->ﹳٴ:[Ljava/lang/String;

    invoke-static {v5, v10, v11}, Lﹶﾞ/ʻᴵ;->ᵎﹶ(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    goto :goto_1c

    :cond_16
    move-object v10, v5

    :goto_1c
    new-instance v11, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    iget-wide v12, v0, Lﹶﾞ/ˏי;->ˈٴ:J

    invoke-direct {v11, v10, v12, v13, v9}, Lcom/google/android/gms/internal/measurement/ⁱˊ;-><init>(Ljava/lang/String;JLjava/util/HashMap;)V

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/measurement/ᴵᵔ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ⁱˊ;)Z

    move-result v6
    :try_end_11
    .catch Lcom/google/android/gms/internal/measurement/zzd; {:try_start_11 .. :try_end_11} :catch_9

    if-nez v6, :cond_17

    goto :goto_1f

    :cond_17
    iget-object v6, v8, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    iget-object v9, v8, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v0

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v6, "EES edited event"

    invoke-virtual {v0, v5, v6}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v0, v8, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    invoke-static {v0}, Lﹶﾞ/ʿ;->ʼᵢ(Lcom/google/android/gms/internal/measurement/ⁱˊ;)Lﹶﾞ/ˏי;

    move-result-object v0

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    invoke-virtual {v3, v0, v2}, Lﹶﾞ/ᵢי;->ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto :goto_1d

    :cond_18
    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    invoke-virtual {v3, v0, v2}, Lﹶﾞ/ᵢי;->ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    :goto_1d
    iget-object v0, v8, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v8, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1e
    if-ge v4, v5, :cond_1a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v8

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-object v9, v6, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    const-string v10, "EES logging created event"

    invoke-virtual {v8, v9, v10}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    invoke-static {v6}, Lﹶﾞ/ʿ;->ʼᵢ(Lcom/google/android/gms/internal/measurement/ⁱˊ;)Lﹶﾞ/ˏי;

    move-result-object v6

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    invoke-virtual {v3, v6, v2}, Lﹶﾞ/ᵢי;->ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto :goto_1e

    :catch_9
    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    iget-object v6, v2, Lﹶﾞ/ʻᐧ;->ᴵˊ:Ljava/lang/String;

    const-string v7, "EES error. appId, eventName"

    invoke-virtual {v4, v6, v5, v7}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1f
    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v6, "EES was not applied to event"

    invoke-virtual {v4, v5, v6}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    invoke-virtual {v3, v0, v2}, Lﹶﾞ/ᵢי;->ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    goto :goto_20

    :cond_19
    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-object v5, v2, Lﹶﾞ/ʻᐧ;->ʾˋ:Ljava/lang/String;

    const-string v6, "EES not loaded for"

    invoke-virtual {v4, v5, v6}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    invoke-virtual {v3, v0, v2}, Lﹶﾞ/ᵢי;->ˑﹳ(Lﹶﾞ/ˏי;Lﹶﾞ/ʻᐧ;)V

    :cond_1a
    :goto_20
    return-void

    :pswitch_7
    iget-object v0, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʻᐧ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʼـ;

    iget-object v2, v2, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v2}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v3, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lﹶﾞ/ˑﹳ;

    iget-object v4, v3, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-virtual {v4}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1b

    invoke-virtual {v2, v3, v0}, Lﹶﾞ/ᵢי;->ᵎᵔ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V

    goto :goto_21

    :cond_1b
    invoke-virtual {v2, v3, v0}, Lﹶﾞ/ᵢי;->ʿᵢ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V

    :goto_21
    return-void

    :pswitch_8
    :try_start_12
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔٴ/ˑﹳ;

    invoke-virtual {v0}, Lᵔٴ/ˑﹳ;->call()Ljava/lang/Object;

    move-result-object v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_22

    :catch_a
    const/4 v5, 0x0

    :goto_22
    iget-object v0, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʻٴ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lˋˋ/ˈ;

    const/16 v6, 0x17

    invoke-direct {v3, v0, v5, v6, v4}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_9
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔˋ/ᵎˊ;

    sget-object v2, Lᵔˋ/ᵎˊ;->ᵔⁱ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v0

    iget-object v0, v0, Lـˈ/ﾞᴵ;->ᵔᵢ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    new-instance v2, Lˊʼ/ⁱˊ;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0}, Lˊʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_23

    :cond_1c
    iget-object v0, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_1d
    return-void

    :pswitch_a
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔʻ/ˈـ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lᵢـ/ˑﹳ;

    iput-object v2, v0, Lᵔʻ/ˈـ;->ˊﾞ:Lᵢـ/ˑﹳ;

    :cond_1e
    return-void

    :pswitch_b
    iget-object v0, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lʿי/ʽⁱ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˑʼ/ᴵᵔ;

    iget-object v2, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v2, :cond_20

    sget-object v2, Lʿי/ʽⁱ;->ᐧˏ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lʿי/ʽⁱ;->ᵢי()Lˊˈ/ʽ;

    move-result-object v2

    iget-object v2, v2, Lˊˈ/ʽ;->ᵔʾ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    iget-boolean v3, v0, Lʿי/ʽⁱ;->יʿ:Z

    if-eq v3, v2, :cond_20

    iput-boolean v2, v0, Lʿי/ʽⁱ;->יʿ:Z

    iget-object v0, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʿי/ᴵˑ;

    iget-boolean v2, v0, Lʿי/ᴵˑ;->ᴵˑ:Z

    if-nez v2, :cond_20

    iget-object v0, v0, Lʿי/ᴵˑ;->ﹳـ:Lˊˈ/ˈ;

    iget-object v0, v0, Lˊˈ/ˈ;->ﾞʻ:Landroid/view/View;

    check-cast v0, Lar/tvplayer/tv/tvguide/ui/ProgramsRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v0

    instance-of v2, v0, Lʿי/ﹶᐧ;

    if-eqz v2, :cond_1f

    move-object v5, v0

    check-cast v5, Lʿי/ﹶᐧ;

    goto :goto_24

    :cond_1f
    const/4 v5, 0x0

    :goto_24
    if-eqz v5, :cond_20

    invoke-virtual {v5, v4}, Lʿי/ﹶᐧ;->ﹳᐧ(Z)V

    :cond_20
    return-void

    :pswitch_c
    iget-object v0, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lʽˆ/ʽ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lﹳˎ/ⁱˊ;

    iget-object v3, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lˏـ/ᵎﹶ;

    invoke-virtual {v0, v2, v3}, Lʽˆ/ʽ;->ⁱˊ(Lﹳˎ/ⁱˊ;Lˏـ/ᵎﹶ;)V

    iget-object v3, v0, Lʽˆ/ʽ;->ʼˎ:Lˑʼ/ᵎˊ;

    iget-object v3, v3, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide v5, 0x40ed4c0000000000L    # 60000.0

    iget-wide v7, v0, Lʽˆ/ʽ;->ﹳٴ:D

    div-double/2addr v5, v7

    iget-wide v7, v0, Lʽˆ/ʽ;->ⁱˊ:D

    invoke-virtual {v0}, Lʽˆ/ʽ;->ﹳٴ()I

    move-result v0

    int-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v7, v5

    const-wide v5, 0x414b774000000000L    # 3600000.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Delay for: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%.2f"

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v8, v9, v4

    invoke-static {v3, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " s for report: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    nop

    :cond_21
    double-to-long v2, v5

    :try_start_13
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_b

    :catch_b
    return-void

    :pswitch_d
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʾˋ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lﹳי/ʽ;

    iget-object v3, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lar/tvplayer/core/data/api/parse/ˈ;

    invoke-static {v0, v2, v3}, Lʼٴ/ʾˋ;->ﹶ(Lʼٴ/ʾˋ;Lﹳי/ʽ;Lar/tvplayer/core/data/api/parse/ˈ;)V

    return-void

    :pswitch_e
    iget-object v0, v1, Lʼٴ/ـˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʾˋ;

    iget-object v2, v1, Lʼٴ/ـˆ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Landroidx/leanback/widget/ˉˆ;

    iget-object v3, v1, Lʼٴ/ـˆ;->ˈٴ:Ljava/lang/Object;

    check-cast v3, Lʼٴ/ﾞʻ;

    invoke-static {v0, v2, v3}, Lʼٴ/ʾˋ;->ـᵢ(Lʼٴ/ʾˋ;Landroidx/leanback/widget/ˉˆ;Lʼٴ/ﾞʻ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
