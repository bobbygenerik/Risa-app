.class public final Lˋˋ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lˋˋ/ˈ;->ʾˋ:I

    iput-object p1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    iput p3, p0, Lˋˋ/ˈ;->ʾˋ:I

    iput-object p1, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lˏᐧ/ˆʾ;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lˋˋ/ˈ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ˏᵢ;Lcom/google/android/gms/internal/measurement/ʽʽ;Lﹶﾞ/ˏᵢ;)V
    .locals 0

    const/16 p3, 0x1b

    iput p3, p0, Lˋˋ/ˈ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    iput-object p1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method private final ʽ()V
    .locals 4

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lˋˋ/ˈ;->ﾞᴵ()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏᐧ/ˆʾ;

    iget-object v1, v1, Lˏᐧ/ˆʾ;->ᴵˊ:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˏᐧ/ˆʾ;

    const/4 v3, 0x1

    iput v3, v2, Lˏᐧ/ˆʾ;->ʽʽ:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final ˈ()V
    .locals 8

    .prologue
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔʼ/ⁱˊ;

    iget-object v0, v0, Lᵔʼ/ⁱˊ;->ʾˋ:Lـʾ/ﹳᐧ;

    iget-object v0, v0, Lـʾ/ﹳᐧ;->ᵔᵢ:Lـʾ/ʽ;

    iget-object v1, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lـʾ/ʽ;->ʽ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v0, Lᴵˋ/ˑﹳ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-object v1, v4, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔʼ/ⁱˊ;

    iget-object v1, v0, Lᵔʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔʼ/ⁱˊ;

    iget-object v0, v0, Lᵔʼ/ⁱˊ;->ˊʻ:Ljava/util/HashMap;

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lᵔʼ/ⁱˊ;

    iget-object v3, v5, Lᵔʼ/ⁱˊ;->ˉٴ:Lʼﹳ/ᵎﹶ;

    iget-object v0, v5, Lᵔʼ/ⁱˊ;->ᴵˊ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵי/ˏי;

    sget-object v2, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v0

    new-instance v2, Lʼˋ/ᵔʾ;

    const/16 v7, 0x17

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lʼˋ/ᵔʾ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 v3, 0x3

    invoke-static {v0, v6, v2, v3}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    move-result-object v0

    iget-object v2, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lᵔʼ/ⁱˊ;

    iget-object v2, v2, Lᵔʼ/ⁱˊ;->ٴᵢ:Ljava/util/HashMap;

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private final ˑﹳ()V
    .locals 32

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lﹶﾞ/ᵎʻ;

    iget-object v0, v1, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʿ;

    iget-object v2, v3, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    iget-object v8, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    iget-object v9, v3, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    iget-object v10, v3, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v11, v3, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v2, v11, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lﹶﾞ/ʼᐧ;

    invoke-direct {v2, v3}, Lﹶﾞ/ˎᐧ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v2}, Lﹶﾞ/ˎᐧ;->ˋˊ()V

    iput-object v2, v3, Lﹶﾞ/ᵎʻ;->ʼˈ:Lﹶﾞ/ʼᐧ;

    iget-object v12, v0, Lﹶﾞ/ᵎʿ;->ˈ:Lcom/google/android/gms/internal/measurement/ﹳـ;

    if-nez v12, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_0
    iget-wide v4, v12, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʾˋ:J

    move-wide v6, v4

    :goto_0
    new-instance v2, Lﹶﾞ/ˆﾞ;

    iget-wide v4, v0, Lﹶﾞ/ᵎʿ;->ʽ:J

    invoke-direct/range {v2 .. v7}, Lﹶﾞ/ˆﾞ;-><init>(Lﹶﾞ/ᵎʻ;JJ)V

    invoke-virtual {v2}, Lﹶﾞ/ٴᵢ;->ʽˑ()V

    iput-object v2, v3, Lﹶﾞ/ᵎʻ;->ـˏ:Lﹶﾞ/ˆﾞ;

    new-instance v0, Lﹶﾞ/ˈʿ;

    invoke-direct {v0, v3}, Lﹶﾞ/ˈʿ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ʽˑ()V

    iput-object v0, v3, Lﹶﾞ/ᵎʻ;->ˋᵔ:Lﹶﾞ/ˈʿ;

    new-instance v0, Lﹶﾞ/ʿʽ;

    invoke-direct {v0, v3}, Lﹶﾞ/ʿʽ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ʽˑ()V

    iput-object v0, v3, Lﹶﾞ/ᵎʻ;->ˊˋ:Lﹶﾞ/ʿʽ;

    iget-boolean v0, v10, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    iget-object v4, v10, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    const-string v5, "Can\'t initialize twice"

    if-nez v0, :cond_49

    invoke-virtual {v10}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    const-wide/16 v15, 0x0

    cmp-long v17, v6, v15

    if-nez v17, :cond_1

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    cmp-long v0, v6, v15

    if-nez v0, :cond_1

    iget-object v0, v10, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v15, "Utils falling back to Random for random id"

    invoke-virtual {v0, v15}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v10, Lﹶﾞ/ᵢﹳ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v6, 0x1

    iput-boolean v6, v10, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    iget-boolean v0, v9, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    if-nez v0, :cond_48

    iget-object v0, v9, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v7, "com.google.android.gms.measurement.prefs"

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v9, Lﹶﾞ/ᐧᴵ;->ʽʽ:Landroid/content/SharedPreferences;

    const-string v7, "has_been_opened"

    invoke-interface {v0, v7, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lﹶﾞ/ᐧᴵ;->ˊˋ:Z

    if-nez v0, :cond_2

    iget-object v0, v9, Lﹶﾞ/ᐧᴵ;->ʽʽ:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v15, 0x1

    invoke-interface {v0, v7, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    new-instance v0, Lʾⁱ/ˈ;

    sget-object v7, Lﹶﾞ/ᴵᵔ;->ˈ:Lﹶﾞ/ˈٴ;

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    const-wide/16 v15, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {v0, v9, v6, v7}, Lʾⁱ/ˈ;-><init>(Lﹶﾞ/ᐧᴵ;J)V

    iput-object v0, v9, Lﹶﾞ/ᐧᴵ;->ᴵᵔ:Lʾⁱ/ˈ;

    iget-object v0, v9, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v6, 0x1

    iput-boolean v6, v9, Lﹶﾞ/ˎᐧ;->ᴵˊ:Z

    iget-object v6, v3, Lﹶﾞ/ᵎʻ;->ـˏ:Lﹶﾞ/ˆﾞ;

    iget-boolean v0, v6, Lﹶﾞ/ٴᵢ;->ᴵˊ:Z

    if-nez v0, :cond_47

    iget-object v0, v6, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lﹶﾞ/ᵎʻ;

    iget-object v0, v7, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    iget-object v13, v7, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    move-object v14, v2

    iget-wide v1, v6, Lﹶﾞ/ˆﾞ;->ٴʼ:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v14

    move-wide/from16 v18, v15

    iget-wide v14, v6, Lﹶﾞ/ˆﾞ;->ᵎⁱ:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "sdkVersion bundled with app, dynamiteVersion"

    invoke-virtual {v0, v1, v14, v15}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v7, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v16, v2

    const-string v0, ""

    const/high16 v20, -0x80000000

    const-string v21, "Unknown"

    const-string v22, "unknown"

    if-nez v15, :cond_4

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v13, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    move-object/from16 v24, v5

    invoke-static {v14}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v5

    move-object/from16 v25, v12

    const-string v12, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v2, v5, v12}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v26, v15

    move/from16 v2, v20

    move-object/from16 v5, v21

    move-object v12, v5

    :goto_1
    move-object/from16 v15, v22

    goto/16 :goto_7

    :cond_4
    move-object/from16 v24, v5

    move-object/from16 v25, v12

    :try_start_0
    invoke-virtual {v15, v14}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v2, v22

    goto :goto_3

    :catch_0
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v13, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v14}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v5

    const-string v12, "Error retrieving app installer package name. appId"

    invoke-virtual {v2, v5, v12}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    if-nez v2, :cond_6

    const-string v2, "manual_install"

    :cond_5
    move-object/from16 v22, v2

    goto :goto_4

    :cond_6
    const-string v5, "com.android.vending"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v22, v0

    :goto_4
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :cond_7
    move-object/from16 v5, v21

    :goto_5
    :try_start_2
    iget-object v12, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v26, v15

    goto :goto_1

    :catch_1
    move-object/from16 v21, v12

    goto :goto_6

    :catch_2
    move-object/from16 v5, v21

    :catch_3
    :goto_6
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v13, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v14}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v12

    move-object/from16 v26, v15

    const-string v15, "Error retrieving package info. appId, appName"

    invoke-virtual {v2, v12, v5, v15}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v2, v20

    move-object/from16 v12, v21

    goto :goto_1

    :goto_7
    iput-object v14, v6, Lﹶﾞ/ˆﾞ;->ʽʽ:Ljava/lang/String;

    iput-object v15, v6, Lﹶﾞ/ˆﾞ;->ˊʻ:Ljava/lang/String;

    iput-object v12, v6, Lﹶﾞ/ˆﾞ;->ˈٴ:Ljava/lang/String;

    iput v2, v6, Lﹶﾞ/ˆﾞ;->ᴵᵔ:I

    iput-object v5, v6, Lﹶﾞ/ˆﾞ;->ٴᵢ:Ljava/lang/String;

    move-object v2, v14

    const-wide/16 v14, 0x0

    iput-wide v14, v6, Lﹶﾞ/ˆﾞ;->ˉٴ:J

    invoke-virtual {v7}, Lﹶﾞ/ᵎʻ;->ⁱˊ()I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v12, 0x1

    if-eq v5, v12, :cond_d

    const/4 v12, 0x3

    if-eq v5, v12, :cond_c

    const/4 v12, 0x4

    if-eq v5, v12, :cond_b

    const/4 v12, 0x6

    if-eq v5, v12, :cond_a

    const/4 v12, 0x7

    if-eq v5, v12, :cond_9

    const/16 v12, 0x8

    if-eq v5, v12, :cond_8

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement disabled"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ٴᵢ:Lﹶﾞ/ʼˈ;

    const-string v14, "Invalid scion state in identity"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement disabled due to denied storage consent"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement disabled via the global data collection setting"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement disabled via the manifest"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement deactivated via the manifest"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v12, v13, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v14, "App measurement collection enabled"

    invoke-virtual {v12, v14}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_8
    iput-object v0, v6, Lﹶﾞ/ˆﾞ;->ᵔٴ:Ljava/lang/String;

    :try_start_4
    iget-object v12, v7, Lﹶﾞ/ᵎʻ;->ˑٴ:Ljava/lang/String;

    invoke-static {v1, v12}, Lﹶﾞ/ʻᴵ;->ⁱˊ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_9

    :cond_f
    move-object v0, v12

    :goto_9
    iput-object v0, v6, Lﹶﾞ/ˆﾞ;->ᵔٴ:Ljava/lang/String;

    if-nez v5, :cond_10

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v13, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v5, "App measurement enabled for app package, google app id"

    iget-object v12, v6, Lﹶﾞ/ˆﾞ;->ʽʽ:Ljava/lang/String;

    iget-object v14, v6, Lﹶﾞ/ˆﾞ;->ᵔٴ:Ljava/lang/String;

    invoke-virtual {v0, v12, v14, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v13, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-static {v2}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v2

    const-string v12, "Fetching Google App Id failed with exception. appId"

    invoke-virtual {v5, v2, v0, v12}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    :goto_a
    const/4 v2, 0x0

    iput-object v2, v6, Lﹶﾞ/ˆﾞ;->ᵎˊ:Ljava/util/List;

    iget-object v0, v7, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v5, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    const-string v12, "analytics.safelisted_events"

    invoke-static {v12}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v0}, Lﹶﾞ/ᵎﹶ;->ﹳᵢ()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, v5, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v12, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v0, v12}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_b
    move-object v0, v2

    goto :goto_c

    :cond_11
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_14

    :try_start_5
    iget-object v12, v5, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_d

    :cond_13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v12, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v5, v0, v12}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    :goto_d
    if-nez v2, :cond_15

    goto :goto_e

    :cond_15
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v13, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v2, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_f

    :cond_16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v12, v7, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    const-string v13, "safelisted event"

    invoke-virtual {v12, v13, v5}, Lﹶﾞ/ᵢﹳ;->ᐧⁱ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_f

    :cond_18
    :goto_e
    iput-object v2, v6, Lﹶﾞ/ˆﾞ;->ᵎˊ:Ljava/util/List;

    :goto_f
    if-eqz v26, :cond_19

    invoke-static {v1}, Lˑˊ/ﹳٴ;->ﾞᴵ(Landroid/content/Context;)Z

    move-result v0

    iput v0, v6, Lﹶﾞ/ˆﾞ;->ˆﾞ:I

    goto :goto_10

    :cond_19
    const/4 v5, 0x0

    iput v5, v6, Lﹶﾞ/ˆﾞ;->ˆﾞ:I

    :goto_10
    iget-object v0, v6, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v1, 0x1

    iput-boolean v1, v6, Lﹶﾞ/ٴᵢ;->ᴵˊ:Z

    new-instance v0, Lﹶﾞ/ﹳᵢ;

    invoke-direct {v0, v3}, Lﹶﾞ/ٴᵢ;-><init>(Lﹶﾞ/ᵎʻ;)V

    invoke-virtual {v0}, Lﹶﾞ/ٴᵢ;->ʽˑ()V

    iput-object v0, v3, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    iget-boolean v1, v0, Lﹶﾞ/ٴᵢ;->ᴵˊ:Z

    if-nez v1, :cond_46

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    iput-object v1, v0, Lﹶﾞ/ﹳᵢ;->ʽʽ:Landroid/app/job/JobScheduler;

    iget-object v1, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lﹶﾞ/ٴᵢ;->ᴵˊ:Z

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v8, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    iget-object v1, v8, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    iget-object v2, v8, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    iget-object v5, v8, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v11}, Lﹶﾞ/ᵎﹶ;->יˉ()V

    const-wide/32 v6, 0x2078d

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "App measurement initialized, version"

    invoke-virtual {v1, v6, v7}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v6, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v1, v6}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lﹶﾞ/ˆﾞ;->ﾞˋ()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lﹶﾞ/ᵎﹶ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v10, v6, v7}, Lﹶﾞ/ᵢﹳ;->ˆﹳ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v6, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {v1, v6}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_11

    :cond_1a
    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_11
    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v6, "Debug-level message logging enabled"

    invoke-virtual {v0, v6}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget v6, v3, Lﹶﾞ/ᵎʻ;->ᵎᵔ:I

    iget-object v7, v3, Lﹶﾞ/ᵎʻ;->ᐧᴵ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-eq v6, v12, :cond_1b

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget v6, v3, Lﹶﾞ/ᵎʻ;->ᵎᵔ:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v12, "Not all components initialized"

    invoke-virtual {v5, v6, v7, v12}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1b
    const/4 v6, 0x1

    iput-boolean v6, v3, Lﹶﾞ/ᵎʻ;->ˈⁱ:Z

    iget-wide v6, v3, Lﹶﾞ/ᵎʻ;->ˏᵢ:J

    iget-object v12, v3, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    iget-object v13, v3, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v13}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    iget-object v13, v3, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v13, v3, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-virtual {v13}, Lﹶﾞ/ﹳᵢ;->יˉ()I

    move-result v13

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    sget-object v14, Lﹶﾞ/ᴵᵔ;->יˉ:Lﹶﾞ/ˈٴ;

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v14

    const/4 v15, 0x2

    move/from16 v20, v14

    if-ne v13, v15, :cond_1c

    const/4 v13, 0x1

    goto :goto_12

    :cond_1c
    const/4 v13, 0x0

    :goto_12
    const-wide/16 v21, 0x1

    if-eqz v20, :cond_1d

    invoke-virtual {v10}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v10}, Lﹶﾞ/ᵢﹳ;->ʽʾ()J

    move-result-wide v23

    cmp-long v20, v23, v21

    if-nez v20, :cond_1d

    goto :goto_13

    :cond_1d
    if-eqz v13, :cond_1e

    const/4 v13, 0x1

    :goto_13
    invoke-virtual {v10}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string v15, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v15, Lʾʽ/ˈ;

    move/from16 v24, v13

    const/4 v13, 0x6

    move-object/from16 v26, v8

    const/4 v8, 0x0

    invoke-direct {v15, v13, v4, v8}, Lʾʽ/ˈ;-><init>(ILjava/lang/Object;Z)V

    iget-object v8, v4, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const/4 v13, 0x2

    invoke-static {v8, v15, v14, v13}, Lʼˉ/ʽ;->ﾞʻ(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    iget-object v8, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v8, v8, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v13, "Registered app receiver"

    invoke-virtual {v8, v13}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    if-eqz v24, :cond_1f

    iget-object v8, v3, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-static {v8}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v8, v3, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    sget-object v13, Lﹶﾞ/ᴵᵔ;->ʽʽ:Lﹶﾞ/ˈٴ;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lﹶﾞ/ﹳᵢ;->ʼᵢ(J)V

    goto :goto_14

    :cond_1e
    move-object/from16 v26, v8

    :cond_1f
    :goto_14
    iget-object v8, v9, Lﹶﾞ/ᐧᴵ;->ٴᵢ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v13

    iget v14, v13, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    const-string v15, "google_analytics_default_allow_ad_storage"

    move-object/from16 v23, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v15, v13}, Lﹶﾞ/ᵎﹶ;->ᵔⁱ(Ljava/lang/String;Z)Lﹶﾞ/ʽⁱ;

    move-result-object v15

    move-object/from16 v27, v4

    const-string v4, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v11, v4, v13}, Lﹶﾞ/ᵎﹶ;->ᵔⁱ(Ljava/lang/String;Z)Lﹶﾞ/ʽⁱ;

    move-result-object v4

    sget-object v13, Lﹶﾞ/ʽⁱ;->ᴵˊ:Lﹶﾞ/ʽⁱ;

    move-object/from16 v24, v8

    sget-object v8, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    move-object/from16 v28, v1

    const-class v1, Lﹶﾞ/ⁱˉ;

    move-object/from16 v29, v3

    if-ne v15, v13, :cond_21

    if-eq v4, v13, :cond_20

    goto :goto_15

    :cond_20
    move-object/from16 v30, v5

    move-object/from16 v31, v10

    goto :goto_17

    :cond_21
    :goto_15
    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v30, v5

    const-string v5, "consent_source"

    move-object/from16 v31, v10

    const/16 v10, 0x64

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, -0xa

    invoke-static {v5, v3}, Lﹶﾞ/ᐧˎ;->ﾞʻ(II)Z

    move-result v3

    if-eqz v3, :cond_22

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v10, Lﹶﾞ/ⁱˉ;->ᴵˊ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v3, v10, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v8, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lﹶﾞ/ᐧˎ;

    invoke-direct {v4, v3, v5}, Lﹶﾞ/ᐧˎ;-><init>(Ljava/util/EnumMap;I)V

    move-object v3, v4

    :goto_16
    const/4 v4, 0x0

    goto :goto_1a

    :cond_22
    :goto_17
    invoke-virtual/range {v29 .. v29}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    if-eqz v14, :cond_24

    const/16 v3, 0x1e

    if-eq v14, v3, :cond_24

    const/16 v3, 0xa

    if-eq v14, v3, :cond_24

    const/16 v3, 0x28

    if-ne v14, v3, :cond_23

    goto :goto_18

    :cond_23
    const/4 v3, 0x0

    goto :goto_16

    :cond_24
    :goto_18
    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    new-instance v3, Lﹶﾞ/ᐧˎ;

    const/16 v5, -0xa

    invoke-direct {v3, v5}, Lﹶﾞ/ᐧˎ;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Lﹶﾞ/ˈـ;->ˊﹳ(Lﹶﾞ/ᐧˎ;Z)V

    :goto_19
    const/4 v3, 0x0

    goto :goto_1a

    :cond_25
    const/4 v4, 0x0

    goto :goto_19

    :goto_1a
    if-eqz v3, :cond_26

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const/4 v5, 0x1

    invoke-virtual {v12, v3, v5}, Lﹶﾞ/ˈـ;->ˊﹳ(Lﹶﾞ/ᐧˎ;Z)V

    goto :goto_1b

    :cond_26
    move-object/from16 v3, v23

    :goto_1b
    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v5, v12, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v12, v3}, Lﹶﾞ/ˈـ;->ʼᵢ(Lﹶﾞ/ᐧˎ;)V

    invoke-virtual {v9}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v10, "dma_consent_settings"

    const/4 v14, 0x0

    invoke-interface {v3, v10, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lﹶﾞ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object v3

    iget v3, v3, Lﹶﾞ/ˉˆ;->ﹳٴ:I

    const-string v10, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v14, 0x1

    invoke-virtual {v11, v10, v14}, Lﹶﾞ/ᵎﹶ;->ᵔⁱ(Ljava/lang/String;Z)Lﹶﾞ/ʽⁱ;

    move-result-object v10

    if-eq v10, v13, :cond_27

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v15, "Default ad personalization consent from Manifest"

    invoke-virtual {v2, v10, v15}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_27
    const-string v10, "google_analytics_default_allow_ad_user_data"

    invoke-virtual {v11, v10, v14}, Lﹶﾞ/ᵎﹶ;->ᵔⁱ(Ljava/lang/String;Z)Lﹶﾞ/ʽⁱ;

    move-result-object v10

    if-eq v10, v13, :cond_28

    const/16 v15, -0xa

    invoke-static {v15, v3}, Lﹶﾞ/ᐧˎ;->ﾞʻ(II)Z

    move-result v17

    if-eqz v17, :cond_28

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lﹶﾞ/ⁱˉ;->ˈٴ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v3, v1, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lﹶﾞ/ˉˆ;

    const/4 v10, 0x0

    invoke-direct {v1, v3, v15, v10, v10}, Lﹶﾞ/ˉˆ;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v14}, Lﹶﾞ/ˈـ;->ˏⁱ(Lﹶﾞ/ˉˆ;Z)V

    goto :goto_1c

    :cond_28
    invoke-virtual/range {v29 .. v29}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz v3, :cond_29

    const/16 v1, 0x1e

    if-ne v3, v1, :cond_2a

    :cond_29
    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    new-instance v1, Lﹶﾞ/ˉˆ;

    const/4 v14, 0x0

    const/16 v15, -0xa

    invoke-direct {v1, v14, v15, v14, v14}, Lﹶﾞ/ˉˆ;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v12, v1, v14}, Lﹶﾞ/ˈـ;->ˏⁱ(Lﹶﾞ/ˉˆ;Z)V

    goto :goto_1c

    :cond_2a
    invoke-virtual/range {v29 .. v29}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v1

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    if-eqz v25, :cond_2c

    move-object/from16 v1, v25

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ﹳـ;->ˈٴ:Landroid/os/Bundle;

    if-eqz v1, :cond_2c

    const/16 v10, 0x1e

    invoke-static {v10, v3}, Lﹶﾞ/ᐧˎ;->ﾞʻ(II)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v10, v1}, Lﹶﾞ/ˉˆ;->ʽ(ILandroid/os/Bundle;)Lﹶﾞ/ˉˆ;

    move-result-object v1

    iget-object v3, v1, Lﹶﾞ/ˉˆ;->ˑﹳ:Ljava/util/EnumMap;

    invoke-virtual {v3}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lﹶﾞ/ʽⁱ;

    if-eq v10, v13, :cond_2b

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const/4 v14, 0x1

    invoke-virtual {v12, v1, v14}, Lﹶﾞ/ˈـ;->ˏⁱ(Lﹶﾞ/ˉˆ;Z)V

    :cond_2c
    :goto_1c
    const-string v1, "google_analytics_tcf_data_enabled"

    invoke-virtual {v11, v1}, Lﹶﾞ/ᵎﹶ;->ᵢˋ(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2d
    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v1, "TCF client enabled."

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v12}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v0, v5, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v1, "Register tcfPrefChangeListener."

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, v12, Lﹶﾞ/ˈـ;->ﹳـ:Lﹶﾞ/ﾞˋ;

    if-nez v0, :cond_2e

    new-instance v0, Lﹶﾞ/ﹳⁱ;

    const/4 v1, 0x2

    invoke-direct {v0, v12, v5, v1}, Lﹶﾞ/ﹳⁱ;-><init>(Lﹶﾞ/ˈـ;Lﹶﾞ/יﹳ;I)V

    iput-object v0, v12, Lﹶﾞ/ˈـ;->ˈⁱ:Lﹶﾞ/ﹳⁱ;

    new-instance v0, Lﹶﾞ/ﾞˋ;

    invoke-direct {v0, v12}, Lﹶﾞ/ﾞˋ;-><init>(Lﹶﾞ/ˈـ;)V

    iput-object v0, v12, Lﹶﾞ/ˈـ;->ﹳـ:Lﹶﾞ/ﾞˋ;

    :cond_2e
    iget-object v0, v5, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v0}, Lﹶﾞ/ᐧᴵ;->יˉ()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, v12, Lﹶﾞ/ˈـ;->ﹳـ:Lﹶﾞ/ﾞˋ;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v12}, Lﹶﾞ/ˈـ;->ﾞˋ()V

    :cond_2f
    iget-object v0, v9, Lﹶﾞ/ᐧᴵ;->ˊʻ:Lⁱי/ʻᵎ;

    invoke-virtual {v0}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v13

    cmp-long v1, v13, v18

    if-nez v1, :cond_30

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v1, "Persisting first open"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    :cond_30
    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v1, v12, Lﹶﾞ/ˈـ;->ˊˋ:Lﹶﾞ/ٴﹳ;

    invoke-virtual {v1}, Lﹶﾞ/ٴﹳ;->ˈ()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v1}, Lﹶﾞ/ٴﹳ;->ʽ()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v1, v1, Lﹶﾞ/ٴﹳ;->ʾˋ:Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v1, v1, Lﹶﾞ/ᐧᴵ;->ᴵˑ:Lcom/bumptech/glide/ʼˎ;

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    :cond_31
    invoke-virtual/range {v29 .. v29}, Lﹶﾞ/ᵎʻ;->ʽ()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual/range {v29 .. v29}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "android.permission.INTERNET"

    move-object/from16 v1, v31

    invoke-virtual {v1, v0}, Lﹶﾞ/ᵢﹳ;->ˎـ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v0, "App is missing INTERNET permission"

    move-object/from16 v3, v30

    invoke-virtual {v3, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_1d

    :cond_32
    move-object/from16 v3, v30

    :goto_1d
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v0}, Lﹶﾞ/ᵢﹳ;->ˎـ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v3, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_33
    move-object/from16 v10, v29

    iget-object v0, v10, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v6

    invoke-virtual {v6}, Lˑˊ/ⁱˊ;->ⁱˊ()Z

    move-result v6

    if-nez v6, :cond_35

    invoke-virtual {v11}, Lﹶﾞ/ᵎﹶ;->ˋˊ()Z

    move-result v6

    if-nez v6, :cond_35

    invoke-static {v0}, Lﹶﾞ/ᵢﹳ;->ˎᵎ(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_34

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v6, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v3, v6}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_34
    invoke-static {v0}, Lﹶﾞ/ᵢﹳ;->ˊﾞ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {v3, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_35
    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v3, v0}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :goto_1e
    move-object/from16 v3, v26

    goto/16 :goto_24

    :cond_36
    move-object/from16 v10, v29

    move-object/from16 v1, v31

    goto :goto_1e

    :cond_37
    move-object/from16 v10, v29

    move-object/from16 v1, v31

    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "gmp_app_id"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v15, :cond_3a

    if-nez v18, :cond_3a

    invoke-static {v3}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v3, "Rechecking which service to use due to a GMP App Id change"

    move-object/from16 v13, v28

    invoke-virtual {v13, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    invoke-virtual {v9}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v9}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v13, "measurement_enabled"

    invoke-interface {v3, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v15, 0x1

    invoke-interface {v3, v13, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1f

    :cond_38
    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v3, :cond_39

    invoke-virtual {v9}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v15, v13, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_39
    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ٴﹶ()Lﹶﾞ/ˈʿ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ˈʿ;->ʼᵢ()V

    iget-object v3, v10, Lﹶﾞ/ᵎʻ;->ˊˋ:Lﹶﾞ/ʿʽ;

    invoke-virtual {v3}, Lﹶﾞ/ʿʽ;->ˎʾ()V

    iget-object v3, v10, Lﹶﾞ/ᵎʻ;->ˊˋ:Lﹶﾞ/ʿʽ;

    invoke-virtual {v3}, Lﹶﾞ/ʿʽ;->ﾞˋ()V

    invoke-virtual {v0, v6, v7}, Lⁱי/ʻᵎ;->ᵔᵢ(J)V

    move-object/from16 v0, v24

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    goto :goto_20

    :cond_3a
    move-object/from16 v0, v24

    :goto_20
    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v3

    invoke-virtual {v3}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v14, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_21

    :cond_3b
    move-object/from16 v0, v24

    :goto_21
    invoke-virtual {v9}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v3

    invoke-virtual {v3, v8}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v3

    if-nez v3, :cond_3c

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    :cond_3c
    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/ʼˎ;->ˉʿ()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v12, Lﹶﾞ/ˈـ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object/from16 v3, v27

    :try_start_6
    iget-object v0, v3, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_3d
    move-object/from16 v3, v26

    goto :goto_22

    :catch_6
    iget-object v0, v9, Lﹶﾞ/ᐧᴵ;->ˈⁱ:Lcom/bumptech/glide/ʼˎ;

    invoke-virtual {v0}, Lcom/bumptech/glide/ʼˎ;->ˉʿ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static/range {v26 .. v26}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    move-object/from16 v3, v26

    iget-object v6, v3, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v7, "Remote config removed with active feature rollouts"

    invoke-virtual {v6, v7}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/bumptech/glide/ʼˎ;->ᵔʾ(Ljava/lang/String;)V

    :goto_22
    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v0

    invoke-virtual {v0}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v0

    iget-object v6, v9, Lﹶﾞ/ᐧᴵ;->ʽʽ:Landroid/content/SharedPreferences;

    if-nez v6, :cond_3e

    move v13, v4

    goto :goto_23

    :cond_3e
    const-string v7, "deferred_analytics_collection"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    :goto_23
    if-nez v13, :cond_3f

    invoke-virtual {v11}, Lﹶﾞ/ᵎﹶ;->ˋـ()Z

    move-result v6

    if-nez v6, :cond_3f

    xor-int/lit8 v6, v0, 0x1

    invoke-virtual {v9, v6}, Lﹶﾞ/ᐧᴵ;->ˑˆ(Z)V

    :cond_3f
    if-eqz v0, :cond_40

    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v12}, Lﹶﾞ/ˈـ;->ᵢˋ()V

    :cond_40
    iget-object v0, v10, Lﹶﾞ/ᵎʻ;->ˉٴ:Lﹶﾞ/ˉʽ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, v0, Lﹶﾞ/ˉʽ;->ᴵᵔ:Lⁱʽ/ﹳٴ;

    invoke-virtual {v0}, Lⁱʽ/ﹳٴ;->ᵔʾ()V

    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v6}, Lﹶﾞ/ʿʽ;->ʼᵢ(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v10}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v0

    iget-object v6, v9, Lﹶﾞ/ᐧᴵ;->ʿ:Lᐧᵎ/ᵢי;

    invoke-virtual {v6}, Lᐧᵎ/ᵢי;->ʼᐧ()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v6}, Lﹶﾞ/ʿʽ;->יˉ(Landroid/os/Bundle;)V

    :cond_41
    :goto_24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    sget-object v0, Lﹶﾞ/ᴵᵔ;->יˉ:Lﹶﾞ/ˈٴ;

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v0}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {v1}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v1}, Lﹶﾞ/ᵢﹳ;->ʽʾ()J

    move-result-wide v0

    cmp-long v0, v0, v21

    if-nez v0, :cond_42

    const/4 v6, 0x1

    goto :goto_25

    :cond_42
    move v6, v4

    :goto_25
    if-eqz v6, :cond_45

    sget-object v0, Lﹶﾞ/ᴵᵔ;->ʽⁱ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v0, v14}, Lﹶﾞ/ˈٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x1388

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    int-to-long v6, v4

    iget-object v4, v10, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    add-long/2addr v0, v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-lez v4, :cond_43

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    const-string v3, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_43
    invoke-static {v12}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    invoke-virtual {v12}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v2, v12, Lﹶﾞ/ˈـ;->ᵔי:Lﹶﾞ/ﹳⁱ;

    if-nez v2, :cond_44

    new-instance v2, Lﹶﾞ/ﹳⁱ;

    const/4 v3, 0x0

    invoke-direct {v2, v12, v5, v3}, Lﹶﾞ/ﹳⁱ;-><init>(Lﹶﾞ/ˈـ;Lﹶﾞ/יﹳ;I)V

    iput-object v2, v12, Lﹶﾞ/ˈـ;->ᵔי:Lﹶﾞ/ﹳⁱ;

    :cond_44
    iget-object v2, v12, Lﹶﾞ/ˈـ;->ᵔי:Lﹶﾞ/ﹳⁱ;

    invoke-virtual {v2, v0, v1}, Lﹶﾞ/ᵔʾ;->ⁱˊ(J)V

    :cond_45
    iget-object v0, v9, Lﹶﾞ/ᐧᴵ;->ˈʿ:Lﹶﾞ/ᐧﾞ;

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Lﹶﾞ/ᐧﾞ;->ⁱˊ(Z)V

    return-void

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    move-object v1, v5

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    move-object v1, v5

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    move-object v1, v5

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final ⁱˊ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ٴﹶ;

    iget-object v0, v0, Lˏـ/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ٴﹶ;

    iget-object v1, v1, Lˏـ/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ˑﹳ;

    iget-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˏـ/ˉʿ;

    invoke-virtual {v2}, Lˏـ/ˉʿ;->ˑﹳ()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lˏـ/ˑﹳ;->יـ(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ٴﹶ;

    iget-object v0, v0, Lˏـ/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ٴﹶ;

    iget-object v1, v1, Lˏـ/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ˈ;

    iget-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˏـ/ˉʿ;

    invoke-virtual {v2}, Lˏـ/ˉʿ;->ˈ()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lˏـ/ˈ;->ٴʼ(Ljava/lang/Exception;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    iget v0, p0, Lˋˋ/ˈ;->ʾˋ:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ʼـ;

    iget-object v0, v0, Lﹶﾞ/ʼـ;->ˈ:Lﹶﾞ/ᵢי;

    invoke-virtual {v0}, Lﹶﾞ/ᵢי;->ᵢˏ()V

    iget-object v1, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ˑﹳ;

    iget-object v2, v1, Lﹶﾞ/ˑﹳ;->ʽʽ:Lﹶﾞ/ʿˎ;

    invoke-virtual {v2}, Lﹶﾞ/ʿˎ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lﹶﾞ/ᵢי;->ˋᵔ(Ljava/lang/String;)Lﹶﾞ/ʻᐧ;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ᵢי;->ᵎᵔ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lﹶﾞ/ˑﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {v2}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lﹶﾞ/ᵢי;->ˋᵔ(Ljava/lang/String;)Lﹶﾞ/ʻᐧ;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ᵢי;->ʿᵢ(Lﹶﾞ/ˑﹳ;Lﹶﾞ/ʻᐧ;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lˋˋ/ˈ;->ˑﹳ()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ˏᵢ;

    iget-object v1, v0, Lﹶﾞ/ˏᵢ;->ᴵˊ:Lﹶﾞ/ᴵʼ;

    iget-object v1, v1, Lﹶﾞ/ᴵʼ;->ⁱˊ:Lﹶﾞ/ᵎʻ;

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v2}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "package_name"

    iget-object v0, v0, Lﹶﾞ/ˏᵢ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ʽʽ;

    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/measurement/ʾˋ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ⁱˊ(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˈ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/ᵢˏ;->ﹳٴ(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-nez v2, :cond_2

    iget-object v0, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Install Referrer Service returned a null response"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, v1, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    invoke-virtual {v0}, Lﹶﾞ/ʻˋ;->ⁱᴵ()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/יﹳ;

    invoke-interface {v0}, Lﹶﾞ/יﹳ;->ˈʿ()Lᵔﹶ/ᵔʾ;

    invoke-static {}, Lᵔﹶ/ᵔʾ;->ʻٴ()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lﹶﾞ/יﹳ;->ﹳᐧ()Lﹶﾞ/ʻˋ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵔʾ;

    iget-wide v4, v0, Lﹶﾞ/ᵔʾ;->ʽ:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    iput-wide v6, v0, Lﹶﾞ/ᵔʾ;->ʽ:J

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lﹶﾞ/ᵔʾ;->ﹳٴ()V

    :cond_5
    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵˈ/ⁱˊ;

    iget-object v2, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lʼٴ/ٴᵢ;

    iget-object v4, v2, Lʼٴ/ٴᵢ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lᵢʾ/ﹳٴ;

    iget-object v5, v2, Lʼٴ/ٴᵢ;->ˊʻ:Ljava/lang/Object;

    check-cast v5, Lﹳˊ/ˈ;

    iget-object v5, v5, Lﹳˊ/ˈ;->ٴʼ:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v6, v2, Lʼٴ/ٴᵢ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lﹳˊ/ﹳٴ;

    invoke-virtual {v5, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lﹳˊ/ʼˎ;

    if-nez v5, :cond_6

    goto :goto_3

    :cond_6
    iget v6, v0, Lᴵˈ/ⁱˊ;->ᴵˊ:I

    if-nez v6, :cond_8

    iput-boolean v3, v2, Lʼٴ/ٴᵢ;->ʾˋ:Z

    invoke-interface {v4}, Lᵢʾ/ﹳٴ;->ﾞʻ()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, v2, Lʼٴ/ٴᵢ;->ʾˋ:Z

    if-eqz v0, :cond_9

    iget-object v0, v2, Lʼٴ/ٴᵢ;->ˈٴ:Ljava/lang/Object;

    check-cast v0, Lٴﾞ/ᵔᵢ;

    if-eqz v0, :cond_9

    iget-object v1, v2, Lʼٴ/ٴᵢ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v4, v0, v1}, Lᵢʾ/ﹳٴ;->ᵔʾ(Lٴﾞ/ᵔᵢ;Ljava/util/Set;)V

    goto :goto_3

    :cond_7
    :try_start_1
    invoke-interface {v4}, Lᵢʾ/ﹳٴ;->ⁱˊ()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Lᵢʾ/ﹳٴ;->ᵔʾ(Lٴﾞ/ᵔᵢ;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    nop

    const-string v0, "Failed to get service from broker."

    invoke-interface {v4, v0}, Lᵢʾ/ﹳٴ;->ʽ(Ljava/lang/String;)V

    new-instance v0, Lᴵˈ/ⁱˊ;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lᴵˈ/ⁱˊ;-><init>(I)V

    invoke-virtual {v5, v0, v1}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v0, v1}, Lﹳˊ/ʼˎ;->ˉˆ(Lᴵˈ/ⁱˊ;Ljava/lang/RuntimeException;)V

    :cond_9
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵢʿ/ʽﹳ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵢʿ/ʽﹳ;

    iget-object v1, v0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ˈˏ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/ʽ;->ʽʾ(Landroidx/leanback/widget/ʾᵎ;)V

    :cond_a
    return-void

    :pswitch_5
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼٴ/ʻٴ;

    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lʼٴ/ʻٴ;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧﹳ/ʽ;

    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉٴ/ⁱˊ;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lˉٴ/ⁱˊ;->ˆʾ(Landroid/graphics/Typeface;)V

    :cond_b
    return-void

    :pswitch_7
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵔˋ/ˆʾ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔˋ/ˆʾ;

    sget-object v1, Lᵔˋ/ˆʾ;->ﹶʽ:[Lᐧˆ/ˈ;

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lᵔˋ/ˆʾ;->ʾˏ()Lʼⁱ/ᵎⁱ;

    move-result-object v1

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lʼⁱ/ᵎⁱ;->ʽᐧ()Lـי/ⁱˊ;

    move-result-object v1

    iget-object v1, v1, Lـי/ⁱˊ;->ⁱˊ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lˋˋ/ᴵˑ;->ˈ()V

    :cond_c
    invoke-virtual {v0}, Lᵔˋ/ˆʾ;->ᐧˏ()Lᵔˋ/ʻٴ;

    move-result-object v1

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lᵔˋ/ʻٴ;->ˑˉ()V

    invoke-virtual {v1}, Lᵔˋ/ʻٴ;->ⁱʾ()Lـˈ/ˈ;

    move-result-object v1

    iget-object v1, v1, Lـˈ/ˈ;->ˈ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lˋˋ/ᴵˑ;->ˈ()V

    :cond_d
    invoke-virtual {v0}, Lᵔˋ/ˆʾ;->ˑˉ()Lᵔˋ/ᵎˊ;

    move-result-object v1

    iget-object v2, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-nez v2, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Lᵔˋ/ᵎˊ;->ʾˏ()Lᵔˋ/ˆﾞ;

    move-result-object v2

    iget-object v2, v2, Lᵔˋ/ˆﾞ;->ⁱˊ:Landroidx/lifecycle/ˊʻ;

    invoke-virtual {v2}, Landroidx/lifecycle/ʽʽ;->ˈ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lᵔˋ/ᵔי;

    if-nez v2, :cond_f

    goto :goto_4

    :cond_f
    iget v3, v2, Lᵔˋ/ᵔי;->ﹳٴ:I

    iget-object v2, v2, Lᵔˋ/ᵔי;->ⁱˊ:Lˉʾ/ᵎﹶ;

    invoke-virtual {v1, v3, v2}, Lᵔˋ/ᵎˊ;->ˑˉ(ILˉʾ/ᵎﹶ;)V

    invoke-virtual {v1}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v2

    iget-object v2, v2, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-static {v2}, Lᵔˋ/ᵎˊ;->ᵢי(Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;)V

    invoke-virtual {v1}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v2

    iget-object v2, v2, Lـˈ/ﾞᴵ;->ᵔᵢ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-static {v2}, Lᵔˋ/ᵎˊ;->ᵢי(Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;)V

    invoke-virtual {v1}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v2

    iget-object v2, v2, Lـˈ/ﾞᴵ;->ʼˎ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lˋˋ/ᴵˑ;->ˈ()V

    :cond_10
    invoke-virtual {v1}, Lᵔˋ/ᵎˊ;->ˎᵎ()Lـˈ/ﾞᴵ;

    move-result-object v1

    iget-object v1, v1, Lـˈ/ﾞᴵ;->ᵔᵢ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lˋˋ/ᴵˑ;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lˋˋ/ᴵˑ;->ˈ()V

    :cond_11
    :goto_4
    invoke-virtual {v0}, Lᵔˋ/ˆʾ;->ᵢי()Lʼⁱ/ᵎʿ;

    move-result-object v0

    iget-object v1, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lʼⁱ/ᵎʿ;->ˎᵎ()V

    :cond_12
    return-void

    :pswitch_8
    invoke-direct {p0}, Lˋˋ/ˈ;->ˈ()V

    return-void

    :pswitch_9
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔʻ/ᵎˊ;

    iget-object v1, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lᵔʻ/ᵎˊ;

    iget-object v1, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lᵔʻ/ᵎˊ;->יⁱ()V

    invoke-virtual {v0}, Lᵔʻ/ᵎˊ;->ʽᐧ()Lـˈ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lـˈ/ﹳٴ;->ﾞᴵ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_13
    return-void

    :pswitch_a
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᵔʻ/ᵎˊ;

    sget-object v1, Lᵔʻ/ᵎˊ;->ˋـ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lᵔʻ/ᵎˊ;->ʽᐧ()Lـˈ/ﹳٴ;

    move-result-object v0

    iget-object v0, v0, Lـˈ/ﹳٴ;->ﾞᴵ:Lar/tvplayer/tv/base/ui/view/CustomVerticalGridView;

    sget-object v1, Lᵔʻ/ʼʼ;->ʾˋ:Lᵔʻ/ʼʼ;

    invoke-static {v0, v1}, Lʿˋ/ˋᵔ;->ʻᵎ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/Object;)V

    :cond_14
    return-void

    :pswitch_b
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵי/ٴﹶ;

    iget-object v1, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lᴵי/ˊˋ;

    invoke-virtual {v0, v1}, Lᴵי/ٴﹶ;->ˊʻ(Lᴵי/ˏי;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵʽ/ˉـ;

    iget-object v4, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Lˑʼ/ᴵᵔ;

    iget-object v4, v4, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v4, :cond_19

    sget-object v4, Lᴵʽ/ˉـ;->ˑˆ:[Lᐧˆ/ˈ;

    invoke-virtual {v0}, Lᴵʽ/ˉـ;->ʽᐧ()Lᴵᐧ/ˑﹳ;

    move-result-object v4

    iget-object v4, v4, Lᴵᐧ/ˑﹳ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    move v5, v2

    :goto_5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_15

    move v6, v3

    goto :goto_6

    :cond_15
    move v6, v2

    :goto_6
    if-eqz v6, :cond_19

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v0}, Lᴵʽ/ˉـ;->ʽᐧ()Lᴵᐧ/ˑﹳ;

    move-result-object v7

    iget-object v7, v7, Lᴵᐧ/ˑﹳ;->ʽ:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v5

    instance-of v7, v5, Lᴵʽ/ـˏ;

    if-eqz v7, :cond_16

    check-cast v5, Lᴵʽ/ـˏ;

    goto :goto_7

    :cond_16
    move-object v5, v1

    :goto_7
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Lᴵʽ/ـˏ;->ʾˋ()V

    :cond_17
    move v5, v6

    goto :goto_5

    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_19
    return-void

    :pswitch_d
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧᵢ/ʾᵎ;

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object v0

    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    new-instance v2, Lʻᵢ/ﾞᴵ;

    invoke-direct {v2, v1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧˈ/ᵎﹶ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᐧˈ/ᵎﹶ;

    iget-object v1, v0, Landroidx/leanback/app/ʽ;->ﹶ:Ljava/util/ArrayList;

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ˈˏ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/ʾᵎ;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/ʽ;->ʽʾ(Landroidx/leanback/widget/ʾᵎ;)V

    :cond_1a
    return-void

    :pswitch_f
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ᴵᵔ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lٴˊ/ᵔᵢ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ᴵˑ:Lˑʼ/ᴵᵔ;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lˑʼ/ᴵᵔ;->יˉ()V

    :cond_1b
    return-void

    :pswitch_10
    invoke-static {}, Lᵔﹶ/ʻٴ;->ﹳٴ()Lᵔﹶ/ʻٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lʿٴ/ᵔʾ;->ﹳٴ()V

    iget-object v0, v0, Lᵔﹶ/ʻٴ;->ˈ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lٴʽ/ˈ;

    iget-object v0, v0, Lٴʽ/ˈ;->ᴵˊ:Lٴʽ/ˑﹳ;

    iput-boolean v3, v0, Lٴʽ/ˑﹳ;->ᴵˊ:Z

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lٴʽ/ˈ;

    iget-object v0, v0, Lٴʽ/ˈ;->ʾˋ:Landroid/view/View;

    iget-object v1, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lٴʽ/ˈ;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lٴʽ/ˈ;

    iget-object v0, v0, Lٴʽ/ˈ;->ᴵˊ:Lٴʽ/ˑﹳ;

    iget-object v0, v0, Lٴʽ/ˑﹳ;->ʾˋ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :pswitch_11
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Lـˉ/ﹳٴ;->ˑﹳ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling work "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v5, Lˑᵎ/ﹳᐧ;

    iget-object v6, v5, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lـˉ/ﹳٴ;

    iget-object v0, v0, Lـˉ/ﹳٴ;->ﹳٴ:Lـˉ/ʽ;

    new-array v1, v3, [Lˑᵎ/ﹳᐧ;

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Lـˉ/ʽ;->ﹳٴ([Lˑᵎ/ﹳᐧ;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lיᵎ/ﹳٴ;

    iget-object v0, v0, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lיᵎ/ﹳٴ;

    invoke-virtual {v0}, Lיᵎ/ﹳٴ;->ˊﹳ()V

    :cond_1c
    return-void

    :pswitch_13
    invoke-direct {p0}, Lˋˋ/ˈ;->ʽ()V

    return-void

    :pswitch_14
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ˉʿ;

    :try_start_2
    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lˏـ/ˉʿ;->ˆʾ(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_9

    :goto_8
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    goto :goto_a

    :goto_9
    invoke-virtual {v0, v1}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    :goto_a
    return-void

    :pswitch_15
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ٴﹶ;

    :try_start_3
    iget-object v1, v0, Lˏـ/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ﾞᴵ;

    iget-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˏـ/ˉʿ;

    invoke-virtual {v2}, Lˏـ/ˉʿ;->ˑﹳ()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lˏـ/ﾞᴵ;->ﾞʻ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v1
    :try_end_3
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v2, Lˏـ/ᵔᵢ;->ⁱˊ:Lʿʿ/ﹳٴ;

    invoke-virtual {v1, v2, v0}, Lˏـ/ˉʿ;->ⁱˊ(Ljava/util/concurrent/Executor;Lˏـ/ˑﹳ;)V

    invoke-virtual {v1, v2, v0}, Lˏـ/ˉʿ;->ﹳٴ(Ljava/util/concurrent/Executor;Lˏـ/ˈ;)V

    new-instance v3, Lˏـ/ٴﹶ;

    invoke-direct {v3, v2, v0}, Lˏـ/ٴﹶ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ⁱˊ;)V

    iget-object v0, v1, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {v1}, Lˏـ/ˉʿ;->ᵔʾ()V

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_c

    :goto_b
    invoke-virtual {v0, v1}, Lˏـ/ٴﹶ;->ٴʼ(Ljava/lang/Exception;)V

    goto :goto_d

    :catch_5
    invoke-virtual {v0}, Lˏـ/ٴﹶ;->ᵔﹳ()V

    goto :goto_d

    :goto_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lˏـ/ٴﹶ;->ٴʼ(Ljava/lang/Exception;)V

    goto :goto_d

    :cond_1d
    invoke-virtual {v0, v1}, Lˏـ/ٴﹶ;->ٴʼ(Ljava/lang/Exception;)V

    :goto_d
    return-void

    :pswitch_16
    invoke-direct {p0}, Lˋˋ/ˈ;->ⁱˊ()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lˋˋ/ˈ;->ﹳٴ()V

    return-void

    :pswitch_18
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ٴﹶ;

    iget-object v0, v0, Lˏـ/ٴﹶ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ٴﹶ;

    iget-object v1, v1, Lˏـ/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ʽ;

    iget-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˏـ/ˉʿ;

    invoke-interface {v1, v2}, Lˏـ/ʽ;->ﹳٴ(Lˏـ/ˉʿ;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :pswitch_19
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ˆʾ;

    iget-object v1, v0, Lˏـ/ˆʾ;->ˈٴ:Lˏـ/ˉʿ;

    :try_start_5
    iget-object v2, v0, Lˏـ/ˆʾ;->ʽʽ:Lˏـ/ﹳٴ;

    iget-object v3, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Lˏـ/ˉʿ;

    invoke-interface {v2, v3}, Lˏـ/ﹳٴ;->ᵎﹶ(Lˏـ/ˉʿ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˏـ/ˉʿ;
    :try_end_5
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-nez v2, :cond_1e

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lˏـ/ˆʾ;->ٴʼ(Ljava/lang/Exception;)V

    goto :goto_10

    :cond_1e
    sget-object v1, Lˏـ/ᵔᵢ;->ⁱˊ:Lʿʿ/ﹳٴ;

    invoke-virtual {v2, v1, v0}, Lˏـ/ˉʿ;->ⁱˊ(Ljava/util/concurrent/Executor;Lˏـ/ˑﹳ;)V

    invoke-virtual {v2, v1, v0}, Lˏـ/ˉʿ;->ﹳٴ(Ljava/util/concurrent/Executor;Lˏـ/ˈ;)V

    new-instance v3, Lˏـ/ٴﹶ;

    invoke-direct {v3, v1, v0}, Lˏـ/ٴﹶ;-><init>(Ljava/util/concurrent/Executor;Lˏـ/ⁱˊ;)V

    iget-object v0, v2, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/ˊـ;->ʼˎ(Lˏـ/ﾞʻ;)V

    invoke-virtual {v2}, Lˏـ/ˉʿ;->ᵔʾ()V

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_f

    :goto_e
    invoke-virtual {v1, v0}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    goto :goto_10

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Exception;

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    goto :goto_10

    :cond_1f
    invoke-virtual {v1, v0}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    :goto_10
    return-void

    :pswitch_1a
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ˉʿ;

    iget-boolean v0, v0, Lˏـ/ˉʿ;->ˈ:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ˆʾ;

    iget-object v0, v0, Lˏـ/ˆʾ;->ˈٴ:Lˏـ/ˉʿ;

    invoke-virtual {v0}, Lˏـ/ˉʿ;->ٴﹶ()V

    goto :goto_13

    :cond_20
    :try_start_6
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ˆʾ;

    iget-object v0, v0, Lˏـ/ˆʾ;->ʽʽ:Lˏـ/ﹳٴ;

    iget-object v1, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ˉʿ;

    invoke-interface {v0, v1}, Lˏـ/ﹳٴ;->ᵎﹶ(Lˏـ/ˉʿ;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ˆʾ;

    iget-object v1, v1, Lˏـ/ˆʾ;->ˈٴ:Lˏـ/ˉʿ;

    invoke-virtual {v1, v0}, Lˏـ/ˉʿ;->ˆʾ(Ljava/lang/Object;)V

    goto :goto_13

    :catch_8
    move-exception v0

    goto :goto_11

    :catch_9
    move-exception v0

    goto :goto_12

    :goto_11
    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ˆʾ;

    iget-object v1, v1, Lˏـ/ˆʾ;->ˈٴ:Lˏـ/ˉʿ;

    invoke-virtual {v1, v0}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    goto :goto_13

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ˆʾ;

    iget-object v1, v1, Lˏـ/ˆʾ;->ˈٴ:Lˏـ/ˉʿ;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    goto :goto_13

    :cond_21
    iget-object v1, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˏـ/ˆʾ;

    iget-object v1, v1, Lˏـ/ˆʾ;->ˈٴ:Lˏـ/ˉʿ;

    invoke-virtual {v1, v0}, Lˏـ/ˉʿ;->ʼˎ(Ljava/lang/Exception;)V

    :goto_13
    return-void

    :pswitch_1b
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ˑﹳ;

    iget-object v1, v0, Lˋˋ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ʼˎ;

    iget v2, v1, Lˋˋ/ʼˎ;->ᵎﹶ:I

    iget v3, v0, Lˋˋ/ˑﹳ;->ˈٴ:I

    if-ne v2, v3, :cond_22

    iget-object v0, v0, Lˋˋ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˋˋ/ʾᵎ;

    iput-object v0, v1, Lˋˋ/ʼˎ;->ˑﹳ:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lˋˋ/ʼˎ;->ﾞᴵ:Ljava/util/List;

    iget-object v0, v1, Lˋˋ/ʼˎ;->ﹳٴ:Lˉˆ/ʿ;

    invoke-virtual {v2, v0}, Lˋˋ/ʾᵎ;->ﹳٴ(Lˉˆ/ʿ;)V

    invoke-virtual {v1}, Lˋˋ/ʼˎ;->ﹳٴ()V

    :cond_22
    return-void

    :pswitch_1c
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˋˋ/ˑﹳ;

    iget-object v1, v0, Lˋˋ/ˑﹳ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Lˋˋ/ᵎﹶ;

    iget v2, v1, Lˋˋ/ᵎﹶ;->ᵎﹶ:I

    iget v3, v0, Lˋˋ/ˑﹳ;->ˈٴ:I

    if-ne v2, v3, :cond_23

    iget-object v0, v0, Lˋˋ/ˑﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˋˋ/ʾᵎ;

    iput-object v0, v1, Lˋˋ/ᵎﹶ;->ˑﹳ:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lˋˋ/ᵎﹶ;->ﾞᴵ:Ljava/util/List;

    iget-object v0, v1, Lˋˋ/ᵎﹶ;->ﹳٴ:Lˉˆ/ʿ;

    invoke-virtual {v2, v0}, Lˋˋ/ʾᵎ;->ﹳٴ(Lˉˆ/ʿ;)V

    invoke-virtual {v1}, Lˋˋ/ᵎﹶ;->ﹳٴ()V

    :cond_23
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    iget v0, p0, Lˋˋ/ˈ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    const-string v1, "}"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SequentialExecutorWorker{running="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SequentialExecutorWorker{state="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˏᐧ/ˆʾ;

    iget v2, v2, Lˏᐧ/ˆʾ;->ʽʽ:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const-string v2, "null"

    goto :goto_0

    :cond_1
    const-string v2, "RUNNING"

    goto :goto_0

    :cond_2
    const-string v2, "QUEUED"

    goto :goto_0

    :cond_3
    const-string v2, "QUEUING"

    goto :goto_0

    :cond_4
    const-string v2, "IDLE"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public ﾞᴵ()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˏᐧ/ˆʾ;

    iget-object v2, v2, Lˏᐧ/ˆʾ;->ᴵˊ:Ljava/util/ArrayDeque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏᐧ/ˆʾ;

    iget v4, v0, Lˏᐧ/ˆʾ;->ʽʽ:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_0
    :try_start_2
    iget-wide v6, v0, Lˏᐧ/ˆʾ;->ˈٴ:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lˏᐧ/ˆʾ;->ˈٴ:J

    iput v5, v0, Lˏᐧ/ˆʾ;->ʽʽ:I

    move v0, v3

    :cond_1
    iget-object v4, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lˏᐧ/ˆʾ;

    iget-object v4, v4, Lˏᐧ/ˆʾ;->ᴵˊ:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    iput-object v4, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    if-nez v4, :cond_3

    iget-object v0, p0, Lˋˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏᐧ/ˆʾ;

    iput v3, v0, Lˏᐧ/ˆʾ;->ʽʽ:I

    monitor-exit v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    or-int/2addr v1, v2

    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    :try_start_5
    iput-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_6
    sget-object v4, Lˏᐧ/ˆʾ;->ˊʻ:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing runnable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :goto_4
    :try_start_7
    iput-object v2, p0, Lˋˋ/ˈ;->ᴵˊ:Ljava/lang/Object;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_6
    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v0
.end method
