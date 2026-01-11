.class public final Lᐧˉ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـʾ/ˑﹳ;


# static fields
.field public static final ˊʻ:Ljava/lang/String;


# instance fields
.field public final ʽʽ:Lᐧˉ/ⁱˊ;

.field public final ʾˋ:Landroid/content/Context;

.field public final ˈٴ:Landroidx/work/impl/WorkDatabase;

.field public final ᴵˊ:Landroid/app/job/JobScheduler;

.field public final ᴵᵔ:Lᴵˋ/ⁱˊ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lᐧˉ/ʽ;->ˊʻ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lᴵˋ/ⁱˊ;)V
    .locals 4

    invoke-static {p1}, Lᐧˉ/ﹳٴ;->ﹳٴ(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    new-instance v1, Lᐧˉ/ⁱˊ;

    iget-object v2, p3, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    iget-boolean v3, p3, Lᴵˋ/ⁱˊ;->ﾞʻ:Z

    invoke-direct {v1, p1, v2, v3}, Lᐧˉ/ⁱˊ;-><init>(Landroid/content/Context;Lᴵˋ/ˆʾ;Z)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧˉ/ʽ;->ʾˋ:Landroid/content/Context;

    iput-object v0, p0, Lᐧˉ/ʽ;->ᴵˊ:Landroid/app/job/JobScheduler;

    iput-object v1, p0, Lᐧˉ/ʽ;->ʽʽ:Lᐧˉ/ⁱˊ;

    iput-object p2, p0, Lᐧˉ/ʽ;->ˈٴ:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Lᐧˉ/ʽ;->ᴵᵔ:Lᴵˋ/ⁱˊ;

    return-void
.end method

.method public static ˈ(Landroid/app/job/JobScheduler;I)V
    .locals 4

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exception while trying to cancel job (%d)"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lᐧˉ/ʽ;->ˊʻ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static ˑﹳ(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    invoke-static {p0, p1}, Lᐧˉ/ʽ;->ﾞᴵ(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/app/job/JobInfo;

    invoke-static {v2}, Lᐧˉ/ʽ;->ᵎﹶ(Landroid/app/job/JobInfo;)Lˑᵎ/ﾞʻ;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static ᵎﹶ(Landroid/app/job/JobInfo;)Lˑᵎ/ﾞʻ;
    .locals 3

    .prologue
    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lˑᵎ/ﾞʻ;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lˑᵎ/ﾞʻ;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾞᴵ(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    sget-object v0, Lᐧˉ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lᐧˉ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    const-string v3, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v2, v1, v3, p1}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final ʽ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᵔᵢ(Lˑᵎ/ﹳᐧ;I)V
    .locals 13

    .prologue
    const-string v0, "Scheduling a non-expedited job (work ID "

    const-string v1, "Unable to schedule work ID "

    iget-object v2, p0, Lᐧˉ/ʽ;->ʽʽ:Lᐧˉ/ⁱˊ;

    invoke-virtual {v2, p1, p2}, Lᐧˉ/ⁱˊ;->ﹳٴ(Lˑᵎ/ﹳᐧ;I)Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling work ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Job ID "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lᐧˉ/ʽ;->ˊʻ:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lᐧˉ/ʽ;->ᴵˊ:Landroid/app/job/JobScheduler;

    invoke-virtual {v7, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lᴵˋ/ˏי;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p1, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ﹳᐧ:I

    if-ne v1, v3, :cond_0

    iput-boolean v4, p1, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lᐧˉ/ʽ;->ᵔᵢ(Lˑᵎ/ﹳᐧ;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    return-void

    :goto_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to schedule "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1, p2}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    sget-object p2, Lᐧˉ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_1

    const/16 v0, 0x96

    :goto_2
    move v1, v0

    goto :goto_3

    :cond_1
    const/16 v0, 0x64

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lᐧˉ/ʽ;->ˈٴ:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v0

    iget-object v0, v0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v2, Lar/tvplayer/core/domain/ـˆ;

    const/16 v5, 0x19

    invoke-direct {v2, v5}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    invoke-static {v0, v3, v4, v2}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v0, 0x22

    iget-object v3, p0, Lᐧˉ/ʽ;->ʾˋ:Landroid/content/Context;

    const-string v5, "<faulty JobScheduler failed to getPendingJobs>"

    if-lt p2, v0, :cond_6

    invoke-static {v3}, Lᐧˉ/ﹳٴ;->ﹳٴ(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p2

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v8, Lᐧˉ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v9

    const-string v10, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v9, v8, v10, v0}, Lᴵˋ/ˏי;->ˈ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    :goto_4
    if-eqz v0, :cond_8

    invoke-static {v3, p2}, Lᐧˉ/ʽ;->ﾞᴵ(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr v5, p2

    goto :goto_5

    :cond_2
    move v5, v4

    :goto_5
    if-nez v5, :cond_3

    move-object p2, v7

    goto :goto_6

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of which are not owned by WorkManager"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_6
    const-string v5, "jobscheduler"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobScheduler;

    invoke-static {v3, v5}, Lᐧˉ/ʽ;->ﾞᴵ(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_4
    if-nez v4, :cond_5

    goto :goto_7

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from WorkManager in the default namespace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " jobs in \"androidx.work.systemjobscheduler\" namespace"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2, v7}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lﹶˈ/ʼˎ;->ʻˋ([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const-string v8, ",\n"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lﹶˈ/ˆʾ;->ᵎʻ(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lᴵⁱ/ﾞʻ;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_6
    invoke-static {v3}, Lᐧˉ/ﹳٴ;->ﹳٴ(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p2

    invoke-static {v3, p2}, Lᐧˉ/ʽ;->ﾞᴵ(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_8

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " jobs from WorkManager"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_8
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JobScheduler "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " job limit exceeded.\nIn JobScheduler there are "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".\nThere are "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " jobs tracked by WorkManager\'s database;\nthe Configuration limit is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lᐧˉ/ʽ;->ᴵᵔ:Lᴵˋ/ⁱˊ;

    iget v0, v0, Lᴵˋ/ⁱˊ;->ٴﹶ:I

    const/16 v1, 0x2e

    invoke-static {p2, v0, v1}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    invoke-virtual {v0, v6, p2}, Lᴵˋ/ˏי;->ʽ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final ⁱˊ(Ljava/lang/String;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lᐧˉ/ʽ;->ʾˋ:Landroid/content/Context;

    iget-object v1, p0, Lᐧˉ/ʽ;->ᴵˊ:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Lᐧˉ/ʽ;->ˑﹳ(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v1, v5}, Lᐧˉ/ʽ;->ˈ(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lᐧˉ/ʽ;->ˈٴ:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->ʽﹳ()Lˑᵎ/ٴﹶ;

    move-result-object v0

    iget-object v0, v0, Lˑᵎ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v1, Lˑᵎ/ʽ;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, v3, p1, v1}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final varargs ﹳٴ([Lˑᵎ/ﹳᐧ;)V
    .locals 16

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Landroidx/leanback/widget/ˉˆ;

    const/16 v3, 0x13

    iget-object v4, v1, Lᐧˉ/ʽ;->ˈٴ:Landroidx/work/impl/WorkDatabase;

    invoke-direct {v2, v3, v4}, Landroidx/leanback/widget/ˉˆ;-><init>(ILjava/lang/Object;)V

    iget-object v3, v2, Landroidx/leanback/widget/ˉˆ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase;

    array-length v5, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_7

    aget-object v8, v0, v7

    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ⁱˊ()V

    :try_start_0
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->ʾᵎ()Lˑᵎ/ʾᵎ;

    move-result-object v9

    iget-object v10, v8, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lˑᵎ/ʾᵎ;->ˈ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "Skipping scheduling "

    sget-object v12, Lᐧˉ/ʽ;->ˊʻ:Ljava/lang/String;

    if-nez v9, :cond_0

    :try_start_1
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " because it\'s no longer in the DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v12, v9}, Lᴵˋ/ˏי;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ᵔﹳ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ﾞʻ()V

    move v9, v6

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :try_start_2
    iget-object v9, v9, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    sget-object v13, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    if-eq v9, v13, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " because it is no longer enqueued"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v12, v9}, Lᴵˋ/ˏי;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ᵔﹳ()V

    goto :goto_1

    :cond_1
    invoke-static {v8}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v9

    iget v11, v9, Lˑᵎ/ﾞʻ;->ⁱˊ:I

    iget-object v9, v9, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->ʽﹳ()Lˑᵎ/ٴﹶ;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v12, Lˑᵎ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v13, Lˑᵎ/ˆʾ;

    const/4 v14, 0x0

    invoke-direct {v13, v11, v14, v9}, Lˑᵎ/ˆʾ;-><init>(IILjava/lang/String;)V

    const/4 v14, 0x1

    invoke-static {v12, v14, v6, v13}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lˑᵎ/ʼˎ;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v13, v1, Lᐧˉ/ʽ;->ᴵᵔ:Lᴵˋ/ⁱˊ;

    if-eqz v12, :cond_2

    :try_start_3
    iget v15, v12, Lˑᵎ/ʼˎ;->ʽ:I

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v15, v13, Lᴵˋ/ⁱˊ;->ʼˎ:I

    new-instance v6, Lˆﹶ/ˈ;

    invoke-direct {v6, v2, v15}, Lˆﹶ/ˈ;-><init>(Landroidx/leanback/widget/ˉˆ;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroidx/lifecycle/ـˏ;

    const/16 v14, 0xc

    invoke-direct {v15, v14, v6}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v15}, Lʼﾞ/ˊʻ;->ʼᐧ(Lᴵⁱ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v15

    :goto_2
    if-nez v12, :cond_3

    new-instance v6, Lˑᵎ/ʼˎ;

    invoke-direct {v6, v11, v15, v9}, Lˑᵎ/ʼˎ;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->ʽﹳ()Lˑᵎ/ٴﹶ;

    move-result-object v9

    iget-object v11, v9, Lˑᵎ/ٴﹶ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance v12, Lˑᵎ/ⁱˊ;

    const/4 v14, 0x2

    invoke-direct {v12, v9, v14, v6}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static {v11, v9, v6, v12}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, v8, v15}, Lᐧˉ/ʽ;->ᵔᵢ(Lˑᵎ/ﹳᐧ;I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ne v6, v9, :cond_6

    iget-object v6, v1, Lᐧˉ/ʽ;->ʾˋ:Landroid/content/Context;

    iget-object v9, v1, Lᐧˉ/ʽ;->ᴵˊ:Landroid/app/job/JobScheduler;

    invoke-static {v6, v9, v10}, Lᐧˉ/ʽ;->ˑﹳ(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v13, Lᴵˋ/ⁱˊ;->ʼˎ:I

    new-instance v10, Lˆﹶ/ˈ;

    invoke-direct {v10, v2, v6}, Lˆﹶ/ˈ;-><init>(Landroidx/leanback/widget/ˉˆ;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/lifecycle/ـˏ;

    const/16 v11, 0xc

    invoke-direct {v6, v11, v10}, Landroidx/lifecycle/ـˏ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v6}, Lʼﾞ/ˊʻ;->ʼᐧ(Lᴵⁱ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    :goto_3
    invoke-virtual {v1, v8, v6}, Lᐧˉ/ʽ;->ᵔᵢ(Lˑᵎ/ﹳᐧ;I)V

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ᵔﹳ()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ﾞʻ()V

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v4}, Lʼﾞ/ˊʻ;->ﾞʻ()V

    throw v0

    :cond_7
    return-void
.end method
