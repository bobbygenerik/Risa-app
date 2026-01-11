.class public abstract Lⁱٴ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lⁱٴ/ⁱˊ;->ﹳٴ:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final ʽ(Lˊᐧ/ـˆ;Lˊᐧ/ʼˎ;IJ)J
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lˊᐧ/ـˆ;->ᴵˊ:Lˊᐧ/ﾞᴵ;

    invoke-virtual/range {p1 .. p1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v2

    int-to-long v3, v2

    const/4 v2, 0x0

    int-to-long v5, v2

    move/from16 v2, p2

    int-to-long v7, v2

    invoke-static/range {v3 .. v8}, Lcom/bumptech/glide/ˈ;->ᵔᵢ(JJJ)V

    move-wide v8, v7

    iget-boolean v3, v0, Lˊᐧ/ـˆ;->ʽʽ:Z

    if-nez v3, :cond_6

    const-wide/16 v3, 0x0

    move v7, v2

    move-object/from16 v2, p1

    :goto_0
    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lⁱٴ/ﹳٴ;->ﹳٴ(Lˊᐧ/ﾞᴵ;Lˊᐧ/ʼˎ;JJI)J

    move-result-wide v10

    const-wide/16 v5, -0x1

    cmp-long v2, v10, v5

    if-eqz v2, :cond_0

    return-wide v10

    :cond_0
    iget-wide v10, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    sub-long v12, v10, v8

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    cmp-long v2, v12, p3

    if-ltz v2, :cond_1

    goto :goto_3

    :cond_1
    cmp-long v2, v10, p3

    if-gez v2, :cond_2

    move-object/from16 v14, p1

    goto :goto_2

    :cond_2
    sub-long v10, v10, p3

    add-long/2addr v10, v14

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    long-to-int v2, v10

    iget-wide v10, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    sub-long/2addr v10, v3

    add-long/2addr v10, v14

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v7, v10

    add-int/lit8 v7, v7, -0x1

    if-gt v2, v7, :cond_5

    :goto_1
    iget-wide v10, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    int-to-long v14, v7

    sub-long/2addr v10, v14

    move-object/from16 v14, p1

    invoke-virtual {v1, v10, v11, v14, v7}, Lˊᐧ/ﾞᴵ;->ʿᵢ(JLˊᐧ/ʼˎ;I)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_2
    iget-object v2, v0, Lˊᐧ/ـˆ;->ʾˋ:Lˊᐧ/ᴵˊ;

    const-wide/16 v10, 0x2000

    invoke-interface {v2, v1, v10, v11}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide v10

    cmp-long v2, v10, v5

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move/from16 v7, p2

    move-object v2, v14

    goto :goto_0

    :cond_4
    if-eq v7, v2, :cond_5

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-wide v5

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final ˈ(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ʽ(I)V

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ˑﹳ(Lˊᐧ/ـˆ;)Lⁱٴ/ᵎﹶ;
    .locals 24

    .prologue
    move-object/from16 v5, p0

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_7

    const-wide/16 v0, 0x4

    invoke-virtual {v5, v0, v1}, Lˊᐧ/ـˆ;->skip(J)V

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v0

    and-int v12, v0, v1

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v0

    and-int v16, v0, v1

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v0

    and-int v15, v0, v1

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v0

    int-to-long v2, v0

    const-wide v6, 0xffffffffL

    and-long v13, v2, v6

    move-wide v2, v6

    new-instance v6, Lˊʼ/יـ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v0

    int-to-long v7, v0

    and-long/2addr v7, v2

    iput-wide v7, v6, Lˊʼ/יـ;->ʾˋ:J

    new-instance v4, Lˊʼ/יـ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v0

    int-to-long v7, v0

    and-long/2addr v7, v2

    iput-wide v7, v4, Lˊʼ/יـ;->ʾˋ:J

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v0

    and-int/2addr v0, v1

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v7

    and-int v11, v7, v1

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v7

    and-int/2addr v1, v7

    const-wide/16 v7, 0x8

    invoke-virtual {v5, v7, v8}, Lˊᐧ/ـˆ;->skip(J)V

    new-instance v7, Lˊʼ/יـ;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    iput-wide v8, v7, Lˊʼ/יـ;->ʾˋ:J

    int-to-long v8, v0

    invoke-virtual {v5, v8, v9}, Lˊᐧ/ـˆ;->ˉʿ(J)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lﹶˑ/ˆʾ;->ᴵʼ(Ljava/lang/CharSequence;C)Z

    move-result v9

    if-nez v9, :cond_5

    iget-wide v9, v4, Lˊʼ/יـ;->ʾˋ:J

    cmp-long v9, v9, v2

    const-wide/16 v17, 0x0

    const/16 v10, 0x8

    move-wide/from16 v19, v2

    if-nez v9, :cond_0

    int-to-long v2, v10

    goto :goto_0

    :cond_0
    move-wide/from16 v2, v17

    :goto_0
    iget-wide v8, v6, Lˊʼ/יـ;->ʾˋ:J

    cmp-long v8, v8, v19

    if-nez v8, :cond_1

    int-to-long v8, v10

    add-long/2addr v2, v8

    :cond_1
    iget-wide v8, v7, Lˊʼ/יـ;->ʾˋ:J

    cmp-long v8, v8, v19

    if-nez v8, :cond_2

    int-to-long v8, v10

    add-long/2addr v2, v8

    :cond_2
    new-instance v8, Lˊʼ/ˏי;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lˊʼ/ˏי;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lˊʼ/ˏי;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move/from16 v19, v1

    new-instance v1, Lˊʼ/ᵔﹳ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object/from16 v20, v0

    new-instance v0, Lⁱٴ/ʼˎ;

    move/from16 v21, v12

    move/from16 v12, v19

    move-wide/from16 v22, v13

    move-object/from16 v13, v20

    move-wide/from16 v19, v22

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v10}, Lⁱٴ/ʼˎ;-><init>(Lˊʼ/ᵔﹳ;JLˊʼ/יـ;Lˊᐧ/ـˆ;Lˊʼ/יـ;Lˊʼ/יـ;Lˊʼ/ˏי;Lˊʼ/ˏי;Lˊʼ/ˏי;)V

    invoke-static {v5, v11, v0}, Lⁱٴ/ⁱˊ;->ﾞᴵ(Lˊᐧ/ᵔᵢ;ILᴵⁱ/ʼᐧ;)V

    cmp-long v0, v2, v17

    if-lez v0, :cond_4

    iget-boolean v0, v1, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    int-to-long v0, v12

    invoke-virtual {v5, v0, v1}, Lˊᐧ/ـˆ;->ˉʿ(J)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    const-string v0, "/"

    invoke-static {v0, v14}, Lᵎˉ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Z)Lˊᐧ/ʽﹳ;

    move-result-object v1

    invoke-virtual {v1, v13}, Lˊᐧ/ʽﹳ;->ˑﹳ(Ljava/lang/String;)Lˊᐧ/ʽﹳ;

    move-result-object v3

    invoke-static {v13, v0, v14}, Lﹶˑ/ᵔﹳ;->ˉـ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Lⁱٴ/ᵎﹶ;

    iget-wide v11, v6, Lˊʼ/יـ;->ʾˋ:J

    iget-wide v13, v4, Lˊʼ/יـ;->ʾˋ:J

    iget-wide v6, v7, Lˊʼ/יـ;->ʾˋ:J

    iget-object v1, v8, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Long;

    iget-object v1, v9, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/Long;

    iget-object v1, v10, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    move-wide v8, v11

    move-wide v10, v13

    move-wide v13, v6

    move-wide/from16 v6, v19

    const v20, 0xe000

    move v4, v0

    move-object/from16 v19, v1

    move/from16 v12, v21

    invoke-direct/range {v2 .. v20}, Lⁱٴ/ᵎﹶ;-><init>(Lˊᐧ/ʽﹳ;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    return-object v2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unsupported zip: general purpose bit flag="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lⁱٴ/ⁱˊ;->ˈ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bad zip: expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lⁱٴ/ⁱˊ;->ˈ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lⁱٴ/ⁱˊ;->ˈ(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final ᵎﹶ(Lˊᐧ/ـˆ;Lⁱٴ/ᵎﹶ;)Lⁱٴ/ᵎﹶ;
    .locals 27

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lˊᐧ/ـˆ;->ٴᵢ()I

    move-result v2

    const v3, 0x4034b50

    if-ne v2, v3, :cond_2

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Lˊᐧ/ـˆ;->skip(J)V

    invoke-virtual {v0}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v2

    const v3, 0xffff

    and-int v4, v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const-wide/16 v4, 0x12

    invoke-virtual {v0, v4, v5}, Lˊᐧ/ـˆ;->skip(J)V

    invoke-virtual {v0}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    invoke-virtual {v0}, Lˊᐧ/ـˆ;->ˆﾞ()S

    move-result v2

    and-int/2addr v2, v3

    invoke-virtual {v0, v4, v5}, Lˊᐧ/ـˆ;->skip(J)V

    if-nez v1, :cond_0

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lˊᐧ/ـˆ;->skip(J)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v3, Lˊʼ/ˏי;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lˊʼ/ˏי;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lˊʼ/ˏי;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lⁱٴ/ᵔᵢ;

    invoke-direct {v6, v0, v3, v4, v5}, Lⁱٴ/ᵔᵢ;-><init>(Lˊᐧ/ᵔᵢ;Lˊʼ/ˏי;Lˊʼ/ˏי;Lˊʼ/ˏי;)V

    invoke-static {v0, v2, v6}, Lⁱٴ/ⁱˊ;->ﾞᴵ(Lˊᐧ/ᵔᵢ;ILᴵⁱ/ʼᐧ;)V

    iget-object v0, v3, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Integer;

    iget-object v0, v4, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/Integer;

    iget-object v0, v5, Lˊʼ/ˏי;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/Integer;

    new-instance v6, Lⁱٴ/ᵎﹶ;

    iget-object v7, v1, Lⁱٴ/ᵎﹶ;->ﹳٴ:Lˊᐧ/ʽﹳ;

    iget-boolean v8, v1, Lⁱٴ/ᵎﹶ;->ⁱˊ:Z

    iget-object v9, v1, Lⁱٴ/ᵎﹶ;->ʽ:Ljava/lang/String;

    iget-wide v10, v1, Lⁱٴ/ᵎﹶ;->ˈ:J

    iget-wide v12, v1, Lⁱٴ/ᵎﹶ;->ˑﹳ:J

    iget-wide v14, v1, Lⁱٴ/ᵎﹶ;->ﾞᴵ:J

    iget v0, v1, Lⁱٴ/ᵎﹶ;->ᵎﹶ:I

    iget-wide v2, v1, Lⁱٴ/ᵎﹶ;->ᵔᵢ:J

    iget v4, v1, Lⁱٴ/ᵎﹶ;->ʼˎ:I

    iget v5, v1, Lⁱٴ/ᵎﹶ;->ˆʾ:I

    move/from16 v16, v0

    iget-object v0, v1, Lⁱٴ/ᵎﹶ;->ٴﹶ:Ljava/lang/Long;

    move-object/from16 v21, v0

    iget-object v0, v1, Lⁱٴ/ᵎﹶ;->ﾞʻ:Ljava/lang/Long;

    iget-object v1, v1, Lⁱٴ/ᵎﹶ;->ˉʿ:Ljava/lang/Long;

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-wide/from16 v17, v2

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-direct/range {v6 .. v26}, Lⁱٴ/ᵎﹶ;-><init>(Lˊᐧ/ʽﹳ;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v6

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lⁱٴ/ⁱˊ;->ˈ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "bad zip: expected "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lⁱٴ/ⁱˊ;->ˈ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lⁱٴ/ⁱˊ;->ˈ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final ᵔᵢ(Lˊᐧ/ᵢˏ;I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lˊᐧ/ᵢˏ;->ˊʻ:[I

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lˊᐧ/ᵢˏ;->ᴵᵔ:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v1, p0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, v0, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    return v2

    :cond_3
    not-int p0, v2

    return p0
.end method

.method public static final ⁱˊ(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 22

    .prologue
    sget-object v0, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    const-string v0, "/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lᵎˉ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Z)Lˊᐧ/ʽﹳ;

    move-result-object v3

    new-instance v2, Lⁱٴ/ᵎﹶ;

    const/16 v19, 0x0

    const v20, 0xfffc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v20}, Lⁱٴ/ᵎﹶ;-><init>(Lˊᐧ/ʽﹳ;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    new-instance v0, Lʻᵢ/ˑﹳ;

    invoke-direct {v0, v3, v2}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v3, v2, [Lʻᵢ/ˑﹳ;

    aput-object v0, v3, v1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lﹶˈ/ˏי;->ˉـ(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    aget-object v1, v3, v1

    iget-object v2, v1, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    iget-object v1, v1, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lʻٴ/ˑﹳ;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lʻٴ/ˑﹳ;-><init>(I)V

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lﹶˈ/ˆʾ;->ʼـ(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱٴ/ᵎﹶ;

    iget-object v3, v2, Lⁱٴ/ᵎﹶ;->ﹳٴ:Lˊᐧ/ʽﹳ;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱٴ/ᵎﹶ;

    if-nez v3, :cond_0

    :goto_1
    iget-object v2, v2, Lⁱٴ/ᵎﹶ;->ﹳٴ:Lˊᐧ/ʽﹳ;

    invoke-virtual {v2}, Lˊᐧ/ʽﹳ;->ʽ()Lˊᐧ/ʽﹳ;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lⁱٴ/ᵎﹶ;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lⁱٴ/ᵎﹶ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Lⁱٴ/ᵎﹶ;

    const/16 v20, 0x0

    const v21, 0xfffc

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v21}, Lⁱٴ/ᵎﹶ;-><init>(Lˊᐧ/ʽﹳ;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lⁱٴ/ᵎﹶ;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static final ﹳٴ(C)I
    .locals 3

    .prologue
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x3a

    if-ge p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x67

    if-ge p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final ﾞᴵ(Lˊᐧ/ᵔᵢ;ILᴵⁱ/ʼᐧ;)V
    .locals 10

    .prologue
    int-to-long v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_3

    invoke-interface {p0}, Lˊᐧ/ᵔᵢ;->ˆﾞ()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    invoke-interface {p0}, Lˊᐧ/ᵔᵢ;->ˆﾞ()S

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    invoke-interface {p0, v4, v5}, Lˊᐧ/ᵔᵢ;->ᐧﾞ(J)V

    invoke-interface {p0}, Lˊᐧ/ᵔᵢ;->ˈ()Lˊᐧ/ﾞᴵ;

    move-result-object v6

    iget-wide v6, v6, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lˊᐧ/ᵔᵢ;->ˈ()Lˊᐧ/ﾞᴵ;

    move-result-object v8

    iget-wide v8, v8, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    add-long/2addr v8, v4

    sub-long/2addr v8, v6

    cmp-long v2, v8, v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    invoke-interface {p0}, Lˊᐧ/ᵔᵢ;->ˈ()Lˊᐧ/ﾞᴵ;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lˊᐧ/ﾞᴵ;->skip(J)V

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p2, "unsupported zip: too many bytes processed for "

    invoke-static {p1, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method
