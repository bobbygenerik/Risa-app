.class public final Lﹶﾞ/ˆﾞ;
.super Lﹶﾞ/ٴᵢ;
.source "SourceFile"


# instance fields
.field public ʽʽ:Ljava/lang/String;

.field public ˆﾞ:I

.field public ˈʿ:Ljava/lang/String;

.field public ˈٴ:Ljava/lang/String;

.field public ˉٴ:J

.field public ˊʻ:Ljava/lang/String;

.field public ˋᵔ:Ljava/lang/String;

.field public ˑٴ:J

.field public final ٴʼ:J

.field public ٴᵢ:Ljava/lang/String;

.field public ᴵᵔ:I

.field public ᵎˊ:Ljava/util/List;

.field public final ᵎⁱ:J

.field public ᵔי:Ljava/lang/String;

.field public ᵔٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵎʻ;JJ)V
    .locals 2

    invoke-direct {p0, p1}, Lﹶﾞ/ٴᵢ;-><init>(Lﹶﾞ/ᵎʻ;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lﹶﾞ/ˆﾞ;->ˑٴ:J

    const/4 p1, 0x0

    iput-object p1, p0, Lﹶﾞ/ˆﾞ;->ˋᵔ:Ljava/lang/String;

    iput-wide p2, p0, Lﹶﾞ/ˆﾞ;->ᵎⁱ:J

    iput-wide p4, p0, Lﹶﾞ/ˆﾞ;->ٴʼ:J

    return-void
.end method


# virtual methods
.method public final ʼᵢ(Ljava/lang/String;)Lﹶﾞ/ʻᐧ;
    .locals 44

    .prologue
    move-object/from16 v1, p0

    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    new-instance v2, Lﹶﾞ/ʻᐧ;

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->ﾞˋ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->ˈـ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget-object v5, v1, Lﹶﾞ/ˆﾞ;->ˈٴ:Ljava/lang/String;

    invoke-virtual {v1}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget v0, v1, Lﹶﾞ/ˆﾞ;->ᴵᵔ:I

    int-to-long v6, v0

    invoke-virtual {v1}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget-object v0, v1, Lﹶﾞ/ˆﾞ;->ˊʻ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v8, v1, Lﹶﾞ/ˆﾞ;->ˊʻ:Ljava/lang/String;

    iget-object v0, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lﹶﾞ/ᵎʻ;

    iget-object v0, v9, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v10, v9, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    iget-object v11, v9, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v12, v9, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    iget-object v13, v9, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    iget-object v14, v9, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎﹶ;->יˉ()V

    invoke-virtual {v1}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    move-object v15, v2

    move-object/from16 v16, v3

    iget-wide v2, v1, Lﹶﾞ/ˆﾞ;->ˉٴ:J

    const-wide/16 v17, 0x0

    cmp-long v0, v2, v17

    move-wide/from16 v19, v2

    if-nez v0, :cond_4

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v0, v13, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v21, 0x0

    invoke-static {}, Lﹶﾞ/ᵢﹳ;->ﾞˏ()Ljava/security/MessageDigest;

    move-result-object v2

    const-wide/16 v22, -0x1

    if-nez v2, :cond_0

    iget-object v0, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Could not get MD5 instance"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    :goto_0
    move-wide/from16 v2, v22

    goto/16 :goto_4

    :cond_0
    if-eqz v19, :cond_3

    :try_start_0
    invoke-virtual {v13, v12, v0}, Lﹶﾞ/ᵢﹳ;->ᵢᐧ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v12}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v24, v4

    :try_start_1
    iget-object v4, v3, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v25, v5

    const/16 v5, 0x40

    :try_start_2
    invoke-virtual {v0, v5, v4}, Lˑˊ/ⁱˊ;->ﹳٴ(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    aget-object v0, v0, v21

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lﹶﾞ/ᵢﹳ;->ˊˊ([B)J

    move-result-wide v22

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v2, "Could not get signatures"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    move-object/from16 v25, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v24, v4

    goto :goto_1

    :cond_2
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-wide/from16 v22, v17

    goto :goto_0

    :goto_2
    iget-object v2, v3, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Package name not found"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    move-wide/from16 v2, v17

    goto :goto_4

    :cond_3
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    goto :goto_3

    :goto_4
    iput-wide v2, v1, Lﹶﾞ/ˆﾞ;->ˉٴ:J

    goto :goto_5

    :cond_4
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    const/16 v21, 0x0

    move-wide/from16 v2, v19

    :goto_5
    invoke-virtual {v9}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v0

    invoke-static {v14}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-boolean v4, v14, Lﹶﾞ/ᐧᴵ;->ˊˋ:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v9}, Lﹶﾞ/ᵎʻ;->ﹳٴ()Z

    move-result v19

    if-nez v19, :cond_5

    move/from16 v22, v0

    :catch_3
    :goto_6
    move-wide/from16 v26, v2

    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_5
    sget-object v5, Lcom/google/android/gms/internal/measurement/ʾﹶ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʾﹶ;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ʾﹶ;->ʾˋ:Lˆʽ/ᵔʾ;

    iget-object v5, v5, Lˆʽ/ᵔʾ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˆ;

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ʻʿ:Lﹶﾞ/ˈٴ;

    move/from16 v22, v0

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v10}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v10, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v5, "Disabled IID for tests."

    invoke-virtual {v0, v5}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    :try_start_3
    invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v5, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    :try_start_4
    const-string v5, "getInstance"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-wide/from16 v26, v2

    const/4 v2, 0x1

    :try_start_5
    new-array v3, v2, [Ljava/lang/Class;

    const-class v20, Landroid/content/Context;

    aput-object v20, v3, v21

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v12, v5, v21

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-nez v3, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    :try_start_6
    const-string v5, "getFirebaseInstanceId"

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    invoke-static {v10}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v10, Lﹶﾞ/ﹳـ;->ᵎˊ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_7

    :catch_5
    move-wide/from16 v26, v2

    :catch_6
    invoke-static {v10}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v10, Lﹶﾞ/ﹳـ;->ٴʼ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    goto :goto_7

    :goto_8
    iget-wide v2, v9, Lﹶﾞ/ᵎʻ;->ˏᵢ:J

    invoke-static {v14}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v5, v14, Lﹶﾞ/ᐧᴵ;->ˊʻ:Lⁱי/ʻᵎ;

    move v10, v4

    invoke-virtual {v5}, Lⁱי/ʻᵎ;->ˈ()J

    move-result-wide v4

    cmp-long v12, v4, v17

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_9
    invoke-virtual {v1}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget v4, v1, Lﹶﾞ/ˆﾞ;->ˆﾞ:I

    const-string v5, "google_analytics_adid_collection_enabled"

    invoke-virtual {v11, v5}, Lﹶﾞ/ᵎﹶ;->ᵢˋ(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v5, v21

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v5, 0x1

    :goto_b
    invoke-static {v14}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v14}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v14}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v12

    move-object/from16 v23, v0

    const-string v0, "deferred_analytics_collection"

    move-wide/from16 v28, v2

    move/from16 v2, v21

    invoke-interface {v12, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lﹶﾞ/ᵎﹶ;->ᵔⁱ(Ljava/lang/String;Z)Lﹶﾞ/ʽⁱ;

    move-result-object v12

    sget-object v3, Lﹶﾞ/ʽⁱ;->ᴵᵔ:Lﹶﾞ/ʽⁱ;

    if-eq v12, v3, :cond_c

    const/4 v3, 0x1

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v12, v1, Lﹶﾞ/ˆﾞ;->ᵎˊ:Ljava/util/List;

    invoke-virtual {v14}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lﹶﾞ/ᐧˎ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v30

    move/from16 v31, v0

    iget-object v0, v1, Lﹶﾞ/ˆﾞ;->ᵔי:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v13}, Lﹶﾞ/ᵢﹳ;->ᐧˏ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lﹶﾞ/ˆﾞ;->ᵔי:Ljava/lang/String;

    :cond_d
    iget-object v0, v1, Lﹶﾞ/ˆﾞ;->ᵔי:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual {v14}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v0

    move-object/from16 v33, v3

    sget-object v3, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v0, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v0

    if-nez v0, :cond_e

    move/from16 v34, v4

    const/4 v0, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    move v0, v4

    iget-wide v3, v1, Lﹶﾞ/ˆﾞ;->ˑٴ:J

    cmp-long v3, v3, v17

    if-nez v3, :cond_f

    move/from16 v34, v0

    goto :goto_d

    :cond_f
    iget-object v3, v9, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide/from16 v34, v3

    iget-wide v3, v1, Lﹶﾞ/ˆﾞ;->ˑٴ:J

    sub-long v3, v34, v3

    move/from16 v34, v0

    iget-object v0, v1, Lﹶﾞ/ˆﾞ;->ˈʿ:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-wide/32 v35, 0x5265c00

    cmp-long v0, v3, v35

    if-lez v0, :cond_10

    iget-object v0, v1, Lﹶﾞ/ˆﾞ;->ˋᵔ:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->יˉ()V

    :cond_10
    :goto_d
    iget-object v0, v1, Lﹶﾞ/ˆﾞ;->ˈʿ:Ljava/lang/String;

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->יˉ()V

    :cond_11
    iget-object v0, v1, Lﹶﾞ/ˆﾞ;->ˈʿ:Ljava/lang/String;

    :goto_e
    const-string v3, "google_analytics_sgtm_upload_enabled"

    invoke-virtual {v11, v3}, Lﹶﾞ/ᵎﹶ;->ᵢˋ(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_12

    const/4 v3, 0x0

    goto :goto_f

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_f
    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v4, v13, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    move-object/from16 v35, v0

    invoke-virtual {v1}, Lﹶﾞ/ˆﾞ;->ﾞˋ()Ljava/lang/String;

    move-result-object v0

    move/from16 v36, v3

    iget-object v3, v4, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_13

    move/from16 v37, v5

    move-wide/from16 v3, v17

    const/4 v5, 0x0

    goto :goto_12

    :cond_13
    :try_start_7
    iget-object v3, v4, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-static {v3}, Lˑˊ/ʽ;->ﹳٴ(Landroid/content/Context;)Lˑˊ/ⁱˊ;

    move-result-object v3

    iget-object v3, v3, Lˑˊ/ⁱˊ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move/from16 v37, v5

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_14

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_11

    :cond_14
    :goto_10
    move v0, v5

    goto :goto_11

    :catch_7
    move/from16 v37, v5

    const/4 v5, 0x0

    :catch_8
    iget-object v3, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ᵔי:Lﹶﾞ/ʼˈ;

    const-string v4, "PackageManager failed to find running app: app_id"

    invoke-virtual {v3, v0, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_10

    :goto_11
    int-to-long v3, v0

    :goto_12
    invoke-static {v14}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v14}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v0

    iget v0, v0, Lﹶﾞ/ᐧˎ;->ⁱˊ:I

    invoke-static {v14}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v14}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v14}, Lﹶﾞ/ᐧᴵ;->ʼᵢ()Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v5, "dma_consent_settings"

    move/from16 v38, v0

    const/4 v0, 0x0

    invoke-interface {v14, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lﹶﾞ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Lﹶﾞ/ˉˆ;

    move-result-object v5

    iget-object v5, v5, Lﹶﾞ/ˉˆ;->ⁱˊ:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    sget-object v14, Lﹶﾞ/ᴵᵔ;->יˉ:Lﹶﾞ/ˈٴ;

    invoke-virtual {v11, v0, v14}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-static {}, Lﹶﾞ/ᵢﹳ;->ˊﹳ()I

    move-result v19

    goto :goto_13

    :cond_15
    const/16 v19, 0x0

    :goto_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ˉˏ;->ﹳٴ()V

    invoke-virtual {v11, v0, v14}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v13}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v13}, Lﹶﾞ/ᵢﹳ;->ʽʾ()J

    move-result-wide v17

    :cond_16
    iget-object v0, v11, Lﹶﾞ/ᵎﹶ;->ʽʽ:Ljava/lang/String;

    const/4 v13, 0x1

    invoke-virtual {v11, v2, v13}, Lﹶﾞ/ᵎﹶ;->ᵔⁱ(Ljava/lang/String;Z)Lﹶﾞ/ʽⁱ;

    move-result-object v2

    invoke-static {v2}, Lﹶﾞ/ᐧˎ;->ᵔᵢ(Lﹶﾞ/ʽⁱ;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iget-wide v13, v9, Lﹶﾞ/ᵎʻ;->ˏᵢ:J

    iget-object v11, v9, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v9, v9, Lﹶﾞ/ᵎʻ;->ﹳـ:Lﹶﾞ/ﹳᵢ;

    invoke-virtual {v9}, Lﹶﾞ/ﹳᵢ;->יˉ()I

    move-result v9

    invoke-static {v9}, Landroid/support/v4/media/session/ﹳٴ;->ˑﹳ(I)I

    move-result v41

    move-wide/from16 v39, v13

    move/from16 v14, v22

    move-object/from16 v22, v33

    move-object/from16 v33, v5

    move-object/from16 v5, v25

    move-object/from16 v25, v12

    move-wide/from16 v11, v26

    move-object/from16 v27, v32

    move/from16 v32, v38

    move-object/from16 v38, v2

    move-object v2, v15

    move v15, v10

    iget-wide v9, v1, Lﹶﾞ/ˆﾞ;->ᵎⁱ:J

    move/from16 v13, v34

    move/from16 v34, v19

    move/from16 v19, v13

    move-object/from16 v13, p1

    move-object/from16 v26, v30

    move/from16 v21, v31

    move/from16 v20, v37

    move-object/from16 v37, v0

    move-wide/from16 v30, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v23

    move-object/from16 v4, v24

    move-wide/from16 v23, v9

    const-wide/32 v9, 0x2078d

    move-wide/from16 v42, v28

    move-object/from16 v28, v35

    move/from16 v29, v36

    move-wide/from16 v35, v17

    move-wide/from16 v17, v42

    invoke-direct/range {v2 .. v41}, Lﹶﾞ/ʻᐧ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v2
.end method

.method public final ˈـ()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {p0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget-object v0, p0, Lﹶﾞ/ˆﾞ;->ᵔٴ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p0, Lﹶﾞ/ˆﾞ;->ᵔٴ:Ljava/lang/String;

    return-object v0
.end method

.method public final ˋˊ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final יˉ()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᴵᵔ:Lﹶﾞ/ᐧᴵ;

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v1}, Lﹶﾞ/ᐧᴵ;->ˈـ()Lﹶﾞ/ᐧˎ;

    move-result-object v1

    sget-object v3, Lﹶﾞ/ⁱˉ;->ʽʽ:Lﹶﾞ/ⁱˉ;

    invoke-virtual {v1, v3}, Lﹶﾞ/ᐧˎ;->ʼˎ(Lﹶﾞ/ⁱˉ;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v1, v2, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    const-string v3, "Analytics Storage consent is not granted"

    invoke-virtual {v1, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    iget-object v3, v0, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v3}, Lﹶﾞ/ᵢﹳ;->ʿˎ()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string v4, "%032x"

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˆﾞ:Lﹶﾞ/ʼˈ;

    if-nez v1, :cond_1

    const-string v3, "null"

    goto :goto_1

    :cond_1
    const-string v3, "not null"

    :goto_1
    const-string v4, "Resetting session stitching token to "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    iput-object v1, p0, Lﹶﾞ/ˆﾞ;->ˈʿ:Ljava/lang/String;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lﹶﾞ/ˆﾞ;->ˑٴ:J

    return-void
.end method

.method public final ﾞˋ()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    iget-object v0, p0, Lﹶﾞ/ˆﾞ;->ʽʽ:Ljava/lang/String;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p0, Lﹶﾞ/ˆﾞ;->ʽʽ:Ljava/lang/String;

    return-object v0
.end method
