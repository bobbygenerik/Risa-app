.class public final Lـʾ/ˈ;
.super Lᵔᴵ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public final ˈ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lـʾ/ˈ;->ʽ:I

    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lᵔᴵ/ⁱˊ;-><init>(II)V

    iput-object p1, p0, Lـʾ/ˈ;->ˈ:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lـʾ/ˈ;->ʽ:I

    invoke-direct {p0, p2, p3}, Lᵔᴵ/ⁱˊ;-><init>(II)V

    iput-object p1, p0, Lـʾ/ˈ;->ˈ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lʼﹶ/ﹳٴ;)V
    .locals 12

    .prologue
    iget v0, p0, Lـʾ/ˈ;->ʽ:I

    const-string v1, "reschedule_needed"

    const-string v2, "androidx.work.util.preferences"

    iget-object v3, p0, Lـʾ/ˈ;->ˈ:Landroid/content/Context;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-interface {p1, v0}, Lʼﹶ/ﹳٴ;->ʽﹳ(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "last_cancel_all_time_ms"

    if-nez v2, :cond_0

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-wide/16 v8, 0x0

    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v8, 0x1

    :cond_1
    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ˆʾ()V

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v7, v10, v6

    aput-object v2, v10, v5

    invoke-interface {p1, v10}, Lʼﹶ/ﹳٴ;->ﹳـ([Ljava/lang/Object;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v6

    aput-object v2, v7, v5

    invoke-interface {p1, v7}, Lʼﹶ/ﹳٴ;->ﹳـ([Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ˈⁱ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ʼˎ()V

    :cond_2
    const-string v0, "androidx.work.util.id"

    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "next_job_scheduler_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "next_alarm_manager_id"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ˆʾ()V

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v2, v8, v5

    invoke-interface {p1, v8}, Lʼﹶ/ﹳٴ;->ﹳـ([Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v6

    aput-object v1, v2, v5

    invoke-interface {p1, v2}, Lʼﹶ/ﹳٴ;->ﹳـ([Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ˈⁱ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ʼˎ()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ʼˎ()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lʼﹶ/ﹳٴ;->ʼˎ()V

    throw v0

    :pswitch_0
    iget v0, p0, Lᵔᴵ/ⁱˊ;->ⁱˊ:I

    const/16 v7, 0xa

    if-lt v0, v7, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    invoke-interface {p1, v2}, Lʼﹶ/ﹳٴ;->ﹳـ([Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
