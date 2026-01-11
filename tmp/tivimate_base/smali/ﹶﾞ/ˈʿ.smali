.class public final Lﹶﾞ/ˈʿ;
.super Lﹶﾞ/ٴᵢ;
.source "SourceFile"


# static fields
.field public static final ᴵᵔ:[Ljava/lang/String;


# instance fields
.field public final ʽʽ:Lﹶﾞ/ﾞʻ;

.field public ˈٴ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "app_version_int"

    const-string v1, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    const-string v2, "app_version"

    const-string v3, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﹶﾞ/ˈʿ;->ᴵᵔ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lﹶﾞ/ᵎʻ;)V
    .locals 1

    invoke-direct {p0, p1}, Lﹶﾞ/ٴᵢ;-><init>(Lﹶﾞ/ᵎʻ;)V

    new-instance p1, Lﹶﾞ/ﾞʻ;

    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lﹶﾞ/ﾞʻ;-><init>(Lﹶﾞ/ˈʿ;Landroid/content/Context;)V

    iput-object p1, p0, Lﹶﾞ/ˈʿ;->ʽʽ:Lﹶﾞ/ﾞʻ;

    return-void
.end method


# virtual methods
.method public final ʼᵢ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    :try_start_0
    invoke-virtual {p0}, Lﹶﾞ/ˈʿ;->ﾞˋ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "messages"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v3, "Reset local analytics data. records"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v0, v1, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ˈـ(I[B)Z
    .locals 18

    .prologue
    move-object/from16 v1, p0

    iget-object v0, v1, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v1}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-boolean v2, v1, Lﹶﾞ/ˈʿ;->ˈٴ:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    iget-object v4, v0, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    sget-object v5, Lﹶﾞ/ᴵᵔ;->ٴʿ:Lﹶﾞ/ˈٴ;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ᵔʾ()Lﹶﾞ/ˆﾞ;

    move-result-object v2

    invoke-virtual {v2, v6}, Lﹶﾞ/ˆﾞ;->ʼᵢ(Ljava/lang/String;)Lﹶﾞ/ʻᐧ;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "entry"

    move-object/from16 v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ˈٴ:Lﹶﾞ/ᵎﹶ;

    invoke-virtual {v0, v6, v5}, Lﹶﾞ/ᵎﹶ;->ˎˉ(Ljava/lang/String;Lﹶﾞ/ˈٴ;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const-string v0, "app_version"

    iget-object v5, v2, Lﹶﾞ/ʻᐧ;->ʽʽ:Ljava/lang/String;

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v8, v2, Lﹶﾞ/ʻᐧ;->ٴʼ:J

    const-string v0, "app_version_int"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const/4 v2, 0x5

    move v8, v2

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_e

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v1}, Lﹶﾞ/ˈʿ;->ﾞˋ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_3

    :try_start_1
    iput-boolean v9, v1, Lﹶﾞ/ˈʿ;->ˈٴ:Z

    :goto_2
    return v3

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move/from16 v17, v3

    move/from16 p2, v9

    goto/16 :goto_8

    :catch_1
    move/from16 v17, v3

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move/from16 v17, v3

    move/from16 p2, v9

    goto/16 :goto_a

    :cond_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "select count(1) from messages"

    invoke-virtual {v10, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catch_3
    move-exception v0

    move/from16 v17, v3

    :goto_3
    move/from16 p2, v9

    goto/16 :goto_b

    :catch_4
    move/from16 v17, v3

    goto/16 :goto_c

    :catch_5
    move-exception v0

    move/from16 v17, v3

    :goto_4
    move/from16 p2, v9

    goto/16 :goto_e

    :cond_4
    :goto_5
    const-wide/32 v14, 0x186a0

    cmp-long v0, v12, v14

    const-string v14, "messages"

    if-ltz v0, :cond_5

    :try_start_3
    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v15, "Data loss, local db full"

    invoke-virtual {v0, v15}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    const-wide/32 v15, 0x186a1

    sub-long/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v14, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    cmp-long v0, v12, v15

    if-eqz v0, :cond_5

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v2, "Different delete count than expected in local db. expected, received, difference"
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v17, v3

    :try_start_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move/from16 p2, v9

    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sub-long/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v2, v3, v9, v12}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_e

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_4

    :cond_5
    move/from16 v17, v3

    move/from16 p2, v9

    :goto_6
    invoke-virtual {v10, v14, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return p2

    :goto_7
    move-object v6, v11

    goto/16 :goto_10

    :goto_8
    move-object v11, v6

    goto :goto_b

    :goto_9
    move-object v11, v6

    goto :goto_c

    :goto_a
    move-object v11, v6

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v10, v6

    goto/16 :goto_10

    :catch_a
    move-exception v0

    move/from16 v17, v3

    move/from16 p2, v9

    move-object v10, v6

    move-object v11, v10

    :goto_b
    if-eqz v10, :cond_7

    :try_start_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Error writing entry to local database"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v2, p2

    iput-boolean v2, v1, Lﹶﾞ/ˈʿ;->ˈٴ:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v10, :cond_b

    goto :goto_d

    :catch_b
    move/from16 v17, v3

    move-object v10, v6

    move-object v11, v10

    :catch_c
    :goto_c
    int-to-long v2, v8

    :try_start_7
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v8, v8, 0x14

    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v10, :cond_b

    :goto_d
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_d
    move-exception v0

    move/from16 v17, v3

    move-object v10, v6

    move-object v11, v10

    :goto_e
    :try_start_8
    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v3, "Error writing entry; local database full"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lﹶﾞ/ˈʿ;->ˈٴ:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v10, :cond_b

    goto :goto_d

    :cond_b
    :goto_f
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v17

    const/4 v2, 0x5

    goto/16 :goto_1

    :goto_10
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_d
    throw v0

    :cond_e
    move/from16 v17, v3

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v4, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    return v17
.end method

.method public final ˋˊ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final יˉ()Z
    .locals 11

    .prologue
    const-string v0, "Error deleting app launch break from local database"

    iget-object v1, p0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ᵎʻ;

    invoke-virtual {p0}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    iget-boolean v2, p0, Lﹶﾞ/ˈʿ;->ˈٴ:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Lﹶﾞ/ᵎʻ;->ʾˋ:Landroid/content/Context;

    const-string v4, "google_app_measurement_local.db"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0}, Lﹶﾞ/ˈʿ;->ﾞˋ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    if-nez v6, :cond_1

    iput-boolean v7, p0, Lﹶﾞ/ˈʿ;->ˈٴ:Z

    goto :goto_4

    :cond_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v8, "messages"

    const-string v9, "type == ?"

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return v7

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v8

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    iget-object v9, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v9, v9, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v9, v8, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v7, p0, Lﹶﾞ/ˈʿ;->ˈٴ:Z

    if-eqz v6, :cond_3

    goto :goto_1

    :catch_1
    int-to-long v7, v5

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x14

    if-eqz v6, :cond_3

    :goto_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_2

    :catch_2
    move-exception v8

    :try_start_2
    iget-object v9, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v9, v9, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    invoke-virtual {v9, v8, v0}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v7, p0, Lﹶﾞ/ˈʿ;->ˈٴ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :cond_4
    throw v0

    :cond_5
    iget-object v0, v1, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵎⁱ:Lﹶﾞ/ʼˈ;

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    invoke-virtual {v0, v1}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return v3
.end method

.method public final ﾞˋ()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    iget-boolean v0, p0, Lﹶﾞ/ˈʿ;->ˈٴ:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lﹶﾞ/ˈʿ;->ʽʽ:Lﹶﾞ/ﾞʻ;

    invoke-virtual {v0}, Lﹶﾞ/ﾞʻ;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶﾞ/ˈʿ;->ˈٴ:Z

    return-object v1

    :cond_1
    return-object v0
.end method
