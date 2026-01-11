.class public abstract Lⁱٴ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:[J

.field public static final ﹳٴ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "0123456789abcdef"

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lⁱٴ/ﹳٴ;->ﹳٴ:[B

    const/16 v0, 0x14

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lⁱٴ/ﹳٴ;->ⁱˊ:[J

    return-void

    :array_0
    .array-data 8
        -0x1
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x2540be3ffL
        0x174876e7ffL
        0xe8d4a50fffL
        0x9184e729fffL
        0x5af3107a3fffL
        0x38d7ea4c67fffL
        0x2386f26fc0ffffL
        0x16345785d89ffffL
        0xde0b6b3a763ffffL
        0x7fffffffffffffffL
    .end array-data
.end method

.method public static final ʽ(Lˊᐧ/ﾞᴵ;J)Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    sub-long v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_0

    sget-object p1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3, v4, p1}, Lˊᐧ/ﾞᴵ;->ˊᵔ(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lˊᐧ/ﾞᴵ;->skip(J)V

    return-object p1

    :cond_0
    sget-object v0, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lˊᐧ/ﾞᴵ;->ˊᵔ(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2}, Lˊᐧ/ﾞᴵ;->skip(J)V

    return-object p1
.end method

.method public static final ˈ(Lˊᐧ/ﾞᴵ;Lˊᐧ/ˏי;Z)I
    .locals 16

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_4

    :cond_0
    return v1

    :cond_1
    iget-object v2, v0, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v3, v0, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget v4, v0, Lˊᐧ/ʾᵎ;->ʽ:I

    move-object/from16 v5, p1

    iget-object v5, v5, Lˊᐧ/ˏי;->ᴵˊ:[I

    const/4 v6, 0x0

    move-object v8, v0

    move v9, v1

    move v7, v6

    :goto_0
    add-int/lit8 v10, v7, 0x1

    aget v11, v5, v7

    add-int/lit8 v7, v7, 0x2

    aget v10, v5, v10

    if-eq v10, v1, :cond_2

    move v9, v10

    :cond_2
    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    if-gez v11, :cond_a

    mul-int/lit8 v11, v11, -0x1

    add-int v12, v11, v7

    :goto_1
    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v13, v7, 0x1

    aget v7, v5, v7

    if-eq v3, v7, :cond_4

    goto :goto_7

    :cond_4
    if-ne v13, v12, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v6

    :goto_2
    if-ne v11, v4, :cond_8

    iget-object v2, v8, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iget v4, v2, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget-object v7, v2, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v8, v2, Lˊᐧ/ʾᵎ;->ʽ:I

    if-ne v2, v0, :cond_7

    if-eqz v3, :cond_6

    move-object v2, v7

    move-object v7, v10

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz p2, :cond_b

    :goto_4
    const/4 v0, -0x2

    return v0

    :cond_7
    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto :goto_5

    :cond_8
    move-object v7, v8

    move v8, v4

    move v4, v11

    :goto_5
    if-eqz v3, :cond_9

    aget v3, v5, v13

    move v15, v8

    move-object v8, v7

    move v7, v15

    goto :goto_8

    :cond_9
    move v3, v4

    move v4, v8

    move-object v8, v7

    move v7, v13

    goto :goto_1

    :cond_a
    add-int/lit8 v12, v3, 0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int v13, v7, v11

    :goto_6
    if-ne v7, v13, :cond_c

    :cond_b
    :goto_7
    return v9

    :cond_c
    aget v14, v5, v7

    if-ne v3, v14, :cond_10

    add-int/2addr v7, v11

    aget v3, v5, v7

    if-ne v12, v4, :cond_e

    iget-object v8, v8, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iget v2, v8, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget-object v4, v8, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v7, v8, Lˊᐧ/ʾᵎ;->ʽ:I

    if-ne v8, v0, :cond_d

    move-object v8, v4

    move v4, v2

    move-object v2, v8

    move-object v8, v10

    goto :goto_8

    :cond_d
    move-object v15, v4

    move v4, v2

    move-object v2, v15

    goto :goto_8

    :cond_e
    move v7, v4

    move v4, v12

    :goto_8
    if-ltz v3, :cond_f

    return v3

    :cond_f
    neg-int v3, v3

    move v15, v7

    move v7, v3

    move v3, v4

    move v4, v15

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_6
.end method

.method public static final ⁱˊ(Lˊᐧ/ʾᵎ;I[BII)Z
    .locals 5

    .prologue
    iget v0, p0, Lˊᐧ/ʾᵎ;->ʽ:I

    iget-object v1, p0, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    :goto_0
    if-ge p3, p4, :cond_2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    iget-object p1, p0, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v0, p0, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    iget v1, p0, Lˊᐧ/ʾᵎ;->ʽ:I

    move v4, v1

    move-object v1, p1

    move p1, v0

    move v0, v4

    :cond_0
    aget-byte v2, v1, p1

    aget-byte v3, p2, p3

    if-eq v2, v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static final ﹳٴ(Lˊᐧ/ﾞᴵ;Lˊᐧ/ʼˎ;JJI)J
    .locals 19

    .prologue
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-virtual/range {p1 .. p1}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v6

    int-to-long v7, v6

    const/4 v6, 0x0

    int-to-long v9, v6

    int-to-long v11, v5

    invoke-static/range {v7 .. v12}, Lcom/bumptech/glide/ˈ;->ᵔᵢ(JJJ)V

    if-lez v5, :cond_f

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-ltz v9, :cond_e

    cmp-long v9, v1, v3

    if-gtz v9, :cond_d

    iget-wide v9, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v13, v3, v9

    if-lez v13, :cond_0

    move-wide v3, v9

    :cond_0
    cmp-long v13, v1, v3

    if-nez v13, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v13, v0, Lˊᐧ/ﾞᴵ;->ʾˋ:Lˊᐧ/ʾᵎ;

    if-nez v13, :cond_2

    goto/16 :goto_6

    :cond_2
    sub-long v14, v9, v1

    cmp-long v14, v14, v1

    const-wide/16 v15, 0x1

    move/from16 v17, v6

    if-gez v14, :cond_7

    :goto_0
    cmp-long v7, v9, v1

    if-lez v7, :cond_3

    iget-object v13, v13, Lˊᐧ/ʾᵎ;->ᵎﹶ:Lˊᐧ/ʾᵎ;

    iget v7, v13, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v8, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v9, v7

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lˊᐧ/ʼˎ;->ᵎﹶ()[B

    move-result-object v7

    aget-byte v8, v7, v17

    move-object/from16 p1, v7

    iget-wide v6, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    sub-long/2addr v6, v11

    add-long/2addr v6, v15

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    cmp-long v0, v9, v3

    if-gez v0, :cond_c

    iget-object v0, v13, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v6, v13, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v7, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    int-to-long v11, v7

    add-long/2addr v11, v3

    sub-long/2addr v11, v9

    int-to-long v6, v6

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    iget v7, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    int-to-long v11, v7

    add-long/2addr v11, v1

    sub-long/2addr v11, v9

    long-to-int v1, v11

    :goto_2
    if-ge v1, v6, :cond_6

    aget-byte v2, v0, v1

    if-ne v2, v8, :cond_4

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v7, p1

    const/4 v11, 0x1

    invoke-static {v13, v2, v7, v11, v5}, Lⁱٴ/ﹳٴ;->ⁱˊ(Lˊᐧ/ʾᵎ;I[BII)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v0, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v0, v9

    return-wide v0

    :cond_4
    move-object/from16 v7, p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 p1, v7

    goto :goto_2

    :cond_6
    move-object/from16 v7, p1

    iget v0, v13, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v1, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v9, v0

    iget-object v13, v13, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    move-wide v1, v9

    goto :goto_1

    :cond_7
    :goto_3
    iget v6, v13, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v9, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v6, v9

    int-to-long v9, v6

    add-long/2addr v9, v7

    cmp-long v6, v9, v1

    if-gtz v6, :cond_8

    iget-object v13, v13, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    move-wide v7, v9

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lˊᐧ/ʼˎ;->ᵎﹶ()[B

    move-result-object v6

    aget-byte v9, v6, v17

    move-wide/from16 v17, v7

    iget-wide v7, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    sub-long/2addr v7, v11

    add-long/2addr v7, v15

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-wide/from16 v7, v17

    :goto_4
    cmp-long v0, v7, v3

    if-gez v0, :cond_c

    iget-object v0, v13, Lˊᐧ/ʾᵎ;->ﹳٴ:[B

    iget v10, v13, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v11, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    int-to-long v11, v11

    add-long/2addr v11, v3

    sub-long/2addr v11, v7

    int-to-long v14, v10

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    iget v11, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    int-to-long v11, v11

    add-long/2addr v11, v1

    sub-long/2addr v11, v7

    long-to-int v1, v11

    :goto_5
    if-ge v1, v10, :cond_b

    aget-byte v2, v0, v1

    if-ne v2, v9, :cond_9

    add-int/lit8 v2, v1, 0x1

    const/4 v11, 0x1

    invoke-static {v13, v2, v6, v11, v5}, Lⁱٴ/ﹳٴ;->ⁱˊ(Lˊᐧ/ʾᵎ;I[BII)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v0, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v0, v7

    return-wide v0

    :cond_9
    const/4 v11, 0x1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v11, 0x1

    iget v0, v13, Lˊᐧ/ʾᵎ;->ʽ:I

    iget v1, v13, Lˊᐧ/ʾᵎ;->ⁱˊ:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v7, v0

    iget-object v13, v13, Lˊᐧ/ʾᵎ;->ﾞᴵ:Lˊᐧ/ʾᵎ;

    move-wide v1, v7

    goto :goto_4

    :cond_c
    :goto_6
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_d
    const-string v0, "fromIndex > toIndex: "

    const-string v5, " > "

    invoke-static {v1, v2, v0, v5}, Lʼﾞ/ˊˋ;->ʻٴ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v0, "fromIndex < 0: "

    invoke-static {v0, v1, v2}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteCount == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
