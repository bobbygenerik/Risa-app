.class public Landroidx/work/impl/background/systemjob/SystemJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"

# interfaces
.implements Lـʾ/ﹳٴ;


# static fields
.field public static final ᴵᵔ:Ljava/lang/String;


# instance fields
.field public final ʽʽ:Lˊﾞ/ٴﹶ;

.field public ʾˋ:Lـʾ/ﹳᐧ;

.field public ˈٴ:Lـʾ/ᵔﹳ;

.field public final ᴵˊ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobService"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵˊ:Ljava/util/HashMap;

    new-instance v0, Lˊﾞ/ٴﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˊﾞ/ٴﹶ;-><init>(I)V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʽʽ:Lˊﾞ/ٴﹶ;

    return-void
.end method

.method public static ⁱˊ(Landroid/app/job/JobParameters;)Lˑᵎ/ﾞʻ;
    .locals 3

    .prologue
    const-string v0, "EXTRA_WORK_SPEC_ID"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lˑᵎ/ﾞʻ;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, p0, v0}, Lˑᵎ/ﾞʻ;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﹳٴ(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final onCreate()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lـʾ/ﹳᐧ;->ﹳـ(Landroid/content/Context;)Lـʾ/ﹳᐧ;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʾˋ:Lـʾ/ﹳᐧ;

    iget-object v1, v0, Lـʾ/ﹳᐧ;->ᵔᵢ:Lـʾ/ʽ;

    new-instance v2, Lـʾ/ᵔﹳ;

    iget-object v0, v0, Lـʾ/ﹳᐧ;->ﾞᴵ:Lᐧᵎ/ᵢי;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ˈٴ:Lـʾ/ᵔﹳ;

    invoke-virtual {v1, p0}, Lـʾ/ʽ;->ﹳٴ(Lـʾ/ﹳٴ;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/Application;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    const-string v2, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    invoke-virtual {v0, v1, v2}, Lᴵˋ/ˏי;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʾˋ:Lـʾ/ﹳᐧ;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lـʾ/ﹳᐧ;->ᵔᵢ:Lـʾ/ʽ;

    invoke-virtual {v0, p0}, Lـʾ/ʽ;->ᵎﹶ(Lـʾ/ﹳٴ;)V

    :cond_0
    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .prologue
    const-string v0, "onStartJob"

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/SystemJobService;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʾˋ:Lـʾ/ﹳᐧ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    const-string v4, "WorkManager is not initialized; requesting retry."

    invoke-virtual {v0, v3, v4}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v2

    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->ⁱˊ(Landroid/app/job/JobParameters;)Lˑᵎ/ﾞʻ;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    const-string v0, "WorkSpec id not found!"

    invoke-virtual {p1, v3, v0}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v4, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Job is already being executed by SystemJobService: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onStartJob for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_5

    new-instance v3, Lᴵˋ/ˆʾ;

    invoke-direct {v3}, Lᴵˋ/ˆʾ;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᵢי;->ˆʾ(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᵢי;->ˆʾ(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᵢי;->ʼˎ(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ᵢי;->ʼˎ(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    :cond_4
    const/16 v4, 0x1c

    if-lt v2, v4, :cond_6

    invoke-static {p1}, Lʼᐧ/ʽ;->ˈ(Landroid/app/job/JobParameters;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_0
    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ˈٴ:Lـʾ/ᵔﹳ;

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʽʽ:Lˊﾞ/ٴﹶ;

    invoke-virtual {v2, v0}, Lˊﾞ/ٴﹶ;->ˑﹳ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;

    move-result-object v0

    iget-object v2, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᐧᵎ/ᵢי;

    new-instance v4, Lcom/parse/ˊﾞ;

    const/4 v5, 0x6

    invoke-direct {v4, p1, v0, v3, v5}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Lᐧᵎ/ᵢי;->ʼˎ(Ljava/lang/Runnable;)V

    return v1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .prologue
    const-string v0, "onStopJob"

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/SystemJobService;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʾˋ:Lـʾ/ﹳᐧ;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    const-string v2, "WorkManager is not initialized; requesting retry."

    invoke-virtual {p1, v0, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->ⁱˊ(Landroid/app/job/JobParameters;)Lˑᵎ/ﾞʻ;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    const-string v1, "WorkSpec id not found!"

    invoke-virtual {p1, v0, v1}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStopJob for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʽʽ:Lˊﾞ/ٴﹶ;

    invoke-virtual {v2, v0}, Lˊﾞ/ٴﹶ;->ˈ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_2

    invoke-static {p1}, Lʼᵢ/ˉˆ;->ⁱˊ(Landroid/app/job/JobParameters;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, -0x200

    :goto_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ˈٴ:Lـʾ/ᵔﹳ;

    invoke-virtual {v3, v2, p1}, Lـʾ/ᵔﹳ;->ـˆ(Lـʾ/ᵔᵢ;I)V

    :cond_3
    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʾˋ:Lـʾ/ﹳᐧ;

    iget-object p1, p1, Lـʾ/ﹳᐧ;->ᵔᵢ:Lـʾ/ʽ;

    iget-object v0, v0, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iget-object v2, p1, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p1, p1, Lـʾ/ʽ;->ʼˎ:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v2

    xor-int/2addr p1, v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ˈ(Lˑᵎ/ﾞʻ;Z)V
    .locals 3

    .prologue
    const-string v0, "onExecuted"

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/SystemJobService;->ﹳٴ(Ljava/lang/String;)V

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " executed on JobScheduler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵᵔ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->ʽʽ:Lˊﾞ/ٴﹶ;

    invoke-virtual {v1, p1}, Lˊﾞ/ٴﹶ;->ˈ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method
