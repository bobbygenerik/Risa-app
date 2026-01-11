.class public final synthetic Lˑᵎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lˑᵎ/ʽ;->ʾˋ:I

    iput-object p2, p0, Lˑᵎ/ʽ;->ᴵˊ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 81

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lˑᵎ/ʽ;->ʾˋ:I

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    sget-object v14, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v15, 0x0

    const/4 v2, 0x1

    iget-object v3, v1, Lˑᵎ/ʽ;->ᴵˊ:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const-string v0, "SELECT id FROM tvg_sources WHERE url == ?"

    move-object/from16 v4, p1

    check-cast v4, Lﹳᴵ/ﹳٴ;

    invoke-interface {v4, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v4

    :try_start_0
    invoke-interface {v4, v2, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v4}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4, v15}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v4, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_1
    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    const-string v0, "\n        SELECT s.id, s.playlist_id, p.name playlist_name, p.position playlist_position, s.category_id, s.xc_id, s.stalker_id,\n        c.stalker_type, s.name, length(s.image) image_length, NULL stalker_poster_url, s.rating, s.last_modified_time,\n        s.position_in_playlist, s.is_favorite\n        FROM series s\n        INNER JOIN playlists p ON s.playlist_id == p.id\n        INNER JOIN series_fts ON s.id == series_fts.docid\n        LEFT OUTER JOIN series_categories c ON s.category_id == c.id\n        WHERE p.is_enabled == 1\n            AND s.deleted_time IS NULL\n            AND c.deleted_time IS NULL\n            AND c.stalker_id IS NULL\n            AND IFNULL(c.is_visible, 1) == 1\n            AND series_fts MATCH ?\n        LIMIT 10000\n        "

    move-object/from16 v14, p1

    check-cast v14, Lﹳᴵ/ﹳٴ;

    invoke-interface {v14, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v14

    :try_start_1
    invoke-interface {v14, v2, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v14}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v14, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v18

    invoke-interface {v14, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v20

    invoke-interface {v14, v13}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v14, v12}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v23, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v14, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v23, v2

    :goto_3
    invoke-interface {v14, v11}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v24, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v14, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v24, v2

    :goto_4
    invoke-interface {v14, v10}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v25, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v14, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v25, v2

    :goto_5
    invoke-interface {v14, v9}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v26, 0x0

    goto :goto_6

    :cond_5
    invoke-interface {v14, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v26, v2

    :goto_6
    invoke-interface {v14, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v27, 0x0

    goto :goto_7

    :cond_6
    invoke-interface {v14, v8}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    :goto_7
    invoke-interface {v14, v7}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v28

    invoke-interface {v14, v6}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v29, 0x0

    goto :goto_8

    :cond_7
    invoke-interface {v14, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v29, v2

    :goto_8
    invoke-interface {v14, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v30, 0x0

    goto :goto_9

    :cond_8
    invoke-interface {v14, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v30, v2

    :goto_9
    invoke-interface {v14, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v31, 0x0

    :goto_a
    const/16 v2, 0xc

    goto :goto_b

    :cond_9
    invoke-interface {v14, v4}, Lﹳᴵ/ʽ;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v31, v2

    goto :goto_a

    :goto_b
    invoke-interface {v14, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v32, 0x0

    :goto_c
    const/16 v2, 0xd

    goto :goto_d

    :cond_a
    invoke-interface {v14, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v32, v2

    goto :goto_c

    :goto_d
    invoke-interface {v14, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v33, 0x0

    goto :goto_e

    :cond_b
    invoke-interface {v14, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v33, v2

    :goto_e
    const/16 v2, 0xe

    invoke-interface {v14, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x0

    goto :goto_f

    :cond_c
    invoke-interface {v14, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_f
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_10

    :cond_d
    move v2, v15

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v34, v2

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_12

    :cond_e
    const/16 v34, 0x0

    :goto_11
    new-instance v17, Lˉʾ/ᐧˎ;

    invoke-direct/range {v17 .. v34}, Lˉʾ/ᐧˎ;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    const/16 v4, 0xb

    const/16 v5, 0xa

    goto/16 :goto_2

    :cond_f
    invoke-interface {v14}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_12
    invoke-interface {v14}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1
    const-string v0, "\n        SELECT r.start_seconds, r.stop_seconds, r.file_path, c.playlist_id, c.xc_id channel_xc_id, c.url channel_url,\n        r.original_channel_name, r.program_start_seconds, r.program_stop_seconds, r.program_title, r.program_desc,\n        r.custom_recording_name, r.repeat_rules\n        FROM recordings r\n        LEFT OUTER JOIN channels c ON r.channel_id == c.id\n        WHERE c.deleted_time IS NULL\n            AND r.status == 3\n            AND r.file_path LIKE ? || \'%\' \n        "

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v18

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v20

    invoke-interface {v2, v13}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v23, 0x0

    goto :goto_14

    :cond_10
    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_14
    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v24, 0x0

    goto :goto_15

    :cond_11
    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_15
    invoke-interface {v2, v10}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v25, 0x0

    goto :goto_16

    :cond_12
    invoke-interface {v2, v10}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_16
    invoke-interface {v2, v9}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface {v2, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v27, 0x0

    goto :goto_17

    :cond_13
    invoke-interface {v2, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_17
    invoke-interface {v2, v7}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v28, 0x0

    goto :goto_18

    :cond_14
    invoke-interface {v2, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_18
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v29, 0x0

    :goto_19
    const/16 v3, 0xa

    goto :goto_1a

    :cond_15
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_19

    :goto_1a
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v30, 0x0

    :goto_1b
    const/16 v3, 0xb

    goto :goto_1c

    :cond_16
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    goto :goto_1b

    :goto_1c
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v31, 0x0

    :goto_1d
    const/16 v3, 0xc

    goto :goto_1e

    :cond_17
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v4

    goto :goto_1d

    :goto_1e
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v32, 0x0

    goto :goto_1f

    :cond_18
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v32, v4

    :goto_1f
    new-instance v17, Lar/tvplayer/core/data/db/entities/RecordingForPush;

    invoke-direct/range {v17 .. v32}, Lar/tvplayer/core/data/db/entities/RecordingForPush;-><init>(JJLjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    goto :goto_20

    :cond_19
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_20
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_2
    const-string v0, "\n        SELECT id, file_path\n        FROM recordings\n        WHERE status == 3 AND file_path LIKE ? || \'%\' \n        "

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_21
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lˉʾ/ˑʼ;

    invoke-direct {v5, v6, v3, v4}, Lˉʾ/ˑʼ;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_21

    :catchall_3
    move-exception v0

    goto :goto_22

    :cond_1a
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_22
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_3
    const-string v0, "\n        SELECT m.id, m.playlist_id, p.name playlist_name, p.position playlist_position, m.category_id, m.xc_id, m.stalker_id,\n        m.name, length(m.image) image_length, NULL stalker_poster_url, m.rating, m.added_time, m.position_in_playlist, m.is_favorite\n        FROM movies m\n        INNER JOIN playlists p ON m.playlist_id == p.id\n        INNER JOIN movies_fts ON m.id == movies_fts.docid\n        LEFT OUTER JOIN movie_categories c ON m.category_id == c.id\n        WHERE p.is_enabled == 1\n            AND m.deleted_time IS NULL\n            AND c.deleted_time IS NULL\n            AND c.stalker_id IS NULL\n            AND IFNULL(c.is_visible, 1) == 1\n            AND movies_fts MATCH ?\n        LIMIT 10000\n        "

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_4
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v18

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v20

    invoke-interface {v2, v13}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v23, 0x0

    goto :goto_24

    :cond_1b
    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_24
    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v24, 0x0

    goto :goto_25

    :cond_1c
    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_25
    invoke-interface {v2, v10}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v25, 0x0

    goto :goto_26

    :cond_1d
    invoke-interface {v2, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_26
    invoke-interface {v2, v9}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v26, 0x0

    goto :goto_27

    :cond_1e
    invoke-interface {v2, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_27
    invoke-interface {v2, v8}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v27

    invoke-interface {v2, v7}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v28, 0x0

    goto :goto_28

    :cond_1f
    invoke-interface {v2, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_28
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v29, 0x0

    :goto_29
    const/16 v3, 0xa

    goto :goto_2a

    :cond_20
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_29

    :goto_2a
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v30, 0x0

    :goto_2b
    const/16 v4, 0xb

    goto :goto_2c

    :cond_21
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v30, v4

    goto :goto_2b

    :goto_2c
    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_22

    const/16 v31, 0x0

    :goto_2d
    const/16 v5, 0xc

    goto :goto_2e

    :cond_22
    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v31, v5

    goto :goto_2d

    :goto_2e
    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_23

    const/16 v32, 0x0

    :goto_2f
    const/16 v3, 0xd

    goto :goto_30

    :cond_23
    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v32, v3

    goto :goto_2f

    :goto_30
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v5, 0x0

    goto :goto_31

    :cond_24
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_31
    if-eqz v5, :cond_26

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_32

    :cond_25
    move v5, v15

    :goto_32
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v33, v5

    goto :goto_33

    :catchall_4
    move-exception v0

    goto :goto_34

    :cond_26
    const/16 v33, 0x0

    :goto_33
    new-instance v17, Lˉʾ/ˑٴ;

    invoke-direct/range {v17 .. v33}, Lˉʾ/ˑٴ;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v6, 0x9

    goto/16 :goto_23

    :cond_27
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_34
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_4
    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_5
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_35
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_35

    :catchall_5
    move-exception v0

    goto :goto_36

    :cond_28
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_36
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_5
    const-string v0, "DELETE FROM workspec WHERE id=?"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_6
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v14

    :catchall_6
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v2, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v5, 0x1

    :try_start_7
    invoke-interface {v2, v5, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-static {v0}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_7
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_7
    const-string v0, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_8
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_37
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    invoke-static {v3}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_37

    :catchall_8
    move-exception v0

    goto :goto_38

    :cond_29
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_38
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_8
    const-string v0, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_9
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v14

    :catchall_9
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v2, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v5, 0x1

    :try_start_a
    invoke-interface {v2, v5, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-static {v0}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_a
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v2, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v5, 0x1

    :try_start_b
    invoke-interface {v2, v5, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-static {v0}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_b
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_b
    const-string v0, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_c
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_39
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_39

    :catchall_c
    move-exception v0

    goto :goto_3a

    :cond_2a
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_3a
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_c
    const-string v0, "SELECT state FROM workspec WHERE id=?"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_d
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_3b

    :cond_2b
    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3b
    if-nez v0, :cond_2d

    :cond_2c
    const/4 v15, 0x0

    goto :goto_3c

    :cond_2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ʾˋ(I)Lᴵˋ/ˈٴ;

    move-result-object v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    goto :goto_3c

    :catchall_d
    move-exception v0

    goto :goto_3d

    :goto_3c
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_3d
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_d
    const-string v0, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_e
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3e
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v4, v6

    invoke-static {v4}, Lᴵˋ/ˊʻ;->ʾˋ(I)Lᴵˋ/ˈٴ;

    move-result-object v4

    new-instance v5, Lˑᵎ/ʼᐧ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v3, v5, Lˑᵎ/ʼᐧ;->ﹳٴ:Ljava/lang/String;

    iput-object v4, v5, Lˑᵎ/ʼᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    goto :goto_3e

    :catchall_e
    move-exception v0

    goto :goto_3f

    :cond_2e
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_3f
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_e
    const-string v0, "SELECT * FROM workspec WHERE id=?"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    const/4 v0, 0x1

    :try_start_f
    invoke-interface {v2, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    const-string v0, "id"

    invoke-static {v2, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v3, "state"

    invoke-static {v2, v3}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const-string v4, "worker_class_name"

    invoke-static {v2, v4}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v4

    const-string v5, "input_merger_class_name"

    invoke-static {v2, v5}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input"

    invoke-static {v2, v6}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "output"

    invoke-static {v2, v7}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const-string v8, "initial_delay"

    invoke-static {v2, v8}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v8

    const-string v9, "interval_duration"

    invoke-static {v2, v9}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v9

    const-string v10, "flex_duration"

    invoke-static {v2, v10}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v10

    const-string v11, "run_attempt_count"

    invoke-static {v2, v11}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_policy"

    invoke-static {v2, v12}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_delay_duration"

    invoke-static {v2, v13}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_enqueue_time"

    invoke-static {v2, v14}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v14

    const-string v15, "minimum_retention_duration"

    invoke-static {v2, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "backoff_on_system_interruptions"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v33

    if-eqz v33, :cond_38

    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v36

    move/from16 v33, v1

    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ʾˋ(I)Lᴵˋ/ˈٴ;

    move-result-object v37

    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v40

    invoke-interface {v2, v7}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v41

    invoke-interface {v2, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v42

    invoke-interface {v2, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v44

    invoke-interface {v2, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v46

    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-static {v1}, Lᴵˋ/ˊʻ;->ʾᵎ(I)I

    move-result v50

    invoke-interface {v2, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v14}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v53

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v55

    move/from16 v1, p1

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v57

    move/from16 v1, v16

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v1, v3

    if-eqz v1, :cond_2f

    const/16 v59, 0x1

    :goto_40
    move/from16 v1, v17

    goto :goto_41

    :cond_2f
    const/16 v59, 0x0

    goto :goto_40

    :goto_41
    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-static {v1}, Lᴵˋ/ˊʻ;->ᵢˏ(I)I

    move-result v60

    move/from16 v1, v18

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v1, v3

    move/from16 v3, v19

    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v4, v20

    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v63

    move/from16 v4, v21

    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v22

    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    move/from16 v6, v23

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_30

    const/16 v67, 0x0

    :goto_42
    move/from16 v6, v24

    goto :goto_43

    :cond_30
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v67, v6

    goto :goto_42

    :goto_43
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_31

    const/4 v6, 0x0

    goto :goto_44

    :cond_31
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_44
    if-eqz v6, :cond_33

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eqz v6, :cond_32

    const/4 v6, 0x1

    goto :goto_45

    :cond_32
    const/4 v6, 0x0

    :goto_45
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v68, v15

    :goto_46
    move/from16 v6, v25

    goto :goto_47

    :catchall_f
    move-exception v0

    goto/16 :goto_51

    :cond_33
    const/16 v68, 0x0

    goto :goto_46

    :goto_47
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Lᴵˋ/ˊʻ;->ʼʼ(I)I

    move-result v71

    move/from16 v6, v26

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Lᴵˋ/ˊʻ;->ᵔٴ([B)Lˆﹶ/ᵔᵢ;

    move-result-object v70

    move/from16 v6, v27

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_34

    const/16 v72, 0x1

    :goto_48
    move/from16 v6, v28

    goto :goto_49

    :cond_34
    const/16 v72, 0x0

    goto :goto_48

    :goto_49
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_35

    const/16 v73, 0x1

    :goto_4a
    move/from16 v6, v29

    goto :goto_4b

    :cond_35
    const/16 v73, 0x0

    goto :goto_4a

    :goto_4b
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_36

    const/16 v74, 0x1

    :goto_4c
    move/from16 v6, v30

    goto :goto_4d

    :cond_36
    const/16 v74, 0x0

    goto :goto_4c

    :goto_4d
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    if-eqz v6, :cond_37

    const/16 v75, 0x1

    :goto_4e
    move/from16 v6, v31

    goto :goto_4f

    :cond_37
    const/16 v75, 0x0

    goto :goto_4e

    :goto_4f
    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v76

    move/from16 v6, v32

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v78

    move/from16 v6, v33

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v6

    invoke-static {v6}, Lᴵˋ/ˊʻ;->ʽ([B)Ljava/util/LinkedHashSet;

    move-result-object v80

    new-instance v48, Lᴵˋ/ˑﹳ;

    move-object/from16 v69, v48

    invoke-direct/range {v69 .. v80}, Lᴵˋ/ˑﹳ;-><init>(Lˆﹶ/ᵔᵢ;IZZZZJJLjava/util/LinkedHashSet;)V

    move-object/from16 v48, v69

    new-instance v35, Lˑᵎ/ﹳᐧ;

    move/from16 v49, v0

    move/from16 v61, v1

    move/from16 v62, v3

    move/from16 v65, v4

    move/from16 v66, v5

    invoke-direct/range {v35 .. v68}, Lˑᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIIJIILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    move-object/from16 v15, v35

    goto :goto_50

    :cond_38
    const/4 v15, 0x0

    :goto_50
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_51
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_f
    const-string v0, "DELETE from WorkProgress where work_spec_id=?"

    move-object/from16 v1, p1

    check-cast v1, Lﹳᴵ/ﹳٴ;

    invoke-interface {v1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_10
    invoke-interface {v1, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v14

    :catchall_10
    move-exception v0

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_10
    const-string v0, "SELECT name FROM workname WHERE work_spec_id=?"

    move-object/from16 v1, p1

    check-cast v1, Lﹳᴵ/ﹳٴ;

    invoke-interface {v1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_11
    invoke-interface {v1, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_52
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    goto :goto_52

    :catchall_11
    move-exception v0

    goto :goto_53

    :cond_39
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_53
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_11
    const-string v0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    move-object/from16 v1, p1

    check-cast v1, Lﹳᴵ/ﹳٴ;

    invoke-interface {v1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_12
    invoke-interface {v1, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v14

    :catchall_12
    move-exception v0

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_12
    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    move-object/from16 v1, p1

    check-cast v1, Lﹳᴵ/ﹳٴ;

    invoke-interface {v1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_13
    invoke-interface {v1, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_3a
    const/4 v15, 0x0

    goto :goto_54

    :cond_3b
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    goto :goto_54

    :catchall_13
    move-exception v0

    goto :goto_55

    :goto_54
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_55
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_13
    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    move-object/from16 v1, p1

    check-cast v1, Lﹳᴵ/ﹳٴ;

    invoke-interface {v1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_14
    invoke-interface {v1, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    long-to-int v0, v3

    if-eqz v0, :cond_3c

    const/4 v15, 0x1

    goto :goto_56

    :catchall_14
    move-exception v0

    goto :goto_57

    :cond_3c
    const/4 v15, 0x0

    :goto_56
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_57
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_14
    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v1, p1

    check-cast v1, Lﹳᴵ/ﹳٴ;

    invoke-interface {v1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_15
    invoke-interface {v1, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_58
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    goto :goto_58

    :catchall_15
    move-exception v0

    goto :goto_59

    :cond_3d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_59
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_15
    const-string v0, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v1, p1

    check-cast v1, Lﹳᴵ/ﹳٴ;

    invoke-interface {v1, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    const/4 v0, 0x1

    :try_start_16
    invoke-interface {v1, v0, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    long-to-int v3, v3

    if-eqz v3, :cond_3f

    move v15, v0

    goto :goto_5a

    :catchall_16
    move-exception v0

    goto :goto_5b

    :cond_3e
    const/4 v2, 0x0

    :cond_3f
    move v15, v2

    :goto_5a
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_5b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
