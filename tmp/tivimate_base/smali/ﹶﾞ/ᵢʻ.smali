.class public final Lﹶﾞ/ᵢʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lٴﾞ/ⁱˊ;
.implements Lٴﾞ/ʽ;


# instance fields
.field public final synthetic ʽʽ:Lﹶﾞ/ʿʽ;

.field public volatile ʾˋ:Z

.field public volatile ᴵˊ:Lﹶﾞ/ˋᵔ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ʿʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    iget-object p1, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {p1}, Lﹶﾞ/ʻˋ;->יˉ()V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    iput-boolean p1, p0, Lﹶﾞ/ᵢʻ;->ʾˋ:Z

    iget-object p1, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lﹶﾞ/ˉٴ;

    if-eqz v2, :cond_1

    check-cast v1, Lﹶﾞ/ˉٴ;

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    new-instance v1, Lﹶﾞ/ˊʻ;

    invoke-direct {v1, p2}, Lﹶﾞ/ˊʻ;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object p2, p2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object p2, p2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object p2, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object p2, p2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p2, Lﹶﾞ/ᵎʻ;

    iget-object p2, p2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_3

    iput-boolean p1, p0, Lﹶﾞ/ᵢʻ;->ʾˋ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lˑʻ/ﹳٴ;->ﹳٴ()Lˑʻ/ﹳٴ;

    move-result-object p1

    iget-object p2, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v0, p2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    iget-object p2, p2, Lﹶﾞ/ʿʽ;->ʽʽ:Lﹶﾞ/ᵢʻ;

    invoke-virtual {p1, v0, p2}, Lˑʻ/ﹳٴ;->ⁱˊ(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    :try_start_4
    iget-object p1, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance p2, Lﹶﾞ/ˆˑ;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lﹶﾞ/ˆˑ;-><init>(Lﹶﾞ/ᵢʻ;Lﹶﾞ/ˉٴ;I)V

    invoke-virtual {p1, p2}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    :catch_1
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->יˉ()V

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v2, "Service disconnected"

    invoke-virtual {v1, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v1, Lﹶﾞ/ﹶˎ;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2, p1}, Lﹶﾞ/ﹶˎ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ʽ(I)V
    .locals 2

    iget-object p1, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object p1, p1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object v0, p1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->יˉ()V

    iget-object v0, p1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v1, "Service connection suspended"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v0, Lﹳˊ/יـ;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lﹳˊ/יـ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˈ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->יˉ()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    invoke-virtual {v0}, Lٴﾞ/ˑﹳ;->ʽﹳ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lﹶﾞ/ˉٴ;

    iget-object v1, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v1, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v2, Lﹶﾞ/ˆˑ;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lﹶﾞ/ˆˑ;-><init>(Lﹶﾞ/ᵢʻ;Lﹶﾞ/ˉٴ;I)V

    invoke-virtual {v1, v2}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lﹶﾞ/ᵢʻ;->ʾˋ:Z

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ˑﹳ(Lᴵˈ/ⁱˊ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v1}, Lﹶﾞ/ʻˋ;->יˉ()V

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Service connection failed"

    invoke-virtual {v0, p1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lﹶﾞ/ᵢʻ;->ʾˋ:Z

    iput-object v1, p0, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v1, Lﹶﾞ/ﹶˎ;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2, p1}, Lﹶﾞ/ﹶˎ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ﹳٴ()V
    .locals 10

    .prologue
    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lﹶﾞ/ᵢʻ;->ʾˋ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v7, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    invoke-virtual {v0}, Lٴﾞ/ˑﹳ;->ˑﹳ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    invoke-virtual {v0}, Lٴﾞ/ˑﹳ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_2
    new-instance v1, Lﹶﾞ/ˋᵔ;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2}, Lٴﾞ/ˊʻ;->ﹳٴ(Landroid/content/Context;)Lٴﾞ/ˊʻ;

    move-result-object v4

    sget-object v5, Lᴵˈ/ﾞᴵ;->ⁱˊ:Lᴵˈ/ﾞᴵ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x5d

    const/4 v9, 0x0

    move-object v8, p0

    move-object v7, p0

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lٴﾞ/ˑﹳ;-><init>(Landroid/content/Context;Landroid/os/Looper;Lٴﾞ/ˊʻ;Lᴵˈ/ﾞᴵ;ILٴﾞ/ⁱˊ;Lٴﾞ/ʽ;Ljava/lang/String;)V

    iput-object v1, v7, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    iget-object v0, v7, Lﹶﾞ/ᵢʻ;->ʽʽ:Lﹶﾞ/ʿʽ;

    iget-object v0, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Lﹶﾞ/ᵢʻ;->ʾˋ:Z

    iget-object v0, v7, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, v7, Lﹶﾞ/ᵢʻ;->ᴵˊ:Lﹶﾞ/ˋᵔ;

    invoke-virtual {v0}, Lٴﾞ/ˑﹳ;->ˉˆ()V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
