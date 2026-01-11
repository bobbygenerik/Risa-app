.class public final synthetic Lˈᵔ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏـ/ﹳٴ;
.implements Lʻˎ/ﹳٴ;
.implements Lᵔـ/ﾞᴵ;
.implements Lᐧˎ/ﾞᴵ;
.implements Lﹶʽ/ˉˆ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ˈٴ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lˈᵔ/ﹳٴ;->ʾˋ:I

    iput-object p1, p0, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iget-object v1, p0, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lˎʾ/ᵎﹶ;

    check-cast p1, Lﹳᵢ/ٴᵢ;

    iget v0, v0, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᴵˊ:I

    invoke-interface {p1, v0, v1, v2}, Lﹳᵢ/ٴᵢ;->ـˆ(ILﹳᵢ/ᵢˏ;Lˎʾ/ᵎﹶ;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lˈᵔ/ﹳٴ;->ʾˋ:I

    const-string v3, "bytes"

    const-string v4, "PRAGMA page_size"

    const-string v5, "PRAGMA page_count"

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    sget-object v10, Lˆ/ʽ;->ˈٴ:Lˆ/ʽ;

    const/4 v11, 0x2

    const/4 v12, 0x1

    iget-object v13, v1, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iget-object v14, v1, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iget-object v15, v1, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v2, 0x0

    check-cast v15, Lᵔـ/ᵔᵢ;

    packed-switch v0, :pswitch_data_0

    check-cast v14, Ljava/util/HashMap;

    check-cast v13, Lˏˆ/ﹳٴ;

    iget-object v0, v13, Lˏˆ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v3, p1

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v16, Lˆ/ʽ;->ᴵˊ:Lˆ/ʽ;

    if-nez v2, :cond_0

    :goto_1
    move-object/from16 v2, v16

    goto :goto_2

    :cond_0
    if-ne v2, v12, :cond_1

    sget-object v16, Lˆ/ʽ;->ʽʽ:Lˆ/ʽ;

    goto :goto_1

    :cond_1
    if-ne v2, v11, :cond_2

    move-object v2, v10

    goto :goto_2

    :cond_2
    if-ne v2, v9, :cond_3

    sget-object v16, Lˆ/ʽ;->ᴵᵔ:Lˆ/ʽ;

    goto :goto_1

    :cond_3
    if-ne v2, v8, :cond_4

    sget-object v16, Lˆ/ʽ;->ˊʻ:Lˆ/ʽ;

    goto :goto_1

    :cond_4
    if-ne v2, v7, :cond_5

    sget-object v16, Lˆ/ʽ;->ٴᵢ:Lˆ/ʽ;

    goto :goto_1

    :cond_5
    const/4 v7, 0x6

    if-ne v2, v7, :cond_6

    sget-object v16, Lˆ/ʽ;->ˉٴ:Lˆ/ʽ;

    goto :goto_1

    :cond_6
    const-string v7, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "SQLiteEventStore"

    invoke-static {v8, v7, v2}, Lˉᵎ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :goto_2
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v9, Lˆ/ˈ;

    invoke-direct {v9, v7, v8, v2}, Lˆ/ˈ;-><init>(JLˆ/ʽ;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    goto :goto_0

    :cond_8
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget v6, Lˆ/ˑﹳ;->ʽ:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v7, Lˆ/ˑﹳ;

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v7, v6, v3}, Lˆ/ˑﹳ;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v2, v15, Lᵔـ/ᵔᵢ;->ᴵˊ:Lﹳᵔ/ﹳٴ;

    invoke-interface {v2}, Lﹳᵔ/ﹳٴ;->ᵔʾ()J

    move-result-wide v2

    invoke-virtual {v15}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v7, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v10, Lˆ/ᵎﹶ;

    invoke-direct {v10, v8, v9, v2, v3}, Lˆ/ᵎﹶ;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iput-object v10, v13, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    invoke-virtual {v15}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    invoke-virtual {v15}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    mul-long/2addr v4, v2

    sget-object v2, Lᵔـ/ﹳٴ;->ﾞᴵ:Lᵔـ/ﹳٴ;

    iget-wide v2, v2, Lᵔـ/ﹳٴ;->ﹳٴ:J

    new-instance v6, Lˆ/ﾞᴵ;

    invoke-direct {v6, v4, v5, v2, v3}, Lˆ/ﾞᴵ;-><init>(JJ)V

    new-instance v2, Lˆ/ⁱˊ;

    invoke-direct {v2, v6}, Lˆ/ⁱˊ;-><init>(Lˆ/ﾞᴵ;)V

    iput-object v2, v13, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    iget-object v2, v15, Lᵔـ/ᵔᵢ;->ᴵᵔ:Lᵎˋ/ﹳٴ;

    invoke-interface {v2}, Lᵎˋ/ﹳٴ;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v13, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    new-instance v2, Lˆ/ﹳٴ;

    iget-object v3, v13, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lˆ/ᵎﹶ;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v4, v13, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v4, Lˆ/ⁱˊ;

    iget-object v5, v13, Lˏˆ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4, v5}, Lˆ/ﹳٴ;-><init>(Lˆ/ᵎﹶ;Ljava/util/List;Lˆ/ⁱˊ;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_0
    check-cast v14, Ljava/util/ArrayList;

    check-cast v13, Lˉˋ/ʼˎ;

    move-object/from16 v0, p1

    check-cast v0, Landroid/database/Cursor;

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v12

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    new-instance v6, Lʼי/ﹳٴ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v6, Lʼי/ﹳٴ;->ᵎﹶ:Ljava/lang/Object;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15

    iput-object v7, v6, Lʼי/ﹳٴ;->ʽ:Ljava/lang/Object;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lʼי/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v6, Lʼי/ﹳٴ;->ﾞᴵ:Ljava/lang/Object;

    if-eqz v2, :cond_c

    new-instance v2, Lˉˋ/ﾞʻ;

    const/4 v8, 0x4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    sget-object v8, Lᵔـ/ᵔᵢ;->ˊʻ:Lᴵˆ/ⁱˊ;

    :goto_7
    const/4 v9, 0x5

    goto :goto_8

    :cond_b
    new-instance v8, Lᴵˆ/ⁱˊ;

    invoke-direct {v8, v9}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_8
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    invoke-direct {v2, v8, v10}, Lˉˋ/ﾞʻ;-><init>(Lᴵˆ/ⁱˊ;[B)V

    iput-object v2, v6, Lʼי/ﹳٴ;->ˈ:Ljava/lang/Object;

    :goto_9
    const/4 v7, 0x6

    goto/16 :goto_d

    :cond_c
    const/4 v9, 0x5

    new-instance v2, Lˉˋ/ﾞʻ;

    const/4 v8, 0x4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_d

    sget-object v10, Lᵔـ/ᵔᵢ;->ˊʻ:Lᴵˆ/ⁱˊ;

    goto :goto_a

    :cond_d
    new-instance v7, Lᴵˆ/ⁱˊ;

    invoke-direct {v7, v10}, Lᴵˆ/ⁱˊ;-><init>(Ljava/lang/String;)V

    move-object v10, v7

    :goto_a
    invoke-virtual {v15}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v20

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const-string v25, "sequence_num"

    const-string v19, "event_payloads"

    const-string v21, "event_id = ?"

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_e

    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v11, v12

    add-int/2addr v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto :goto_b

    :cond_e
    new-array v9, v9, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_f

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 p1, v7

    :try_start_5
    array-length v7, v1

    move-object/from16 v20, v8

    const/4 v8, 0x0

    invoke-static {v1, v8, v9, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, v20

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_f
    move-object/from16 p1, v7

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    invoke-direct {v2, v10, v9}, Lˉˋ/ﾞʻ;-><init>(Lᴵˆ/ⁱˊ;[B)V

    iput-object v2, v6, Lʼי/ﹳٴ;->ˈ:Ljava/lang/Object;

    goto :goto_9

    :goto_d
    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lʼי/ﹳٴ;->ﹳٴ:Ljava/lang/Integer;

    :cond_10
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lʼי/ﹳٴ;->ⁱˊ:Ljava/lang/Integer;

    :cond_11
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lʼי/ﹳٴ;->ᵔᵢ:Ljava/lang/CharSequence;

    :cond_12
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v6, Lʼי/ﹳٴ;->ʼˎ:Ljava/lang/Object;

    :cond_13
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v6, Lʼי/ﹳٴ;->ˆʾ:Ljava/lang/Object;

    :cond_14
    invoke-virtual {v6}, Lʼי/ﹳٴ;->ⁱˊ()Lˉˋ/ᵔᵢ;

    move-result-object v1

    new-instance v2, Lᵔـ/ⁱˊ;

    invoke-direct {v2, v4, v5, v13, v1}, Lᵔـ/ⁱˊ;-><init>(JLˉˋ/ʼˎ;Lˉˋ/ᵔᵢ;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 p1, v7

    :goto_e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-object v16

    :pswitch_1
    check-cast v14, Lˉˋ/ᵔᵢ;

    iget-object v0, v14, Lˉˋ/ᵔᵢ;->ʽ:Lˉˋ/ﾞʻ;

    iget-object v1, v14, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    check-cast v13, Lˉˋ/ʼˎ;

    move-object/from16 v2, p1

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v7

    invoke-virtual {v15}, Lᵔـ/ᵔᵢ;->ʽ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    mul-long/2addr v4, v7

    iget-object v7, v15, Lᵔـ/ᵔᵢ;->ˈٴ:Lᵔـ/ﹳٴ;

    iget-wide v8, v7, Lᵔـ/ﹳٴ;->ﹳٴ:J

    cmp-long v4, v4, v8

    if-ltz v4, :cond_17

    const-wide/16 v2, 0x1

    invoke-virtual {v15, v2, v3, v10, v1}, Lᵔـ/ᵔᵢ;->ـˆ(JLˆ/ʽ;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_14

    :cond_17
    invoke-static {v2, v13}, Lᵔـ/ᵔᵢ;->ᵎﹶ(Landroid/database/sqlite/SQLiteDatabase;Lˉˋ/ʼˎ;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_f

    :cond_18
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "backend_name"

    iget-object v8, v13, Lˉˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v13, Lˉˋ/ʼˎ;->ʽ:Lᴵˆ/ʽ;

    invoke-static {v5}, Lᐧ/ﹳٴ;->ﹳٴ(Lᴵˆ/ʽ;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "priority"

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "next_request_ms"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, v13, Lˉˋ/ʼˎ;->ⁱˊ:[B

    if-eqz v5, :cond_19

    const-string v8, "extras"

    const/4 v11, 0x0

    invoke-static {v5, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string v5, "transport_contexts"

    move-object/from16 v8, v16

    invoke-virtual {v2, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_f
    iget v7, v7, Lᵔـ/ﹳٴ;->ˑﹳ:I

    iget-object v8, v0, Lˉˋ/ﾞʻ;->ⁱˊ:[B

    array-length v9, v8

    if-gt v9, v7, :cond_1a

    const/4 v9, 0x1

    goto :goto_10

    :cond_1a
    const/4 v9, 0x0

    :goto_10
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "context_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "transport_name"

    invoke-virtual {v10, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v4, v14, Lˉˋ/ᵔᵢ;->ˈ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "timestamp_ms"

    invoke-virtual {v10, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v4, v14, Lˉˋ/ᵔᵢ;->ˑﹳ:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "uptime_ms"

    invoke-virtual {v10, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v0, Lˉˋ/ﾞʻ;->ﹳٴ:Lᴵˆ/ⁱˊ;

    iget-object v0, v0, Lᴵˆ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    const-string v1, "payload_encoding"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    iget-object v1, v14, Lˉˋ/ᵔᵢ;->ⁱˊ:Ljava/lang/Integer;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "num_attempts"

    invoke-virtual {v10, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "inline"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v9, :cond_1b

    move-object v0, v8

    goto :goto_11

    :cond_1b
    const/4 v11, 0x0

    new-array v0, v11, [B

    :goto_11
    const-string v1, "payload"

    invoke-virtual {v10, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "product_id"

    iget-object v1, v14, Lˉˋ/ᵔᵢ;->ᵎﹶ:Ljava/lang/Integer;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "pseudonymous_id"

    iget-object v1, v14, Lˉˋ/ᵔᵢ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "experiment_ids_clear_blob"

    iget-object v1, v14, Lˉˋ/ᵔᵢ;->ʼˎ:[B

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "experiment_ids_encrypted_blob"

    iget-object v1, v14, Lˉˋ/ᵔᵢ;->ˆʾ:[B

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-string v0, "event_id"

    if-nez v9, :cond_1c

    array-length v1, v8

    int-to-double v9, v1

    int-to-double v11, v7

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    const/4 v12, 0x1

    :goto_12
    if-gt v12, v1, :cond_1c

    add-int/lit8 v6, v12, -0x1

    mul-int/2addr v6, v7

    mul-int v9, v12, v7

    array-length v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v6, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "sequence_num"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v9, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "event_payloads"

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_1c
    iget-object v1, v14, Lˉˋ/ᵔᵢ;->ﾞᴵ:Ljava/util/Map;

    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "value"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "event_metadata"

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_13

    :cond_1d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_14
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ()Ljava/lang/Object;
    .locals 10

    .prologue
    iget-object v0, p0, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˋﹳ/ﹳٴ;

    iget-object v1, p0, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˉˋ/ʼˎ;

    iget-object v2, p0, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lˉˋ/ᵔᵢ;

    iget-object v3, v0, Lˋﹳ/ﹳٴ;->ˈ:Lᵔـ/ˈ;

    check-cast v3, Lᵔـ/ᵔᵢ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lˉˋ/ʼˎ;->ʽ:Lᴵˆ/ʽ;

    iget-object v5, v2, Lˉˋ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    iget-object v6, v1, Lˉˋ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    const-string v7, "SQLiteEventStore"

    invoke-static {v7}, Lˉᵎ/ⁱˊ;->ʼʼ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Storing event with priority="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", name="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for destination "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_0
    new-instance v4, Lˈᵔ/ﹳٴ;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v2, v1, v5}, Lˈᵔ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lᵔـ/ᵔᵢ;->ˉˆ(Lᵔـ/ﾞᴵ;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lˋﹳ/ﹳٴ;->ﹳٴ:Lcom/parse/ٴʼ;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/parse/ٴʼ;->ʻᵎ(Lˉˋ/ʼˎ;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public ᵎﹶ(Lˏـ/ˉʿ;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget-object v0, p0, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏـ/ᵎﹶ;

    iget-object v1, p0, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v2, Lˉˆ/ʿ;

    invoke-virtual {p1}, Lˏـ/ˉʿ;->ᵎﹶ()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lˏـ/ˉʿ;->ˑﹳ()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ⁱˊ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lˏـ/ˉʿ;->ˈ()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lˏـ/ˉʿ;->ˈ()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lˏـ/ᵎﹶ;->ﹳٴ(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v2, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˊⁱ/ˑﹳ;

    iget-object p1, p1, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˏـ/ˉʿ;

    invoke-virtual {p1, v4}, Lˏـ/ˉʿ;->ﾞʻ(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object p1

    return-object p1
.end method

.method public ﾞᴵ(ILʽⁱ/ـˏ;[I)Lʼʻ/ʿᵢ;
    .locals 9

    .prologue
    iget-object v0, p0, Lˈᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lﹶʽ/ˆʾ;

    iget-object v0, p0, Lˈᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lˈᵔ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v1, p2, Lʽⁱ/ـˏ;->ﹳٴ:I

    if-ge v4, v1, :cond_0

    new-instance v1, Lﹶʽ/ᵔʾ;

    aget v6, p3, v4

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lﹶʽ/ᵔʾ;-><init>(ILʽⁱ/ـˏ;ILﹶʽ/ˆʾ;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lʼʻ/ˊʻ;->ᵎﹶ()Lʼʻ/ʿᵢ;

    move-result-object p1

    return-object p1
.end method
