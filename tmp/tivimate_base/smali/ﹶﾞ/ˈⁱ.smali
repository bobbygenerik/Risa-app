.class public final Lﹶﾞ/ˈⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/Object;

.field public ˈ:Ljava/lang/Object;

.field public final ˑﹳ:Ljava/lang/Object;

.field public ⁱˊ:J

.field public final synthetic ﹳٴ:I


# direct methods
.method public constructor <init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹶﾞ/ˈⁱ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    iput-object p5, p0, Lﹶﾞ/ˈⁱ;->ˈ:Ljava/lang/Object;

    iput-object p3, p0, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    iput-wide p1, p0, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    return-void
.end method

.method public synthetic constructor <init>(Lﹶﾞ/ʽ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹶﾞ/ˈⁱ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    return-void
.end method

.method public static ⁱˊ(Lﹶﾞ/ˏי;)Lﹶﾞ/ˈⁱ;
    .locals 6

    new-instance v0, Lﹶﾞ/ˈⁱ;

    iget-object v4, p0, Lﹶﾞ/ˏי;->ʾˋ:Ljava/lang/String;

    iget-object v5, p0, Lﹶﾞ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-object v1, p0, Lﹶﾞ/ˏי;->ᴵˊ:Lﹶﾞ/יـ;

    invoke-virtual {v1}, Lﹶﾞ/יـ;->ˑﹳ()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v1, p0, Lﹶﾞ/ˏי;->ˈٴ:J

    invoke-direct/range {v0 .. v5}, Lﹶﾞ/ˈⁱ;-><init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    iget v0, p0, Lﹶﾞ/ˈⁱ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˈⁱ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v2, 0xd

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v5

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "origin="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-static {v4, v0, v1}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ʽ()Lﹶﾞ/ˏי;
    .locals 6

    new-instance v0, Lﹶﾞ/ˏי;

    new-instance v2, Lﹶﾞ/יـ;

    new-instance v1, Landroid/os/Bundle;

    iget-object v3, p0, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v2, v1}, Lﹶﾞ/יـ;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lﹶﾞ/ˈⁱ;->ˈ:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v1, p0, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-wide v4, p0, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    invoke-direct/range {v0 .. v5}, Lﹶﾞ/ˏי;-><init>(Ljava/lang/String;Lﹶﾞ/יـ;Ljava/lang/String;J)V

    return-object v0
.end method

