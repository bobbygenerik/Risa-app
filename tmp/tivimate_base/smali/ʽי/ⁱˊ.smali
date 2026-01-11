.class public final Lʽי/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎᵢ/ᵔﹳ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʽי/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lʽי/ᵎﹶ;)Lˎᵢ/ʽʽ;
    .locals 30

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lʽי/ⁱˊ;->ﹳٴ:I

    const-string v3, "Content-Type"

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v8, v0, Lʽי/ᵎﹶ;->ˑﹳ:Lˎᵢ/ʾᵎ;

    new-instance v2, Lـʾ/ᵔﹳ;

    const/16 v7, 0xb

    invoke-direct {v2, v8, v7, v5}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    if-eqz v8, :cond_1b

    iget-object v9, v8, Lˎᵢ/ʾᵎ;->ﾞᴵ:Lˎᵢ/ʽ;

    if-nez v9, :cond_1a

    sget v9, Lˎᵢ/ʽ;->ᵔʾ:I

    iget-object v9, v8, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {v9}, Lˎᵢ/ˉˆ;->size()I

    move-result v10

    move-object v14, v5

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_0
    if-ge v12, v10, :cond_18

    const/16 v27, 0x1

    invoke-virtual {v9, v12}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v12}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v6

    const-string v5, "Cache-Control"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v14, :cond_0

    :goto_1
    const/4 v13, 0x0

    goto :goto_2

    :cond_0
    move-object v14, v6

    goto :goto_2

    :cond_1
    const-string v5, "Pragma"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_17

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    move v7, v4

    :goto_4
    if-ge v7, v5, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const-string v1, "=,;"

    invoke-static {v1, v11}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    goto :goto_4

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    :goto_5
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v7, v4, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_5

    :cond_4
    move-object/from16 v29, v2

    goto/16 :goto_a

    :cond_5
    add-int/lit8 v7, v7, 0x1

    sget-object v4, Lⁱᐧ/ʽ;->ﹳٴ:[B

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    :goto_6
    if-ge v7, v4, :cond_7

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x20

    if-eq v5, v11, :cond_6

    const/16 v11, 0x9

    if-eq v5, v11, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v7, v4, :cond_8

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_8

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x4

    invoke-static {v6, v5, v7, v4}, Lﹶˑ/ˆʾ;->ˑʼ(Ljava/lang/CharSequence;CII)I

    move-result v4

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v29, v2

    move-object v2, v5

    goto :goto_b

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v7

    :goto_8
    if-ge v5, v4, :cond_a

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move-object/from16 v29, v2

    const-string v2, ",;"

    invoke-static {v2, v11}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v29

    goto :goto_8

    :cond_a
    move-object/from16 v29, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    :goto_9
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v4, v5

    goto :goto_b

    :goto_a
    add-int/lit8 v7, v7, 0x1

    move v4, v7

    const/4 v2, 0x0

    :goto_b
    const-string v5, "no-cache"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v1, p0

    move/from16 v15, v27

    :goto_c
    move-object/from16 v2, v29

    const/16 v7, 0xb

    goto/16 :goto_3

    :cond_b
    const-string v5, "no-store"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v1, p0

    move/from16 v16, v27

    goto :goto_c

    :cond_c
    const-string v5, "max-age"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    invoke-static {v5, v2}, Lⁱᐧ/ʽ;->ˉʿ(ILjava/lang/String;)I

    move-result v17

    :cond_d
    :goto_d
    move-object/from16 v1, p0

    goto :goto_c

    :cond_e
    const/4 v5, -0x1

    const-string v7, "s-maxage"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {v5, v2}, Lⁱᐧ/ʽ;->ˉʿ(ILjava/lang/String;)I

    move-result v18

    goto :goto_d

    :cond_f
    const-string v5, "private"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v1, p0

    move/from16 v19, v27

    goto :goto_c

    :cond_10
    const-string v5, "public"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v1, p0

    move/from16 v20, v27

    goto :goto_c

    :cond_11
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v1, p0

    move/from16 v21, v27

    goto :goto_c

    :cond_12
    const-string v5, "max-stale"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const v1, 0x7fffffff

    invoke-static {v1, v2}, Lⁱᐧ/ʽ;->ˉʿ(ILjava/lang/String;)I

    move-result v22

    goto :goto_d

    :cond_13
    const-string v5, "min-fresh"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, -0x1

    invoke-static {v5, v2}, Lⁱᐧ/ʽ;->ˉʿ(ILjava/lang/String;)I

    move-result v23

    goto :goto_d

    :cond_14
    const/4 v5, -0x1

    const-string v2, "only-if-cached"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v1, p0

    move/from16 v24, v27

    goto/16 :goto_c

    :cond_15
    const-string v2, "no-transform"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v1, p0

    move/from16 v25, v27

    goto/16 :goto_c

    :cond_16
    const-string v2, "immutable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v1, p0

    move/from16 v26, v27

    goto/16 :goto_c

    :cond_17
    move-object/from16 v29, v2

    const/4 v5, -0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    const/4 v5, 0x0

    const/16 v7, 0xb

    goto/16 :goto_0

    :cond_18
    move-object/from16 v29, v2

    if-nez v13, :cond_19

    const/16 v27, 0x0

    goto :goto_e

    :cond_19
    move-object/from16 v27, v14

    :goto_e
    new-instance v14, Lˎᵢ/ʽ;

    invoke-direct/range {v14 .. v27}, Lˎᵢ/ʽ;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    iput-object v14, v8, Lˎᵢ/ʾᵎ;->ﾞᴵ:Lˎᵢ/ʽ;

    move-object v9, v14

    goto :goto_f

    :cond_1a
    move-object/from16 v29, v2

    :goto_f
    iget-boolean v1, v9, Lˎᵢ/ʽ;->ˆʾ:Z

    if-eqz v1, :cond_1c

    new-instance v2, Lـʾ/ᵔﹳ;

    const/16 v1, 0xb

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1, v4}, Lـʾ/ᵔﹳ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_10

    :cond_1b
    move-object/from16 v29, v2

    :cond_1c
    move-object/from16 v2, v29

    :goto_10
    iget-object v1, v2, Lـʾ/ᵔﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˎᵢ/ʾᵎ;

    iget-object v2, v2, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˎᵢ/ʽʽ;

    const/16 v4, 0x14

    if-nez v1, :cond_1e

    if-nez v2, :cond_1e

    sget-object v14, Lˎᵢ/ᴵᵔ;->ʾˋ:Lˎᵢ/ˈٴ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    if-eqz v8, :cond_1d

    new-instance v13, Lˎᵢ/ˉˆ;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v13, v0}, Lˎᵢ/ˉˆ;-><init>([Ljava/lang/String;)V

    new-instance v7, Lˎᵢ/ʽʽ;

    sget-object v9, Lˎᵢ/ـˆ;->ʽʽ:Lˎᵢ/ـˆ;

    const-string v10, "Unsatisfiable Request (only-if-cached)"

    const/16 v11, 0x1f8

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v22, 0x0

    sget-object v23, Lˎᵢ/ˉٴ;->ᵔﹳ:Lˎᵢ/ⁱˊ;

    invoke-direct/range {v7 .. v23}, Lˎᵢ/ʽʽ;-><init>(Lˎᵢ/ʾᵎ;Lˎᵢ/ـˆ;Ljava/lang/String;ILˎᵢ/ᵔʾ;Lˎᵢ/ˉˆ;Lˎᵢ/ᴵᵔ;Lˎᵢ/ʽʽ;Lˎᵢ/ʽʽ;Lˎᵢ/ʽʽ;JJLcom/bumptech/glide/ʼˎ;Lˎᵢ/ˉٴ;)V

    goto/16 :goto_17

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const-string v5, "cacheResponse"

    if-nez v1, :cond_1f

    invoke-virtual {v2}, Lˎᵢ/ʽʽ;->ᵎﹶ()Lˎᵢ/ᴵˊ;

    move-result-object v0

    invoke-static {v2}, Lˈˆ/ﾞᴵ;->ˈⁱ(Lˎᵢ/ʽʽ;)Lˎᵢ/ʽʽ;

    move-result-object v1

    invoke-static {v5, v1}, Lˎᵢ/ᴵˊ;->ⁱˊ(Ljava/lang/String;Lˎᵢ/ʽʽ;)V

    iput-object v1, v0, Lˎᵢ/ᴵˊ;->ʼˎ:Lˎᵢ/ʽʽ;

    invoke-virtual {v0}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v7

    goto/16 :goto_17

    :cond_1f
    invoke-virtual {v0, v1}, Lʽי/ᵎﹶ;->ⁱˊ(Lˎᵢ/ʾᵎ;)Lˎᵢ/ʽʽ;

    move-result-object v0

    const-string v1, "networkResponse"

    if-eqz v2, :cond_2a

    iget v6, v0, Lˎᵢ/ʽʽ;->ˈٴ:I

    const/16 v7, 0x130

    if-ne v6, v7, :cond_29

    invoke-virtual {v2}, Lˎᵢ/ʽʽ;->ᵎﹶ()Lˎᵢ/ᴵˊ;

    move-result-object v6

    iget-object v7, v2, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    iget-object v8, v0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Lˎᵢ/ˉˆ;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_11
    const-string v11, "Content-Encoding"

    const-string v12, "Content-Length"

    if-ge v10, v4, :cond_25

    invoke-virtual {v7, v10}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v10}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Warning"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    const-string v15, "1"

    move/from16 p1, v4

    const/4 v4, 0x0

    invoke-static {v14, v15, v4}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_21

    goto :goto_13

    :cond_20
    move/from16 p1, v4

    :cond_21
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_12

    :cond_22
    invoke-static {v13}, Lﹳˋ/ٴﹶ;->ᴵˊ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v8, v13}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    :cond_23
    :goto_12
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    :goto_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p1

    goto :goto_11

    :cond_25
    invoke-virtual {v8}, Lˎᵢ/ˉˆ;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v4, :cond_28

    invoke-virtual {v8, v7}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_27

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_27

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_26

    goto :goto_15

    :cond_26
    invoke-static {v10}, Lﹳˋ/ٴﹶ;->ᴵˊ(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-virtual {v8, v7}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lﹶˑ/ˆʾ;->ˋˊ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    :goto_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_28
    const/4 v7, 0x0

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v4, Lʼٴ/ʼˎ;

    const/4 v7, 0x3

    invoke-direct {v4, v7}, Lʼٴ/ʼˎ;-><init>(I)V

    iget-object v7, v4, Lʼٴ/ʼˎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iput-object v4, v6, Lˎᵢ/ᴵˊ;->ﾞᴵ:Lʼٴ/ʼˎ;

    iget-wide v3, v0, Lˎᵢ/ʽʽ;->ᵎˊ:J

    iput-wide v3, v6, Lˎᵢ/ᴵˊ;->ٴﹶ:J

    iget-wide v3, v0, Lˎᵢ/ʽʽ;->ᵔי:J

    iput-wide v3, v6, Lˎᵢ/ᴵˊ;->ﾞʻ:J

    invoke-static {v2}, Lˈˆ/ﾞᴵ;->ˈⁱ(Lˎᵢ/ʽʽ;)Lˎᵢ/ʽʽ;

    move-result-object v2

    invoke-static {v5, v2}, Lˎᵢ/ᴵˊ;->ⁱˊ(Ljava/lang/String;Lˎᵢ/ʽʽ;)V

    iput-object v2, v6, Lˎᵢ/ᴵˊ;->ʼˎ:Lˎᵢ/ʽʽ;

    invoke-static {v0}, Lˈˆ/ﾞᴵ;->ˈⁱ(Lˎᵢ/ʽʽ;)Lˎᵢ/ʽʽ;

    move-result-object v2

    invoke-static {v1, v2}, Lˎᵢ/ᴵˊ;->ⁱˊ(Ljava/lang/String;Lˎᵢ/ʽʽ;)V

    iput-object v2, v6, Lˎᵢ/ᴵˊ;->ᵔᵢ:Lˎᵢ/ʽʽ;

    invoke-virtual {v6}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    iget-object v0, v0, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->close()V

    const/16 v28, 0x0

    throw v28

    :cond_29
    iget-object v3, v2, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-static {v3}, Lⁱᐧ/ʽ;->ⁱˊ(Ljava/io/Closeable;)V

    :cond_2a
    invoke-virtual {v0}, Lˎᵢ/ʽʽ;->ᵎﹶ()Lˎᵢ/ᴵˊ;

    move-result-object v3

    if-eqz v2, :cond_2b

    invoke-static {v2}, Lˈˆ/ﾞᴵ;->ˈⁱ(Lˎᵢ/ʽʽ;)Lˎᵢ/ʽʽ;

    move-result-object v2

    goto :goto_16

    :cond_2b
    const/4 v2, 0x0

    :goto_16
    invoke-static {v5, v2}, Lˎᵢ/ᴵˊ;->ⁱˊ(Ljava/lang/String;Lˎᵢ/ʽʽ;)V

    iput-object v2, v3, Lˎᵢ/ᴵˊ;->ʼˎ:Lˎᵢ/ʽʽ;

    invoke-static {v0}, Lˈˆ/ﾞᴵ;->ˈⁱ(Lˎᵢ/ʽʽ;)Lˎᵢ/ʽʽ;

    move-result-object v0

    invoke-static {v1, v0}, Lˎᵢ/ᴵˊ;->ⁱˊ(Ljava/lang/String;Lˎᵢ/ʽʽ;)V

    iput-object v0, v3, Lˎᵢ/ᴵˊ;->ᵔᵢ:Lˎᵢ/ʽʽ;

    invoke-virtual {v3}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v7

    :goto_17
    return-object v7

    :pswitch_0
    const/16 v27, 0x1

    const-string v1, "Connection"

    const-string v2, "close"

    iget-object v4, v0, Lʽי/ᵎﹶ;->ˈ:Lcom/bumptech/glide/ʼˎ;

    iget-object v5, v0, Lʽי/ᵎﹶ;->ˑﹳ:Lˎᵢ/ʾᵎ;

    iget-object v0, v5, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    iget-object v8, v4, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    check-cast v8, Lٴᵎ/ʼᐧ;

    iget-object v9, v4, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v9, Lʽי/ˑﹳ;

    invoke-interface {v9, v5}, Lʽי/ˑﹳ;->ʽ(Lˎᵢ/ʾᵎ;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    iget-object v10, v5, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v10}, Lˉᵎ/ⁱˊ;->ٴʼ(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v10, :cond_30

    if-eqz v0, :cond_30

    :try_start_3
    const-string v10, "100-continue"

    const-string v11, "Expect"

    iget-object v12, v5, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {v12, v11}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v10, :cond_2c

    :try_start_4
    invoke-interface {v9}, Lʽי/ˑﹳ;->ﾞᴵ()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v10, v27

    :try_start_5
    invoke-virtual {v4, v10}, Lcom/bumptech/glide/ʼˎ;->ˆʾ(Z)Lˎᵢ/ᴵˊ;

    move-result-object v11

    goto :goto_19

    :catch_0
    move-exception v0

    const/4 v11, 0x0

    :goto_18
    const/4 v12, 0x0

    goto :goto_1e

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/ʼˎ;->ﾞʻ(Ljava/io/IOException;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2c
    const/4 v11, 0x0

    :goto_19
    if-nez v11, :cond_2d

    :try_start_6
    iget-object v8, v5, Lˎᵢ/ʾᵎ;->ˈ:Lˎᵢ/ʾˋ;

    invoke-virtual {v8}, Lˎᵢ/ʾˋ;->ﹳٴ()J

    move-result-wide v12

    invoke-interface {v9, v5, v12, v13}, Lʽי/ˑﹳ;->ⁱˊ(Lˎᵢ/ʾᵎ;J)Lˊᐧ/ʾˋ;

    move-result-object v8

    new-instance v10, Lٴᵎ/ᵎﹶ;

    invoke-direct {v10, v4, v8, v12, v13}, Lٴᵎ/ᵎﹶ;-><init>(Lcom/bumptech/glide/ʼˎ;Lˊᐧ/ʾˋ;J)V

    new-instance v8, Lˊᐧ/ʻٴ;

    invoke-direct {v8, v10}, Lˊᐧ/ʻٴ;-><init>(Lˊᐧ/ʾˋ;)V

    invoke-virtual {v0, v8}, Lˎᵢ/ʾˋ;->ˈ(Lˊᐧ/ᵎﹶ;)V

    invoke-virtual {v8}, Lˊᐧ/ʻٴ;->close()V

    goto :goto_1b

    :catch_2
    move-exception v0

    goto :goto_18

    :cond_2d
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v4, v10, v13, v12}, Lٴᵎ/ʼᐧ;->ʼˎ(Lcom/bumptech/glide/ʼˎ;ZZLjava/io/IOException;)Ljava/io/IOException;

    invoke-virtual {v4}, Lcom/bumptech/glide/ʼˎ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object v0

    iget-object v0, v0, Lٴᵎ/ᵔﹳ;->ٴﹶ:Lᵔᐧ/ᵔʾ;

    if-eqz v0, :cond_2e

    const/16 v27, 0x1

    goto :goto_1a

    :cond_2e
    const/16 v27, 0x0

    :goto_1a
    if-nez v27, :cond_2f

    invoke-interface {v9}, Lʽי/ˑﹳ;->ᵎﹶ()Lʽי/ˈ;

    move-result-object v0

    invoke-interface {v0}, Lʽי/ˈ;->ᵔᵢ()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2f
    :goto_1b
    const/4 v12, 0x0

    goto :goto_1c

    :cond_30
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_7
    invoke-virtual {v8, v4, v10, v13, v12}, Lٴᵎ/ʼᐧ;->ʼˎ(Lcom/bumptech/glide/ʼˎ;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v11, v12

    :goto_1c
    :try_start_8
    invoke-interface {v9}, Lʽי/ˑﹳ;->ˈ()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-object v8, v12

    goto :goto_1f

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/ʼˎ;->ﾞʻ(Ljava/io/IOException;)V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception v0

    goto :goto_1e

    :catch_5
    move-exception v0

    :goto_1d
    move-object v11, v12

    goto :goto_1e

    :catch_6
    move-exception v0

    const/4 v12, 0x0

    goto :goto_1d

    :catch_7
    move-exception v0

    const/4 v12, 0x0

    :try_start_a
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/ʼˎ;->ﾞʻ(Ljava/io/IOException;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :goto_1e
    instance-of v8, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v8, :cond_3d

    iget-boolean v8, v4, Lcom/bumptech/glide/ʼˎ;->ʾˋ:Z

    if-eqz v8, :cond_3c

    move-object v8, v0

    :goto_1f
    if-nez v11, :cond_31

    const/4 v13, 0x0

    :try_start_b
    invoke-virtual {v4, v13}, Lcom/bumptech/glide/ʼˎ;->ˆʾ(Z)Lˎᵢ/ᴵˊ;

    move-result-object v11

    goto :goto_20

    :catch_8
    move-exception v0

    goto/16 :goto_25

    :cond_31
    :goto_20
    iput-object v5, v11, Lˎᵢ/ᴵˊ;->ﹳٴ:Lˎᵢ/ʾᵎ;

    invoke-virtual {v4}, Lcom/bumptech/glide/ʼˎ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object v0

    iget-object v0, v0, Lٴᵎ/ᵔﹳ;->ᵎﹶ:Lˎᵢ/ᵔʾ;

    iput-object v0, v11, Lˎᵢ/ᴵˊ;->ˑﹳ:Lˎᵢ/ᵔʾ;

    iput-wide v6, v11, Lˎᵢ/ᴵˊ;->ٴﹶ:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v11, Lˎᵢ/ᴵˊ;->ﾞʻ:J

    invoke-virtual {v11}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v0

    iget v9, v0, Lˎᵢ/ʽʽ;->ˈٴ:I

    :goto_21
    const/16 v10, 0x64

    if-ne v9, v10, :cond_32

    :goto_22
    const/4 v13, 0x0

    goto :goto_23

    :cond_32
    const/16 v10, 0x66

    if-gt v10, v9, :cond_33

    const/16 v10, 0xc8

    if-ge v9, v10, :cond_33

    goto :goto_22

    :goto_23
    invoke-virtual {v4, v13}, Lcom/bumptech/glide/ʼˎ;->ˆʾ(Z)Lˎᵢ/ᴵˊ;

    move-result-object v0

    iput-object v5, v0, Lˎᵢ/ᴵˊ;->ﹳٴ:Lˎᵢ/ʾᵎ;

    invoke-virtual {v4}, Lcom/bumptech/glide/ʼˎ;->ˈ()Lٴᵎ/ᵔﹳ;

    move-result-object v9

    iget-object v9, v9, Lٴᵎ/ᵔﹳ;->ᵎﹶ:Lˎᵢ/ᵔʾ;

    iput-object v9, v0, Lˎᵢ/ᴵˊ;->ˑﹳ:Lˎᵢ/ᵔʾ;

    iput-wide v6, v0, Lˎᵢ/ᴵˊ;->ٴﹶ:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lˎᵢ/ᴵˊ;->ﾞʻ:J

    invoke-virtual {v0}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v0

    iget v9, v0, Lˎᵢ/ʽʽ;->ˈٴ:I

    goto :goto_21

    :cond_33
    iget-object v5, v4, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Lʽי/ˑﹳ;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :try_start_c
    iget-object v6, v0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    invoke-virtual {v6, v3}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    move-object v3, v12

    :cond_34
    invoke-interface {v5, v0}, Lʽי/ˑﹳ;->ᵔᵢ(Lˎᵢ/ʽʽ;)J

    move-result-wide v6

    invoke-interface {v5, v0}, Lʽי/ˑﹳ;->ﹳٴ(Lˎᵢ/ʽʽ;)Lˊᐧ/ᴵˊ;

    move-result-object v5

    new-instance v10, Lٴᵎ/ᵔᵢ;

    invoke-direct {v10, v4, v5, v6, v7}, Lٴᵎ/ᵔᵢ;-><init>(Lcom/bumptech/glide/ʼˎ;Lˊᐧ/ᴵˊ;J)V

    new-instance v5, Lʽי/ᵔᵢ;

    new-instance v11, Lˊᐧ/ـˆ;

    invoke-direct {v11, v10}, Lˊᐧ/ـˆ;-><init>(Lˊᐧ/ᴵˊ;)V

    invoke-direct {v5, v3, v6, v7, v11}, Lʽי/ᵔᵢ;-><init>(Ljava/lang/String;JLˊᐧ/ـˆ;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :try_start_d
    invoke-virtual {v0}, Lˎᵢ/ʽʽ;->ᵎﹶ()Lˎᵢ/ᴵˊ;

    move-result-object v0

    iput-object v5, v0, Lˎᵢ/ᴵˊ;->ᵎﹶ:Lˎᵢ/ᴵᵔ;

    new-instance v3, Lـˎ/ˈ;

    const/4 v5, 0x7

    invoke-direct {v3, v5}, Lـˎ/ˈ;-><init>(I)V

    iput-object v3, v0, Lˎᵢ/ᴵˊ;->ᵔʾ:Lˎᵢ/ˉٴ;

    invoke-virtual {v0}, Lˎᵢ/ᴵˊ;->ﹳٴ()Lˎᵢ/ʽʽ;

    move-result-object v0

    iget-object v3, v0, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iget-object v3, v3, Lˎᵢ/ʾᵎ;->ʽ:Lˎᵢ/ˉˆ;

    invoke-virtual {v3, v1}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, v0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    invoke-virtual {v3, v1}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    move-object v5, v12

    goto :goto_24

    :cond_35
    move-object v5, v1

    :goto_24
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_36
    iget-object v1, v4, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʽי/ˑﹳ;

    invoke-interface {v1}, Lʽי/ˑﹳ;->ᵎﹶ()Lʽי/ˈ;

    move-result-object v1

    invoke-interface {v1}, Lʽי/ˈ;->ᵔᵢ()V

    :cond_37
    const/16 v1, 0xcc

    if-eq v9, v1, :cond_38

    const/16 v1, 0xcd

    if-ne v9, v1, :cond_39

    :cond_38
    iget-object v1, v0, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v1}, Lˎᵢ/ᴵᵔ;->ʽ()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3a

    :cond_39
    return-object v0

    :cond_3a
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lˎᵢ/ʽʽ;->ٴᵢ:Lˎᵢ/ᴵᵔ;

    invoke-virtual {v0}, Lˎᵢ/ᴵᵔ;->ʽ()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_9
    move-exception v0

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/ʼˎ;->ﾞʻ(Ljava/io/IOException;)V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :goto_25
    if-eqz v8, :cond_3b

    invoke-static {v8, v0}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v8

    :cond_3b
    throw v0

    :cond_3c
    throw v0

    :cond_3d
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
