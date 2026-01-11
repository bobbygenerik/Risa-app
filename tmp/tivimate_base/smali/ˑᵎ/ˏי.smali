.class public final synthetic Lˑᵎ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/String;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:J


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;I)V
    .locals 0

    iput p4, p0, Lˑᵎ/ˏי;->ʾˋ:I

    iput-wide p1, p0, Lˑᵎ/ˏי;->ᴵˊ:J

    iput-object p3, p0, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    iput p4, p0, Lˑᵎ/ˏי;->ʾˋ:I

    iput-object p1, p0, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iput-wide p2, p0, Lˑᵎ/ˏי;->ᴵˊ:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lˑᵎ/ˏי;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE tvg_sources SET name = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE tvg_sources SET url = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_1
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_1
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "\n        SELECT * FROM tvg_programs\n        INNER JOIN tvg_programs_fts ON tvg_programs.id == tvg_programs_fts.docid\n        WHERE tvg_programs_fts.title MATCH ? AND start_epoch_seconds >= ?\n        LIMIT 10000\n        "

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_2
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    const-string v0, "id"

    invoke-static {v4, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v2, "tvg_channel_id"

    invoke-static {v4, v2}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    const-string v3, "start_epoch_seconds"

    invoke-static {v4, v3}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const-string v5, "stop_epoch_seconds"

    invoke-static {v4, v5}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    invoke-static {v4, v6}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "desc"

    invoke-static {v4, v7}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const-string v8, "title_length"

    invoke-static {v4, v8}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v8

    const-string v9, "desc_length"

    invoke-static {v4, v9}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v13

    invoke-interface {v4, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v15

    invoke-interface {v4, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v17

    invoke-interface {v4, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v19

    invoke-interface {v4, v6}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v4, v7}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v4, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-wide/from16 v23, v13

    const/4 v11, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 v23, v13

    invoke-interface {v4, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_1
    invoke-interface {v4, v9}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v4, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_2
    new-instance v13, Lˉʾ/ـᵢ;

    move-wide/from16 v25, v23

    move-object/from16 v24, v12

    move-object v12, v13

    move-wide/from16 v13, v25

    move-object/from16 v23, v11

    invoke-direct/range {v12 .. v24}, Lˉʾ/ـᵢ;-><init>(JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    return-object v10

    :goto_3
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_2
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE recordings SET file_path = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_3
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_3
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_3
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE playlists SET stalker_token = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_4
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_4
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_4
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE playlists SET url = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_5
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_5
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_5
    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v4, "UPDATE playlists SET user_agent = ? WHERE id == ?"

    invoke-interface {v0, v4}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v0, :cond_3

    :try_start_6
    invoke-interface {v4, v5}, Lﹳᴵ/ʽ;->ﹳٴ(I)V

    goto :goto_4

    :catchall_6
    move-exception v0

    goto :goto_5

    :cond_3
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    :goto_4
    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :goto_5
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_6
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE playlists SET name = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_7
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_7
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_7
    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v4, "UPDATE channel_group_options SET custom_group_name = ? WHERE id == ?"

    invoke-interface {v0, v4}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v0, :cond_4

    :try_start_8
    invoke-interface {v4, v5}, Lﹳᴵ/ʽ;->ﹳٴ(I)V

    goto :goto_6

    :catchall_8
    move-exception v0

    goto :goto_7

    :cond_4
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    :goto_6
    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :goto_7
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_8
    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v4, "UPDATE channels SET custom_name = ? WHERE id == ?"

    invoke-interface {v0, v4}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v0, :cond_5

    :try_start_9
    invoke-interface {v4, v5}, Lﹳᴵ/ʽ;->ﹳٴ(I)V

    goto :goto_8

    :catchall_9
    move-exception v0

    goto :goto_9

    :cond_5
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    :goto_8
    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :goto_9
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_9
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE channels SET blocked_tvg_ids = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_a
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_a
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_a
    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE channels SET url = ? WHERE id == ?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_b
    invoke-interface {v4, v5, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_b
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_b
    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    const/4 v5, 0x1

    :try_start_c
    invoke-interface {v4, v5, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    const/4 v2, 0x2

    invoke-interface {v4, v2, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_c
    move-exception v0

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_c
    iget-wide v2, v1, Lˑᵎ/ˏי;->ᴵˊ:J

    iget-object v0, v1, Lˑᵎ/ˏי;->ʽʽ:Ljava/lang/String;

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    const-string v5, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    invoke-interface {v4, v5}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v5

    const/4 v6, 0x1

    :try_start_d
    invoke-interface {v5, v6, v2, v3}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    const/4 v2, 0x2

    invoke-interface {v5, v2, v0}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v5}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-static {v4}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_d
    move-exception v0

    invoke-interface {v5}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
