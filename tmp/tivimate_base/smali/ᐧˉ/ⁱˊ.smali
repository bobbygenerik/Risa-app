.class public final Lᐧˉ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Ljava/lang/String;


# instance fields
.field public final ʽ:Z

.field public final ⁱˊ:Lᴵˋ/ˆʾ;

.field public final ﹳٴ:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobInfoConverter"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lᐧˉ/ⁱˊ;->ˈ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lᴵˋ/ˆʾ;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lᐧˉ/ⁱˊ;->ⁱˊ:Lᴵˋ/ˆʾ;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lᐧˉ/ⁱˊ;->ﹳٴ:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lᐧˉ/ⁱˊ;->ʽ:Z

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lˑᵎ/ﹳᐧ;I)Landroid/app/job/JobInfo;
    .locals 12

    .prologue
    iget-object v0, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "EXTRA_WORK_SPEC_ID"

    iget-object v3, p1, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    iget v3, p1, Lˑᵎ/ﹳᐧ;->ˏי:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "EXTRA_IS_PERIODIC"

    invoke-virtual {p1}, Lˑᵎ/ﹳᐧ;->ʽ()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    iget-object v3, p0, Lᐧˉ/ⁱˊ;->ﹳٴ:Landroid/content/ComponentName;

    invoke-direct {v2, p2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    iget-boolean p2, v0, Lᴵˋ/ˑﹳ;->ʽ:Z

    invoke-virtual {v2, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    iget-boolean v2, v0, Lᴵˋ/ˑﹳ;->ˈ:Z

    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {v0}, Lᴵˋ/ˑﹳ;->ﹳٴ()Landroid/net/NetworkRequest;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x2

    const/16 v5, 0x18

    const/16 v6, 0x1a

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x1c

    if-lt v3, v9, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    :cond_0
    iget v1, v0, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    const/16 v10, 0x1e

    if-lt v3, v10, :cond_1

    const/4 v10, 0x6

    if-ne v1, v10, :cond_1

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v10, 0x19

    invoke-virtual {v1, v10}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result v10

    if-eqz v10, :cond_7

    if-eq v10, v8, :cond_5

    if-eq v10, v4, :cond_6

    const/4 v11, 0x3

    if-eq v10, v11, :cond_3

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    goto :goto_0

    :cond_2
    if-lt v3, v6, :cond_4

    goto :goto_1

    :cond_3
    if-lt v3, v5, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v10

    invoke-static {v1}, Lᐧـ/ˈ;->ʻٴ(I)Ljava/lang/String;

    move-result-object v1

    const-string v11, "API version too low. Cannot convert network type value "

    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lᐧˉ/ⁱˊ;->ˈ:Ljava/lang/String;

    invoke-virtual {v10, v11, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v11, v8

    goto :goto_1

    :cond_6
    move v11, v4

    goto :goto_1

    :cond_7
    move v11, v7

    :goto_1
    invoke-virtual {p2, v11}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_2
    if-nez v2, :cond_9

    iget v1, p1, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    if-ne v1, v4, :cond_8

    move v1, v7

    goto :goto_3

    :cond_8
    move v1, v8

    :goto_3
    iget-wide v10, p1, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    invoke-virtual {p2, v10, v11, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_9
    invoke-virtual {p1}, Lˑᵎ/ﹳᐧ;->ﹳٴ()J

    move-result-wide v1

    iget-object v4, p0, Lᐧˉ/ⁱˊ;->ⁱˊ:Lᴵˋ/ˆʾ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v1, v10

    const-wide/16 v10, 0x0

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    if-gt v3, v9, :cond_a

    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    :cond_a
    cmp-long v4, v1, v10

    if-lez v4, :cond_b

    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    :cond_b
    iget-boolean v4, p1, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lᐧˉ/ⁱˊ;->ʽ:Z

    if-eqz v4, :cond_c

    invoke-virtual {p2, v8}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    :cond_c
    :goto_4
    if-lt v3, v5, :cond_e

    invoke-virtual {v0}, Lᴵˋ/ˑﹳ;->ⁱˊ()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lᴵˋ/ˑﹳ;->ʼˎ:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵˋ/ˈ;

    iget-boolean v5, v4, Lᴵˋ/ˈ;->ⁱˊ:Z

    new-instance v9, Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v4, v4, Lᴵˋ/ˈ;->ﹳٴ:Landroid/net/Uri;

    new-instance v9, Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-direct {v9, v4, v5}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    invoke-virtual {p2, v9}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    :cond_d
    iget-wide v3, v0, Lᴵˋ/ˑﹳ;->ᵎﹶ:J

    invoke-virtual {p2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    iget-wide v3, v0, Lᴵˋ/ˑﹳ;->ᵔᵢ:J

    invoke-virtual {p2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    :cond_e
    invoke-virtual {p2, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_f

    iget-boolean v4, v0, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    invoke-virtual {p2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    iget-boolean v0, v0, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    invoke-virtual {p2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    :cond_f
    iget v0, p1, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    if-lez v0, :cond_10

    move v0, v8

    goto :goto_6

    :cond_10
    move v0, v7

    :goto_6
    cmp-long v1, v1, v10

    if-lez v1, :cond_11

    move v7, v8

    :cond_11
    const/16 v1, 0x1f

    if-lt v3, v1, :cond_12

    iget-boolean v1, p1, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    if-eqz v1, :cond_12

    if-nez v0, :cond_12

    if-nez v7, :cond_12

    invoke-virtual {p2, v8}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    :cond_12
    const/16 v0, 0x23

    if-lt v3, v0, :cond_13

    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    if-eqz p1, :cond_13

    invoke-virtual {p2, p1}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;

    :cond_13
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method
