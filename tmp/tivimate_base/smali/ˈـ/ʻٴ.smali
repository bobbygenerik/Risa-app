.class public final Lˈـ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Landroid/net/Uri;

.field public final ﹳٴ:Lˈـ/ﾞʻ;


# direct methods
.method public constructor <init>(Lˈـ/ˉˆ;Lˈـ/ʽ;Landroid/net/Uri;)V
    .locals 38

    .prologue
    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v3, v2, Lˈـ/ʽ;->ʼˎ:Lʼʻ/ᵔי;

    const-string v4, "control"

    invoke-virtual {v3, v4}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "missing attribute control"

    invoke-static {v6, v5}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    new-instance v5, Lʽⁱ/ᵔﹳ;

    invoke-direct {v5}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget v6, v2, Lˈـ/ʽ;->ˑﹳ:I

    iget-object v7, v2, Lˈـ/ʽ;->ˆʾ:Lˈـ/ⁱˊ;

    if-lez v6, :cond_0

    iput v6, v5, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    :cond_0
    iget v10, v7, Lˈـ/ⁱˊ;->ﹳٴ:I

    iget-object v13, v7, Lˈـ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ᴵˑ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v14, "L16"

    const-string v15, "L8"

    const-string v12, "MP4A-LATM"

    const/16 v16, 0x8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    const/4 v6, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "H263-2000"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/16 v6, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "H263-1998"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "MP4V-ES"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "AMR-WB"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v8, "PCMU"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v8, "PCMA"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v8, "OPUS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v8, "H265"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move/from16 v6, v16

    goto :goto_1

    :sswitch_9
    const-string v8, "H264"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_a
    const-string v8, "VP9"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_b
    const-string v8, "VP8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_c
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_d
    const-string v8, "AMR"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_e
    const-string v8, "AC3"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_f
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_10
    const-string v8, "MPEG4-GENERIC"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v6, 0x0

    :goto_1
    const-string v8, "audio/mp4a-latm"

    const/16 v19, 0x1

    const-string v9, "audio/raw"

    const-string v11, "audio/3gpp"

    move/from16 v21, v6

    const-string v6, "video/x-vnd.on2.vp8"

    move/from16 v22, v10

    const-string v10, "video/x-vnd.on2.vp9"

    const-string v0, "video/avc"

    move-object/from16 v23, v4

    const-string v4, "video/hevc"

    const-string v1, "audio/opus"

    move-object/from16 v24, v4

    const-string v4, "audio/g711-alaw"

    move-object/from16 v25, v12

    const-string v12, "audio/g711-mlaw"

    move-object/from16 v26, v8

    const-string v8, "audio/amr-wb"

    move-object/from16 v27, v8

    const-string v8, "video/mp4v-es"

    move-object/from16 v28, v14

    const-string v14, "video/3gpp"

    move-object/from16 v29, v14

    const-string v14, "audio/ac3"

    packed-switch v21, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v30, v13

    move-object/from16 v21, v29

    goto :goto_3

    :pswitch_1
    move-object/from16 v21, v8

    :goto_2
    move-object/from16 v30, v13

    goto :goto_3

    :pswitch_2
    move-object/from16 v30, v13

    move-object/from16 v21, v27

    goto :goto_3

    :pswitch_3
    move-object/from16 v21, v12

    goto :goto_2

    :pswitch_4
    move-object/from16 v21, v4

    goto :goto_2

    :pswitch_5
    move-object/from16 v21, v1

    goto :goto_2

    :pswitch_6
    move-object/from16 v30, v13

    move-object/from16 v21, v24

    goto :goto_3

    :pswitch_7
    move-object/from16 v21, v0

    goto :goto_2

    :pswitch_8
    move-object/from16 v21, v10

    goto :goto_2

    :pswitch_9
    move-object/from16 v21, v6

    goto :goto_2

    :pswitch_a
    move-object/from16 v21, v11

    goto :goto_2

    :pswitch_b
    move-object/from16 v30, v13

    move-object/from16 v21, v14

    goto :goto_3

    :pswitch_c
    move-object/from16 v21, v9

    goto :goto_2

    :pswitch_d
    move-object/from16 v30, v13

    move-object/from16 v21, v26

    :goto_3
    invoke-static/range {v21 .. v21}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget v13, v7, Lˈـ/ⁱˊ;->ʽ:I

    move-object/from16 v31, v15

    const-string v15, "audio"

    iget-object v2, v2, Lˈـ/ʽ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v7, Lˈـ/ⁱˊ;->ˈ:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_12

    move v7, v2

    move-object/from16 v2, v21

    goto :goto_4

    :cond_12
    move-object/from16 v2, v21

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v7, 0x6

    goto :goto_4

    :cond_13
    move/from16 v7, v19

    :goto_4
    iput v13, v5, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iput v7, v5, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    goto :goto_5

    :cond_14
    move-object/from16 v2, v21

    const/4 v7, -0x1

    :goto_5
    const-string v15, "fmtp"

    invoke-virtual {v3, v15}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-nez v15, :cond_15

    sget-object v15, Lʼʻ/ᴵʼ;->ٴᵢ:Lʼʻ/ᴵʼ;

    move-object/from16 v21, v3

    move-object/from16 v33, v9

    move-object/from16 v32, v14

    goto :goto_8

    :cond_15
    sget-object v21, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    move-object/from16 v21, v3

    const-string v3, " "

    move-object/from16 v32, v14

    const/4 v14, 0x2

    invoke-virtual {v15, v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v9

    array-length v9, v3

    if-ne v9, v14, :cond_16

    move/from16 v9, v19

    goto :goto_6

    :cond_16
    const/4 v9, 0x0

    :goto_6
    invoke-static {v15, v9}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    aget-object v3, v3, v19

    const-string v9, ";\\s?"

    const/4 v14, 0x0

    invoke-virtual {v3, v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    new-instance v9, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    const/4 v15, 0x4

    invoke-direct {v9, v15}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(I)V

    array-length v15, v3

    move/from16 v18, v14

    :goto_7
    if-ge v14, v15, :cond_17

    move-object/from16 p2, v3

    aget-object v3, p2, v14

    move/from16 v34, v14

    const-string v14, "="

    move/from16 v35, v15

    const/4 v15, 0x2

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v14, v3, v18

    aget-object v3, v3, v19

    invoke-virtual {v9, v14, v3}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ʼʼ(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v14, v34, 0x1

    move-object/from16 v3, p2

    move/from16 v15, v35

    const/16 v18, 0x0

    goto :goto_7

    :cond_17
    invoke-virtual {v9}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˑﹳ()Lʼʻ/ᴵʼ;

    move-result-object v15

    :goto_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v9, "config"

    const-string v14, "profile-level-id"

    move/from16 v36, v3

    const-string v3, "missing attribute fmtp"

    move-object/from16 v37, v9

    const/16 v9, 0xf0

    sparse-switch v36, :sswitch_data_1

    goto :goto_9

    :sswitch_11
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    :sswitch_12
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9

    :sswitch_13
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x140

    iput v0, v5, Lʽⁱ/ᵔﹳ;->ˏי:I

    iput v9, v5, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    :cond_18
    :goto_9
    move/from16 v0, v19

    move-object/from16 v1, v30

    :goto_a
    const/16 v18, 0x0

    goto/16 :goto_25

    :sswitch_14
    const/16 v0, 0x140

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iput v0, v5, Lʽⁱ/ᵔﹳ;->ˏי:I

    iput v9, v5, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    goto :goto_9

    :sswitch_15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, -0x1

    if-eq v7, v0, :cond_19

    move/from16 v0, v19

    goto :goto_b

    :cond_19
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const v0, 0xbb80

    if-ne v13, v0, :cond_1a

    move/from16 v0, v19

    goto :goto_c

    :cond_1a
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Invalid OPUS clock rate."

    invoke-static {v1, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    goto :goto_9

    :sswitch_16
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move/from16 v6, v19

    move-object/from16 v1, v30

    goto/16 :goto_22

    :sswitch_17
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v15}, Lʼʻ/ᵔי;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const-string v0, "sprop-parameter-sets"

    invoke-virtual {v15, v0}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "missing sprop parameter"

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v15, v0}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const-string v1, ","

    const/4 v7, -0x1

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    move/from16 v1, v19

    goto :goto_d

    :cond_1b
    const/4 v1, 0x0

    :goto_d
    const-string v2, "empty sprop value"

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Lˈـ/ʻٴ;->ﹳٴ(Ljava/lang/String;)[B

    move-result-object v2

    aget-object v0, v0, v19

    invoke-static {v0}, Lˈـ/ʻٴ;->ﹳٴ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lʼʻ/ᵎⁱ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    iput-object v0, v5, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-virtual {v0, v1}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lʻᴵ/ﹳᐧ;->ˆʾ([BII)Lʻᴵ/ᵔﹳ;

    move-result-object v0

    iget v1, v0, Lʻᴵ/ᵔﹳ;->ᵎﹶ:F

    iput v1, v5, Lʽⁱ/ᵔﹳ;->ᵢˏ:F

    iget v1, v0, Lʻᴵ/ᵔﹳ;->ﾞᴵ:I

    iput v1, v5, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    iget v1, v0, Lʻᴵ/ᵔﹳ;->ˑﹳ:I

    iput v1, v5, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v7, v0, Lʻᴵ/ᵔﹳ;->ʼᐧ:I

    iget v8, v0, Lʻᴵ/ᵔﹳ;->ᵔﹳ:I

    iget v9, v0, Lʻᴵ/ᵔﹳ;->ﹳᐧ:I

    iget v1, v0, Lʻᴵ/ᵔﹳ;->ᵔᵢ:I

    add-int/lit8 v11, v1, 0x8

    iget v1, v0, Lʻᴵ/ᵔﹳ;->ʼˎ:I

    add-int/lit8 v12, v1, 0x8

    new-instance v6, Lʽⁱ/ʼˎ;

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lʽⁱ/ʼˎ;-><init>(III[BII)V

    iput-object v6, v5, Lʽⁱ/ᵔﹳ;->ʽʽ:Lʽⁱ/ʼˎ;

    invoke-virtual {v15, v14}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1c

    const-string v0, "avc1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    goto/16 :goto_9

    :cond_1c
    iget v1, v0, Lʻᴵ/ᵔﹳ;->ﹳٴ:I

    iget v2, v0, Lʻᴵ/ᵔﹳ;->ⁱˊ:I

    iget v0, v0, Lʻᴵ/ᵔﹳ;->ʽ:I

    invoke-static {v1, v2, v0}, Lᐧˎ/ʽ;->ﹳٴ(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    goto/16 :goto_9

    :sswitch_18
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v15}, Lʼʻ/ᵔי;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_27

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ʽﹳ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v1

    iput-object v1, v5, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    sget-object v1, Lᐧˎ/ʽ;->ﹳٴ:[B

    new-instance v1, Lᐧˎ/ﹳᐧ;

    invoke-direct {v1, v0}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    const/4 v2, 0x0

    :goto_e
    add-int/lit8 v3, v2, 0x3

    array-length v4, v0

    if-ge v3, v4, :cond_1f

    invoke-virtual {v1}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v4

    move/from16 v6, v19

    if-ne v4, v6, :cond_1e

    aget-byte v3, v0, v3

    and-int/2addr v3, v9

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v1, 0x1

    goto :goto_10

    :cond_1e
    :goto_f
    iget v3, v1, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    const/16 v17, 0x2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    add-int/lit8 v2, v2, 0x1

    const/16 v19, 0x1

    goto :goto_e

    :cond_1f
    const/4 v1, 0x0

    :goto_10
    const-string v3, "Invalid input: VOL not found."

    invoke-static {v3, v1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    new-instance v1, Lʻᴵ/ʻٴ;

    array-length v3, v0

    invoke-direct {v1, v3, v0}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    const/4 v0, 0x4

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v1, v0}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_20
    invoke-virtual {v1, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_21

    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_21
    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_22

    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x4f

    invoke-virtual {v1, v0}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_22
    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_11

    :cond_23
    const/4 v0, 0x0

    :goto_11
    const-string v2, "Only supports rectangular video object layer shape."

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v0

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v2

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v2

    if-eqz v2, :cond_26

    if-lez v0, :cond_24

    const/4 v2, 0x1

    goto :goto_12

    :cond_24
    const/4 v2, 0x0

    :goto_12
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/16 v20, -0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_13
    if-lez v0, :cond_25

    add-int/lit8 v2, v2, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_25
    invoke-virtual {v1, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_26
    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v0

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {v1, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    invoke-virtual {v1}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v3

    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v5, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    goto :goto_14

    :cond_27
    const/16 v0, 0x160

    iput v0, v5, Lʽⁱ/ᵔﹳ;->ˏי:I

    const/16 v0, 0x120

    iput v0, v5, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    :goto_14
    invoke-virtual {v15, v14}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_28

    const-string v0, "1"

    :cond_28
    const-string v1, "mp4v."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    :cond_29
    move-object/from16 v1, v30

    :cond_2a
    :goto_15
    const/4 v0, 0x1

    goto/16 :goto_a

    :sswitch_19
    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v1, v30

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_16

    :cond_2b
    const/4 v2, 0x0

    goto :goto_17

    :cond_2c
    :goto_16
    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v9, 0x3

    goto :goto_18

    :cond_2d
    const/high16 v9, 0x10000000

    :goto_18
    iput v9, v5, Lʽⁱ/ᵔﹳ;->ٴᵢ:I

    goto :goto_15

    :sswitch_1a
    move-object/from16 v1, v30

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15

    :sswitch_1b
    move-object/from16 v4, v26

    move-object/from16 v1, v30

    move-object/from16 v0, v37

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, -0x1

    if-eq v7, v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_19

    :cond_2e
    const/4 v2, 0x0

    :goto_19
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    invoke-virtual {v15}, Lʼʻ/ᵔי;->isEmpty()Z

    move-result v2

    const/16 v19, 0x1

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "cpresent"

    invoke-virtual {v15, v3}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v15, v3}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x1

    goto :goto_1a

    :cond_2f
    const/4 v3, 0x0

    :goto_1a
    const-string v4, "Only supports cpresent=0 in AAC audio."

    invoke-static {v4, v3}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v15, v0}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "AAC audio stream must include config fmtp parameter"

    invoke-static {v0, v3}, Lᐧˎ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v17, 0x2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_30

    const/4 v3, 0x1

    goto :goto_1b

    :cond_30
    const/4 v3, 0x0

    :goto_1b
    const-string v4, "Malformat MPEG4 config: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    new-instance v3, Lʻᴵ/ʻٴ;

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ʽﹳ(Ljava/lang/String;)[B

    move-result-object v0

    array-length v4, v0

    invoke-direct {v3, v4, v0}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    if-nez v0, :cond_31

    move v0, v6

    goto :goto_1c

    :cond_31
    const/4 v0, 0x0

    :goto_1c
    const-string v4, "Only supports audio mux version 0."

    invoke-static {v4, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v3, v6}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    if-ne v0, v6, :cond_32

    const/4 v0, 0x1

    goto :goto_1d

    :cond_32
    const/4 v0, 0x0

    :goto_1d
    const-string v4, "Only supports allStreamsSameTimeFraming."

    invoke-static {v4, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    goto :goto_1e

    :cond_33
    const/4 v0, 0x0

    :goto_1e
    const-string v4, "Only supports one program."

    invoke-static {v4, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    goto :goto_1f

    :cond_34
    const/4 v0, 0x0

    :goto_1f
    const-string v4, "Only supports one numLayer."

    invoke-static {v4, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v3, v0}, Lˊﾞ/ﹳٴ;->ᵔﹳ(Lʻᴵ/ʻٴ;Z)Lʼٴ/ˑﹳ;

    move-result-object v3
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, v3, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput v0, v5, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iget v0, v3, Lʼٴ/ˑﹳ;->ⁱˊ:I

    iput v0, v5, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget-object v0, v3, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iput-object v0, v5, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    goto :goto_20

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_35
    :goto_20
    invoke-virtual {v15, v14}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_36

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v0, "30"

    :cond_36
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x1

    goto :goto_21

    :cond_37
    const/4 v2, 0x0

    :goto_21
    const-string v3, "missing profile-level-id param"

    invoke-static {v3, v2}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mp4a.40."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    invoke-static {v13, v7}, Lˊﾞ/ﹳٴ;->ﹳٴ(II)[B

    move-result-object v0

    invoke-static {v0}, Lʼʻ/ᵎⁱ;->ʼᐧ(Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v0

    iput-object v0, v5, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    goto/16 :goto_15

    :sswitch_1c
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v6, 0x1

    :goto_22
    if-ne v7, v6, :cond_38

    move v0, v6

    goto :goto_23

    :cond_38
    const/4 v0, 0x0

    :goto_23
    const-string v2, "Multi channel AMR is not currently supported."

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v15}, Lʼʻ/ᵔי;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    const-string v2, "fmtp parameters must include octet-align."

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const-string v0, "octet-align"

    invoke-virtual {v15, v0}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Only octet aligned mode is currently supported."

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const-string v0, "interleaving"

    invoke-virtual {v15, v0}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v6

    const-string v2, "Interleaving mode is not currently supported."

    invoke-static {v2, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    :cond_39
    move v0, v6

    goto/16 :goto_a

    :sswitch_1d
    move/from16 v6, v19

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v15}, Lʼʻ/ᵔי;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-static {v3, v0}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    const-string v0, "sprop-max-don-diff"

    invoke-virtual {v15, v0}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v15, v0}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3a

    const/4 v14, 0x1

    goto :goto_24

    :cond_3a
    const/4 v14, 0x0

    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "non-zero sprop-max-don-diff "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    :cond_3b
    const-string v0, "sprop-vps"

    invoke-virtual {v15, v0}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "missing sprop-vps parameter"

    invoke-static {v3, v2}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v15, v0}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "sprop-sps"

    invoke-virtual {v15, v2}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "missing sprop-sps parameter"

    invoke-static {v4, v3}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v15, v2}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "sprop-pps"

    invoke-virtual {v15, v3}, Lʼʻ/ᵔי;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "missing sprop-pps parameter"

    invoke-static {v6, v4}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    invoke-virtual {v15, v3}, Lʼʻ/ᴵʼ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lˈـ/ʻٴ;->ﹳٴ(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2}, Lˈـ/ʻٴ;->ﹳٴ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v3}, Lˈـ/ʻٴ;->ﹳٴ(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v0, v6, v18

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/16 v17, 0x2

    aput-object v3, v6, v17

    invoke-static {v4, v6}, Lʼʻ/ﹳᐧ;->ⁱˊ(I[Ljava/lang/Object;)V

    invoke-static {v4, v6}, Lʼʻ/ᵎⁱ;->ʼˎ(I[Ljava/lang/Object;)Lʼʻ/ʿᵢ;

    move-result-object v2

    iput-object v2, v5, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-virtual {v2, v0}, Lʼʻ/ʿᵢ;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-static {v2, v6, v3, v4}, Lʻᴵ/ﹳᐧ;->ᵔᵢ([BIILˏˆ/ﹳٴ;)Lʻᴵ/ᵔʾ;

    move-result-object v2

    iget v3, v2, Lʻᴵ/ᵔʾ;->ʼˎ:F

    iput v3, v5, Lʽⁱ/ᵔﹳ;->ᵢˏ:F

    iget v3, v2, Lʻᴵ/ᵔʾ;->ﾞᴵ:I

    iput v3, v5, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    iget v3, v2, Lʻᴵ/ᵔʾ;->ˑﹳ:I

    iput v3, v5, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v7, v2, Lʻᴵ/ᵔʾ;->ٴﹶ:I

    iget v8, v2, Lʻᴵ/ᵔʾ;->ﾞʻ:I

    iget v9, v2, Lʻᴵ/ᵔʾ;->ˉʿ:I

    iget v3, v2, Lʻᴵ/ᵔʾ;->ʽ:I

    const/16 v16, 0x8

    add-int/lit8 v11, v3, 0x8

    iget v3, v2, Lʻᴵ/ᵔʾ;->ˈ:I

    add-int/lit8 v12, v3, 0x8

    new-instance v6, Lʽⁱ/ʼˎ;

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lʽⁱ/ʼˎ;-><init>(III[BII)V

    iput-object v6, v5, Lʽⁱ/ᵔﹳ;->ʽʽ:Lʽⁱ/ʼˎ;

    iget-object v2, v2, Lʻᴵ/ᵔʾ;->ⁱˊ:Lʻᴵ/ٴﹶ;

    if-eqz v2, :cond_3c

    iget v6, v2, Lʻᴵ/ٴﹶ;->ﹳٴ:I

    iget-boolean v7, v2, Lʻᴵ/ٴﹶ;->ⁱˊ:Z

    iget v8, v2, Lʻᴵ/ٴﹶ;->ʽ:I

    iget v9, v2, Lʻᴵ/ٴﹶ;->ˈ:I

    iget-object v10, v2, Lʻᴵ/ٴﹶ;->ˑﹳ:[I

    iget v11, v2, Lʻᴵ/ٴﹶ;->ﾞᴵ:I

    invoke-static/range {v6 .. v11}, Lᐧˎ/ʽ;->ⁱˊ(IZII[II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    goto :goto_25

    :sswitch_1e
    move/from16 v0, v19

    move-object/from16 v3, v29

    move-object/from16 v1, v30

    const/16 v18, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0x160

    iput v2, v5, Lʽⁱ/ᵔﹳ;->ˏי:I

    const/16 v2, 0x120

    iput v2, v5, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    :cond_3c
    :goto_25
    if-lez v13, :cond_3d

    move v9, v0

    goto :goto_26

    :cond_3d
    move/from16 v9, v18

    :goto_26
    invoke-static {v9}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    new-instance v8, Lˈـ/ﾞʻ;

    new-instance v9, Lʽⁱ/ﹳᐧ;

    invoke-direct {v9, v5}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    move v11, v13

    move-object v12, v15

    move/from16 v10, v22

    move-object v13, v1

    invoke-direct/range {v8 .. v13}, Lˈـ/ﾞʻ;-><init>(Lʽⁱ/ﹳᐧ;IILʼʻ/ᴵʼ;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iput-object v8, v1, Lˈـ/ʻٴ;->ﹳٴ:Lˈـ/ﾞʻ;

    move-object/from16 v0, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_28

    :cond_3e
    const-string v2, "Content-Base"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    invoke-virtual {v3, v2}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_27

    :cond_3f
    const-string v2, "Content-Location"

    invoke-virtual {v3, v2}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {v3, v2}, Lˈـ/ˉˆ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_27

    :cond_40
    move-object/from16 v2, p3

    :goto_27
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_28

    :cond_41
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    :goto_28
    iput-object v2, v1, Lˈـ/ʻٴ;->ⁱˊ:Landroid/net/Uri;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7290cac7 -> :sswitch_10
        0x96c -> :sswitch_f
        0xfc51 -> :sswitch_e
        0xfda6 -> :sswitch_d
        0x12371 -> :sswitch_c
        0x14cbe -> :sswitch_b
        0x14cbf -> :sswitch_a
        0x217d28 -> :sswitch_9
        0x217d29 -> :sswitch_8
        0x25203f -> :sswitch_7
        0x2562c7 -> :sswitch_6
        0x2562db -> :sswitch_5
        0x3f401eeb -> :sswitch_4
        0x734e0c52 -> :sswitch_3
        0x74c813f6 -> :sswitch_2
        0x7f62e82d -> :sswitch_1
        0x7f6339a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x63306f58 -> :sswitch_1e
        -0x63185e82 -> :sswitch_1d
        -0x5fc6f775 -> :sswitch_1c
        -0x3313c2e -> :sswitch_1b
        0xb269698 -> :sswitch_1a
        0xb26d66f -> :sswitch_19
        0x46cdc642 -> :sswitch_18
        0x4f62373a -> :sswitch_17
        0x59976a2d -> :sswitch_16
        0x59b2d2d8 -> :sswitch_15
        0x5f50bed8 -> :sswitch_14
        0x5f50bed9 -> :sswitch_13
        0x71710385 -> :sswitch_12
        0x717677f9 -> :sswitch_11
    .end sparse-switch
.end method

.method public static ﹳٴ(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    sget-object v3, Lʻᴵ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v3, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p0

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lˈـ/ʻٴ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˈـ/ʻٴ;

    iget-object v2, p0, Lˈـ/ʻٴ;->ﹳٴ:Lˈـ/ﾞʻ;

    iget-object v3, p1, Lˈـ/ʻٴ;->ﹳٴ:Lˈـ/ﾞʻ;

    invoke-virtual {v2, v3}, Lˈـ/ﾞʻ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˈـ/ʻٴ;->ⁱˊ:Landroid/net/Uri;

    iget-object p1, p1, Lˈـ/ʻٴ;->ⁱˊ:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lˈـ/ʻٴ;->ﹳٴ:Lˈـ/ﾞʻ;

    invoke-virtual {v0}, Lˈـ/ﾞʻ;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˈـ/ʻٴ;->ⁱˊ:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
