.class public final Lˎـ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:J

.field public ʼᐧ:Lˎـ/ˈ;

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ˆʾ:I

.field public final ˈ:Lᐧˎ/ﹳᐧ;

.field public ˉʿ:J

.field public ˉˆ:Lˎـ/ﹳٴ;

.field public final ˑﹳ:Lˎـ/ʽ;

.field public ٴﹶ:I

.field public ᵎﹶ:I

.field public ᵔʾ:Z

.field public ᵔᵢ:Z

.field public final ⁱˊ:Lᐧˎ/ﹳᐧ;

.field public final ﹳٴ:Lᐧˎ/ﹳᐧ;

.field public ﾞʻ:I

.field public ﾞᴵ:Lˊﾞ/ᵔﹳ;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lˎـ/ⁱˊ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lˎـ/ⁱˊ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lˎـ/ⁱˊ;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v0, p0, Lˎـ/ⁱˊ;->ˈ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lˎـ/ʽ;

    new-instance v1, Lˊﾞ/ᵔʾ;

    invoke-direct {v1}, Lˊﾞ/ᵔʾ;-><init>()V

    invoke-direct {v0, v1}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lˎـ/ʽ;->ᴵˊ:J

    const/4 v1, 0x0

    new-array v2, v1, [J

    iput-object v2, v0, Lˎـ/ʽ;->ʽʽ:[J

    new-array v1, v1, [J

    iput-object v1, v0, Lˎـ/ʽ;->ˈٴ:[J

    iput-object v0, p0, Lˎـ/ⁱˊ;->ˑﹳ:Lˎـ/ʽ;

    const/4 v0, 0x1

    iput v0, p0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 0

    iput-object p1, p0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    return-void
.end method

.method public final ʽ(Lˊﾞ/ʼᐧ;)Lᐧˎ/ﹳᐧ;
    .locals 5

    .prologue
    iget v0, p0, Lˎـ/ⁱˊ;->ﾞʻ:I

    iget-object v1, p0, Lˎـ/ⁱˊ;->ˈ:Lᐧˎ/ﹳᐧ;

    iget-object v2, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v4, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_0
    iget v0, p0, Lˎـ/ⁱˊ;->ﾞʻ:I

    invoke-virtual {v1, v0}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    iget-object v0, v1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v2, p0, Lˎـ/ⁱˊ;->ﾞʻ:I

    invoke-interface {p1, v0, v4, v2}, Lˊﾞ/ʼᐧ;->readFully([BII)V

    return-object v1
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 28

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v2, v0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq v2, v7, :cond_28

    const/4 v9, 0x3

    if-eq v2, v5, :cond_27

    if-eq v2, v9, :cond_25

    if-ne v2, v6, :cond_24

    iget-boolean v2, v0, Lˎـ/ⁱˊ;->ᵔᵢ:Z

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v13, v0, Lˎـ/ⁱˊ;->ˑﹳ:Lˎـ/ʽ;

    if-eqz v2, :cond_1

    iget-wide v14, v0, Lˎـ/ⁱˊ;->ʼˎ:J

    iget-wide v11, v0, Lˎـ/ⁱˊ;->ˉʿ:J

    add-long/2addr v14, v11

    :goto_1
    move-wide/from16 v17, v14

    goto :goto_2

    :cond_1
    iget-wide v11, v13, Lˎـ/ʽ;->ᴵˊ:J

    cmp-long v2, v11, v9

    if-nez v2, :cond_2

    const-wide/16 v17, 0x0

    goto :goto_2

    :cond_2
    iget-wide v14, v0, Lˎـ/ⁱˊ;->ˉʿ:J

    goto :goto_1

    :goto_2
    iget v2, v0, Lˎـ/ⁱˊ;->ٴﹶ:I

    if-ne v2, v4, :cond_e

    iget-object v4, v0, Lˎـ/ⁱˊ;->ˉˆ:Lˎـ/ﹳٴ;

    if-eqz v4, :cond_e

    iget-boolean v2, v0, Lˎـ/ⁱˊ;->ᵔʾ:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v3, Lˊﾞ/יـ;

    invoke-direct {v3, v9, v10}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v2, v3}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iput-boolean v7, v0, Lˎـ/ⁱˊ;->ᵔʾ:Z

    :cond_3
    iget-object v2, v0, Lˎـ/ⁱˊ;->ˉˆ:Lˎـ/ﹳٴ;

    invoke-virtual/range {p0 .. p1}, Lˎـ/ⁱˊ;->ʽ(Lˊﾞ/ʼᐧ;)Lᐧˎ/ﹳᐧ;

    move-result-object v3

    iget-object v4, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lˊﾞ/ٴᵢ;

    iget-boolean v11, v2, Lˎـ/ﹳٴ;->ᴵˊ:Z

    const/4 v12, 0x1

    if-nez v11, :cond_9

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v11

    shr-int/lit8 v14, v11, 0x4

    and-int/lit8 v14, v14, 0xf

    iput v14, v2, Lˎـ/ﹳٴ;->ˈٴ:I

    const-string v15, "video/x-flv"

    const/16 p2, 0x0

    const/4 v8, 0x2

    if-ne v14, v8, :cond_4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0x3

    sget-object v11, Lˎـ/ﹳٴ;->ᴵᵔ:[I

    aget v8, v11, v8

    new-instance v11, Lʽⁱ/ᵔﹳ;

    invoke-direct {v11}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-static {v15}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v14, "audio/mpeg"

    invoke-static {v14}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v12, v11, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iput v8, v11, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    invoke-static {v11, v4}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iput-boolean v12, v2, Lˎـ/ﹳٴ;->ʽʽ:Z

    goto :goto_5

    :cond_4
    const/4 v8, 0x7

    if-eq v14, v8, :cond_7

    const/16 v11, 0x8

    if-ne v14, v11, :cond_5

    goto :goto_3

    :cond_5
    const/16 v4, 0xa

    if-ne v14, v4, :cond_6

    goto :goto_5

    :cond_6
    new-instance v1, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Audio format not supported: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lˎـ/ﹳٴ;->ˈٴ:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    if-ne v14, v8, :cond_8

    const-string v8, "audio/g711-alaw"

    goto :goto_4

    :cond_8
    const-string v8, "audio/g711-mlaw"

    :goto_4
    new-instance v11, Lʽⁱ/ᵔﹳ;

    invoke-direct {v11}, Lʽⁱ/ᵔﹳ;-><init>()V

    invoke-static {v15}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    invoke-static {v8}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iput v12, v11, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    const/16 v8, 0x1f40

    iput v8, v11, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    invoke-static {v11, v4}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iput-boolean v12, v2, Lˎـ/ﹳٴ;->ʽʽ:Z

    :goto_5
    iput-boolean v12, v2, Lˎـ/ﹳٴ;->ᴵˊ:Z

    goto :goto_6

    :cond_9
    const/16 p2, 0x0

    invoke-virtual {v3, v12}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :goto_6
    iget-object v4, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v4, Lˊﾞ/ٴᵢ;

    iget v8, v2, Lˎـ/ﹳٴ;->ˈٴ:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v8, v11, :cond_a

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    invoke-interface {v4, v8, v3}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Lˊﾞ/ٴᵢ;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v8

    invoke-interface/range {v16 .. v22}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    :goto_7
    move v11, v12

    goto :goto_8

    :cond_a
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v8

    const/4 v11, 0x0

    if-nez v8, :cond_b

    iget-boolean v14, v2, Lˎـ/ﹳٴ;->ʽʽ:Z

    if-nez v14, :cond_b

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    new-array v14, v8, [B

    invoke-virtual {v3, v14, v11, v8}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    new-instance v3, Lʻᴵ/ʻٴ;

    invoke-direct {v3, v8, v14}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    invoke-static {v3, v11}, Lˊﾞ/ﹳٴ;->ᵔﹳ(Lʻᴵ/ʻٴ;Z)Lʼٴ/ˑﹳ;

    move-result-object v3

    new-instance v8, Lʽⁱ/ᵔﹳ;

    invoke-direct {v8}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v15, "video/x-flv"

    invoke-static {v15}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v15, "audio/mp4a-latm"

    invoke-static {v15}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v15, v3, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iput-object v15, v8, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    iget v15, v3, Lʼٴ/ˑﹳ;->ⁱˊ:I

    iput v15, v8, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget v3, v3, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput v3, v8, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v8, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-static {v8, v4}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iput-boolean v12, v2, Lˎـ/ﹳٴ;->ʽʽ:Z

    goto :goto_8

    :cond_b
    iget v14, v2, Lˎـ/ﹳٴ;->ˈٴ:I

    const/16 v15, 0xa

    if-ne v14, v15, :cond_c

    if-ne v8, v12, :cond_d

    :cond_c
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v8

    invoke-interface {v4, v8, v3}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v2, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Lˊﾞ/ٴᵢ;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v8

    invoke-interface/range {v16 .. v22}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    goto :goto_7

    :cond_d
    :goto_8
    move v3, v7

    move-wide/from16 v19, v9

    move v2, v11

    goto/16 :goto_11

    :cond_e
    const/16 p2, 0x0

    if-ne v2, v3, :cond_18

    iget-object v3, v0, Lˎـ/ⁱˊ;->ʼᐧ:Lˎـ/ˈ;

    if-eqz v3, :cond_18

    iget-boolean v2, v0, Lˎـ/ⁱˊ;->ᵔʾ:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v3, Lˊﾞ/יـ;

    invoke-direct {v3, v9, v10}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v2, v3}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iput-boolean v7, v0, Lˎـ/ⁱˊ;->ᵔʾ:Z

    :cond_f
    iget-object v2, v0, Lˎـ/ⁱˊ;->ʼᐧ:Lˎـ/ˈ;

    invoke-virtual/range {p0 .. p1}, Lˎـ/ⁱˊ;->ʽ(Lˊﾞ/ʼᐧ;)Lᐧˎ/ﹳᐧ;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v4

    shr-int/lit8 v8, v4, 0x4

    and-int/lit8 v8, v8, 0xf

    and-int/lit8 v4, v4, 0xf

    const/4 v11, 0x7

    if-ne v4, v11, :cond_17

    iput v8, v2, Lˎـ/ˈ;->ٴᵢ:I

    const/4 v4, 0x5

    if-eq v8, v4, :cond_10

    const/4 v4, 0x1

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_16

    iget-object v4, v2, Lˎـ/ˈ;->ᴵˊ:Lᐧˎ/ﹳᐧ;

    iget-object v8, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v8, Lˊﾞ/ٴᵢ;

    iget-object v11, v2, Lˎـ/ˈ;->ʽʽ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v12

    iget-object v14, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v15, v3, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    move-wide/from16 v19, v9

    add-int/lit8 v9, v15, 0x1

    iput v9, v3, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    aget-byte v10, v14, v15

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    shr-int/lit8 v10, v10, 0x8

    add-int/lit8 v5, v15, 0x2

    iput v5, v3, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    aget-byte v9, v14, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v15, v15, 0x3

    iput v15, v3, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v9

    int-to-long v9, v5

    const-wide/16 v14, 0x3e8

    mul-long/2addr v9, v14

    add-long v22, v9, v17

    const/4 v5, 0x0

    const/4 v9, 0x1

    if-nez v12, :cond_11

    iget-boolean v10, v2, Lˎـ/ˈ;->ᴵᵔ:Z

    if-nez v10, :cond_11

    new-instance v4, Lᐧˎ/ﹳᐧ;

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v10

    new-array v10, v10, [B

    invoke-direct {v4, v10}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v11

    invoke-virtual {v3, v10, v5, v11}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    invoke-static {v4}, Lˊﾞ/ˈ;->ﹳٴ(Lᐧˎ/ﹳᐧ;)Lˊﾞ/ˈ;

    move-result-object v3

    iget v4, v3, Lˊﾞ/ˈ;->ⁱˊ:I

    iput v4, v2, Lˎـ/ˈ;->ˈٴ:I

    new-instance v4, Lʽⁱ/ᵔﹳ;

    invoke-direct {v4}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v10, "video/x-flv"

    invoke-static {v10}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v10, "video/avc"

    invoke-static {v10}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v10, v3, Lˊﾞ/ˈ;->ﾞʻ:Ljava/lang/String;

    iput-object v10, v4, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    iget v10, v3, Lˊﾞ/ˈ;->ʽ:I

    iput v10, v4, Lʽⁱ/ᵔﹳ;->ˏי:I

    iget v10, v3, Lˊﾞ/ˈ;->ˈ:I

    iput v10, v4, Lʽⁱ/ᵔﹳ;->ʽﹳ:I

    iget v10, v3, Lˊﾞ/ˈ;->ٴﹶ:F

    iput v10, v4, Lʽⁱ/ᵔﹳ;->ᵢˏ:F

    iget-object v3, v3, Lˊﾞ/ˈ;->ﹳٴ:Ljava/util/ArrayList;

    iput-object v3, v4, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    invoke-static {v4, v8}, Lﹳˎ/ˆʾ;->ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V

    iput-boolean v9, v2, Lˎـ/ˈ;->ᴵᵔ:Z

    goto :goto_c

    :cond_11
    if-ne v12, v9, :cond_15

    iget-boolean v10, v2, Lˎـ/ˈ;->ᴵᵔ:Z

    if-eqz v10, :cond_15

    iget v10, v2, Lˎـ/ˈ;->ٴᵢ:I

    if-ne v10, v9, :cond_12

    move/from16 v24, v9

    goto :goto_a

    :cond_12
    move/from16 v24, v5

    :goto_a
    iget-boolean v10, v2, Lˎـ/ˈ;->ˊʻ:Z

    if-nez v10, :cond_13

    if-nez v24, :cond_13

    goto :goto_c

    :cond_13
    iget-object v10, v11, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aput-byte v5, v10, v5

    aput-byte v5, v10, v9

    const/4 v12, 0x2

    aput-byte v5, v10, v12

    iget v10, v2, Lˎـ/ˈ;->ˈٴ:I

    const/4 v12, 0x4

    rsub-int/lit8 v10, v10, 0x4

    move/from16 v25, v5

    :goto_b
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v14

    if-lez v14, :cond_14

    iget-object v14, v11, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v15, v2, Lˎـ/ˈ;->ˈٴ:I

    invoke-virtual {v3, v14, v10, v15}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    invoke-virtual {v11, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v14

    invoke-virtual {v4, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-interface {v8, v12, v4}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    add-int/lit8 v25, v25, 0x4

    invoke-interface {v8, v14, v3}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    add-int v25, v25, v14

    goto :goto_b

    :cond_14
    iget-object v3, v2, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object/from16 v21, v3

    check-cast v21, Lˊﾞ/ٴᵢ;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-interface/range {v21 .. v27}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iput-boolean v9, v2, Lˎـ/ˈ;->ˊʻ:Z

    move v5, v9

    :cond_15
    :goto_c
    if-eqz v5, :cond_20

    move v2, v7

    goto :goto_d

    :cond_16
    move-wide/from16 v19, v9

    goto/16 :goto_10

    :goto_d
    move v3, v7

    goto/16 :goto_11

    :cond_17
    new-instance v1, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    const-string v2, "Video format not supported: "

    invoke-static {v4, v2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    move-wide/from16 v19, v9

    const/16 v3, 0x12

    if-ne v2, v3, :cond_21

    iget-boolean v2, v0, Lˎـ/ⁱˊ;->ᵔʾ:Z

    if-nez v2, :cond_21

    invoke-virtual/range {p0 .. p1}, Lˎـ/ⁱˊ;->ʽ(Lˊﾞ/ʼᐧ;)Lᐧˎ/ﹳᐧ;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    goto/16 :goto_f

    :cond_19
    invoke-static {v2}, Lˎـ/ʽ;->ˋˊ(Lᐧˎ/ﹳᐧ;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onMetaData"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_f

    :cond_1a
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_f

    :cond_1b
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1c

    goto/16 :goto_f

    :cond_1c
    invoke-static {v2}, Lˎـ/ʽ;->ʽˑ(Lᐧˎ/ﹳᐧ;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Double;

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v4, :cond_1d

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmpl-double v5, v3, v10

    if-lez v5, :cond_1d

    mul-double/2addr v3, v8

    double-to-long v3, v3

    iput-wide v3, v13, Lˎـ/ʽ;->ᴵˊ:J

    :cond_1d
    const-string v3, "keyframes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1f

    check-cast v2, Ljava/util/Map;

    const-string v3, "filepositions"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "times"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_1f

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_1f

    check-cast v3, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [J

    iput-object v5, v13, Lˎـ/ʽ;->ʽʽ:[J

    new-array v5, v4, [J

    iput-object v5, v13, Lˎـ/ʽ;->ˈٴ:[J

    const/4 v5, 0x0

    move v10, v5

    :goto_e
    if-ge v10, v4, :cond_1f

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v14, v12, Ljava/lang/Double;

    if-eqz v14, :cond_1e

    instance-of v14, v11, Ljava/lang/Double;

    if-eqz v14, :cond_1e

    iget-object v14, v13, Lˎـ/ʽ;->ʽʽ:[J

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v21, v8

    mul-double v8, v17, v21

    double-to-long v8, v8

    aput-wide v8, v14, v10

    iget-object v8, v13, Lˎـ/ʽ;->ˈٴ:[J

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    aput-wide v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v21

    goto :goto_e

    :cond_1e
    new-array v2, v5, [J

    iput-object v2, v13, Lˎـ/ʽ;->ʽʽ:[J

    new-array v2, v5, [J

    iput-object v2, v13, Lˎـ/ʽ;->ˈٴ:[J

    :cond_1f
    :goto_f
    iget-wide v2, v13, Lˎـ/ʽ;->ᴵˊ:J

    cmp-long v4, v2, v19

    if-eqz v4, :cond_20

    iget-object v4, v0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    new-instance v5, Lˊﾞ/ʾᵎ;

    iget-object v8, v13, Lˎـ/ʽ;->ˈٴ:[J

    iget-object v9, v13, Lˎـ/ʽ;->ʽʽ:[J

    invoke-direct {v5, v2, v3, v8, v9}, Lˊﾞ/ʾᵎ;-><init>(J[J[J)V

    invoke-interface {v4, v5}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iput-boolean v7, v0, Lˎـ/ⁱˊ;->ᵔʾ:Z

    :cond_20
    :goto_10
    move/from16 v2, p2

    goto/16 :goto_d

    :cond_21
    iget v2, v0, Lˎـ/ⁱˊ;->ﾞʻ:I

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    move/from16 v2, p2

    move v3, v2

    :goto_11
    iget-boolean v4, v0, Lˎـ/ⁱˊ;->ᵔᵢ:Z

    if-nez v4, :cond_23

    if-eqz v2, :cond_23

    iput-boolean v7, v0, Lˎـ/ⁱˊ;->ᵔᵢ:Z

    iget-wide v4, v13, Lˎـ/ʽ;->ᴵˊ:J

    cmp-long v2, v4, v19

    if-nez v2, :cond_22

    iget-wide v4, v0, Lˎـ/ⁱˊ;->ˉʿ:J

    neg-long v11, v4

    goto :goto_12

    :cond_22
    const-wide/16 v11, 0x0

    :goto_12
    iput-wide v11, v0, Lˎـ/ⁱˊ;->ʼˎ:J

    :cond_23
    iput v6, v0, Lˎـ/ⁱˊ;->ˆʾ:I

    const/4 v2, 0x2

    iput v2, v0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    if-eqz v3, :cond_0

    return p2

    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_25
    const/16 p2, 0x0

    iget-object v2, v0, Lˎـ/ⁱˊ;->ʽ:Lᐧˎ/ﹳᐧ;

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v4, 0xb

    move/from16 v5, p2

    invoke-interface {v1, v3, v5, v4, v7}, Lˊﾞ/ʼᐧ;->ﾞᴵ([BIIZ)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_13

    :cond_26
    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    iput v3, v0, Lˎـ/ⁱˊ;->ٴﹶ:I

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v3

    iput v3, v0, Lˎـ/ⁱˊ;->ﾞʻ:I

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lˎـ/ⁱˊ;->ˉʿ:J

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    iget-wide v7, v0, Lˎـ/ⁱˊ;->ˉʿ:J

    or-long/2addr v3, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    iput-wide v3, v0, Lˎـ/ⁱˊ;->ˉʿ:J

    invoke-virtual {v2, v9}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    iput v6, v0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    goto/16 :goto_0

    :cond_27
    iget v2, v0, Lˎـ/ⁱˊ;->ˆʾ:I

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    const/4 v5, 0x0

    iput v5, v0, Lˎـ/ⁱˊ;->ˆʾ:I

    iput v9, v0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    goto/16 :goto_0

    :cond_28
    const/4 v5, 0x0

    iget-object v2, v0, Lˎـ/ⁱˊ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    iget-object v8, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v8, v5, v3, v7}, Lˊﾞ/ʼᐧ;->ﾞᴵ([BIIZ)Z

    move-result v8

    if-nez v8, :cond_29

    :goto_13
    const/4 v1, -0x1

    return v1

    :cond_29
    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v6

    and-int/lit8 v8, v6, 0x4

    if-eqz v8, :cond_2a

    move v8, v7

    goto :goto_14

    :cond_2a
    move v8, v5

    :goto_14
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2b

    move v5, v7

    :cond_2b
    if-eqz v8, :cond_2c

    iget-object v6, v0, Lˎـ/ⁱˊ;->ˉˆ:Lˎـ/ﹳٴ;

    if-nez v6, :cond_2c

    new-instance v6, Lˎـ/ﹳٴ;

    iget-object v8, v0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v8, v4, v7}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v4

    invoke-direct {v6, v4}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    iput-object v6, v0, Lˎـ/ⁱˊ;->ˉˆ:Lˎـ/ﹳٴ;

    :cond_2c
    if-eqz v5, :cond_2d

    iget-object v4, v0, Lˎـ/ⁱˊ;->ʼᐧ:Lˎـ/ˈ;

    if-nez v4, :cond_2d

    new-instance v4, Lˎـ/ˈ;

    iget-object v5, v0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    const/4 v6, 0x2

    invoke-interface {v5, v3, v6}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v3

    invoke-direct {v4, v3}, Lˎـ/ˈ;-><init>(Lˊﾞ/ٴᵢ;)V

    iput-object v4, v0, Lˎـ/ⁱˊ;->ʼᐧ:Lˎـ/ˈ;

    :cond_2d
    iget-object v3, v0, Lˎـ/ⁱˊ;->ﾞᴵ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v3}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lˎـ/ⁱˊ;->ˆʾ:I

    const/4 v2, 0x2

    iput v2, v0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    goto/16 :goto_0
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 0

    .prologue
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    iput-boolean p2, p0, Lˎـ/ⁱˊ;->ᵔᵢ:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lˎـ/ⁱˊ;->ᵎﹶ:I

    :goto_0
    iput p2, p0, Lˎـ/ⁱˊ;->ˆʾ:I

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˎـ/ⁱˊ;->ﹳٴ:Lᐧˎ/ﹳᐧ;

    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    check-cast p1, Lˊﾞ/ﾞʻ;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v1, v2, v3, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v1

    const v3, 0x464c56

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v2, v3, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v1

    and-int/lit16 v1, v1, 0xfa

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v2, v3, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v1

    iput v2, p1, Lˊﾞ/ﾞʻ;->ˊʻ:I

    invoke-virtual {p1, v1, v2}, Lˊﾞ/ﾞʻ;->ﹳٴ(IZ)Z

    iget-object v1, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {p1, v1, v2, v3, v2}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    invoke-virtual {v0, v2}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v0}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v2
.end method
