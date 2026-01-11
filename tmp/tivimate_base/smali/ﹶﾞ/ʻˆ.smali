.class public final Lﹶﾞ/ʻˆ;
.super Lﹶﾞ/ˎᵎ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Landroid/app/AlarmManager;

.field public ˊʻ:Ljava/lang/Integer;

.field public ᴵᵔ:Lﹶﾞ/ˆʻ;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵢי;)V
    .locals 1

    invoke-direct {p0, p1}, Lﹶﾞ/ˎᵎ;-><init>(Lﹶﾞ/ᵢי;)V

    iget-object p1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast p1, Lﹶﾞ/ᵎʻ;

    iget-object p1, p1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lﹶﾞ/ʻˆ;->ˈٴ:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public final ʼᵢ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v1, "Unscheduling upload"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, p0, Lﹶﾞ/ʻˆ;->ˈٴ:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶﾞ/ʻˆ;->ˎʾ()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    invoke-virtual {p0}, Lﹶﾞ/ʻˆ;->יˉ()Lﹶﾞ/ᵔʾ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ᵔʾ;->ʽ()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lﹶﾞ/ʻˆ;->ﾞˋ()V

    :cond_1
    return-void
.end method

.method public final ˈـ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʻˆ;->ˊʻ:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "measurement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lﹶﾞ/ʻˆ;->ˊʻ:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ʻˆ;->ˊʻ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final ˋˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʻˆ;->ˈٴ:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶﾞ/ʻˆ;->ˎʾ()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lﹶﾞ/ʻˆ;->ﾞˋ()V

    :cond_1
    return-void
.end method

.method public final ˎʾ()Landroid/app/PendingIntent;
    .locals 4

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/measurement/ˊʻ;->ﹳٴ:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final יˉ()Lﹶﾞ/ᵔʾ;
    .locals 3

    .prologue
    iget-object v0, p0, Lﹶﾞ/ʻˆ;->ᴵᵔ:Lﹶﾞ/ˆʻ;

    if-nez v0, :cond_0

    new-instance v0, Lﹶﾞ/ˆʻ;

    iget-object v1, p0, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v1, v1, Lﹶﾞ/ᵢי;->ᵔי:Lﹶﾞ/ᵎʻ;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lﹶﾞ/ˆʻ;-><init>(Ljava/lang/Object;Lﹶﾞ/יﹳ;I)V

    iput-object v0, p0, Lﹶﾞ/ʻˆ;->ᴵᵔ:Lﹶﾞ/ˆʻ;

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ʻˆ;->ᴵᵔ:Lﹶﾞ/ˆʻ;

    return-object v0
.end method

.method public final ﾞˋ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lﹶﾞ/ʻˆ;->ˈـ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method