.method public ﹳٴ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ٴʿ;
    .locals 20

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ٴʿ;->יـ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʼᐧ()Ljava/util/List;

    move-result-object v14

    iget-object v2, v1, Lﹶﾞ/ˈⁱ;->ˑﹳ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ʽ;

    iget-object v4, v2, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v5, v2, Lﹶﾞ/ˏʻ;->ᴵˊ:Lﹶﾞ/ᵢי;

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v4}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    const-string v6, "_eid"

    invoke-static {v7, v6}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    move-object v8, v9

    goto :goto_0

    :cond_0
    invoke-static {v8}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v8

    :goto_0
    move-object v10, v8

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_12

    const-string v8, "_ep"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v4}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    const-string v0, "_en"

    invoke-static {v7, v0}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v9

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v0

    :goto_1
    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ٴᵢ:Lﹶﾞ/ʼˈ;

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v10, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object v0, v1, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lﹶﾞ/ˈⁱ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v0, v1, Lﹶﾞ/ˈⁱ;->ˈ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v0, v16, v18

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v17, 0x0

    goto/16 :goto_b

    :cond_4
    :goto_2
    iget-object v0, v4, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v4, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    invoke-virtual {v0}, Lﹶﾞ/ˎᵎ;->ﹶˎ()V

    :try_start_0
    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v3, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v13, "Main event not found"

    invoke-virtual {v0, v13}, Lﹶﾞ/ʼˈ;->ﹳٴ(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    move-object/from16 v16, v0

    :goto_3
    const-wide/16 v17, 0x0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v13, 0x1

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v9

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ᵢˏ()Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    move-result-object v9

    invoke-static {v9, v0}, Lﹶﾞ/ʿ;->ʻˆ(Lcom/google/android/gms/internal/measurement/ﹳᴵ;[B)Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_5
    iget-object v9, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v9}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v9, v9, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v13, "Failed to merge main event. appId, eventId"
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v17, 0x0

    :try_start_6
    invoke-static {v3}, Lﹶﾞ/ﹳـ;->ˎʾ(Ljava/lang/String;)Lﹶﾞ/ـˏ;

    move-result-object v11

    invoke-virtual {v9, v13, v11, v10, v0}, Lﹶﾞ/ʼˈ;->ˈ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object/from16 v0, v16

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_5
    const-wide/16 v17, 0x0

    goto :goto_9

    :goto_6
    move-object v9, v8

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v16, v9

    const-wide/16 v17, 0x0

    goto :goto_8

    :goto_7
    move-object/from16 v9, v16

    goto/16 :goto_10

    :goto_8
    move-object/from16 v8, v16

    :goto_9
    :try_start_7
    iget-object v4, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v4}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v4, v4, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v9, "Error selecting main event"

    invoke-virtual {v4, v0, v9}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_6

    goto :goto_4

    :goto_a
    if-eqz v0, :cond_c

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v4, :cond_7

    goto/16 :goto_f

    :cond_7
    check-cast v4, Lcom/google/android/gms/internal/measurement/ٴʿ;

    iput-object v4, v1, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v1, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    iget-object v0, v1, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-static {v0, v6}, Lﹶﾞ/ʿ;->ˑˆ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, v1, Lﹶﾞ/ˈⁱ;->ˈ:Ljava/lang/Object;

    :goto_b
    iget-wide v8, v1, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    const-wide/16 v11, -0x1

    add-long/2addr v8, v11

    iput-wide v8, v1, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    cmp-long v0, v8, v17

    if-gtz v0, :cond_8

    iget-object v0, v5, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v0}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-object v4, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ⁱᴵ()V

    iget-object v6, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v6}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v6, v6, Lﹶﾞ/ﹳـ;->ᵔٴ:Lﹶﾞ/ʼˈ;

    const-string v8, "Clearing complex main event info. appId"

    invoke-virtual {v6, v3, v8}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_8
    invoke-virtual {v0}, Lﹶﾞ/ˉʿ;->יⁱ()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v6, "delete from main_event_params where app_id=?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    iget-object v3, v4, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v3}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v3, v3, Lﹶﾞ/ﹳـ;->ˊʻ:Lﹶﾞ/ʼˈ;

    const-string v4, "Error clearing complex main event"

    invoke-virtual {v3, v0, v4}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_8
    iget-object v8, v5, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v8}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-wide v11, v1, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    iget-object v0, v1, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/measurement/ٴʿ;

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lﹶﾞ/ˉʿ;->ﾞˏ(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ٴʿ;)V

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʼᐧ()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˊﾞ;

    invoke-virtual {v5}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ˊﾞ;->ᵔﹳ()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v6

    if-nez v6, :cond_9

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v14, v0

    goto :goto_e

    :cond_b
    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ٴᵢ:Lﹶﾞ/ʼˈ;

    const-string v2, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v15, v2}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_e
    move-object v0, v15

    goto :goto_13

    :cond_c
    :goto_f
    iget-object v0, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v0}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v0, v0, Lﹶﾞ/ﹳـ;->ٴᵢ:Lﹶﾞ/ʼˈ;

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v0, v15, v10, v2}, Lﹶﾞ/ʼˈ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v16

    :goto_10
    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    :cond_e
    move-object/from16 v16, v9

    const-wide/16 v17, 0x0

    iput-object v10, v1, Lﹶﾞ/ˈⁱ;->ˈ:Ljava/lang/Object;

    iput-object v7, v1, Lﹶﾞ/ˈⁱ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v4}, Lﹶﾞ/ᵢי;->ﹶᐧ()Lﹶﾞ/ʿ;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "_epc"

    invoke-static {v7, v5}, Lﹶﾞ/ʿ;->ˎʾ(Lcom/google/android/gms/internal/measurement/ٴʿ;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ˊﾞ;

    move-result-object v5

    if-nez v5, :cond_f

    move-object/from16 v9, v16

    goto :goto_11

    :cond_f
    invoke-static {v5}, Lﹶﾞ/ʿ;->ᵔⁱ(Lcom/google/android/gms/internal/measurement/ˊﾞ;)Ljava/io/Serializable;

    move-result-object v9

    :goto_11
    if-nez v9, :cond_10

    goto :goto_12

    :cond_10
    move-object v3, v9

    :goto_12
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v1, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    cmp-long v3, v5, v17

    if-gtz v3, :cond_11

    iget-object v2, v2, Lﹶﾞ/ᵎʻ;->ˊʻ:Lﹶﾞ/ﹳـ;

    invoke-static {v2}, Lﹶﾞ/ᵎʻ;->ʼˎ(Lﹶﾞ/ˎᐧ;)V

    iget-object v2, v2, Lﹶﾞ/ﹳـ;->ٴᵢ:Lﹶﾞ/ʼˈ;

    const-string v3, "Complex event with zero extra param count. eventName"

    invoke-virtual {v2, v0, v3}, Lﹶﾞ/ʼˈ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_13

    :cond_11
    iget-object v2, v4, Lﹶﾞ/ᵢי;->ʽʽ:Lﹶﾞ/ˉʿ;

    invoke-static {v2}, Lﹶﾞ/ᵢי;->ﹳـ(Lﹶﾞ/ˎᵎ;)V

    iget-wide v5, v1, Lﹶﾞ/ˈⁱ;->ⁱˊ:J

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-virtual/range {v2 .. v7}, Lﹶﾞ/ˉʿ;->ﾞˏ(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/ٴʿ;)V

    :cond_12
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/ʼﹶ;->ʼˎ()Lcom/google/android/gms/internal/measurement/ﹳᴵ;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔⁱ;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ˊʻ(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ˈٴ()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ⁱˊ()V

    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ʼﹶ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/measurement/ٴʿ;->ʽʽ(Ljava/lang/Iterable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ﹳᴵ;->ﾞᴵ()Lcom/google/android/gms/internal/measurement/ʼﹶ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ٴʿ;

    return-object v0
.end method
