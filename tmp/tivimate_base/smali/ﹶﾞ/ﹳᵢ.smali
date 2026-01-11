.class public final Lﹶﾞ/ﹳᵢ;
.super Lﹶﾞ/ٴᵢ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Landroid/app/job/JobScheduler;


# virtual methods
.method public final ʼᵢ(J)V
    .locals 7

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {p0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v1, p0, Lﹶﾞ/ﹳᵢ;->ʽʽ:Landroid/app/job/JobScheduler;

    const-string v2, "measurement-client"

    if-eqz v1, :cond_1

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string p2, "[sgtm] There\'s an existing pending job, skip this schedule."

    invoke-virtual {p1, p2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lﹶﾞ/ﹳᵢ;->יˉ()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "[sgtm] Scheduling Scion upload, millis"

    invoke-virtual {v1, v3, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v3, "action"

    const-string v4, "com.google.android.gms.measurement.SCION_UPLOAD"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    iget-object v4, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v6, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    add-long/2addr p1, p1

    invoke-virtual {v3, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    iget-object p2, p0, Lﹶﾞ/ﹳᵢ;->ʽʽ:Landroid/app/job/JobScheduler;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    iget-object p2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p2, p2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    if-ne p1, v2, :cond_2

    const-string p1, "SUCCESS"

    goto :goto_1

    :cond_2
    const-string p1, "FAILURE"

    :goto_1
    const-string v0, "[sgtm] Scion upload job scheduled with result"

    invoke-virtual {p2, p1, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {p1}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object p1, p1, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    invoke-static {v1}, Landroid/support/v4/media/session/ﹳٴ;->ˏי(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "[sgtm] Not eligible for Scion upload"

    invoke-virtual {p1, p2, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ˋˊ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final יˉ()I
    .locals 5

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {p0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v1, p0, Lﹶﾞ/ﹳᵢ;->ʽʽ:Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    const-string v2, "google_analytics_sgtm_upload_enabled"

    invoke-virtual {v1, v2}, Lﹶﾞ/ᵎﹶ;->ᵢˋ(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v1

    iget-wide v1, v1, Lﹶﾞ/ˆﾞ;->ٴʼ:J

    const-wide/32 v3, 0x1d0d8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {v1, v2}, Lﹶﾞ/ᵢﹳ;->ـʻ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ʿʽ;->ˈـ()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x4

    return v0

    :cond_4
    const/4 v0, 0x6

    return v0

    :cond_5
    const/16 v0, 0x8

    return v0

    :cond_6
    const/4 v0, 0x7

    return v0
.end method
