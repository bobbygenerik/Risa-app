.class public abstract Lﹳʻ/ﹳٴ;
.super Lʽⁱ/ᵎﹶ;
.source "SourceFile"


# instance fields
.field public final ᴵˊ:Lـʽ/ٴﹶ;


# direct methods
.method public constructor <init>(Lـʽ/ٴﹶ;Lـˎ/ˈ;Lⁱʽ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0, p3}, Lʽⁱ/ᵎﹶ;-><init>(Lⁱʽ/ﹳٴ;)V

    iput-object p1, p0, Lﹳʻ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    return-void
.end method


# virtual methods
.method public final ﹶˎ(Lٴـ/ٴﹶ;Lـʽ/ˑﹳ;Ljava/lang/String;Ljava/lang/String;Lʻˆ/ﹳٴ;[B)V
    .locals 28

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v5, v1, Lـʽ/ˑﹳ;->ᴵˑ:[B

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    array-length v9, v5

    if-ge v9, v7, :cond_0

    goto :goto_0

    :cond_0
    aget-byte v5, v5, v6

    const/4 v9, 0x5

    invoke-static {v5, v9}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v5

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v8

    :goto_1
    sget-object v9, Lᴵﾞ/ˈ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v2, v9}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v10, v1, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v10, p4

    :cond_3
    new-instance v11, Ljava/io/File;

    const-string v12, ":\\\\"

    const-string v13, "_"

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "[/\\\\]"

    invoke-static {v9}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v10, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v10, v9}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v2, v9}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v1, Lـʽ/ⁱˊ;->ˈٴ:[B

    aget-byte v2, v2, v8

    const/4 v9, 0x6

    invoke-static {v2, v9}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, v0, Lٴـ/ٴﹶ;->ˉٴ:Lـʽ/ᵎﹶ;

    iget-object v10, v0, Lٴـ/ٴﹶ;->ʾˋ:Ljava/io/PushbackInputStream;

    iget-object v12, v0, Lٴـ/ٴﹶ;->ʽʽ:Lᵢ/ﹳٴ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v12, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    move-object v15, v13

    check-cast v15, Lᵢ/ﹳٴ;

    new-instance v13, Lـʽ/ﾞᴵ;

    invoke-direct {v13}, Lـʽ/ﾞᴵ;-><init>()V

    new-array v14, v7, [B

    iget-object v9, v15, Lᵢ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v9, [B

    iget-object v7, v15, Lᵢ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v15, v10}, Lᵢ/ﹳٴ;->ᵢˏ(Ljava/io/InputStream;)I

    move-result v6

    move-object/from16 p4, v9

    int-to-long v8, v6

    const-wide/32 v16, 0x30304b50

    cmp-long v8, v8, v16

    if-nez v8, :cond_6

    invoke-virtual {v15, v10}, Lᵢ/ﹳٴ;->ᵢˏ(Ljava/io/InputStream;)I

    move-result v6

    :cond_6
    int-to-long v8, v6

    const-wide/32 v16, 0x4034b50

    cmp-long v6, v8, v16

    const-wide/16 v24, -0x1

    const-string v8, "\\"

    const-string v9, "/"

    move/from16 v27, v5

    if-eqz v6, :cond_7

    move-object v6, v2

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_7
    const/4 v6, 0x1

    iput v6, v13, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    array-length v6, v7

    invoke-static {v10, v7, v6}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    const/4 v6, 0x0

    invoke-static {v6, v7}, Lᵢ/ﹳٴ;->ᴵˊ(I[B)I

    move-result v5

    iput v5, v13, Lـʽ/ⁱˊ;->ʽʽ:I

    move/from16 v23, v6

    const/4 v5, 0x2

    new-array v6, v5, [B

    invoke-static {v10, v6}, Lᴵﾞ/ﹳٴ;->ᵔᵢ(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v5, :cond_34

    aget-byte v4, v6, v23

    move/from16 v5, v23

    invoke-static {v4, v5}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v4

    iput-boolean v4, v13, Lـʽ/ⁱˊ;->ˆﾞ:Z

    aget-byte v4, v6, v5

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v4

    iput-boolean v4, v13, Lـʽ/ⁱˊ;->ˈʿ:Z

    const/16 v26, 0x1

    aget-byte v4, v6, v26

    invoke-static {v4, v5}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v4

    iput-boolean v4, v13, Lـʽ/ⁱˊ;->ˊˋ:Z

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iput-object v4, v13, Lـʽ/ⁱˊ;->ˈٴ:[B

    array-length v4, v7

    invoke-static {v10, v7, v4}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    const/4 v5, 0x0

    invoke-static {v5, v7}, Lᵢ/ﹳٴ;->ᴵˊ(I[B)I

    move-result v4

    invoke-static {v4}, Lʼﾞ/ˊˋ;->ʽ(I)I

    move-result v4

    iput v4, v13, Lـʽ/ⁱˊ;->ᴵᵔ:I

    invoke-virtual {v15, v10}, Lᵢ/ﹳٴ;->ᵢˏ(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v5, v4

    iput-wide v5, v13, Lـʽ/ⁱˊ;->ˊʻ:J

    invoke-static {v10, v14}, Lᴵﾞ/ﹳٴ;->ᵔᵢ(Ljava/io/InputStream;[B)I

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v14}, Lᵢ/ﹳٴ;->ʾˋ(I[B)J

    move-result-wide v3

    iput-wide v3, v13, Lـʽ/ⁱˊ;->ٴᵢ:J

    move-object/from16 v3, p4

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    const/4 v4, 0x4

    invoke-static {v10, v3, v4}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    move-object v6, v2

    invoke-virtual {v15, v5, v3}, Lᵢ/ﹳٴ;->ʾˋ(I[B)J

    move-result-wide v1

    iput-wide v1, v13, Lـʽ/ⁱˊ;->ˉٴ:J

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v10, v3, v4}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    invoke-virtual {v15, v5, v3}, Lᵢ/ﹳٴ;->ʾˋ(I[B)J

    move-result-wide v1

    iput-wide v1, v13, Lـʽ/ⁱˊ;->ᵎⁱ:J

    array-length v1, v7

    invoke-static {v10, v7, v1}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    invoke-static {v5, v7}, Lᵢ/ﹳٴ;->ᴵˊ(I[B)I

    move-result v1

    iput v1, v13, Lـʽ/ⁱˊ;->ٴʼ:I

    array-length v2, v7

    invoke-static {v10, v7, v2}, Lᵢ/ﹳٴ;->ʾᵎ(Ljava/io/InputStream;[BI)V

    invoke-static {v5, v7}, Lᵢ/ﹳٴ;->ᴵˊ(I[B)I

    move-result v2

    iput v2, v13, Lـʽ/ⁱˊ;->ᵎˊ:I

    if-lez v1, :cond_33

    new-array v1, v1, [B

    invoke-static {v10, v1}, Lᴵﾞ/ﹳٴ;->ᵔᵢ(Ljava/io/InputStream;[B)I

    iget-boolean v2, v13, Lـʽ/ⁱˊ;->ˊˋ:Z

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lʽٴ/ˈ;->ᵔᵢ([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v13, Lـʽ/ⁱˊ;->ـˏ:Z

    iget v1, v13, Lـʽ/ⁱˊ;->ᵎˊ:I

    if-gtz v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x4

    if-ge v1, v4, :cond_c

    if-lez v1, :cond_b

    int-to-long v1, v1

    invoke-virtual {v10, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :cond_b
    move-object v1, v3

    goto :goto_4

    :cond_c
    new-array v2, v1, [B

    invoke-static {v10, v2}, Lᴵﾞ/ﹳٴ;->ᵔᵢ(Ljava/io/InputStream;[B)I

    :try_start_0
    invoke-virtual {v12, v1, v2}, Lᵢ/ﹳٴ;->ﹳᐧ(I[B)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_4
    iput-object v1, v13, Lـʽ/ⁱˊ;->ʼˈ:Ljava/util/List;

    :goto_5
    iget-object v1, v13, Lـʽ/ⁱˊ;->ʼˈ:Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_6

    :cond_d
    iget-object v14, v13, Lـʽ/ⁱˊ;->ʼˈ:Ljava/util/List;

    iget-wide v1, v13, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iget-wide v4, v13, Lـʽ/ⁱˊ;->ˉٴ:J

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-wide/from16 v16, v1

    move-wide/from16 v18, v4

    invoke-static/range {v14 .. v22}, Lᵢ/ﹳٴ;->ʽʽ(Ljava/util/List;Lᵢ/ﹳٴ;JJJI)Lـʽ/ˆʾ;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_6

    :cond_e
    iput-object v1, v13, Lـʽ/ⁱˊ;->ˑٴ:Lـʽ/ˆʾ;

    iget-wide v4, v1, Lـʽ/ˆʾ;->ˈٴ:J

    cmp-long v2, v4, v24

    if-eqz v2, :cond_f

    iput-wide v4, v13, Lـʽ/ⁱˊ;->ᵎⁱ:J

    :cond_f
    iget-wide v1, v1, Lـʽ/ˆʾ;->ʽʽ:J

    cmp-long v4, v1, v24

    if-eqz v4, :cond_10

    iput-wide v1, v13, Lـʽ/ⁱˊ;->ˉٴ:J

    :cond_10
    :goto_6
    invoke-static {v13, v15}, Lᵢ/ﹳٴ;->ˏי(Lـʽ/ⁱˊ;Lᵢ/ﹳٴ;)V

    iget-boolean v1, v13, Lـʽ/ⁱˊ;->ˆﾞ:Z

    if-eqz v1, :cond_13

    iget v1, v13, Lـʽ/ⁱˊ;->ᵔٴ:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_11

    goto :goto_7

    :cond_11
    iget-object v1, v13, Lـʽ/ⁱˊ;->ˈٴ:[B

    const/16 v23, 0x0

    aget-byte v1, v1, v23

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lᴵﾞ/ﹳٴ;->ﾞᴵ(BI)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v5, 0x3

    iput v5, v13, Lـʽ/ⁱˊ;->ᵔٴ:I

    goto :goto_7

    :cond_12
    const/4 v5, 0x2

    iput v5, v13, Lـʽ/ⁱˊ;->ᵔٴ:I

    :cond_13
    :goto_7
    iput-object v13, v0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    const-wide/16 v1, 0x0

    if-nez v13, :cond_14

    move-object v5, v3

    move-object/from16 v3, p2

    goto/16 :goto_f

    :cond_14
    iget-object v3, v13, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    iget v3, v13, Lـʽ/ⁱˊ;->ᴵᵔ:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    iget-wide v3, v13, Lـʽ/ⁱˊ;->ᵎⁱ:J

    cmp-long v3, v3, v1

    if-ltz v3, :cond_16

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid local file header for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v13, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    const-string v3, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    invoke-static {v1, v2, v3}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_8
    iget-object v3, v0, Lٴـ/ٴﹶ;->ˊʻ:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    iget-object v14, v0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    move-object/from16 v3, p2

    iget-wide v4, v3, Lـʽ/ⁱˊ;->ٴᵢ:J

    iput-wide v4, v14, Lـʽ/ⁱˊ;->ٴᵢ:J

    iget-wide v4, v3, Lـʽ/ⁱˊ;->ˉٴ:J

    iput-wide v4, v14, Lـʽ/ⁱˊ;->ˉٴ:J

    iget-wide v4, v3, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iput-wide v4, v14, Lـʽ/ⁱˊ;->ᵎⁱ:J

    iget-boolean v4, v3, Lـʽ/ⁱˊ;->ـˏ:Z

    iput-boolean v4, v14, Lـʽ/ⁱˊ;->ـˏ:Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lٴـ/ٴﹶ;->ٴᵢ:Z

    new-instance v13, Lٴـ/ˆʾ;

    invoke-static {v14}, Lᴵﾞ/ﹳٴ;->ˑﹳ(Lـʽ/ⁱˊ;)I

    move-result v5

    invoke-static {v5, v4}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-wide v4, v14, Lـʽ/ⁱˊ;->ᵎⁱ:J

    goto :goto_b

    :cond_18
    iget-boolean v4, v14, Lـʽ/ⁱˊ;->ˈʿ:Z

    if-eqz v4, :cond_19

    iget-boolean v4, v0, Lٴـ/ٴﹶ;->ٴᵢ:Z

    if-nez v4, :cond_19

    :goto_9
    move-wide/from16 v4, v24

    goto :goto_b

    :cond_19
    iget-wide v4, v14, Lـʽ/ⁱˊ;->ˉٴ:J

    iget-boolean v7, v14, Lـʽ/ⁱˊ;->ˆﾞ:Z

    if-nez v7, :cond_1b

    :cond_1a
    const/4 v7, 0x0

    goto :goto_a

    :cond_1b
    iget v7, v14, Lـʽ/ⁱˊ;->ᵔٴ:I

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    const/16 v8, 0xc

    if-eqz v7, :cond_1d

    iget-object v7, v14, Lـʽ/ⁱˊ;->ˋᵔ:Lـʽ/ﹳٴ;

    if-eqz v7, :cond_1c

    iget v7, v7, Lـʽ/ﹳٴ;->ˊʻ:I

    if-eqz v7, :cond_1c

    invoke-static {v7}, Lʼﾞ/ˊˋ;->ˆʾ(I)I

    move-result v7

    add-int/2addr v7, v8

    goto :goto_a

    :cond_1c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "AesExtraDataRecord not found or invalid for Aes encrypted entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget v7, v14, Lـʽ/ⁱˊ;->ᵔٴ:I

    const/4 v9, 0x2

    invoke-static {v7, v9}, Lʻٴ/ᵎﹶ;->ﹳٴ(II)Z

    move-result v7

    if-eqz v7, :cond_1a

    move v7, v8

    :goto_a
    int-to-long v7, v7

    sub-long v24, v4, v7

    goto :goto_9

    :goto_b
    invoke-direct {v13}, Ljava/io/InputStream;-><init>()V

    iput-wide v1, v13, Lٴـ/ˆʾ;->ᴵˊ:J

    const/4 v7, 0x1

    new-array v8, v7, [B

    iput-object v8, v13, Lٴـ/ˆʾ;->ʽʽ:[B

    iput-object v10, v13, Lٴـ/ˆʾ;->ʾˋ:Ljava/io/PushbackInputStream;

    iput-wide v4, v13, Lٴـ/ˆʾ;->ˈٴ:J

    iget-boolean v4, v14, Lـʽ/ⁱˊ;->ˆﾞ:Z

    if-nez v4, :cond_1e

    new-instance v12, Lٴـ/ˑﹳ;

    iget-object v15, v0, Lٴـ/ٴﹶ;->ˈٴ:[C

    iget v4, v6, Lـʽ/ᵎﹶ;->ﹳٴ:I

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v16, v4

    invoke-direct/range {v12 .. v18}, Lٴـ/ˑﹳ;-><init>(Lٴـ/ˆʾ;Lـʽ/ﾞᴵ;[CIZI)V

    :goto_c
    const/4 v5, 0x2

    goto :goto_d

    :cond_1e
    iget v4, v14, Lـʽ/ⁱˊ;->ᵔٴ:I

    const/4 v8, 0x4

    if-ne v4, v8, :cond_1f

    new-instance v12, Lٴـ/ﹳٴ;

    iget-object v15, v0, Lٴـ/ٴﹶ;->ˈٴ:[C

    iget v4, v6, Lـʽ/ᵎﹶ;->ﹳٴ:I

    iget-boolean v5, v6, Lـʽ/ᵎﹶ;->ⁱˊ:Z

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lٴـ/ⁱˊ;-><init>(Lٴـ/ˆʾ;Lـʽ/ﾞᴵ;[CIZ)V

    const/4 v4, 0x1

    new-array v5, v4, [B

    iput-object v5, v12, Lٴـ/ﹳٴ;->ᴵᵔ:[B

    const/16 v4, 0x10

    new-array v4, v4, [B

    iput-object v4, v12, Lٴـ/ﹳٴ;->ˊʻ:[B

    const/4 v5, 0x0

    iput v5, v12, Lٴـ/ﹳٴ;->ٴᵢ:I

    iput v5, v12, Lٴـ/ﹳٴ;->ˉٴ:I

    iput v5, v12, Lٴـ/ﹳٴ;->ᵎⁱ:I

    iput v5, v12, Lٴـ/ﹳٴ;->ٴʼ:I

    iput v5, v12, Lٴـ/ﹳٴ;->ᵎˊ:I

    iput v5, v12, Lٴـ/ﹳٴ;->ᵔי:I

    goto :goto_c

    :cond_1f
    const/4 v5, 0x2

    if-ne v4, v5, :cond_32

    new-instance v12, Lٴـ/ˑﹳ;

    iget-object v15, v0, Lٴـ/ٴﹶ;->ˈٴ:[C

    iget v4, v6, Lـʽ/ᵎﹶ;->ﹳٴ:I

    iget-boolean v7, v6, Lـʽ/ᵎﹶ;->ⁱˊ:Z

    const/16 v18, 0x1

    move/from16 v16, v4

    move/from16 v17, v7

    invoke-direct/range {v12 .. v18}, Lٴـ/ˑﹳ;-><init>(Lٴـ/ˆʾ;Lـʽ/ﾞᴵ;[CIZI)V

    :goto_d
    invoke-static {v14}, Lᴵﾞ/ﹳٴ;->ˑﹳ(Lـʽ/ⁱˊ;)I

    move-result v4

    if-ne v4, v5, :cond_20

    new-instance v4, Lٴـ/ˈ;

    iget v5, v6, Lـʽ/ᵎﹶ;->ﹳٴ:I

    invoke-direct {v4, v12}, Lٴـ/ʽ;-><init>(Lٴـ/ⁱˊ;)V

    const/4 v6, 0x1

    new-array v7, v6, [B

    iput-object v7, v4, Lٴـ/ˈ;->ᴵᵔ:[B

    new-instance v7, Ljava/util/zip/Inflater;

    invoke-direct {v7, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v7, v4, Lٴـ/ˈ;->ʽʽ:Ljava/util/zip/Inflater;

    new-array v5, v5, [B

    iput-object v5, v4, Lٴـ/ˈ;->ˈٴ:[B

    goto :goto_e

    :cond_20
    new-instance v4, Lٴـ/ʼˎ;

    invoke-direct {v4, v12}, Lٴـ/ʽ;-><init>(Lٴـ/ⁱˊ;)V

    :goto_e
    iput-object v4, v0, Lٴـ/ٴﹶ;->ᴵˊ:Lٴـ/ʽ;

    const/4 v5, 0x0

    iput-boolean v5, v0, Lٴـ/ٴﹶ;->ٴʼ:Z

    iget-object v5, v0, Lٴـ/ٴﹶ;->ᴵᵔ:Lـʽ/ﾞᴵ;

    :goto_f
    if-eqz v5, :cond_31

    iget-object v4, v3, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    iget-object v5, v5, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget-boolean v4, v3, Lـʽ/ⁱˊ;->ـˏ:Z

    if-eqz v4, :cond_22

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_15

    :cond_21
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    if-eqz v27, :cond_28

    const-string v4, "Could not delete existing symlink "

    new-instance v5, Ljava/lang/String;

    iget-wide v6, v3, Lـʽ/ⁱˊ;->ᵎⁱ:J

    long-to-int v6, v6

    new-array v7, v6, [B

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v6}, Lٴـ/ٴﹶ;->read([BII)I

    move-result v0

    if-ne v0, v6, :cond_27

    int-to-long v8, v6

    move-object/from16 v6, p5

    invoke-virtual {v6, v8, v9}, Lʻˆ/ﹳٴ;->ﹳٴ(J)V

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    const/4 v6, 0x0

    goto :goto_10

    :cond_24
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Could not create parent directories"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_10
    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v5, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_11

    :cond_25
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_11
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v4, v0, v7}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_15

    :catch_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_12

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v1

    :cond_27
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Could not read complete entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-object/from16 v6, p5

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_13

    :cond_29
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create parent directories: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_13
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v5, p6

    :goto_14
    :try_start_5
    array-length v7, v5

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8, v7}, Lٴـ/ٴﹶ;->read([BII)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2b

    invoke-virtual {v4, v5, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lʻˆ/ﹳٴ;->ﹳٴ(J)V

    invoke-virtual/range {p0 .. p0}, Lʽⁱ/ᵎﹶ;->ٴᴵ()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_17

    :cond_2b
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2c
    :goto_15
    if-nez v27, :cond_2e

    :try_start_7
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v4, v3, Lـʽ/ˑﹳ;->ᴵˑ:[B

    invoke-static {v0, v4}, Lᴵﾞ/ʽ;->ᵔʾ(Ljava/nio/file/Path;[B)V

    iget-wide v4, v3, Lـʽ/ⁱˊ;->ˊʻ:J

    cmp-long v1, v4, v1

    if-lez v1, :cond_2e

    const/4 v6, 0x0

    new-array v1, v6, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_2

    if-nez v1, :cond_2d

    goto :goto_16

    :cond_2d
    :try_start_8
    invoke-static {v4, v5}, Lᴵﾞ/ﹳٴ;->ʽ(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_16

    :catch_2
    iget-wide v0, v3, Lـʽ/ⁱˊ;->ˊʻ:J

    invoke-static {v0, v1}, Lᴵﾞ/ﹳٴ;->ʽ(J)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :catch_3
    :cond_2e
    :goto_16
    return-void

    :catch_4
    move-exception v0

    goto :goto_19

    :goto_17
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_18

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :goto_19
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_2f
    throw v0

    :cond_30
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "File header and local file header mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not read corresponding local file header for file header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, v14, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    const-string v1, "Entry ["

    const-string v2, "] Strong Encryption not supported"

    invoke-static {v1, v0, v2}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid entry name in local file header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    move-object v3, v1

    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    const-string v3, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    invoke-static {v1, v2, v3}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object v3, v1

    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal file name that breaks out of the target directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
