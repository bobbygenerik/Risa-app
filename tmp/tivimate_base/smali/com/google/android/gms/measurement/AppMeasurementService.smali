.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ʻʼ;


# instance fields
.field public ʾˋ:Lᐧﹳ/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ˈ()Lᐧﹳ/ʽ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "FA"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "onBind called with null intent"

    nop

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.google.android.gms.measurement.START"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroid/app/Service;

    new-instance v0, Lﹶﾞ/ʼـ;

    invoke-static {p1}, Lﹶﾞ/ᵢי;->ʾˋ(Landroid/content/Context;)Lﹶﾞ/ᵢי;

    move-result-object p1

    invoke-direct {v0, p1}, Lﹶﾞ/ʼـ;-><init>(Lﹶﾞ/ᵢי;)V

    return-object v0

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBind received unknown action: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    return-object v2
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ˈ()Lᐧﹳ/ʽ;

    move-result-object v0

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FA"

    const-string v2, " is starting up."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ˈ()Lᐧﹳ/ʽ;

    move-result-object v0

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FA"

    const-string v2, " is shutting down."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ˈ()Lᐧﹳ/ʽ;

    const-string v0, "FA"

    if-nez p1, :cond_0

    const-string p1, "onRebind called with null intent"

    nop

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onRebind called. action: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ˈ()Lᐧﹳ/ʽ;

    move-result-object p2

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "FA"

    const-string p2, "AppMeasurementService started with null intent"

    nop

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/app/Service;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lﹶﾞ/ᵎʻ;->ˉˆ(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/ﹳـ;Ljava/lang/Long;)Lﹶﾞ/ᵎʻ;

    move-result-object v1

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Local AppMeasurementService called. startId, action"

    invoke-virtual {v3, v4, v2, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lˋˋ/ˑﹳ;

    invoke-direct {v2, p2, p3, v1, p1}, Lˋˋ/ˑﹳ;-><init>(Lᐧﹳ/ʽ;ILﹶﾞ/ﹳـ;Landroid/content/Intent;)V

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ʾˋ(Landroid/content/Context;)Lﹶﾞ/ᵢי;

    move-result-object p1

    invoke-virtual {p1}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object p3

    new-instance v0, Lﹶﾞ/ﹶˎ;

    invoke-direct {v0, p2, p1, v2}, Lﹶﾞ/ﹶˎ;-><init>(Lᐧﹳ/ʽ;Lﹶﾞ/ᵢי;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ˈ()Lᐧﹳ/ʽ;

    const-string v0, "FA"

    if-nez p1, :cond_0

    const-string p1, "onUnbind called with null intent"

    nop

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onUnbind called for intent. action: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ʽ(Landroid/app/job/JobParameters;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final ˈ()Lᐧﹳ/ʽ;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->ʾˋ:Lᐧﹳ/ʽ;

    if-nez v0, :cond_0

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->ʾˋ:Lᐧﹳ/ʽ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->ʾˋ:Lᐧﹳ/ʽ;

    return-object v0
.end method

.method public final ⁱˊ(Landroid/content/Intent;)V
    .locals 4

    .prologue
    sget-object v0, Lʾˊ/ﹳٴ;->ﹳٴ:Landroid/util/SparseArray;

    const-string v0, "No active wake lock id #"

    const-string v1, "androidx.contentpager.content.wakelockid"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lʾˊ/ﹳٴ;->ﹳٴ:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    const-string v2, "WakefulBroadcastReceiv."

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method
