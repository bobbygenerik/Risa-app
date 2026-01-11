.class public final synthetic Lˑᵎ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʾˋ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˑᵎ/יـ;->ʾˋ:I

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 84

    .prologue
    move-object/from16 v1, p0

    iget v0, v1, Lˑᵎ/יـ;->ʾˋ:I

    move-object/from16 v2, p1

    check-cast v2, Lﹳᴵ/ﹳٴ;

    const-string v3, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    invoke-interface {v2, v3}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object v2

    int-to-long v3, v0

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v2, v0, v3, v4}, Lﹳᴵ/ʽ;->ﾞᴵ(IJ)V

    const-string v3, "id"

    invoke-static {v2, v3}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v3

    const-string v4, "state"

    invoke-static {v2, v4}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v2, v5}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v2, v6}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v2, v7}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v2, v8}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v2, v9}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v2, v10}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v2, v11}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v2, v12}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v2, v13}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v2, v14}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v2, v15}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v15

    const-string v0, "minimum_retention_duration"

    invoke-static {v2, v0}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0

    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "backoff_on_system_interruptions"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lٴˑ/ﾞᴵ;->ﾞᴵ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v1

    move/from16 v34, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v2}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v35

    if-eqz v35, :cond_9

    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v37

    move/from16 v35, v0

    move-object/from16 v70, v1

    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ʾˋ(I)Lᴵˋ/ˈٴ;

    move-result-object v38

    invoke-interface {v2, v5}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v2, v6}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v40

    invoke-interface {v2, v7}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v41

    invoke-interface {v2, v8}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v42

    invoke-interface {v2, v9}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v43

    invoke-interface {v2, v10}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v45

    invoke-interface {v2, v11}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v47

    invoke-interface {v2, v12}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v50, v0

    invoke-interface {v2, v13}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ʾᵎ(I)I

    move-result v51

    invoke-interface {v2, v14}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v52

    invoke-interface {v2, v15}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v54

    move/from16 v0, v35

    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v56

    move/from16 v1, v16

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v58

    move/from16 v35, v0

    move/from16 v16, v3

    move/from16 v0, v17

    move/from16 v17, v4

    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_0

    const/16 v60, 0x1

    :goto_1
    move/from16 v3, v18

    move/from16 v18, v5

    goto :goto_2

    :cond_0
    const/16 v60, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Lᴵˋ/ˊʻ;->ᵢˏ(I)I

    move-result v61

    move v5, v1

    move/from16 v4, v19

    move/from16 v19, v0

    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v71, v4

    move/from16 v1, v20

    move/from16 v20, v3

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v4, v21

    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v64

    move/from16 v62, v0

    move/from16 v63, v3

    move/from16 v0, v22

    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v22, v1

    move/from16 v4, v23

    move/from16 v23, v0

    invoke-interface {v2, v4}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    move/from16 v1, v24

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v24

    const/16 v49, 0x0

    if-eqz v24, :cond_1

    move-object/from16 v68, v49

    :goto_3
    move/from16 v67, v0

    move/from16 v0, v25

    goto :goto_4

    :cond_1
    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v68, v24

    goto :goto_3

    :goto_4
    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_2

    move/from16 v66, v3

    move/from16 v24, v4

    move-object/from16 v3, v49

    goto :goto_5

    :cond_2
    move/from16 v66, v3

    move/from16 v24, v4

    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_5
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_6

    :cond_3
    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v49

    :cond_4
    move/from16 v25, v0

    move v4, v1

    move/from16 v3, v26

    move-object/from16 v69, v49

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :goto_7
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lᴵˋ/ˊʻ;->ʼʼ(I)I

    move-result v74

    move/from16 v0, v27

    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lᴵˋ/ˊʻ;->ᵔٴ([B)Lˆﹶ/ᵔᵢ;

    move-result-object v73

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v1, v28

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_5

    const/16 v75, 0x1

    :goto_8
    move v4, v0

    move/from16 v28, v1

    move/from16 v3, v29

    goto :goto_9

    :cond_5
    const/16 v75, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_6

    const/16 v76, 0x1

    :goto_a
    move/from16 v29, v3

    move v1, v4

    move/from16 v0, v30

    goto :goto_b

    :cond_6
    const/16 v76, 0x0

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_7

    const/16 v77, 0x1

    :goto_c
    move/from16 v30, v0

    move v4, v1

    move/from16 v3, v31

    goto :goto_d

    :cond_7
    const/16 v77, 0x0

    goto :goto_c

    :goto_d
    invoke-interface {v2, v3}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_8

    const/16 v78, 0x1

    :goto_e
    move/from16 v0, v32

    goto :goto_f

    :cond_8
    const/16 v78, 0x0

    goto :goto_e

    :goto_f
    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v79

    move/from16 v1, v33

    invoke-interface {v2, v1}, Lﹳᴵ/ʽ;->getLong(I)J

    move-result-wide v81

    move/from16 v32, v0

    move/from16 v0, v34

    invoke-interface {v2, v0}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lᴵˋ/ˊʻ;->ʽ([B)Ljava/util/LinkedHashSet;

    move-result-object v83

    new-instance v49, Lᴵˋ/ˑﹳ;

    move-object/from16 v72, v49

    invoke-direct/range {v72 .. v83}, Lᴵˋ/ˑﹳ;-><init>(Lˆﹶ/ᵔᵢ;IZZZZJJLjava/util/LinkedHashSet;)V

    move-object/from16 v49, v72

    new-instance v36, Lˑᵎ/ﹳᐧ;

    invoke-direct/range {v36 .. v69}, Lˑᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIIJIILjava/lang/String;Ljava/lang/Boolean;)V

    move/from16 v34, v0

    move-object/from16 v0, v36

    move/from16 v33, v1

    move-object/from16 v1, v70

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v31, v3

    move/from16 v3, v16

    move/from16 v0, v35

    move/from16 v16, v5

    move/from16 v5, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v27

    move/from16 v27, v4

    move/from16 v4, v17

    move/from16 v17, v19

    move/from16 v19, v71

    goto/16 :goto_0

    :cond_9
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :goto_10
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method
