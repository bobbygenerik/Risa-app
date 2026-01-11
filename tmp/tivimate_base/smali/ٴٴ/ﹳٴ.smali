.class public final Lٴٴ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public ﹳٴ:J


# direct methods
.method public constructor <init>(Lٴٴ/ⁱˊ;Lٴٴ/ʽ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴٴ/ﹳٴ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lٴٴ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    iput-wide p3, p0, Lٴٴ/ﹳٴ;->ﹳٴ:J

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ˉʿ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴٴ/ﹳٴ;->ʽ:Ljava/lang/Object;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p2, p0, Lٴٴ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lٴٴ/ﹳٴ;->ﹳٴ:J

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ˉʿ;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lٴٴ/ﹳٴ;->ʽ:Ljava/lang/Object;

    invoke-static {p2}, Lٴﾞ/ʻٴ;->ʽ(Ljava/lang/String;)V

    iput-object p2, p0, Lٴٴ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p3, p2, v0, v1}, Lﹶﾞ/ˉʿ;->ˑﹶ(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lٴٴ/ﹳٴ;->ﹳٴ:J

    return-void
.end method


# virtual methods
.method public ⁱˊ()Ljava/util/List;
    .locals 21

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lٴٴ/ﹳٴ;->ʽ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lﹶﾞ/ˉʿ;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lٴٴ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-wide v5, v1, Lٴٴ/ﹳٴ;->ﹳٴ:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v9

    const-string v8, "app_id = ? and rowid > ?"

    const-string v13, "1000"

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v2}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "raw_events"

    const-string v15, "rowid"

    const-string v16, "name"

    const-string v17, "timestamp"

    const-string v18, "metadata_fingerprint"

    const-string v19, "data"

    const-string v20, "realtime"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v7

    const-string v12, "rowid"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v5, 0x5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v5, v10, v12

    const/4 v10, 0x1

    if-nez v5, :cond_1

    move v0, v10

    :cond_1
    const/4 v5, 0x4

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    iget-wide v11, v1, Lٴٴ/ﹳٴ;->ﹳٴ:J

    cmp-long v11, v6, v11

    if-lez v11, :cond_2

    iput-wide v6, v1, Lٴٴ/ﹳٴ;->ﹳٴ:J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ᵢˏ()Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    move-result-object v11

    invoke-static {v11, v5}, Lﹶﾞ/ʿ;->ʻˆ(Lcom/google/android/gms/internal/measurement/ﹳᴵ;[B)Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔⁱ;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v10, ""

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v11, v5, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v11, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ˊʻ(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v12, v5, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v12, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v12, v10, v11}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ٴᵢ(J)V

    move-object v10, v5

    new-instance v5, Lﹶﾞ/ٴﹶ;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/google/android/gms/internal/measurement/ٴʿ;

    move v10, v0

    invoke-direct/range {v5 .. v11}, Lﹶﾞ/ٴﹶ;-><init>(JJZLcom/google/android/gms/internal/measurement/ٴʿ;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v5, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lﹶﾞ/ᵎʻ;

    iget-object v5, v5, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v5}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v5, v5, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v6, "Data loss. Failed to merge raw event. appId"

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v7

    invoke-virtual {v5, v7, v0, v6}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_4
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_3
    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v5, "Data loss. Error querying raw events batch. appId"

    invoke-static {v4}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v5}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v3

    :goto_3
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public ﹳٴ()V
    .locals 10

    .prologue
    new-instance v0, Lˊʾ/ﹳٴ;

    iget-object v1, p0, Lٴٴ/ﹳٴ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lٴٴ/ⁱˊ;

    iget-object v2, v1, Lٴٴ/ⁱˊ;->ᴵˊ:Lˊﹶ/ⁱˊ;

    iget-object v2, v2, Lˊﹶ/ⁱˊ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v2, Lʽᴵ/יـ;

    iget-object v2, v2, Lʽᴵ/יـ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lʼﹳ/ʽ;

    iget-object v3, p0, Lٴٴ/ﹳٴ;->ⁱˊ:Ljava/lang/Object;

    check-cast v3, Lٴٴ/ʽ;

    iget-wide v4, v3, Lٴٴ/ʽ;->ʽ:J

    iget-wide v6, v3, Lٴٴ/ʽ;->ﾞᴵ:J

    const/4 v3, 0x4

    sget-object v8, Lʼﹳ/ﾞʻ;->ᵔי:Lʼﹳ/ﾞʻ;

    invoke-direct {v0, v3, v2, v8}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;)V

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lˋʼ/ⁱˊ;

    check-cast v2, Lʼﹳ/ٴﹶ;

    iput-wide v4, v2, Lʼﹳ/ٴﹶ;->ﾞᴵ:J

    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-eqz v3, :cond_0

    iget-wide v3, v2, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    const-wide/16 v8, 0x2

    or-long/2addr v3, v8

    iput-wide v3, v2, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    iput-wide v6, v2, Lʼﹳ/ٴﹶ;->ᵎﹶ:J

    :cond_0
    :try_start_0
    iget-object v1, v1, Lٴٴ/ⁱˊ;->ʽʽ:Lˑʼ/ᵎˊ;

    iget-wide v2, p0, Lٴٴ/ﹳٴ;->ﹳٴ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lˑʼ/ᵎˊ;->ˉٴ(Ljava/lang/Long;)Lיˆ/ʽ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lיˆ/ʽ;->ـˆ(Lʼﹳ/ˉˆ;)Lˋٴ/ⁱˊ;
    :try_end_0
    .catch Lcom/hierynomus/protocol/transport/TransportException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object v1, Lٴٴ/ⁱˊ;->ˈʿ:Lﾞʼ/ﹳٴ;

    const-string v2, "Failed to send {}"

    invoke-interface {v1, v0, v2}, Lﾞʼ/ﹳٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
