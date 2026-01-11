.class public final Lﹶﾞ/ﾞˏ;
.super Lﹶﾞ/ٴᵢ;
.source "SourceFile"


# instance fields
.field public volatile ʽʽ:Lﹶﾞ/ﹶʽ;

.field public volatile ˈٴ:Lﹶﾞ/ﹶʽ;

.field public volatile ˉٴ:Z

.field public final ˊʻ:Lj$/util/concurrent/ConcurrentHashMap;

.field public ٴʼ:Lﹶﾞ/ﹶʽ;

.field public ٴᵢ:Lcom/google/android/gms/internal/measurement/ᴵˑ;

.field public ᴵᵔ:Lﹶﾞ/ﹶʽ;

.field public ᵎˊ:Z

.field public volatile ᵎⁱ:Lﹶﾞ/ﹶʽ;

.field public final ᵔי:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 0

    invoke-direct {p0, p1}, Lﹶﾞ/ٴᵢ;-><init>(Lﹶﾞ/ᵎʻ;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ﾞˏ;->ᵔי:Ljava/lang/Object;

    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ﾞˏ;->ˊʻ:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final ʼᵢ(Lﹶﾞ/ﹶʽ;ZJ)V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v1, v0, Lﹶﾞ/ᵎʻ;->ᵔٴ:Lﹶﾞ/ـˆ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ˑﹳ(Lﹶﾞ/ʾᵎ;)V

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lﹶﾞ/ـˆ;->ˋˊ(J)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lﹶﾞ/ﹶʽ;->ˈ:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˉٴ:Lﹶﾞ/ˉʽ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v0, v0, Lﹶﾞ/ˉʽ;->ˊʻ:Lʻˆ/ʽ;

    invoke-virtual {v0, p3, p4, v2, p2}, Lʻˆ/ʽ;->ﹳٴ(JZZ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v1, p1, Lﹶﾞ/ﹶʽ;->ˈ:Z

    :cond_1
    return-void
.end method

.method public final ˈـ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    if-nez p1, :cond_0

    const-string p1, "Activity"

    return-object p1

    :cond_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_2

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final ˋˊ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˎʾ(Lcom/google/android/gms/internal/measurement/ᴵˑ;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lﹶﾞ/ﹶʽ;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4, v1, v2}, Lﹶﾞ/ﹶʽ;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    iget p1, p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ʾˋ:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lﹶﾞ/ﾞˏ;->ˊʻ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final ˎˉ(Lﹶﾞ/ﹶʽ;Lﹶﾞ/ﹶʽ;JZLandroid/os/Bundle;)V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    iget-boolean v6, v1, Lﹶﾞ/ﹶʽ;->ˑﹳ:Z

    iget-object v7, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v7, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    iget-wide v10, v1, Lﹶﾞ/ﹶʽ;->ʽ:J

    iget-wide v12, v2, Lﹶﾞ/ﹶʽ;->ʽ:J

    cmp-long v10, v12, v10

    if-nez v10, :cond_0

    iget-object v10, v2, Lﹶﾞ/ﹶʽ;->ⁱˊ:Ljava/lang/String;

    iget-object v11, v1, Lﹶﾞ/ﹶʽ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v10, v11}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v2, Lﹶﾞ/ﹶʽ;->ﹳٴ:Ljava/lang/String;

    iget-object v11, v1, Lﹶﾞ/ﹶʽ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v10, v11}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    if-eqz p5, :cond_2

    iget-object v11, v0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    if-eqz v11, :cond_2

    move v8, v9

    :cond_2
    if-eqz v10, :cond_c

    if-eqz v5, :cond_3

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    move-object v14, v10

    goto :goto_2

    :cond_3
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :goto_2
    invoke-static {v1, v14, v9}, Lﹶﾞ/ᵢﹳ;->ʾˏ(Lﹶﾞ/ﹶʽ;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lﹶﾞ/ﹶʽ;->ﹳٴ:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v10, "_pn"

    invoke-virtual {v14, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lﹶﾞ/ﹶʽ;->ⁱˊ:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v10, "_pc"

    invoke-virtual {v14, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-wide v10, v2, Lﹶﾞ/ﹶʽ;->ʽ:J

    const-string v2, "_pi"

    invoke-virtual {v14, v2, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v10, 0x0

    if-eqz v8, :cond_7

    iget-object v2, v7, Lﹶﾞ/ᵎʻ;->ˉٴ:Lﹶﾞ/ˉʽ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    iget-object v2, v2, Lﹶﾞ/ˉʽ;->ˊʻ:Lʻˆ/ʽ;

    iget-wide v12, v2, Lʻˆ/ʽ;->ᴵˊ:J

    sub-long v12, v3, v12

    iput-wide v3, v2, Lʻˆ/ʽ;->ᴵˊ:J

    cmp-long v2, v12, v10

    if-lez v2, :cond_7

    iget-object v2, v7, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v2, v14, v12, v13}, Lﹶﾞ/ᵢﹳ;->יʿ(Landroid/os/Bundle;J)V

    :cond_7
    iget-object v2, v7, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v2}, Lﹶﾞ/ᵎﹶ;->ﹶʽ()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "_mst"

    const-wide/16 v12, 0x1

    invoke-virtual {v14, v2, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    if-eq v9, v6, :cond_9

    const-string v2, "auto"

    :goto_3
    move-object v15, v2

    goto :goto_4

    :cond_9
    const-string v2, "app"

    goto :goto_3

    :goto_4
    iget-object v2, v7, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz v6, :cond_b

    move-wide/from16 p5, v10

    iget-wide v10, v1, Lﹶﾞ/ﹶʽ;->ﾞᴵ:J

    cmp-long v2, v10, p5

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    move-wide v12, v10

    :cond_b
    :goto_5
    iget-object v11, v7, Lﹶﾞ/ᵎʻ;->ˆﾞ:Lﹶﾞ/ˈـ;

    invoke-static {v11}, Lﹶﾞ/ᵎʻ;->ᵔᵢ(Lﹶﾞ/ٴᵢ;)V

    const-string v16, "_vs"

    invoke-virtual/range {v11 .. v16}, Lﹶﾞ/ˈـ;->ˎʾ(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v8, :cond_d

    iget-object v2, v0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    invoke-virtual {v0, v2, v9, v3, v4}, Lﹶﾞ/ﾞˏ;->ʼᵢ(Lﹶﾞ/ﹶʽ;ZJ)V

    :cond_d
    iput-object v1, v0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    if-eqz v6, :cond_e

    iput-object v1, v0, Lﹶﾞ/ﾞˏ;->ٴʼ:Lﹶﾞ/ﹶʽ;

    :cond_e
    invoke-virtual {v7}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v2

    invoke-virtual {v2}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    new-instance v3, Lﹶﾞ/ﹶˎ;

    invoke-direct {v3, v2, v1}, Lﹶﾞ/ﹶˎ;-><init>(Lﹶﾞ/ʿʽ;Lﹶﾞ/ﹶʽ;)V

    invoke-virtual {v2, v3}, Lﹶﾞ/ʿʽ;->ﹶʽ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ˑˆ(Ljava/lang/String;Lﹶﾞ/ﹶʽ;Z)V
    .locals 12

    .prologue
    iget-object v2, p0, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    if-nez v2, :cond_0

    iget-object v2, p0, Lﹶﾞ/ﾞˏ;->ˈٴ:Lﹶﾞ/ﹶʽ;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    goto :goto_0

    :goto_1
    iget-object v2, p2, Lﹶﾞ/ﹶʽ;->ⁱˊ:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p1}, Lﹶﾞ/ﾞˏ;->ˈـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v6, v2

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    new-instance v4, Lﹶﾞ/ﹶʽ;

    iget-object v5, p2, Lﹶﾞ/ﹶʽ;->ﹳٴ:Ljava/lang/String;

    iget-wide v7, p2, Lﹶﾞ/ﹶʽ;->ʽ:J

    iget-boolean v9, p2, Lﹶﾞ/ﹶʽ;->ˑﹳ:Z

    iget-wide v10, p2, Lﹶﾞ/ﹶʽ;->ﾞᴵ:J

    invoke-direct/range {v4 .. v11}, Lﹶﾞ/ﹶʽ;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v4

    goto :goto_4

    :cond_2
    move-object v2, p2

    :goto_4
    iget-object v0, p0, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    iput-object v0, p0, Lﹶﾞ/ﾞˏ;->ˈٴ:Lﹶﾞ/ﹶʽ;

    iput-object v2, p0, Lﹶﾞ/ﾞˏ;->ʽʽ:Lﹶﾞ/ﹶʽ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v4, v0, Lﹶﾞ/ᵎʻ;->ᵎˊ:Lᵎᴵ/ﹳٴ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v7, v0, Lﹶﾞ/ᵎʻ;->ٴᵢ:Lﹶﾞ/ʻˋ;

    invoke-static {v7}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    new-instance v0, Lﹶﾞ/ᵔⁱ;

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lﹶﾞ/ᵔⁱ;-><init>(Lﹶﾞ/ﾞˏ;Lﹶﾞ/ﹶʽ;Lﹶﾞ/ﹶʽ;JZ)V

    invoke-virtual {v7, v0}, Lﹶﾞ/ʻˋ;->ˑˆ(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final יˉ(Lcom/google/android/gms/internal/measurement/ᴵˑ;)Lﹶﾞ/ﹶʽ;
    .locals 6

    .prologue
    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget v0, p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ʾˋ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lﹶﾞ/ﾞˏ;->ˊʻ:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lﹶﾞ/ﹶʽ;

    if-nez v2, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ᴵˑ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lﹶﾞ/ﾞˏ;->ˈـ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    new-instance v3, Lﹶﾞ/ﹶʽ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    invoke-virtual {v2}, Lﹶﾞ/ᵢﹳ;->ˑˉ()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-direct {v3, v4, v5, v2, p1}, Lﹶﾞ/ﹶʽ;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :cond_0
    iget-object p1, p0, Lﹶﾞ/ﾞˏ;->ᵎⁱ:Lﹶﾞ/ﹶʽ;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lﹶﾞ/ﾞˏ;->ᵎⁱ:Lﹶﾞ/ﹶʽ;

    return-object p1

    :cond_1
    return-object v2
.end method

.method public final ﾞˋ(Z)Lﹶﾞ/ﹶʽ;
    .locals 0

    .prologue
    invoke-virtual {p0}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    return-object p1

    :cond_0
    iget-object p1, p0, Lﹶﾞ/ﾞˏ;->ᴵᵔ:Lﹶﾞ/ﹶʽ;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lﹶﾞ/ﾞˏ;->ٴʼ:Lﹶﾞ/ﹶʽ;

    return-object p1
.end method
