.class public final synthetic Lˑᵎ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lˑᵎ/ʻٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˑᵎ/ʻٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ˈ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .prologue
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v1, "\n        SELECT m.id, m.channel_id, c.name channel_name, c.custom_name custom_channel_name,\n        length(c.logo) channel_logo_from_playlist_length, length(t.icon_url) channel_logo_from_tvg_length,\n        p.logos_priority channel_logos_priority, b.tvg_channel_id, m.program_start_seconds, m.program_stop_seconds,\n        m.program_title, p.catchup_type playlist_catchup_type, p.catchup_hours playlist_catchup_hours,\n        p.user_catchup_type playlist_user_catchup_type, p.user_catchup_hours playlist_user_catchup_hours, c.catchup_hours\n        FROM my_programs m\n        LEFT OUTER JOIN channels c ON m.channel_id == c.id\n        LEFT OUTER JOIN playlists p ON c.playlist_id == p.id\n        LEFT OUTER JOIN channel_tvg_bindings b ON c.id == b.channel_id\n        LEFT OUTER JOIN tvg_channels t ON b.tvg_channel_id == t.id\n        WHERE p.is_enabled == 1 AND c.deleted_time IS NULL\n        ORDER BY m.program_start_seconds\n        "

    invoke-interface {v0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    :goto_2
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v10

    long-to-int v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v10, v3

    :goto_3
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    long-to-int v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v11, v3

    :goto_4
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_5
    invoke-static {v3}, Lﹳˋ/ʼˎ;->ˈʿ(Ljava/lang/Integer;)Lˉʾ/ᵎⁱ;

    move-result-object v12

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    goto :goto_6

    :cond_5
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v13, v3

    :goto_6
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v14

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v16

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v18

    const/16 v3, 0xb

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v9

    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    move-object/from16 v19, v9

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    long-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_7
    invoke-static {v3}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v3

    const/16 v8, 0xc

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v20, 0x0

    goto :goto_8

    :cond_7
    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v20, v8

    :goto_8
    const/16 v8, 0xd

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v8, 0x0

    goto :goto_9

    :cond_8
    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_9
    invoke-static {v8}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v21

    const/16 v8, 0xe

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v22, 0x0

    goto :goto_a

    :cond_9
    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v22, v8

    :goto_a
    const/16 v8, 0xf

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v9, v19

    move-object/from16 v19, v3

    goto :goto_c

    :cond_a
    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v23, v8

    goto :goto_b

    :goto_c
    new-instance v3, Lˉʾ/ʿᵢ;

    move-object v8, v2

    invoke-direct/range {v3 .. v23}, Lˉʾ/ʿᵢ;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lˉʾ/ᵎⁱ;Ljava/lang/Long;JJLjava/lang/String;Lᵔᵔ/ʽ;Ljava/lang/Integer;Lᵔᵔ/ʽ;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_b
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private final ˉʿ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 93

    .prologue
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v1, "\n        SELECT * FROM playlists p WHERE p.is_enabled == 1 AND p.is_vod == 0\n            AND EXISTS (SELECT c.id FROM channels c WHERE c.deleted_time IS NULL AND c.playlist_id == p.id)\n        "

    invoke-interface {v0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v2, "name"

    invoke-static {v1, v2}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-static {v1, v3}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const-string v4, "is_vod"

    invoke-static {v1, v4}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_enabled"

    invoke-static {v1, v5}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "auto_update"

    invoke-static {v1, v6}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "update_interval_hours"

    invoke-static {v1, v7}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_update_time"

    invoke-static {v1, v8}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v8

    const-string v9, "include_tv_channels"

    invoke-static {v1, v9}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v9

    const-string v10, "include_vod"

    invoke-static {v1, v10}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_expanded"

    invoke-static {v1, v11}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_expanded_in_movies"

    invoke-static {v1, v12}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_expanded_in_series"

    invoke-static {v1, v13}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    const-string v14, "tvg_urls"

    invoke-static {v1, v14}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v14

    const-string v15, "tvg_shift"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "server_timezone"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "expiration_date"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "max_connections"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "channel_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "movie_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "series_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "catchup_type"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "catchup_hours"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "catchup_source"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "user_catchup_type"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "user_catchup_hours"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "user_catchup_time_offset"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "is_visible_in_all_channels"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "is_visible_in_all_favorites"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "logos_priority"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "prev_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "prev_movie_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "movie_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "prev_series_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "series_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "position"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "stalker_token"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "user_agent"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "are_new_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "are_new_movie_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "are_new_series_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v43

    if-eqz v43, :cond_27

    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v47

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v48

    move/from16 v43, v2

    move/from16 v89, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v44, 0x1

    if-eqz v2, :cond_0

    move/from16 v49, v44

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_0
    const/16 v49, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_1

    move/from16 v50, v44

    goto :goto_3

    :cond_1
    const/16 v50, 0x0

    :goto_3
    invoke-interface {v1, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_2

    move/from16 v51, v44

    goto :goto_4

    :cond_2
    const/16 v51, 0x0

    :goto_4
    invoke-interface {v1, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v53

    move v4, v2

    move/from16 v55, v3

    invoke-interface {v1, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v52, v55

    if-eqz v2, :cond_3

    move/from16 v55, v44

    goto :goto_5

    :cond_3
    const/16 v55, 0x0

    :goto_5
    invoke-interface {v1, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_4

    move/from16 v56, v44

    goto :goto_6

    :cond_4
    const/16 v56, 0x0

    :goto_6
    invoke-interface {v1, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_5

    move/from16 v57, v44

    goto :goto_7

    :cond_5
    const/16 v57, 0x0

    :goto_7
    invoke-interface {v1, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_6

    move/from16 v58, v44

    goto :goto_8

    :cond_6
    const/16 v58, 0x0

    :goto_8
    invoke-interface {v1, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_7

    move/from16 v59, v44

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_7
    const/16 v59, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v1, v14}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v3, p1

    move/from16 v90, v4

    move/from16 p1, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v16

    const/16 v61, 0x0

    if-eqz v16, :cond_8

    move-object/from16 v62, v61

    :goto_b
    move/from16 v2, v17

    goto :goto_c

    :cond_8
    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v62, v16

    goto :goto_b

    :goto_c
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v63, v61

    :goto_d
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_e

    :cond_9
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v63

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v63, v17

    goto :goto_d

    :goto_e
    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v91, v2

    move/from16 v18, v3

    move-object/from16 v64, v61

    :goto_f
    move/from16 v2, v19

    move/from16 v19, v4

    goto :goto_10

    :cond_a
    move/from16 v91, v2

    move/from16 v18, v3

    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v64, v2

    goto :goto_f

    :goto_10
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v65, v3

    move/from16 v4, v20

    move/from16 v20, v2

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v92, v4

    move/from16 v3, v21

    move/from16 v21, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v22

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_b

    move/from16 v66, v2

    move/from16 v22, v3

    move-object/from16 v2, v61

    goto :goto_11

    :cond_b
    move/from16 v66, v2

    move/from16 v22, v3

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_11
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v68

    move/from16 v2, v23

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move/from16 v67, v4

    move-object/from16 v69, v61

    :goto_12
    move/from16 v3, v24

    goto :goto_13

    :cond_c
    move/from16 v67, v4

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v69, v3

    goto :goto_12

    :goto_13
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v70, v61

    :goto_14
    move/from16 v4, v25

    goto :goto_15

    :cond_d
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v70, v4

    goto :goto_14

    :goto_15
    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_e

    move/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v2, v61

    goto :goto_16

    :cond_e
    move/from16 v23, v2

    move/from16 v24, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_16
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v71

    move/from16 v2, v26

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v25, v4

    move-object/from16 v72, v61

    :goto_17
    move/from16 v3, v27

    goto :goto_18

    :cond_f
    move/from16 v25, v4

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v72, v3

    goto :goto_17

    :goto_18
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v26, v5

    move-object/from16 v73, v61

    move/from16 v27, v3

    move/from16 v4, v28

    move v5, v2

    goto :goto_19

    :cond_10
    move/from16 v26, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v73, v4

    move v5, v2

    move/from16 v27, v3

    move/from16 v4, v28

    :goto_19
    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_11

    move/from16 v74, v44

    :goto_1a
    move/from16 v28, v4

    move/from16 v2, v29

    goto :goto_1b

    :cond_11
    const/16 v74, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_12

    move/from16 v75, v44

    :goto_1c
    move/from16 v3, v30

    goto :goto_1d

    :cond_12
    const/16 v75, 0x0

    goto :goto_1c

    :goto_1d
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v29, v5

    move-object/from16 v4, v61

    goto :goto_1e

    :cond_13
    move/from16 v29, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1e
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ˈʿ(Ljava/lang/Integer;)Lˉʾ/ᵎⁱ;

    move-result-object v76

    if-eqz v76, :cond_26

    move/from16 v4, v31

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v2

    move/from16 v30, v3

    move-object/from16 v2, v61

    goto :goto_1f

    :cond_14
    move v5, v2

    move/from16 v30, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1f
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v77
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Expected NON-NULL \'ar.tvplayer.core.`data`.db.entities.GroupsSorting\', but it was NULL."

    if-eqz v77, :cond_25

    move/from16 v3, v32

    :try_start_1
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_15

    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v4, v61

    goto :goto_20

    :cond_15
    move/from16 v31, v4

    move/from16 v32, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_20
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v78

    if-eqz v78, :cond_24

    move/from16 v4, v33

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v33, v6

    move-object/from16 v5, v61

    goto :goto_21

    :cond_16
    move/from16 v33, v6

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_21
    invoke-static {v5}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v79

    if-eqz v79, :cond_23

    move/from16 v5, v34

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v3

    move/from16 v34, v4

    move-object/from16 v3, v61

    goto :goto_22

    :cond_17
    move v6, v3

    move/from16 v34, v4

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_22
    invoke-static {v3}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v80

    if-eqz v80, :cond_22

    move/from16 v3, v35

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v35, v5

    move-object/from16 v4, v61

    goto :goto_23

    :cond_18
    move/from16 v35, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_23
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v81

    if-eqz v81, :cond_21

    move/from16 v4, v36

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_19

    move/from16 v36, v6

    move-object/from16 v5, v61

    goto :goto_24

    :cond_19
    move/from16 v36, v6

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_24
    invoke-static {v5}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v82

    if-eqz v82, :cond_20

    move/from16 v5, v37

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v6, v3

    move-object/from16 v83, v61

    :goto_25
    move/from16 v2, v38

    goto :goto_26

    :cond_1a
    move v6, v3

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v83, v2

    goto :goto_25

    :goto_26
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v84, v61

    :goto_27
    move/from16 v3, v39

    goto :goto_28

    :cond_1b
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v84, v3

    goto :goto_27

    :goto_28
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_1c

    :goto_29
    move/from16 v37, v0

    move/from16 v38, v2

    move/from16 v39, v3

    move/from16 v0, v40

    move-object/from16 v85, v61

    goto :goto_2a

    :cond_1c
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v61

    goto :goto_29

    :goto_2a
    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_1d

    move/from16 v86, v44

    :goto_2b
    move/from16 v40, v4

    move/from16 v2, v41

    goto :goto_2c

    :cond_1d
    const/16 v86, 0x0

    goto :goto_2b

    :goto_2c
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_1e

    move/from16 v87, v44

    :goto_2d
    move/from16 v41, v5

    move/from16 v3, v42

    goto :goto_2e

    :cond_1e
    const/16 v87, 0x0

    goto :goto_2d

    :goto_2e
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_1f

    move/from16 v88, v44

    goto :goto_2f

    :cond_1f
    const/16 v88, 0x0

    :goto_2f
    new-instance v44, Lˉʾ/ᐧᴵ;

    move/from16 v61, v19

    invoke-direct/range {v44 .. v88}, Lˉʾ/ᐧᴵ;-><init>(JLjava/lang/String;Ljava/lang/String;ZZZIJZZZZZLjava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;IIILᵔᵔ/ʽ;Ljava/lang/Integer;Ljava/lang/String;Lᵔᵔ/ʽ;Ljava/lang/Integer;Ljava/lang/Integer;ZZLˉʾ/ᵎⁱ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v4, v44

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v35

    move/from16 v35, v6

    move/from16 v6, v33

    move/from16 v33, v34

    move/from16 v34, v4

    move/from16 v5, p1

    move/from16 v42, v3

    move/from16 p1, v18

    move/from16 v19, v20

    move/from16 v16, v21

    move/from16 v21, v22

    move/from16 v22, v26

    move/from16 v26, v29

    move/from16 v29, v32

    move/from16 v32, v36

    move/from16 v18, v37

    move/from16 v36, v40

    move/from16 v37, v41

    move/from16 v3, v89

    move/from16 v4, v90

    move/from16 v20, v92

    move/from16 v40, v0

    move/from16 v41, v2

    move/from16 v0, v17

    move/from16 v2, v43

    move/from16 v17, v91

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_30

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Expected NON-NULL \'ar.tvplayer.core.`data`.db.entities.LogosPriority\', but it was NULL."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_27
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_30
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private final ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 93

    .prologue
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v1, "SELECT * FROM playlists"

    invoke-interface {v0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v2, "name"

    invoke-static {v1, v2}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-static {v1, v3}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const-string v4, "is_vod"

    invoke-static {v1, v4}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_enabled"

    invoke-static {v1, v5}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "auto_update"

    invoke-static {v1, v6}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "update_interval_hours"

    invoke-static {v1, v7}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_update_time"

    invoke-static {v1, v8}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v8

    const-string v9, "include_tv_channels"

    invoke-static {v1, v9}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v9

    const-string v10, "include_vod"

    invoke-static {v1, v10}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_expanded"

    invoke-static {v1, v11}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_expanded_in_movies"

    invoke-static {v1, v12}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_expanded_in_series"

    invoke-static {v1, v13}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    const-string v14, "tvg_urls"

    invoke-static {v1, v14}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v14

    const-string v15, "tvg_shift"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "server_timezone"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "expiration_date"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "max_connections"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "channel_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "movie_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "series_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "catchup_type"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "catchup_hours"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "catchup_source"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "user_catchup_type"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "user_catchup_hours"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "user_catchup_time_offset"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "is_visible_in_all_channels"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "is_visible_in_all_favorites"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "logos_priority"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "prev_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "prev_movie_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "movie_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "prev_series_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "series_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "position"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "stalker_token"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "user_agent"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "are_new_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "are_new_movie_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "are_new_series_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v43

    if-eqz v43, :cond_27

    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v47

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v48

    move/from16 v43, v2

    move/from16 v89, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v44, 0x1

    if-eqz v2, :cond_0

    move/from16 v49, v44

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_0
    const/16 v49, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_1

    move/from16 v50, v44

    goto :goto_3

    :cond_1
    const/16 v50, 0x0

    :goto_3
    invoke-interface {v1, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_2

    move/from16 v51, v44

    goto :goto_4

    :cond_2
    const/16 v51, 0x0

    :goto_4
    invoke-interface {v1, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v53

    move v4, v2

    move/from16 v55, v3

    invoke-interface {v1, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v52, v55

    if-eqz v2, :cond_3

    move/from16 v55, v44

    goto :goto_5

    :cond_3
    const/16 v55, 0x0

    :goto_5
    invoke-interface {v1, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_4

    move/from16 v56, v44

    goto :goto_6

    :cond_4
    const/16 v56, 0x0

    :goto_6
    invoke-interface {v1, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_5

    move/from16 v57, v44

    goto :goto_7

    :cond_5
    const/16 v57, 0x0

    :goto_7
    invoke-interface {v1, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_6

    move/from16 v58, v44

    goto :goto_8

    :cond_6
    const/16 v58, 0x0

    :goto_8
    invoke-interface {v1, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_7

    move/from16 v59, v44

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_7
    const/16 v59, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v1, v14}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v3, p1

    move/from16 v90, v4

    move/from16 p1, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v16

    const/16 v61, 0x0

    if-eqz v16, :cond_8

    move-object/from16 v62, v61

    :goto_b
    move/from16 v2, v17

    goto :goto_c

    :cond_8
    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v62, v16

    goto :goto_b

    :goto_c
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v63, v61

    :goto_d
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_e

    :cond_9
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v63

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v63, v17

    goto :goto_d

    :goto_e
    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v91, v2

    move/from16 v18, v3

    move-object/from16 v64, v61

    :goto_f
    move/from16 v2, v19

    move/from16 v19, v4

    goto :goto_10

    :cond_a
    move/from16 v91, v2

    move/from16 v18, v3

    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v64, v2

    goto :goto_f

    :goto_10
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v65, v3

    move/from16 v4, v20

    move/from16 v20, v2

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v92, v4

    move/from16 v3, v21

    move/from16 v21, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v22

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_b

    move/from16 v66, v2

    move/from16 v22, v3

    move-object/from16 v2, v61

    goto :goto_11

    :cond_b
    move/from16 v66, v2

    move/from16 v22, v3

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_11
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v68

    move/from16 v2, v23

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move/from16 v67, v4

    move-object/from16 v69, v61

    :goto_12
    move/from16 v3, v24

    goto :goto_13

    :cond_c
    move/from16 v67, v4

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v69, v3

    goto :goto_12

    :goto_13
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v70, v61

    :goto_14
    move/from16 v4, v25

    goto :goto_15

    :cond_d
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v70, v4

    goto :goto_14

    :goto_15
    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_e

    move/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v2, v61

    goto :goto_16

    :cond_e
    move/from16 v23, v2

    move/from16 v24, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_16
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v71

    move/from16 v2, v26

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v25, v4

    move-object/from16 v72, v61

    :goto_17
    move/from16 v3, v27

    goto :goto_18

    :cond_f
    move/from16 v25, v4

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v72, v3

    goto :goto_17

    :goto_18
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v26, v5

    move-object/from16 v73, v61

    move/from16 v27, v3

    move/from16 v4, v28

    move v5, v2

    goto :goto_19

    :cond_10
    move/from16 v26, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v73, v4

    move v5, v2

    move/from16 v27, v3

    move/from16 v4, v28

    :goto_19
    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_11

    move/from16 v74, v44

    :goto_1a
    move/from16 v28, v4

    move/from16 v2, v29

    goto :goto_1b

    :cond_11
    const/16 v74, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_12

    move/from16 v75, v44

    :goto_1c
    move/from16 v3, v30

    goto :goto_1d

    :cond_12
    const/16 v75, 0x0

    goto :goto_1c

    :goto_1d
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v29, v5

    move-object/from16 v4, v61

    goto :goto_1e

    :cond_13
    move/from16 v29, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1e
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ˈʿ(Ljava/lang/Integer;)Lˉʾ/ᵎⁱ;

    move-result-object v76

    if-eqz v76, :cond_26

    move/from16 v4, v31

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v2

    move/from16 v30, v3

    move-object/from16 v2, v61

    goto :goto_1f

    :cond_14
    move v5, v2

    move/from16 v30, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1f
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v77
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Expected NON-NULL \'ar.tvplayer.core.`data`.db.entities.GroupsSorting\', but it was NULL."

    if-eqz v77, :cond_25

    move/from16 v3, v32

    :try_start_1
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_15

    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v4, v61

    goto :goto_20

    :cond_15
    move/from16 v31, v4

    move/from16 v32, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_20
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v78

    if-eqz v78, :cond_24

    move/from16 v4, v33

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v33, v6

    move-object/from16 v5, v61

    goto :goto_21

    :cond_16
    move/from16 v33, v6

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_21
    invoke-static {v5}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v79

    if-eqz v79, :cond_23

    move/from16 v5, v34

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v3

    move/from16 v34, v4

    move-object/from16 v3, v61

    goto :goto_22

    :cond_17
    move v6, v3

    move/from16 v34, v4

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_22
    invoke-static {v3}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v80

    if-eqz v80, :cond_22

    move/from16 v3, v35

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v35, v5

    move-object/from16 v4, v61

    goto :goto_23

    :cond_18
    move/from16 v35, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_23
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v81

    if-eqz v81, :cond_21

    move/from16 v4, v36

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_19

    move/from16 v36, v6

    move-object/from16 v5, v61

    goto :goto_24

    :cond_19
    move/from16 v36, v6

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_24
    invoke-static {v5}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v82

    if-eqz v82, :cond_20

    move/from16 v5, v37

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v6, v3

    move-object/from16 v83, v61

    :goto_25
    move/from16 v2, v38

    goto :goto_26

    :cond_1a
    move v6, v3

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v83, v2

    goto :goto_25

    :goto_26
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v84, v61

    :goto_27
    move/from16 v3, v39

    goto :goto_28

    :cond_1b
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v84, v3

    goto :goto_27

    :goto_28
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_1c

    :goto_29
    move/from16 v37, v0

    move/from16 v38, v2

    move/from16 v39, v3

    move/from16 v0, v40

    move-object/from16 v85, v61

    goto :goto_2a

    :cond_1c
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v61

    goto :goto_29

    :goto_2a
    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_1d

    move/from16 v86, v44

    :goto_2b
    move/from16 v40, v4

    move/from16 v2, v41

    goto :goto_2c

    :cond_1d
    const/16 v86, 0x0

    goto :goto_2b

    :goto_2c
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_1e

    move/from16 v87, v44

    :goto_2d
    move/from16 v41, v5

    move/from16 v3, v42

    goto :goto_2e

    :cond_1e
    const/16 v87, 0x0

    goto :goto_2d

    :goto_2e
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_1f

    move/from16 v88, v44

    goto :goto_2f

    :cond_1f
    const/16 v88, 0x0

    :goto_2f
    new-instance v44, Lˉʾ/ᐧᴵ;

    move/from16 v61, v19

    invoke-direct/range {v44 .. v88}, Lˉʾ/ᐧᴵ;-><init>(JLjava/lang/String;Ljava/lang/String;ZZZIJZZZZZLjava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;IIILᵔᵔ/ʽ;Ljava/lang/Integer;Ljava/lang/String;Lᵔᵔ/ʽ;Ljava/lang/Integer;Ljava/lang/Integer;ZZLˉʾ/ᵎⁱ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v4, v44

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v35

    move/from16 v35, v6

    move/from16 v6, v33

    move/from16 v33, v34

    move/from16 v34, v4

    move/from16 v5, p1

    move/from16 v42, v3

    move/from16 p1, v18

    move/from16 v19, v20

    move/from16 v16, v21

    move/from16 v21, v22

    move/from16 v22, v26

    move/from16 v26, v29

    move/from16 v29, v32

    move/from16 v32, v36

    move/from16 v18, v37

    move/from16 v36, v40

    move/from16 v37, v41

    move/from16 v3, v89

    move/from16 v4, v90

    move/from16 v20, v92

    move/from16 v40, v0

    move/from16 v41, v2

    move/from16 v0, v17

    move/from16 v2, v43

    move/from16 v17, v91

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_30

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Expected NON-NULL \'ar.tvplayer.core.`data`.db.entities.LogosPriority\', but it was NULL."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_27
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_30
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private final ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .prologue
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v1, "\n        SELECT m.id, m.playlist_id, p.name playlist_name, p.position playlist_position, m.category_id, m.xc_id, m.stalker_id,\n        m.name, length(m.image) image_length, NULL stalker_poster_url, m.rating, m.added_time, m.position_in_playlist, m.is_favorite\n        FROM movies m\n        INNER JOIN playlists p ON m.playlist_id == p.id\n        LEFT OUTER JOIN movie_categories c ON m.category_id == c.id\n        WHERE m.deleted_time IS NULL\n            AND c.deleted_time IS NULL\n            AND p.is_enabled == 1\n            AND IFNULL(c.is_visible, 1) == 1\n            AND m.last_turn_on_time > 0\n        ORDER BY m.last_turn_on_time DESC\n        LIMIT 100\n        "

    invoke-interface {v0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v1, v9}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_1
    const/4 v10, 0x4

    invoke-interface {v1, v10}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v10, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v1, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :goto_2
    const/4 v12, 0x5

    invoke-interface {v1, v12}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v12, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v1, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_3
    const/4 v13, 0x6

    invoke-interface {v1, v13}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, 0x0

    goto :goto_4

    :cond_3
    invoke-interface {v1, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :goto_4
    const/4 v14, 0x7

    invoke-interface {v1, v14}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    invoke-interface {v1, v15}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    invoke-interface {v1, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    goto :goto_6

    :cond_5
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    :goto_6
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v18, v12

    const/4 v3, 0x0

    goto :goto_7

    :cond_6
    move-object/from16 v18, v12

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getDouble(I)D

    move-result-wide v11

    double-to-float v3, v11

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_7
    const/16 v11, 0xb

    invoke-interface {v1, v11}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v11, 0x0

    goto :goto_8

    :cond_7
    invoke-interface {v1, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :goto_8
    const/16 v12, 0xc

    invoke-interface {v1, v12}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/4 v2, 0x0

    goto :goto_9

    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-interface {v1, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_9
    const/16 v3, 0xd

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v12, v2

    const/4 v2, 0x0

    goto :goto_a

    :cond_9
    move-object v12, v2

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_b
    const/16 v17, 0x0

    :goto_c
    new-instance v3, Lˉʾ/ˑٴ;

    move-object/from16 v16, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v16

    move-object/from16 v16, v20

    invoke-direct/range {v3 .. v19}, Lˉʾ/ˑٴ;-><init>(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_d
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private final ﾞʻ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 93

    .prologue
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v1, "SELECT * FROM playlists"

    invoke-interface {v0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v2, "name"

    invoke-static {v1, v2}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    invoke-static {v1, v3}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const-string v4, "is_vod"

    invoke-static {v1, v4}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_enabled"

    invoke-static {v1, v5}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "auto_update"

    invoke-static {v1, v6}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "update_interval_hours"

    invoke-static {v1, v7}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const-string v8, "last_update_time"

    invoke-static {v1, v8}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v8

    const-string v9, "include_tv_channels"

    invoke-static {v1, v9}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v9

    const-string v10, "include_vod"

    invoke-static {v1, v10}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_expanded"

    invoke-static {v1, v11}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_expanded_in_movies"

    invoke-static {v1, v12}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "is_expanded_in_series"

    invoke-static {v1, v13}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    const-string v14, "tvg_urls"

    invoke-static {v1, v14}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v14

    const-string v15, "tvg_shift"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 p1, v15

    const-string v15, "server_timezone"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "expiration_date"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "max_connections"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    const-string v15, "channel_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v19, v15

    const-string v15, "movie_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v20, v15

    const-string v15, "series_count"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v21, v15

    const-string v15, "catchup_type"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v22, v15

    const-string v15, "catchup_hours"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v23, v15

    const-string v15, "catchup_source"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v24, v15

    const-string v15, "user_catchup_type"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v25, v15

    const-string v15, "user_catchup_hours"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v26, v15

    const-string v15, "user_catchup_time_offset"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v27, v15

    const-string v15, "is_visible_in_all_channels"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v28, v15

    const-string v15, "is_visible_in_all_favorites"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v29, v15

    const-string v15, "logos_priority"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v30, v15

    const-string v15, "prev_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v31, v15

    const-string v15, "groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v32, v15

    const-string v15, "prev_movie_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v33, v15

    const-string v15, "movie_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v34, v15

    const-string v15, "prev_series_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v35, v15

    const-string v15, "series_groups_sorting"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v36, v15

    const-string v15, "position"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v37, v15

    const-string v15, "stalker_token"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v15

    const-string v15, "user_agent"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v39, v15

    const-string v15, "are_new_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v40, v15

    const-string v15, "are_new_movie_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v41, v15

    const-string v15, "are_new_series_groups_visible"

    invoke-static {v1, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    move/from16 v42, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v43

    if-eqz v43, :cond_27

    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v45

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v47

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v48

    move/from16 v43, v2

    move/from16 v89, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v44, 0x1

    if-eqz v2, :cond_0

    move/from16 v49, v44

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_0
    const/16 v49, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_1

    move/from16 v50, v44

    goto :goto_3

    :cond_1
    const/16 v50, 0x0

    :goto_3
    invoke-interface {v1, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_2

    move/from16 v51, v44

    goto :goto_4

    :cond_2
    const/16 v51, 0x0

    :goto_4
    invoke-interface {v1, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v53

    move v4, v2

    move/from16 v55, v3

    invoke-interface {v1, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v52, v55

    if-eqz v2, :cond_3

    move/from16 v55, v44

    goto :goto_5

    :cond_3
    const/16 v55, 0x0

    :goto_5
    invoke-interface {v1, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_4

    move/from16 v56, v44

    goto :goto_6

    :cond_4
    const/16 v56, 0x0

    :goto_6
    invoke-interface {v1, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_5

    move/from16 v57, v44

    goto :goto_7

    :cond_5
    const/16 v57, 0x0

    :goto_7
    invoke-interface {v1, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_6

    move/from16 v58, v44

    goto :goto_8

    :cond_6
    const/16 v58, 0x0

    :goto_8
    invoke-interface {v1, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_7

    move/from16 v59, v44

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_7
    const/16 v59, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v1, v14}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v60

    move/from16 v3, p1

    move/from16 v90, v4

    move/from16 p1, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v16

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v16

    const/16 v61, 0x0

    if-eqz v16, :cond_8

    move-object/from16 v62, v61

    :goto_b
    move/from16 v2, v17

    goto :goto_c

    :cond_8
    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v62, v16

    goto :goto_b

    :goto_c
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v63, v61

    :goto_d
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_e

    :cond_9
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v63

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v63, v17

    goto :goto_d

    :goto_e
    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    move/from16 v91, v2

    move/from16 v18, v3

    move-object/from16 v64, v61

    :goto_f
    move/from16 v2, v19

    move/from16 v19, v4

    goto :goto_10

    :cond_a
    move/from16 v91, v2

    move/from16 v18, v3

    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v64, v2

    goto :goto_f

    :goto_10
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v65, v3

    move/from16 v4, v20

    move/from16 v20, v2

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    move/from16 v92, v4

    move/from16 v3, v21

    move/from16 v21, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v22

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_b

    move/from16 v66, v2

    move/from16 v22, v3

    move-object/from16 v2, v61

    goto :goto_11

    :cond_b
    move/from16 v66, v2

    move/from16 v22, v3

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_11
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v68

    move/from16 v2, v23

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move/from16 v67, v4

    move-object/from16 v69, v61

    :goto_12
    move/from16 v3, v24

    goto :goto_13

    :cond_c
    move/from16 v67, v4

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v69, v3

    goto :goto_12

    :goto_13
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v70, v61

    :goto_14
    move/from16 v4, v25

    goto :goto_15

    :cond_d
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v70, v4

    goto :goto_14

    :goto_15
    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_e

    move/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v2, v61

    goto :goto_16

    :cond_e
    move/from16 v23, v2

    move/from16 v24, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_16
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ٴʼ(Ljava/lang/Integer;)Lᵔᵔ/ʽ;

    move-result-object v71

    move/from16 v2, v26

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move/from16 v25, v4

    move-object/from16 v72, v61

    :goto_17
    move/from16 v3, v27

    goto :goto_18

    :cond_f
    move/from16 v25, v4

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v72, v3

    goto :goto_17

    :goto_18
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move/from16 v26, v5

    move-object/from16 v73, v61

    move/from16 v27, v3

    move/from16 v4, v28

    move v5, v2

    goto :goto_19

    :cond_10
    move/from16 v26, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v73, v4

    move v5, v2

    move/from16 v27, v3

    move/from16 v4, v28

    :goto_19
    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_11

    move/from16 v74, v44

    :goto_1a
    move/from16 v28, v4

    move/from16 v2, v29

    goto :goto_1b

    :cond_11
    const/16 v74, 0x0

    goto :goto_1a

    :goto_1b
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_12

    move/from16 v75, v44

    :goto_1c
    move/from16 v3, v30

    goto :goto_1d

    :cond_12
    const/16 v75, 0x0

    goto :goto_1c

    :goto_1d
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v29, v5

    move-object/from16 v4, v61

    goto :goto_1e

    :cond_13
    move/from16 v29, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1e
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ˈʿ(Ljava/lang/Integer;)Lˉʾ/ᵎⁱ;

    move-result-object v76

    if-eqz v76, :cond_26

    move/from16 v4, v31

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v2

    move/from16 v30, v3

    move-object/from16 v2, v61

    goto :goto_1f

    :cond_14
    move v5, v2

    move/from16 v30, v3

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1f
    invoke-static {v2}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v77
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Expected NON-NULL \'ar.tvplayer.core.`data`.db.entities.GroupsSorting\', but it was NULL."

    if-eqz v77, :cond_25

    move/from16 v3, v32

    :try_start_1
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_15

    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v4, v61

    goto :goto_20

    :cond_15
    move/from16 v31, v4

    move/from16 v32, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_20
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v78

    if-eqz v78, :cond_24

    move/from16 v4, v33

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v33, v6

    move-object/from16 v5, v61

    goto :goto_21

    :cond_16
    move/from16 v33, v6

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_21
    invoke-static {v5}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v79

    if-eqz v79, :cond_23

    move/from16 v5, v34

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v3

    move/from16 v34, v4

    move-object/from16 v3, v61

    goto :goto_22

    :cond_17
    move v6, v3

    move/from16 v34, v4

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_22
    invoke-static {v3}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v80

    if-eqz v80, :cond_22

    move/from16 v3, v35

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v35, v5

    move-object/from16 v4, v61

    goto :goto_23

    :cond_18
    move/from16 v35, v5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_23
    invoke-static {v4}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v81

    if-eqz v81, :cond_21

    move/from16 v4, v36

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_19

    move/from16 v36, v6

    move-object/from16 v5, v61

    goto :goto_24

    :cond_19
    move/from16 v36, v6

    invoke-interface {v1, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_24
    invoke-static {v5}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v82

    if-eqz v82, :cond_20

    move/from16 v5, v37

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v6, v3

    move-object/from16 v83, v61

    :goto_25
    move/from16 v2, v38

    goto :goto_26

    :cond_1a
    move v6, v3

    invoke-interface {v1, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v83, v2

    goto :goto_25

    :goto_26
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object/from16 v84, v61

    :goto_27
    move/from16 v3, v39

    goto :goto_28

    :cond_1b
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v84, v3

    goto :goto_27

    :goto_28
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_1c

    :goto_29
    move/from16 v37, v0

    move/from16 v38, v2

    move/from16 v39, v3

    move/from16 v0, v40

    move-object/from16 v85, v61

    goto :goto_2a

    :cond_1c
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v61

    goto :goto_29

    :goto_2a
    invoke-interface {v1, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    if-eqz v2, :cond_1d

    move/from16 v86, v44

    :goto_2b
    move/from16 v40, v4

    move/from16 v2, v41

    goto :goto_2c

    :cond_1d
    const/16 v86, 0x0

    goto :goto_2b

    :goto_2c
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_1e

    move/from16 v87, v44

    :goto_2d
    move/from16 v41, v5

    move/from16 v3, v42

    goto :goto_2e

    :cond_1e
    const/16 v87, 0x0

    goto :goto_2d

    :goto_2e
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_1f

    move/from16 v88, v44

    goto :goto_2f

    :cond_1f
    const/16 v88, 0x0

    :goto_2f
    new-instance v44, Lˉʾ/ᐧᴵ;

    move/from16 v61, v19

    invoke-direct/range {v44 .. v88}, Lˉʾ/ᐧᴵ;-><init>(JLjava/lang/String;Ljava/lang/String;ZZZIJZZZZZLjava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;IIILᵔᵔ/ʽ;Ljava/lang/Integer;Ljava/lang/String;Lᵔᵔ/ʽ;Ljava/lang/Integer;Ljava/lang/Integer;ZZLˉʾ/ᵎⁱ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v4, v44

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v35

    move/from16 v35, v6

    move/from16 v6, v33

    move/from16 v33, v34

    move/from16 v34, v4

    move/from16 v5, p1

    move/from16 v42, v3

    move/from16 p1, v18

    move/from16 v19, v20

    move/from16 v16, v21

    move/from16 v21, v22

    move/from16 v22, v26

    move/from16 v26, v29

    move/from16 v29, v32

    move/from16 v32, v36

    move/from16 v18, v37

    move/from16 v36, v40

    move/from16 v37, v41

    move/from16 v3, v89

    move/from16 v4, v90

    move/from16 v20, v92

    move/from16 v40, v0

    move/from16 v41, v2

    move/from16 v0, v17

    move/from16 v2, v43

    move/from16 v17, v91

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_30

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Expected NON-NULL \'ar.tvplayer.core.`data`.db.entities.LogosPriority\', but it was NULL."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_27
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v15

    :goto_30
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private final ﾞᴵ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .prologue
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v1, "\n        SELECT p.id, p.name, p.url, p.is_enabled, p.position, p.channel_count, p.movie_count, p.series_count,\n        (SELECT item_count\n            FROM movie_categories mc\n            WHERE mc.playlist_id == p.id AND mc.name == \'__all_vod_category_name__\' AND mc.deleted_time IS NULL) stalker_movie_count,\n        (SELECT item_count\n            FROM series_categories sc\n            WHERE sc.playlist_id == p.id AND sc.name == \'__all_vod_category_name__\' AND sc.deleted_time IS NULL) stalker_series_count\n        FROM playlists p\n        "

    invoke-interface {v0, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    if-eqz v8, :cond_0

    move v8, v3

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    move-object v2, v9

    goto :goto_2

    :cond_1
    invoke-interface {v1, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    const/4 v3, 0x7

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v9

    goto :goto_3

    :cond_2
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v13

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v13, v3

    :goto_3
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_4
    move-object v14, v9

    goto :goto_5

    :cond_3
    invoke-interface {v1, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v14

    long-to-int v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_4

    :goto_5
    new-instance v3, Lˉʾ/ˏᵢ;

    move-object v9, v2

    invoke-direct/range {v3 .. v14}, Lˉʾ/ˏᵢ;-><init>(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;IIILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_6
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 85

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lˑᵎ/ʻٴ;->ʾˋ:I

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0xa

    const-string v6, "SELECT COUNT(*) FROM playlists"

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    sget-object v16, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/16 v17, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "\n        SELECT COUNT(*) FROM playlists p WHERE p.is_enabled == 1 AND p.is_vod == 0\n            AND EXISTS (SELECT c.id FROM channels c WHERE c.deleted_time IS NULL AND c.playlist_id == p.id)\n        "

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v17

    :goto_1
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lˑᵎ/ʻٴ;->ˉʿ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lˑᵎ/ʻٴ;->ﾞʻ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    invoke-interface {v0, v6}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_1
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v17

    :goto_3
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    invoke-interface {v0, v6}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_2
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    long-to-int v2, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :goto_5
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lˑᵎ/ʻٴ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lˑᵎ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_6
    const-string v0, "SELECT id, channel_id, program_start_seconds FROM my_programs"

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    invoke-interface {v3, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    invoke-interface {v3, v14}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v10

    new-instance v5, Lˉʾ/ᵎᵔ;

    invoke-direct/range {v5 .. v11}, Lˉʾ/ᵎᵔ;-><init>(JJJ)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_5
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_7
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lˑᵎ/ʻٴ;->ˈ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "DELETE FROM my_programs"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_4
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_4
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_9
    const-string v0, "UPDATE movies SET last_turn_on_time = NULL WHERE last_turn_on_time > 0"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_5
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_5
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_a
    invoke-direct/range {p0 .. p1}, Lˑᵎ/ʻٴ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_b
    const-string v0, "UPDATE movies SET display_mode = 1"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_6
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_6
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_c
    const-string v0, "SELECT id FROM movies WHERE deleted_time IS NULL LIMIT 1"

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    goto :goto_9

    :cond_6
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_9
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v6, "\n        SELECT c.id, p.id playlist_id, p.name playlist_name, p.position playlist_position,\n        p.is_expanded_in_movies, p.prev_movie_groups_sorting, p.movie_groups_sorting,\n        c.stalker_id, c.stalker_genre_id, c.stalker_type, c.item_count, c.name, c.is_visible, c.position,\n        MIN(m.position_in_playlist) first_movie_position, MAX(m.added_time) max_movie_added_time\n        FROM movie_categories c\n        INNER JOIN playlists p ON p.id == c.playlist_id \n        INNER JOIN movies m ON m.category_id == c.id\n        WHERE c.deleted_time IS NULL\n            AND m.deleted_time IS NULL\n            AND p.is_enabled == 1\n            AND m.position_in_playlist != 2147483647\n        GROUP BY c.id\n        UNION\n        SELECT c.id, p.id playlist_id, p.name playlist_name, p.position playlist_position,\n        p.is_expanded_in_movies, p.prev_movie_groups_sorting, p.movie_groups_sorting,\n        c.stalker_id, c.stalker_genre_id, c.stalker_type, c.item_count, c.name, c.is_visible, c.position,\n        NULL first_movie_position, NULL max_movie_added_time\n        FROM playlists p\n        LEFT OUTER JOIN movie_categories c ON c.playlist_id == p.id AND c.deleted_time IS NULL\n        WHERE p.is_enabled == 1\n            AND c.id IS NULL\n            AND EXISTS (SELECT m.id FROM movies m WHERE m.deleted_time IS NULL AND m.playlist_id == p.id)\n        "

    invoke-interface {v0, v6}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v6

    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_a
    invoke-interface {v6}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface {v6, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v20, v17

    goto :goto_b

    :cond_7
    invoke-interface {v6, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v20, v16

    :goto_b
    invoke-interface {v6, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v21

    invoke-interface {v6, v14}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v6, v13}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v24, v17

    goto :goto_c

    :cond_8
    invoke-interface {v6, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v24, v14

    :goto_c
    invoke-interface {v6, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    if-eqz v14, :cond_9

    const/16 v25, 0x1

    goto :goto_d

    :cond_9
    move/from16 v25, v2

    :goto_d
    invoke-interface {v6, v11}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v14, v17

    goto :goto_e

    :cond_a
    invoke-interface {v6, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_e
    invoke-static {v14}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    const-string v14, "Expected NON-NULL \'ar.tvplayer.core.`data`.db.entities.GroupsSorting\', but it was NULL."

    if-eqz v26, :cond_18

    :try_start_9
    invoke-interface {v6, v10}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v11, v17

    goto :goto_f

    :cond_b
    invoke-interface {v6, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_f
    invoke-static {v11}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v27

    if-eqz v27, :cond_17

    invoke-interface {v6, v9}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v28, v17

    goto :goto_10

    :cond_c
    invoke-interface {v6, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v28, v11

    :goto_10
    invoke-interface {v6, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v29, v17

    goto :goto_11

    :cond_d
    invoke-interface {v6, v8}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v29, v11

    :goto_11
    invoke-interface {v6, v7}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v30, v17

    goto :goto_12

    :cond_e
    invoke-interface {v6, v7}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v30, v11

    :goto_12
    invoke-interface {v6, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_f

    move-object/from16 v31, v17

    goto :goto_13

    :cond_f
    invoke-interface {v6, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v31, v11

    :goto_13
    invoke-interface {v6, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_10

    move-object/from16 v32, v17

    goto :goto_14

    :cond_10
    invoke-interface {v6, v4}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v32, v11

    :goto_14
    invoke-interface {v6, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_11

    move-object/from16 v11, v17

    goto :goto_15

    :cond_11
    invoke-interface {v6, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_15
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_16

    :cond_12
    move v11, v2

    :goto_16
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v33, v11

    :goto_17
    const/16 v11, 0xd

    goto :goto_18

    :catchall_8
    move-exception v0

    goto :goto_1c

    :cond_13
    move-object/from16 v33, v17

    goto :goto_17

    :goto_18
    invoke-interface {v6, v11}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v34, v17

    goto :goto_19

    :cond_14
    invoke-interface {v6, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_19
    const/16 v3, 0xe

    invoke-interface {v6, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v35, v17

    goto :goto_1a

    :cond_15
    invoke-interface {v6, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v35, v3

    :goto_1a
    const/16 v3, 0xf

    invoke-interface {v6, v3}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v36, v17

    goto :goto_1b

    :cond_16
    invoke-interface {v6, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v36, v3

    :goto_1b
    new-instance v19, Lˉʾ/ᵔי;

    invoke-direct/range {v19 .. v36}, Lˉʾ/ᵔי;-><init>(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/Integer;ZLˉʾ/ˈٴ;Lˉʾ/ˈٴ;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    move-object/from16 v3, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto/16 :goto_a

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :cond_19
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_1c
    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_e
    const-string v0, "\n        SELECT c.id, c.playlist_id, p.name playlist_name, p.url playlist_url, p.position playlist_position,\n        c.stalker_id, c.stalker_genre_id, c.stalker_type, c.name, c.is_visible\n        FROM movie_categories c\n        INNER JOIN playlists p ON p.id == c.playlist_id \n        WHERE p.is_enabled == 1 AND c.stalker_id IS NOT NULL AND c.deleted_time IS NULL\n        "

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1d
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v19

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v21

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v3, v13}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v24

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v4, v5

    const/4 v15, 0x5

    invoke-interface {v3, v15}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v26, v17

    goto :goto_1e

    :cond_1a
    invoke-interface {v3, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v26, v5

    :goto_1e
    invoke-interface {v3, v10}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v27, v17

    goto :goto_1f

    :cond_1b
    invoke-interface {v3, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v27, v5

    :goto_1f
    invoke-interface {v3, v9}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v28, v17

    goto :goto_20

    :cond_1c
    invoke-interface {v3, v9}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    :goto_20
    invoke-interface {v3, v8}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v29

    invoke-interface {v3, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_1d

    const/16 v30, 0x1

    goto :goto_21

    :cond_1d
    move/from16 v30, v2

    :goto_21
    new-instance v18, Lˉʾ/ˆﾞ;

    move/from16 v25, v4

    invoke-direct/range {v18 .. v30}, Lˉʾ/ˆﾞ;-><init>(JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_1d

    :catchall_9
    move-exception v0

    goto :goto_22

    :cond_1e
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_22
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_f
    const-string v0, "DELETE FROM history_programs"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_b
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_a
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_10
    const-string v0, "SELECT channel_id FROM channel_tvg_bindings"

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    goto :goto_23

    :catchall_b
    move-exception v0

    goto :goto_24

    :cond_1f
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_24
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_11
    const-string v0, "\n        SELECT b.channel_id, b.tvg_channel_id, t.xmltv_channel_id, t.icon_url, t.tvg_source_id\n        FROM channel_tvg_bindings b\n        INNER JOIN tvg_channels t ON b.tvg_channel_id == t.id\n        "

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_25
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v6

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v8

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v13}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v10, v17

    goto :goto_26

    :cond_20
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v10, v4

    :goto_26
    new-instance v5, Lˉʾ/ʼʼ;

    invoke-direct/range {v5 .. v12}, Lˉʾ/ʼʼ;-><init>(JJLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    goto :goto_25

    :catchall_c
    move-exception v0

    goto :goto_27

    :cond_21
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_27
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_12
    const-string v0, "DELETE FROM channel_tvg_bindings"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_e
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_d
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_13
    const-string v0, "\n        SELECT COUNT(*)\n        FROM channel_tvg_bindings b\n        INNER JOIN channels c ON c.id == b.channel_id\n        INNER JOIN playlists p ON p.id == c.playlist_id\n        WHERE c.deleted_time IS NULL AND p.is_enabled == 1 AND p.is_vod == 0\n        "

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_f
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    long-to-int v2, v4

    goto :goto_28

    :catchall_e
    move-exception v0

    goto :goto_29

    :cond_22
    :goto_28
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :goto_29
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_14
    const-string v0, "UPDATE channel_tvg_bindings SET is_tvg_updated = 0"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_10
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_f

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_f
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_15
    const-string v0, "\n        SELECT g.id, p.id playlist_id, p.name playlist_name, p.position playlist_position, p.is_expanded,\n        p.prev_groups_sorting, p.groups_sorting, g.name group_name, o.custom_group_name, g.is_custom,\n        MIN(c.position_in_playlist) position_in_playlist, o.is_visible, o.position manual_position, o.id options_id\n        FROM channel_groups g\n        LEFT OUTER JOIN playlists p ON p.id == g.playlist_id\n        LEFT OUTER JOIN channels c ON c.original_group_id == g.id\n        LEFT OUTER JOIN channel_group_options o ON o.group_id == g.id\n        WHERE g.deleted_time IS NULL AND c.deleted_time IS NULL AND IFNULL(p.is_enabled, 1) == 1\n        GROUP BY g.id\n        UNION\n        SELECT g.id, p.id playlist_id, p.name playlist_name, p.position playlist_position, p.is_expanded,\n        p.prev_groups_sorting, p.groups_sorting, g.name group_name, NULL custom_group_name, g.is_custom,\n        0 position_in_playlist, NULL is_visible, NULL manual_position, NULL options_id\n        FROM playlists p\n        LEFT OUTER JOIN channel_groups g ON g.playlist_id == p.id AND g.deleted_time IS NULL\n        WHERE p.is_enabled == 1\n            AND g.id IS NULL\n            AND EXISTS (SELECT c.id FROM channels c WHERE c.playlist_id == p.id AND c.deleted_time IS NULL)\n        "

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2a
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v20, v17

    :goto_2b
    const/4 v4, 0x1

    goto :goto_2c

    :cond_23
    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_2b

    :goto_2c
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_24

    move-object/from16 v21, v17

    :goto_2d
    const/4 v4, 0x2

    goto :goto_2e

    :cond_24
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_2d

    :goto_2e
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_25

    move-object/from16 v22, v17

    goto :goto_2f

    :cond_25
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    :goto_2f
    invoke-interface {v3, v13}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object/from16 v23, v17

    :goto_30
    const/4 v5, 0x4

    goto :goto_31

    :cond_26
    invoke-interface {v3, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v23, v5

    goto :goto_30

    :goto_31
    invoke-interface {v3, v5}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_27

    move-object/from16 v12, v17

    goto :goto_32

    :cond_27
    invoke-interface {v3, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_32
    if-eqz v12, :cond_29

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-eqz v12, :cond_28

    const/4 v12, 0x1

    goto :goto_33

    :cond_28
    move v12, v2

    :goto_33
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v24, v12

    :goto_34
    const/4 v15, 0x5

    goto :goto_35

    :catchall_10
    move-exception v0

    goto/16 :goto_45

    :cond_29
    move-object/from16 v24, v17

    goto :goto_34

    :goto_35
    invoke-interface {v3, v15}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2a

    move-object/from16 v12, v17

    goto :goto_36

    :cond_2a
    invoke-interface {v3, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_36
    invoke-static {v12}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v25

    invoke-interface {v3, v10}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    move-object/from16 v12, v17

    goto :goto_37

    :cond_2b
    invoke-interface {v3, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_37
    invoke-static {v12}, Lﹳˋ/ʼˎ;->ᵔٴ(Ljava/lang/Integer;)Lˉʾ/ˈٴ;

    move-result-object v26

    invoke-interface {v3, v9}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2c

    move-object/from16 v27, v17

    goto :goto_38

    :cond_2c
    invoke-interface {v3, v9}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v27, v12

    :goto_38
    invoke-interface {v3, v8}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2d

    move-object/from16 v28, v17

    goto :goto_39

    :cond_2d
    invoke-interface {v3, v8}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v28, v12

    :goto_39
    invoke-interface {v3, v7}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    if-eqz v12, :cond_2e

    const/16 v29, 0x1

    :goto_3a
    const/16 v4, 0xa

    goto :goto_3b

    :cond_2e
    move/from16 v29, v2

    goto :goto_3a

    :goto_3b
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2f

    move-object/from16 v30, v17

    :goto_3c
    const/16 v12, 0xb

    goto :goto_3d

    :cond_2f
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v30, v12

    goto :goto_3c

    :goto_3d
    invoke-interface {v3, v12}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_30

    move-object/from16 v13, v17

    goto :goto_3e

    :cond_30
    invoke-interface {v3, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_3e
    if-eqz v13, :cond_32

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-eqz v13, :cond_31

    const/4 v13, 0x1

    goto :goto_3f

    :cond_31
    move v13, v2

    :goto_3f
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v31, v13

    :goto_40
    const/16 v6, 0xc

    goto :goto_41

    :cond_32
    move-object/from16 v31, v17

    goto :goto_40

    :goto_41
    invoke-interface {v3, v6}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_33

    move-object/from16 v32, v17

    :goto_42
    const/16 v13, 0xd

    goto :goto_43

    :cond_33
    invoke-interface {v3, v6}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v32, v13

    goto :goto_42

    :goto_43
    invoke-interface {v3, v13}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_34

    move-object/from16 v33, v17

    goto :goto_44

    :cond_34
    invoke-interface {v3, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v33, v14

    :goto_44
    new-instance v19, Lˉʾ/ﾞʻ;

    invoke-direct/range {v19 .. v33}, Lˉʾ/ﾞʻ;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lˉʾ/ˈٴ;Lˉʾ/ˈٴ;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Long;)V

    move-object/from16 v14, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    move v5, v4

    const/4 v13, 0x3

    goto/16 :goto_2a

    :cond_35
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_45
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_16
    const-string v0, "SELECT id, xc_id, playlist_id, url FROM channels WHERE deleted_time IS NULL"

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_46
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v19

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_36

    move-object/from16 v21, v17

    :goto_47
    const/4 v4, 0x2

    goto :goto_48

    :cond_36
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v5

    long-to-int v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_47

    :goto_48
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v22

    const/4 v11, 0x3

    invoke-interface {v3, v11}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v24

    new-instance v18, Lˉʾ/ˑﹳ;

    invoke-direct/range {v18 .. v24}, Lˉʾ/ˑﹳ;-><init>(JLjava/lang/Integer;JLjava/lang/String;)V

    move-object/from16 v5, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_11

    goto :goto_46

    :catchall_11
    move-exception v0

    goto :goto_49

    :cond_37
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v0

    :goto_49
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_17
    const-string v0, "UPDATE channels SET watch_time = 0"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_13
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_12

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_12
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_18
    const-string v0, "UPDATE channels SET audio_offset = NULL"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_14
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_13

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_13
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_19
    const-string v0, "\n        SELECT channels.id\n        FROM channels\n        LEFT OUTER JOIN playlists\n        LEFT OUTER JOIN channel_group_options\n        LEFT OUTER JOIN channel_manual_positions\n        LIMIT 1\n        "

    move-object/from16 v3, p1

    check-cast v3, Lﹳᴵ/ﹳٴ;

    invoke-interface {v3, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    :try_start_15
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_4a

    :cond_38
    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    goto :goto_4a

    :catchall_14
    move-exception v0

    goto :goto_4b

    :cond_39
    :goto_4a
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v17

    :goto_4b
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1a
    const-string v0, "UPDATE channels SET display_mode = 1"

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    invoke-interface {v2, v0}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_16
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_15

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v16

    :catchall_15
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v2, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    invoke-interface {v0, v2}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    :try_start_17
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    invoke-static {v0}, Lٴˑ/ﾞᴵ;->ʼˎ(Lﹳᴵ/ﹳٴ;)I

    move-result v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_16

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_16
    move-exception v0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Lﹳᴵ/ﹳٴ;

    const-string v3, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    invoke-interface {v0, v3}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v3

    const/16 v0, 0xc8

    int-to-long v4, v0

    const/4 v0, 0x1

    :try_start_18
    invoke-interface {v3, v0, v4, v5}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    const-string v4, "id"

    invoke-static {v3, v4}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v4

    const-string v5, "state"

    invoke-static {v3, v5}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "worker_class_name"

    invoke-static {v3, v6}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input_merger_class_name"

    invoke-static {v3, v7}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const-string v8, "input"

    invoke-static {v3, v8}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v8

    const-string v9, "output"

    invoke-static {v3, v9}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v9

    const-string v10, "initial_delay"

    invoke-static {v3, v10}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v10

    const-string v11, "interval_duration"

    invoke-static {v3, v11}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "flex_duration"

    invoke-static {v3, v12}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "run_attempt_count"

    invoke-static {v3, v13}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_policy"

    invoke-static {v3, v14}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v14

    const-string v15, "backoff_delay_duration"

    invoke-static {v3, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    const-string v0, "last_enqueue_time"

    invoke-static {v3, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v2, "minimum_retention_duration"

    invoke-static {v3, v2}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v2

    const-string v1, "schedule_requested_at"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "run_in_foreground"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "period_count"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "generation"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "stop_reason"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "trace_tag"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "backoff_on_system_interruptions"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "required_network_type"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "required_network_request"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_charging"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "requires_device_idle"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v34, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v3, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v35, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_4c
    invoke-interface {v3}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v36

    if-eqz v36, :cond_43

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v37, v1

    move/from16 v36, v2

    invoke-interface {v3, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lᴵˋ/ˊʻ;->ʾˋ(I)Lᴵˋ/ˈٴ;

    move-result-object v40

    invoke-interface {v3, v6}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v41

    invoke-interface {v3, v7}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v42

    invoke-interface {v3, v8}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    invoke-static {v1}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v43

    invoke-interface {v3, v9}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v44

    invoke-interface {v3, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v45

    invoke-interface {v3, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v47

    invoke-interface {v3, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v49

    invoke-interface {v3, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v52, v1

    invoke-interface {v3, v14}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lᴵˋ/ˊʻ;->ʾᵎ(I)I

    move-result v53

    invoke-interface {v3, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v54

    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v56

    move/from16 v1, v36

    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v58

    move/from16 v2, p1

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v60

    move/from16 p1, v0

    move/from16 v36, v1

    move/from16 v0, v18

    move/from16 v18, v2

    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz v1, :cond_3a

    const/16 v62, 0x1

    :goto_4d
    move v2, v4

    move/from16 v1, v19

    move/from16 v19, v5

    goto :goto_4e

    :cond_3a
    const/16 v62, 0x0

    goto :goto_4d

    :goto_4e
    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lᴵˋ/ˊʻ;->ᵢˏ(I)I

    move-result v63

    move v5, v0

    move/from16 v4, v20

    move/from16 v20, v1

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v72, v5

    move/from16 v1, v21

    move/from16 v21, v4

    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v5, v22

    invoke-interface {v3, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v66

    move/from16 v64, v0

    move/from16 v22, v2

    move/from16 v0, v23

    move/from16 v23, v1

    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    move/from16 v68, v1

    move/from16 v2, v24

    move/from16 v24, v0

    invoke-interface {v3, v2}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v1, v25

    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_3b

    move-object/from16 v70, v17

    :goto_4f
    move/from16 v69, v0

    move/from16 v0, v26

    goto :goto_50

    :cond_3b
    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v70, v25

    goto :goto_4f

    :goto_50
    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_3c

    move/from16 v26, v1

    move/from16 v25, v2

    move-object/from16 v1, v17

    goto :goto_51

    :cond_3c
    move/from16 v26, v1

    move/from16 v25, v2

    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_51
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    goto :goto_52

    :cond_3d
    const/4 v1, 0x0

    :goto_52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v71, v1

    :goto_53
    move/from16 v65, v4

    move v2, v5

    move/from16 v1, v27

    goto :goto_54

    :catchall_17
    move-exception v0

    goto/16 :goto_5d

    :cond_3e
    move-object/from16 v71, v17

    goto :goto_53

    :goto_54
    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lᴵˋ/ˊʻ;->ʼʼ(I)I

    move-result v75

    move/from16 v4, v28

    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lᴵˋ/ˊʻ;->ᵔٴ([B)Lˆﹶ/ᵔᵢ;

    move-result-object v74

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v5, v29

    invoke-interface {v3, v5}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_3f

    const/16 v76, 0x1

    :goto_55
    move/from16 v29, v2

    move/from16 v0, v30

    goto :goto_56

    :cond_3f
    const/16 v76, 0x0

    goto :goto_55

    :goto_56
    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    if-eqz v1, :cond_40

    const/16 v77, 0x1

    :goto_57
    move v2, v4

    move/from16 v30, v5

    move/from16 v1, v31

    goto :goto_58

    :cond_40
    const/16 v77, 0x0

    goto :goto_57

    :goto_58
    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    if-eqz v4, :cond_41

    const/16 v78, 0x1

    :goto_59
    move v5, v0

    move/from16 v31, v1

    move/from16 v4, v32

    goto :goto_5a

    :cond_41
    const/16 v78, 0x0

    goto :goto_59

    :goto_5a
    invoke-interface {v3, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_42

    const/16 v79, 0x1

    :goto_5b
    move/from16 v0, v33

    goto :goto_5c

    :cond_42
    const/16 v79, 0x0

    goto :goto_5b

    :goto_5c
    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v80

    move/from16 v1, v34

    invoke-interface {v3, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v82

    move/from16 v33, v0

    move/from16 v0, v35

    invoke-interface {v3, v0}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lᴵˋ/ˊʻ;->ʽ([B)Ljava/util/LinkedHashSet;

    move-result-object v84

    new-instance v51, Lᴵˋ/ˑﹳ;

    move-object/from16 v73, v51

    invoke-direct/range {v73 .. v84}, Lᴵˋ/ˑﹳ;-><init>(Lˆﹶ/ᵔᵢ;IZZZZJJLjava/util/LinkedHashSet;)V

    move-object/from16 v51, v73

    new-instance v38, Lˑᵎ/ﹳᐧ;

    invoke-direct/range {v38 .. v71}, Lˑᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIIJIILjava/lang/String;Ljava/lang/Boolean;)V

    move/from16 v35, v0

    move-object/from16 v0, v38

    move/from16 v34, v1

    move-object/from16 v1, v37

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    move/from16 v0, p1

    move/from16 v32, v4

    move/from16 p1, v18

    move/from16 v4, v22

    move/from16 v22, v29

    move/from16 v29, v30

    move/from16 v18, v72

    move/from16 v30, v5

    move/from16 v5, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v2

    move/from16 v2, v36

    goto/16 :goto_4c

    :cond_43
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :goto_5d
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

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
