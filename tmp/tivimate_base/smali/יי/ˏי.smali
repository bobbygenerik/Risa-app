.class public final Lיי/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lיי/ʼˎ;


# instance fields
.field public ʻٴ:Ljava/lang/String;

.field public ʼˎ:I

.field public ʼᐧ:I

.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public ʽﹳ:I

.field public ˆʾ:I

.field public final ˈ:Lʻᴵ/ʻٴ;

.field public ˉʿ:Z

.field public ˉˆ:I

.field public ˏי:J

.field public ˑﹳ:Lˊﾞ/ٴᵢ;

.field public יـ:I

.field public ٴﹶ:I

.field public ᵎﹶ:Lʽⁱ/ﹳᐧ;

.field public ᵔʾ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:Z

.field public final ⁱˊ:I

.field public final ﹳٴ:Ljava/lang/String;

.field public ﹳᐧ:J

.field public ﾞʻ:J

.field public ﾞᴵ:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lיי/ˏי;->ﹳٴ:Ljava/lang/String;

    iput p1, p0, Lיי/ˏי;->ⁱˊ:I

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lיי/ˏי;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance p2, Lʻᴵ/ʻٴ;

    iget-object p1, p1, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v0, p1

    invoke-direct {p2, v0, p1}, Lʻᴵ/ʻٴ;-><init>(I[B)V

    iput-object p2, p0, Lיי/ˏי;->ˈ:Lʻᴵ/ʻٴ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lיי/ˏי;->ﾞʻ:J

    return-void
.end method


# virtual methods
.method public final ʽ(Lᐧˎ/ﹳᐧ;)V
    .locals 23

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lיי/ˏי;->ˑﹳ:Lˊﾞ/ٴᵢ;

    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    if-lez v1, :cond_1e

    iget v1, v0, Lיי/ˏי;->ᵔᵢ:I

    const/16 v2, 0x56

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1b

    iget-object v2, v0, Lיי/ˏי;->ʽ:Lᐧˎ/ﹳᐧ;

    const/16 v6, 0x8

    const/4 v7, 0x3

    iget-object v8, v0, Lיי/ˏי;->ˈ:Lʻᴵ/ʻٴ;

    if-eq v1, v4, :cond_19

    if-ne v1, v7, :cond_18

    invoke-virtual/range {p1 .. p1}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v1

    iget v9, v0, Lיי/ˏי;->ˆʾ:I

    iget v10, v0, Lיי/ˏי;->ʼˎ:I

    sub-int/2addr v9, v10

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v9, v8, Lʻᴵ/ʻٴ;->ⁱˊ:[B

    iget v10, v0, Lיי/ˏי;->ʼˎ:I

    move-object/from16 v11, p1

    invoke-virtual {v11, v9, v10, v1}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    iget v9, v0, Lיי/ˏי;->ʼˎ:I

    add-int/2addr v9, v1

    iput v9, v0, Lיי/ˏי;->ʼˎ:I

    iget v1, v0, Lיי/ˏי;->ˆʾ:I

    if-ne v9, v1, :cond_0

    invoke-virtual {v8, v5}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_f

    iput-boolean v3, v0, Lיי/ˏי;->ˉʿ:Z

    invoke-virtual {v8, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v8, v3}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v10

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    iput v10, v0, Lיי/ˏי;->ᵔʾ:I

    if-nez v10, :cond_e

    if-ne v1, v3, :cond_2

    invoke-virtual {v8, v4}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v10

    add-int/2addr v10, v3

    mul-int/2addr v10, v6

    invoke-virtual {v8, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    :cond_2
    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x6

    invoke-virtual {v8, v10}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v12

    iput v12, v0, Lיי/ˏי;->ˉˆ:I

    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v13

    invoke-virtual {v8, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v14

    if-nez v13, :cond_c

    if-nez v14, :cond_c

    if-nez v1, :cond_3

    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ʼˎ()I

    move-result v13

    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ⁱˊ()I

    move-result v14

    invoke-static {v8, v3}, Lˊﾞ/ﹳٴ;->ᵔﹳ(Lʻᴵ/ʻٴ;Z)Lʼٴ/ˑﹳ;

    move-result-object v15

    iget-object v5, v15, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iput-object v5, v0, Lיי/ˏי;->ʻٴ:Ljava/lang/String;

    iget v5, v15, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput v5, v0, Lיי/ˏי;->יـ:I

    iget v5, v15, Lʼٴ/ˑﹳ;->ⁱˊ:I

    iput v5, v0, Lיי/ˏי;->ʽﹳ:I

    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ⁱˊ()I

    move-result v5

    sub-int/2addr v14, v5

    invoke-virtual {v8, v13}, Lʻᴵ/ʻٴ;->ʽﹳ(I)V

    add-int/lit8 v5, v14, 0x7

    div-int/2addr v5, v6

    new-array v5, v5, [B

    invoke-virtual {v8, v14, v5}, Lʻᴵ/ʻٴ;->ᵔʾ(I[B)V

    new-instance v13, Lʽⁱ/ᵔﹳ;

    invoke-direct {v13}, Lʽⁱ/ᵔﹳ;-><init>()V

    iget-object v14, v0, Lיי/ˏי;->ﾞᴵ:Ljava/lang/String;

    iput-object v14, v13, Lʽⁱ/ᵔﹳ;->ﹳٴ:Ljava/lang/String;

    const-string v14, "video/mp2t"

    invoke-static {v14}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    const-string v14, "audio/mp4a-latm"

    invoke-static {v14}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object v14, v0, Lיי/ˏי;->ʻٴ:Ljava/lang/String;

    iput-object v14, v13, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    iget v14, v0, Lיי/ˏי;->ʽﹳ:I

    iput v14, v13, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget v14, v0, Lיי/ˏי;->יـ:I

    iput v14, v13, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v13, Lʽⁱ/ᵔﹳ;->ʼᐧ:Ljava/util/List;

    iget-object v5, v0, Lיי/ˏי;->ﹳٴ:Ljava/lang/String;

    iput-object v5, v13, Lʽⁱ/ᵔﹳ;->ˈ:Ljava/lang/String;

    iget v5, v0, Lיי/ˏי;->ⁱˊ:I

    iput v5, v13, Lʽⁱ/ᵔﹳ;->ﾞᴵ:I

    new-instance v5, Lʽⁱ/ﹳᐧ;

    invoke-direct {v5, v13}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    iget-object v13, v0, Lיי/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    invoke-virtual {v5, v13}, Lʽⁱ/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    iput-object v5, v0, Lיי/ˏי;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    iget v13, v5, Lʽⁱ/ﹳᐧ;->ٴᵢ:I

    int-to-long v13, v13

    const-wide/32 v16, 0x3d090000

    div-long v13, v16, v13

    iput-wide v13, v0, Lיי/ˏי;->ˏי:J

    iget-object v13, v0, Lיי/ˏי;->ˑﹳ:Lˊﾞ/ٴᵢ;

    invoke-interface {v13, v5}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v4}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v5

    add-int/2addr v5, v3

    mul-int/2addr v5, v6

    invoke-virtual {v8, v5}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v5

    int-to-long v13, v5

    long-to-int v5, v13

    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ⁱˊ()I

    move-result v13

    invoke-static {v8, v3}, Lˊﾞ/ﹳٴ;->ᵔﹳ(Lʻᴵ/ʻٴ;Z)Lʼٴ/ˑﹳ;

    move-result-object v14

    iget-object v15, v14, Lʼٴ/ˑﹳ;->ʽ:Ljava/lang/String;

    iput-object v15, v0, Lיי/ˏי;->ʻٴ:Ljava/lang/String;

    iget v15, v14, Lʼٴ/ˑﹳ;->ﹳٴ:I

    iput v15, v0, Lיי/ˏי;->יـ:I

    iget v14, v14, Lʼٴ/ˑﹳ;->ⁱˊ:I

    iput v14, v0, Lיי/ˏי;->ʽﹳ:I

    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ⁱˊ()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v5, v13

    invoke-virtual {v8, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_4
    :goto_2
    invoke-virtual {v8, v7}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v5

    iput v5, v0, Lיי/ˏי;->ʼᐧ:I

    if-eqz v5, :cond_9

    if-eq v5, v3, :cond_8

    if-eq v5, v7, :cond_7

    if-eq v5, v12, :cond_7

    const/4 v7, 0x5

    if-eq v5, v7, :cond_7

    if-eq v5, v10, :cond_6

    const/4 v7, 0x7

    if-ne v5, v7, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    :goto_3
    invoke-virtual {v8, v3}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v8, v10}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    goto :goto_4

    :cond_8
    const/16 v5, 0x9

    invoke-virtual {v8, v5}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v8, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :goto_4
    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v5

    iput-boolean v5, v0, Lיי/ˏי;->ᵔﹳ:Z

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lיי/ˏי;->ﹳᐧ:J

    if-eqz v5, :cond_b

    if-ne v1, v3, :cond_a

    invoke-virtual {v8, v4}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v6

    invoke-virtual {v8, v1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v0, Lיי/ˏי;->ﹳᐧ:J

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v1

    iget-wide v4, v0, Lיי/ˏי;->ﹳᐧ:J

    shl-long/2addr v4, v6

    invoke-virtual {v8, v6}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v7

    int-to-long v12, v7

    add-long/2addr v4, v12

    iput-wide v4, v0, Lיי/ˏי;->ﹳᐧ:J

    if-nez v1, :cond_a

    :cond_b
    :goto_5
    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ﾞʻ()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v8, v6}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    goto :goto_6

    :cond_c
    invoke-static {v9, v9}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_d
    invoke-static {v9, v9}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_e
    invoke-static {v9, v9}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_f
    iget-boolean v1, v0, Lיי/ˏי;->ˉʿ:Z

    if-nez v1, :cond_10

    goto :goto_a

    :cond_10
    :goto_6
    iget v1, v0, Lיי/ˏי;->ᵔʾ:I

    if-nez v1, :cond_17

    iget v1, v0, Lיי/ˏי;->ˉˆ:I

    if-nez v1, :cond_16

    iget v1, v0, Lיי/ˏי;->ʼᐧ:I

    if-nez v1, :cond_15

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v8, v6}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v5, 0xff

    if-eq v4, v5, :cond_14

    invoke-virtual {v8}, Lʻᴵ/ʻٴ;->ʼˎ()I

    move-result v4

    and-int/lit8 v5, v4, 0x7

    if-nez v5, :cond_11

    shr-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    goto :goto_8

    :cond_11
    iget-object v4, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    mul-int/lit8 v5, v1, 0x8

    invoke-virtual {v8, v5, v4}, Lʻᴵ/ʻٴ;->ᵔʾ(I[B)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    :goto_8
    iget-object v4, v0, Lיי/ˏי;->ˑﹳ:Lˊﾞ/ٴᵢ;

    invoke-interface {v4, v1, v2}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-wide v4, v0, Lיי/ˏי;->ﾞʻ:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v2, v0, Lיי/ˏי;->ˑﹳ:Lˊﾞ/ٴᵢ;

    iget-wide v3, v0, Lיי/ˏי;->ﾞʻ:J

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v1

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    invoke-interface/range {v16 .. v22}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v1, v0, Lיי/ˏי;->ﾞʻ:J

    iget-wide v3, v0, Lיי/ˏי;->ˏי:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lיי/ˏי;->ﾞʻ:J

    iget-boolean v1, v0, Lיי/ˏי;->ᵔﹳ:Z

    if-eqz v1, :cond_13

    iget-wide v1, v0, Lיי/ˏי;->ﹳᐧ:J

    long-to-int v1, v1

    invoke-virtual {v8, v1}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    :cond_13
    :goto_a
    const/4 v4, 0x0

    iput v4, v0, Lיי/ˏי;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_14
    move/from16 v20, v1

    goto :goto_7

    :cond_15
    invoke-static {v9, v9}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_16
    invoke-static {v9, v9}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_17
    invoke-static {v9, v9}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_19
    move-object/from16 v11, p1

    iget v1, v0, Lיי/ˏי;->ٴﹶ:I

    and-int/lit16 v1, v1, -0xe1

    shl-int/2addr v1, v6

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v3

    or-int/2addr v1, v3

    iput v1, v0, Lיי/ˏי;->ˆʾ:I

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    array-length v3, v3

    if-le v1, v3, :cond_1a

    invoke-virtual {v2, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object v1, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    invoke-virtual {v8, v2, v1}, Lʻᴵ/ʻٴ;->יـ(I[B)V

    :cond_1a
    const/4 v4, 0x0

    iput v4, v0, Lיי/ˏי;->ʼˎ:I

    iput v7, v0, Lיי/ˏי;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v11, p1

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v1

    and-int/lit16 v3, v1, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_1c

    iput v1, v0, Lיי/ˏי;->ٴﹶ:I

    iput v4, v0, Lיי/ˏי;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_1c
    if-eq v1, v2, :cond_0

    const/4 v4, 0x0

    iput v4, v0, Lיי/ˏי;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v11, p1

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v1

    if-ne v1, v2, :cond_0

    iput v3, v0, Lיי/ˏי;->ᵔᵢ:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public final ˈ(Z)V
    .locals 0

    return-void
.end method

.method public final ˑﹳ(IJ)V
    .locals 0

    iput-wide p2, p0, Lיי/ˏי;->ﾞʻ:J

    return-void
.end method

.method public final ⁱˊ()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lיי/ˏי;->ᵔᵢ:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lיי/ˏי;->ﾞʻ:J

    iput-boolean v0, p0, Lיי/ˏי;->ˉʿ:Z

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ᵔﹳ;Lיי/ٴᵢ;)V
    .locals 2

    invoke-virtual {p2}, Lיי/ٴᵢ;->ﹳٴ()V

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget v0, p2, Lיי/ٴᵢ;->ˈ:I

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lיי/ˏי;->ˑﹳ:Lˊﾞ/ٴᵢ;

    invoke-virtual {p2}, Lיי/ٴᵢ;->ⁱˊ()V

    iget-object p1, p2, Lיי/ٴᵢ;->ˑﹳ:Ljava/lang/String;

    iput-object p1, p0, Lיי/ˏי;->ﾞᴵ:Ljava/lang/String;

    return-void
.end method
