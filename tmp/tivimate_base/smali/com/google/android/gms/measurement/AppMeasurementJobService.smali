.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Lﹶﾞ/ʻʼ;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field public ʾˋ:Lᐧﹳ/ʽ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ˈ()Lᐧﹳ/ʽ;

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

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ˈ()Lᐧﹳ/ʽ;

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

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ˈ()Lᐧﹳ/ʽ;

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

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ˈ()Lᐧﹳ/ʽ;

    move-result-object v0

    iget-object v1, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Landroid/app/Service;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FA"

    const-string v5, "onStartJob received action: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {v1}, Lﹶﾞ/ᵢי;->ʾˋ(Landroid/content/Context;)Lﹶﾞ/ᵢי;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ᵎﹶ()Lﹶﾞ/ﹳـ;

    move-result-object v4

    iget-object v5, v3, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ʽʽ:Lᵔﹶ/ᵔʾ;

    iget-object v5, v4, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v6, "Local AppMeasurementJobService called. action"

    invoke-virtual {v5, v2, v6}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lʼٴ/ـˆ;

    const/16 v6, 0xf

    invoke-direct {v5, v0, v4, p1, v6}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3}, Lﹶﾞ/ᵢי;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v4

    new-instance v6, Lﹶﾞ/ﹶˎ;

    invoke-direct {v6, v0, v3, v5}, Lﹶﾞ/ﹶˎ;-><init>(Lᐧﹳ/ʽ;Lﹶﾞ/ᵢי;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v6}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    :cond_0
    const-string v3, "com.google.android.gms.measurement.SCION_UPLOAD"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ʽ(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/ʻˋ;

    move-result-object v1

    new-instance v2, Lﹶﾞ/ﹶˎ;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v0, p1, v3, v4}, Lﹶﾞ/ﹶˎ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/measurement/ˉـ;

    const/4 v0, 0x2

    invoke-direct {p1, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˉـ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﹳٴ(Lcom/google/android/gms/internal/measurement/ـﹶ;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ˈ()Lᐧﹳ/ʽ;

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
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final ˈ()Lᐧﹳ/ʽ;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ʾˋ:Lᐧﹳ/ʽ;

    if-nez v0, :cond_0

    new-instance v0, Lᐧﹳ/ʽ;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Lᐧﹳ/ʽ;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ʾˋ:Lᐧﹳ/ʽ;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ʾˋ:Lᐧﹳ/ʽ;

    return-object v0
.end method

.method public final ⁱˊ(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final ﹳٴ(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
