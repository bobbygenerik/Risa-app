.class public abstract Lʽי/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "\"\\"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "\t ,="

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    return-void
.end method

.method public static final ⁱˊ(Lˎᵢ/ﾞʻ;Lˎᵢ/ʼᐧ;Lˎᵢ/ˉˆ;)V
    .locals 36

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    sget-object v3, Lˎᵢ/ﾞʻ;->ʼᐧ:Lˎᵢ/ⁱˊ;

    if-ne v1, v3, :cond_0

    goto/16 :goto_13

    :cond_0
    sget-object v3, Lˎᵢ/ٴﹶ;->ٴﹶ:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lˎᵢ/ˉˆ;->size()I

    move-result v3

    const/4 v4, 0x0

    move v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_3

    invoke-virtual {v0, v6}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Set-Cookie"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v0, v6}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    invoke-static {v7}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lﹶˈ/ʼᐧ;->ʾˋ:Lﹶˈ/ʼᐧ;

    if-nez v0, :cond_5

    move-object v6, v3

    goto :goto_2

    :cond_5
    move-object v6, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v7, :cond_26

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v0, Lⁱᐧ/ʽ;->ﹳٴ:[B

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x3b

    invoke-static {v10, v13, v4, v0}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v0

    const/16 v14, 0x3d

    invoke-static {v10, v14, v4, v0}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v15

    if-ne v15, v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v4, v15, v10}, Lⁱᐧ/ʽ;->ᵔʾ(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_7

    goto :goto_4

    :cond_7
    invoke-static/range {v17 .. v17}, Lⁱᐧ/ʽ;->ﾞᴵ(Ljava/lang/String;)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v15, v15, 0x1

    invoke-static {v15, v0, v10}, Lⁱᐧ/ʽ;->ᵔʾ(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lⁱᐧ/ʽ;->ﾞᴵ(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_9

    :goto_4
    move-object/from16 v35, v3

    const/4 v0, 0x0

    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_9
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const-wide v19, 0xe677d21fdbffL

    move-wide/from16 v28, v19

    const/16 p2, 0x1

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v30, 0x0

    :goto_5
    const-wide v31, 0x7fffffffffffffffL

    const-wide/high16 v33, -0x8000000000000000L

    if-ge v0, v4, :cond_17

    move-object/from16 v35, v3

    invoke-static {v10, v13, v0, v4}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v3

    invoke-static {v10, v14, v0, v3}, Lⁱᐧ/ʽ;->ˈ(Ljava/lang/String;CII)I

    move-result v13

    invoke-static {v0, v13, v10}, Lⁱᐧ/ʽ;->ᵔʾ(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ge v13, v3, :cond_a

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13, v3, v10}, Lⁱᐧ/ʽ;->ᵔʾ(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_a
    const-string v13, ""

    :goto_6
    const-string v14, "expires"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v13}, Lʼ/ᵎﹶ;->ʾˋ(ILjava/lang/String;)J

    move-result-wide v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_7
    move/from16 v25, p2

    goto/16 :goto_8

    :cond_b
    const-string v14, "max-age"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v21, 0x0

    cmp-long v0, v13, v21

    if-gtz v0, :cond_c

    move-wide/from16 v21, v33

    goto :goto_7

    :cond_c
    move-wide/from16 v21, v13

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_2
    const-string v14, "-?\\d+"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_e

    const-string v0, "-"

    const/4 v14, 0x0

    invoke-static {v13, v0, v14}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    move-wide/from16 v31, v33

    :cond_d
    move-wide/from16 v21, v31

    goto :goto_7

    :cond_e
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_f
    const-string v14, "domain"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    :try_start_3
    const-string v0, "."

    const/4 v14, 0x0

    invoke-static {v13, v0, v14}, Lﹶˑ/ᵔﹳ;->ˉـ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v31

    if-nez v31, :cond_11

    invoke-static {v13, v0}, Lﹶˑ/ˆʾ;->ˎᐧ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lⁱᐧ/ⁱˊ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object v5, v0

    const/16 v26, 0x0

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    const-string v0, "Failed requirement."

    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_12
    const-string v14, "path"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    move-object v15, v13

    goto :goto_8

    :cond_13
    const-string v14, "secure"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    move/from16 v30, p2

    goto :goto_8

    :cond_14
    const-string v14, "httponly"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    move/from16 v16, p2

    goto :goto_8

    :cond_15
    const-string v14, "samesite"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object/from16 v27, v13

    :catch_1
    :cond_16
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move-object/from16 v3, v35

    const/16 v13, 0x3b

    const/16 v14, 0x3d

    goto/16 :goto_5

    :cond_17
    move-object/from16 v35, v3

    cmp-long v0, v21, v33

    if-nez v0, :cond_18

    move-wide/from16 v19, v33

    goto :goto_9

    :cond_18
    cmp-long v0, v21, v23

    if-eqz v0, :cond_1b

    const-wide v3, 0x20c49ba5e353f7L

    cmp-long v0, v21, v3

    if-gtz v0, :cond_19

    const/16 v0, 0x3e8

    int-to-long v3, v0

    mul-long v31, v21, v3

    :cond_19
    add-long v31, v11, v31

    cmp-long v0, v31, v11

    if-ltz v0, :cond_1c

    cmp-long v0, v31, v19

    if-lez v0, :cond_1a

    goto :goto_9

    :cond_1a
    move-wide/from16 v19, v31

    goto :goto_9

    :cond_1b
    move-wide/from16 v19, v28

    :cond_1c
    :goto_9
    iget-object v0, v2, Lˎᵢ/ʼᐧ;->ˈ:Ljava/lang/String;

    if-nez v5, :cond_1d

    move-object v5, v0

    goto :goto_a

    :cond_1d
    invoke-static {v0, v5}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_a

    :cond_1e
    const/4 v14, 0x0

    invoke-static {v0, v5, v14}, Lﹶˑ/ᵔﹳ;->ˉـ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1f

    sget-object v3, Lⁱᐧ/ⁱˊ;->ﹳٴ:Lﹶˑ/ʼˎ;

    iget-object v3, v3, Lﹶˑ/ʼˎ;->ʾˋ:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1f

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_20

    sget-object v0, Lᵢˉ/ﹳٴ;->ˈ:Lᵢˉ/ﹳٴ;

    invoke-virtual {v0, v5}, Lᵢˉ/ﹳٴ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_1f
    const/4 v14, 0x0

    const/16 v16, 0x0

    goto :goto_e

    :cond_20
    const-string v0, "/"

    const/4 v14, 0x0

    if-eqz v15, :cond_22

    invoke-static {v15, v0, v14}, Lﹶˑ/ᵔﹳ;->ᵎᵔ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_c

    :cond_21
    :goto_b
    move-object/from16 v22, v15

    move/from16 v24, v16

    goto :goto_d

    :cond_22
    :goto_c
    invoke-virtual {v2}, Lˎᵢ/ʼᐧ;->ⁱˊ()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/4 v10, 0x6

    invoke-static {v3, v4, v14, v10}, Lﹶˑ/ˆʾ;->י(Ljava/lang/String;CII)I

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v3, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_23
    move-object v15, v0

    goto :goto_b

    :goto_d
    new-instance v16, Lˎᵢ/ٴﹶ;

    move-object/from16 v21, v5

    move/from16 v23, v30

    invoke-direct/range {v16 .. v27}, Lˎᵢ/ٴﹶ;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    :goto_e
    move-object/from16 v0, v16

    :goto_f
    if-nez v0, :cond_24

    goto :goto_10

    :cond_24
    if-nez v9, :cond_25

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v8, v8, 0x1

    move v4, v14

    move-object/from16 v3, v35

    goto/16 :goto_3

    :cond_26
    move-object/from16 v35, v3

    if-eqz v9, :cond_27

    invoke-static {v9}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_11

    :cond_27
    const/4 v5, 0x0

    :goto_11
    if-nez v5, :cond_28

    move-object/from16 v3, v35

    goto :goto_12

    :cond_28
    move-object v3, v5

    :goto_12
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_13
    return-void

    :cond_29
    invoke-interface {v1, v2, v3}, Lˎᵢ/ﾞʻ;->ˉʿ(Lˎᵢ/ʼᐧ;Ljava/util/List;)V

    return-void
.end method

.method public static final ﹳٴ(Lˎᵢ/ʽʽ;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˎᵢ/ʽʽ;->ʾˋ:Lˎᵢ/ʾᵎ;

    iget-object v0, v0, Lˎᵢ/ʾᵎ;->ⁱˊ:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lˎᵢ/ʽʽ;->ˈٴ:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lⁱᐧ/ˑﹳ;->ˑﹳ(Lˎᵢ/ʽʽ;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object p0, p0, Lˎᵢ/ʽʽ;->ˊʻ:Lˎᵢ/ˉˆ;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lˎᵢ/ˉˆ;->ﹳٴ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    :cond_3
    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
