.class public final Lˎʼ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:Lˊﾞ/ٴᵢ;

.field public ʼᐧ:I

.field public final ʽ:Lˊﾞ/ʼʼ;

.field public ˆʾ:I

.field public final ˈ:Lˊﾞ/ʻٴ;

.field public ˉʿ:J

.field public ˉˆ:J

.field public ˏי:J

.field public final ˑﹳ:Lʿˎ/ﹳٴ;

.field public יـ:Z

.field public ٴﹶ:Lʽⁱ/ٴᵢ;

.field public ᵎﹶ:Lˊﾞ/ᵔﹳ;

.field public ᵔʾ:J

.field public ᵔᵢ:Lˊﾞ/ٴᵢ;

.field public ᵔﹳ:Lˎʼ/ﾞᴵ;

.field public final ⁱˊ:Lᐧˎ/ﹳᐧ;

.field public final ﹳٴ:J

.field public ﹳᐧ:Z

.field public ﾞʻ:J

.field public final ﾞᴵ:Lˊﾞ/ᵔʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lˎʼ/ˈ;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lˎʼ/ˈ;->ﹳٴ:J

    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iput-object p1, p0, Lˎʼ/ˈ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Lˊﾞ/ʼʼ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʼ/ˈ;->ʽ:Lˊﾞ/ʼʼ;

    new-instance p1, Lˊﾞ/ʻٴ;

    invoke-direct {p1}, Lˊﾞ/ʻٴ;-><init>()V

    iput-object p1, p0, Lˎʼ/ˈ;->ˈ:Lˊﾞ/ʻٴ;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lˎʼ/ˈ;->ﾞʻ:J

    new-instance p1, Lʿˎ/ﹳٴ;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lʿˎ/ﹳٴ;-><init>(I)V

    iput-object p1, p0, Lˎʼ/ˈ;->ˑﹳ:Lʿˎ/ﹳٴ;

    new-instance p1, Lˊﾞ/ᵔʾ;

    invoke-direct {p1}, Lˊﾞ/ᵔʾ;-><init>()V

    iput-object p1, p0, Lˎʼ/ˈ;->ﾞᴵ:Lˊﾞ/ᵔʾ;

    iput-object p1, p0, Lˎʼ/ˈ;->ʼˎ:Lˊﾞ/ٴᵢ;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lˎʼ/ˈ;->ˉˆ:J

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 2

    iput-object p1, p0, Lˎʼ/ˈ;->ᵎﹶ:Lˊﾞ/ᵔﹳ;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object p1

    iput-object p1, p0, Lˎʼ/ˈ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    iput-object p1, p0, Lˎʼ/ˈ;->ʼˎ:Lˊﾞ/ٴᵢ;

    iget-object p1, p0, Lˎʼ/ˈ;->ᵎﹶ:Lˊﾞ/ᵔﹳ;

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    return-void
.end method

.method public final ʽ()V
    .locals 9

    .prologue
    iget-object v0, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    instance-of v1, v0, Lˎʼ/ﹳٴ;

    if-eqz v1, :cond_0

    check-cast v0, Lˎʼ/ﹳٴ;

    invoke-virtual {v0}, Lˎʼ/ﹳٴ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lˎʼ/ˈ;->ˉˆ:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    invoke-interface {v2}, Lˎʼ/ﾞᴵ;->ˑﹳ()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    check-cast v0, Lˎʼ/ﹳٴ;

    iget-wide v2, p0, Lˎʼ/ˈ;->ˉˆ:J

    new-instance v1, Lˎʼ/ﹳٴ;

    iget-wide v4, v0, Lˎʼ/ﹳٴ;->ᵔᵢ:J

    iget v6, v0, Lˎʼ/ﹳٴ;->ʼˎ:I

    iget v7, v0, Lˎʼ/ﹳٴ;->ˆʾ:I

    iget-boolean v8, v0, Lˎʼ/ﹳٴ;->ٴﹶ:Z

    invoke-direct/range {v1 .. v8}, Lˎʼ/ﹳٴ;-><init>(JJIIZ)V

    iput-object v1, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    iget-object v0, p0, Lˎʼ/ˈ;->ᵎﹶ:Lˊﾞ/ᵔﹳ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    invoke-interface {v0, v1}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    iget-object v0, p0, Lˎʼ/ˈ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    invoke-interface {v0}, Lˊﾞ/ʾˋ;->ˉʿ()J

    :cond_0
    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ˑﹳ(Lˊﾞ/ʼᐧ;)Z
    .locals 8

    .prologue
    iget-object v0, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lˎʼ/ﾞᴵ;->ˑﹳ()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lˎʼ/ˈ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {p1, v0, v2, v3, v1}, Lˊﾞ/ʼᐧ;->ʻٴ([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    :goto_0
    return v1
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 53

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lˎʼ/ˈ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    sget-object v2, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget v2, v0, Lˎʼ/ˈ;->ˆʾ:I

    const/4 v7, 0x0

    iget-object v8, v0, Lˎʼ/ˈ;->ʽ:Lˊﾞ/ʼʼ;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v7}, Lˎʼ/ˈ;->ᵔᵢ(Lˊﾞ/ʼᐧ;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v8

    const/16 p2, 0x0

    const/4 v7, -0x1

    const/4 v14, -0x1

    const-wide/32 v16, 0xf4240

    goto/16 :goto_29

    :cond_0
    :goto_0
    iget-object v2, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    iget-object v9, v0, Lˎʼ/ˈ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    const/4 v10, 0x1

    if-nez v2, :cond_2f

    new-instance v2, Lᐧˎ/ﹳᐧ;

    iget v15, v8, Lˊﾞ/ʼʼ;->ⁱˊ:I

    invoke-direct {v2, v15}, Lᐧˎ/ﹳᐧ;-><init>(I)V

    iget-object v15, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const-wide/32 v16, 0xf4240

    iget v3, v8, Lˊﾞ/ʼʼ;->ⁱˊ:I

    invoke-interface {v1, v15, v7, v3}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    iget v3, v8, Lˊﾞ/ʼʼ;->ﹳٴ:I

    and-int/2addr v3, v10

    const/16 v4, 0x24

    const/16 v15, 0x15

    if-eqz v3, :cond_2

    iget v3, v8, Lˊﾞ/ʼʼ;->ˈ:I

    if-eq v3, v10, :cond_1

    move v3, v4

    :goto_1
    const/16 p2, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    move v3, v15

    goto :goto_1

    :cond_2
    iget v3, v8, Lˊﾞ/ʼʼ;->ˈ:I

    if-eq v3, v10, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0xd

    goto :goto_1

    :goto_3
    iget v5, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    const-wide/16 v18, 0x0

    add-int/lit8 v13, v3, 0x4

    const v14, 0x496e666f

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const v11, 0x56425249

    const v12, 0x58696e67

    if-lt v5, v13, :cond_4

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    if-eq v3, v12, :cond_6

    if-ne v3, v14, :cond_4

    goto :goto_4

    :cond_4
    iget v3, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    const/16 v5, 0x28

    if-lt v3, v5, :cond_5

    invoke-virtual {v2, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    if-ne v3, v11, :cond_5

    move v3, v11

    goto :goto_4

    :cond_5
    move v3, v7

    :cond_6
    :goto_4
    iget-object v4, v0, Lˎʼ/ˈ;->ˈ:Lˊﾞ/ʻٴ;

    const-wide/16 v22, 0x1

    const-wide/16 v24, -0x1

    if-eq v3, v14, :cond_7

    if-eq v3, v11, :cond_8

    if-eq v3, v12, :cond_7

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    move-object/from16 v27, p2

    move-object v5, v8

    :goto_5
    move-object/from16 v37, v9

    goto/16 :goto_1a

    :cond_7
    move-object v5, v8

    goto/16 :goto_a

    :cond_8
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v11

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v13

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    iget v15, v8, Lˊﾞ/ʼʼ;->ⁱˊ:I

    int-to-long v6, v15

    add-long v32, v13, v6

    int-to-long v6, v3

    add-long v6, v32, v6

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    if-gtz v3, :cond_9

    move-object/from16 v27, p2

    move-object v5, v8

    goto/16 :goto_9

    :cond_9
    iget v15, v8, Lˊﾞ/ʼʼ;->ʽ:I

    move-wide/from16 v27, v6

    int-to-long v5, v3

    iget v3, v8, Lˊﾞ/ʼʼ;->ﾞᴵ:I

    move-wide/from16 v29, v11

    int-to-long v10, v3

    mul-long/2addr v5, v10

    sub-long v5, v5, v22

    invoke-static {v15, v5, v6}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v5

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v3

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v10

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    iget v15, v8, Lˊﾞ/ʼʼ;->ⁱˊ:I

    move-object/from16 v37, v8

    int-to-long v7, v15

    add-long/2addr v13, v7

    new-array v8, v3, [J

    new-array v15, v3, [J

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v3, :cond_e

    move-wide/from16 v34, v13

    int-to-long v12, v7

    mul-long/2addr v12, v5

    move-wide/from16 v38, v5

    int-to-long v5, v3

    div-long/2addr v12, v5

    aput-wide v12, v8, v7

    aput-wide v34, v15, v7

    const/4 v5, 0x1

    if-eq v11, v5, :cond_d

    move v5, v7

    const/4 v6, 0x2

    if-eq v11, v6, :cond_c

    const/4 v12, 0x3

    if-eq v11, v12, :cond_b

    const/4 v12, 0x4

    if-eq v11, v12, :cond_a

    move-object/from16 v27, p2

    move-object/from16 v5, v37

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v12

    goto :goto_7

    :cond_b
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v12

    goto :goto_7

    :cond_c
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    move-result v12

    goto :goto_7

    :cond_d
    move v5, v7

    const/4 v6, 0x2

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v12

    :goto_7
    int-to-long v12, v12

    int-to-long v6, v10

    mul-long/2addr v12, v6

    add-long v6, v12, v34

    add-int/lit8 v5, v5, 0x1

    move-wide v13, v6

    const/4 v12, 0x2

    move v7, v5

    move-wide/from16 v5, v38

    goto :goto_6

    :cond_e
    move-wide/from16 v38, v5

    move-wide/from16 v34, v13

    cmp-long v2, v29, v24

    const-string v3, ", "

    const-string v5, "VbriSeeker"

    if-eqz v2, :cond_f

    cmp-long v2, v29, v27

    if-eqz v2, :cond_f

    const-string v2, "VBRI data size mismatch: "

    move-wide/from16 v6, v29

    invoke-static {v6, v7, v2, v3}, Lʼﾞ/ˊˋ;->ʻٴ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v6, v27

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    move-wide/from16 v6, v27

    :goto_8
    cmp-long v2, v6, v34

    if-eqz v2, :cond_10

    const-string v2, "VBRI bytes and ToC mismatch (using max): "

    invoke-static {v6, v7, v2, v3}, Lʼﾞ/ˊˋ;->ʻٴ(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v10, v34

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\nSeeking will be inaccurate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_10
    move-wide/from16 v34, v6

    new-instance v27, Lˎʼ/ᵎﹶ;

    move-object/from16 v5, v37

    iget v2, v5, Lˊﾞ/ʼʼ;->ˑﹳ:I

    move/from16 v36, v2

    move-object/from16 v28, v8

    move-object/from16 v29, v15

    move-wide/from16 v30, v38

    invoke-direct/range {v27 .. v36}, Lˎʼ/ᵎﹶ;-><init>([J[JJJJI)V

    :goto_9
    iget v2, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    goto/16 :goto_5

    :goto_a
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v6

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_11

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʽʽ()I

    move-result v7

    goto :goto_b

    :cond_11
    const/4 v7, -0x1

    :goto_b
    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_12

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v10

    move-wide/from16 v34, v10

    goto :goto_c

    :cond_12
    move-wide/from16 v34, v24

    :goto_c
    and-int/lit8 v8, v6, 0x4

    const/4 v10, 0x4

    if-ne v8, v10, :cond_14

    const/16 v8, 0x64

    new-array v10, v8, [J

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v8, :cond_13

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v13

    move-object/from16 v37, v9

    int-to-long v8, v13

    aput-wide v8, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v37

    const/16 v8, 0x64

    goto :goto_d

    :cond_13
    move-object/from16 v36, v10

    :goto_e
    move-object/from16 v37, v9

    goto :goto_f

    :cond_14
    move-object/from16 v36, p2

    goto :goto_e

    :goto_f
    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_15

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_15
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v6

    const/16 v8, 0x18

    if-lt v6, v8, :cond_16

    invoke-virtual {v2, v15}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v2

    const v6, 0xfff000

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0xc

    and-int/lit16 v2, v2, 0xfff

    goto :goto_10

    :cond_16
    const/4 v2, -0x1

    const/4 v6, -0x1

    :goto_10
    int-to-long v7, v7

    iget v9, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    iget v10, v5, Lˊﾞ/ʼʼ;->ʽ:I

    iget v11, v5, Lˊﾞ/ʼʼ;->ˑﹳ:I

    iget v13, v5, Lˊﾞ/ʼʼ;->ﾞᴵ:I

    iget v15, v4, Lˊﾞ/ʻٴ;->ﹳٴ:I

    const/4 v14, -0x1

    if-eq v15, v14, :cond_17

    iget v15, v4, Lˊﾞ/ʻٴ;->ⁱˊ:I

    if-eq v15, v14, :cond_17

    goto :goto_11

    :cond_17
    if-eq v6, v14, :cond_18

    if-eq v2, v14, :cond_18

    iput v6, v4, Lˊﾞ/ʻٴ;->ﹳٴ:I

    iput v2, v4, Lˊﾞ/ʻٴ;->ⁱˊ:I

    :cond_18
    :goto_11
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v28

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v14

    cmp-long v2, v14, v24

    if-eqz v2, :cond_1a

    cmp-long v2, v34, v24

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v14

    move v6, v13

    add-long v12, v28, v34

    cmp-long v14, v14, v12

    if-eqz v14, :cond_19

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Data size mismatch between stream ("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v15, v3

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") and Xing frame ("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "), using Xing value."

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mp3Extractor"

    invoke-static {v3, v2}, Lᐧˎ/ﹳٴ;->ʽﹳ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_19
    move v15, v3

    goto :goto_12

    :cond_1a
    move v15, v3

    move v6, v13

    :goto_12
    iget v2, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    const v2, 0x58696e67

    if-ne v15, v2, :cond_1f

    cmp-long v2, v7, v24

    if-eqz v2, :cond_1c

    cmp-long v2, v7, v18

    if-nez v2, :cond_1b

    goto :goto_13

    :cond_1b
    int-to-long v2, v6

    mul-long/2addr v7, v2

    sub-long v7, v7, v22

    invoke-static {v10, v7, v8}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v2

    move-wide/from16 v31, v2

    goto :goto_14

    :cond_1c
    :goto_13
    move-wide/from16 v31, v20

    :goto_14
    cmp-long v2, v31, v20

    if-nez v2, :cond_1e

    :cond_1d
    :goto_15
    move-object/from16 v27, p2

    goto/16 :goto_1a

    :cond_1e
    new-instance v27, Lˎʼ/ᵔᵢ;

    move/from16 v30, v9

    move/from16 v33, v11

    invoke-direct/range {v27 .. v36}, Lˎʼ/ᵔᵢ;-><init>(JIJIJ[J)V

    goto :goto_1a

    :cond_1f
    move v2, v9

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v11

    cmp-long v3, v7, v24

    if-eqz v3, :cond_21

    cmp-long v3, v7, v18

    if-nez v3, :cond_20

    goto :goto_16

    :cond_20
    int-to-long v13, v6

    mul-long/2addr v13, v7

    sub-long v13, v13, v22

    invoke-static {v10, v13, v14}, Lᐧˎ/ʼʼ;->ʿ(IJ)J

    move-result-wide v9

    move-wide/from16 v43, v9

    goto :goto_17

    :cond_21
    :goto_16
    move-wide/from16 v43, v20

    :goto_17
    cmp-long v3, v43, v20

    if-nez v3, :cond_22

    goto :goto_15

    :cond_22
    cmp-long v3, v34, v24

    if-eqz v3, :cond_23

    add-long v11, v28, v34

    int-to-long v9, v2

    sub-long v34, v34, v9

    :goto_18
    move-wide/from16 v46, v11

    move-wide/from16 v39, v34

    goto :goto_19

    :cond_23
    cmp-long v3, v11, v24

    if-eqz v3, :cond_1d

    sub-long v9, v11, v28

    int-to-long v13, v2

    sub-long v34, v9, v13

    goto :goto_18

    :goto_19
    sget-object v45, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v41, 0x7a1200

    invoke-static/range {v39 .. v45}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    move-wide/from16 v11, v39

    move-object/from16 v3, v45

    invoke-static {v9, v10}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v50

    invoke-static {v11, v12, v7, v8, v3}, Lˈˋ/ʾˊ;->ᵔʾ(JJLjava/math/RoundingMode;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v51

    new-instance v45, Lˎʼ/ﹳٴ;

    int-to-long v2, v2

    add-long v48, v28, v2

    const/16 v52, 0x0

    invoke-direct/range {v45 .. v52}, Lˎʼ/ﹳٴ;-><init>(JJIIZ)V

    move-object/from16 v27, v45

    :goto_1a
    iget-object v2, v0, Lˎʼ/ˈ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v6

    if-eqz v2, :cond_28

    iget-object v3, v2, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v8, v3

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v8, :cond_28

    aget-object v10, v3, v9

    instance-of v11, v10, Lˆʻ/ˉʿ;

    if-eqz v11, :cond_27

    check-cast v10, Lˆʻ/ˉʿ;

    iget-object v3, v10, Lˆʻ/ˉʿ;->ˑﹳ:[I

    if-eqz v2, :cond_25

    iget-object v2, v2, Lʽⁱ/ٴᵢ;->ﹳٴ:[Lʽⁱ/ˊʻ;

    array-length v8, v2

    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v8, :cond_25

    aget-object v11, v2, v9

    instance-of v12, v11, Lˆʻ/ˉˆ;

    if-eqz v12, :cond_24

    check-cast v11, Lˆʻ/ˉˆ;

    iget-object v12, v11, Lˆʻ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    const-string v13, "TLEN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    iget-object v2, v11, Lˆʻ/ˉˆ;->ʽ:Lʼʻ/ᵎⁱ;

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v8

    goto :goto_1d

    :cond_24
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_25
    move-wide/from16 v8, v20

    :goto_1d
    array-length v2, v3

    add-int/lit8 v11, v2, 0x1

    new-array v12, v11, [J

    new-array v11, v11, [J

    const/16 v26, 0x0

    aput-wide v6, v12, v26

    aput-wide v18, v11, v26

    move-wide/from16 v14, v18

    const/4 v13, 0x1

    :goto_1e
    if-gt v13, v2, :cond_26

    move/from16 v22, v2

    iget v2, v10, Lˆʻ/ˉʿ;->ʽ:I

    add-int/lit8 v23, v13, -0x1

    aget v24, v3, v23

    add-int v2, v2, v24

    move-object/from16 v24, v3

    int-to-long v2, v2

    add-long/2addr v6, v2

    iget v2, v10, Lˆʻ/ˉʿ;->ˈ:I

    iget-object v3, v10, Lˆʻ/ˉʿ;->ﾞᴵ:[I

    aget v3, v3, v23

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v14, v2

    aput-wide v6, v12, v13

    aput-wide v14, v11, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v22

    move-object/from16 v3, v24

    goto :goto_1e

    :cond_26
    new-instance v2, Lˎʼ/ʽ;

    invoke-direct {v2, v8, v9, v12, v11}, Lˎʼ/ʽ;-><init>(J[J[J)V

    goto :goto_1f

    :cond_27
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_28
    move-object/from16 v2, p2

    :goto_1f
    iget-boolean v3, v0, Lˎʼ/ˈ;->ﹳᐧ:Z

    if-eqz v3, :cond_29

    new-instance v2, Lˎʼ/ˑﹳ;

    move-wide/from16 v6, v20

    invoke-direct {v2, v6, v7}, Lˊﾞ/יـ;-><init>(J)V

    move-object v6, v2

    move-object/from16 v2, v37

    goto :goto_22

    :cond_29
    if-eqz v2, :cond_2a

    move-object/from16 v27, v2

    goto :goto_20

    :cond_2a
    if-eqz v27, :cond_2b

    goto :goto_20

    :cond_2b
    move-object/from16 v27, p2

    :goto_20
    if-eqz v27, :cond_2c

    invoke-interface/range {v27 .. v27}, Lˊﾞ/ʾˋ;->ᵔᵢ()Z

    :cond_2c
    if-eqz v27, :cond_2d

    invoke-interface/range {v27 .. v27}, Lˊﾞ/ʾˋ;->ᵔᵢ()Z

    move-object/from16 v6, v27

    move-object/from16 v2, v37

    goto :goto_21

    :cond_2d
    move-object/from16 v2, v37

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v8, 0x0

    const/4 v10, 0x4

    invoke-interface {v1, v3, v8, v10}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    invoke-virtual {v2, v8}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v3

    invoke-virtual {v5, v3}, Lˊﾞ/ʼʼ;->ﹳٴ(I)Z

    new-instance v6, Lˎʼ/ﹳٴ;

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v7

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v9

    iget v11, v5, Lˊﾞ/ʼʼ;->ˑﹳ:I

    iget v12, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lˎʼ/ﹳٴ;-><init>(JJIIZ)V

    :goto_21
    iget-object v3, v0, Lˎʼ/ˈ;->ᵔᵢ:Lˊﾞ/ٴᵢ;

    invoke-interface {v6}, Lˊﾞ/ʾˋ;->ˉʿ()J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_22
    iput-object v6, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    iget-object v3, v0, Lˎʼ/ˈ;->ᵎﹶ:Lˊﾞ/ᵔﹳ;

    invoke-interface {v3, v6}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    new-instance v3, Lʽⁱ/ᵔﹳ;

    invoke-direct {v3}, Lʽⁱ/ᵔﹳ;-><init>()V

    const-string v6, "audio/mpeg"

    invoke-static {v6}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lʽⁱ/ᵔﹳ;->ﾞʻ:Ljava/lang/String;

    iget-object v6, v5, Lˊﾞ/ʼʼ;->ᵎﹶ:Ljava/io/Serializable;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    const/16 v6, 0x1000

    iput v6, v3, Lʽⁱ/ᵔﹳ;->ᵔʾ:I

    iget v6, v5, Lˊﾞ/ʼʼ;->ˈ:I

    iput v6, v3, Lʽⁱ/ᵔﹳ;->ᴵᵔ:I

    iget v6, v5, Lˊﾞ/ʼʼ;->ʽ:I

    iput v6, v3, Lʽⁱ/ᵔﹳ;->ˊʻ:I

    iget v6, v4, Lˊﾞ/ʻٴ;->ﹳٴ:I

    iput v6, v3, Lʽⁱ/ᵔﹳ;->ˉٴ:I

    iget v4, v4, Lˊﾞ/ʻٴ;->ⁱˊ:I

    iput v4, v3, Lʽⁱ/ᵔﹳ;->ᵎⁱ:I

    iget-object v4, v0, Lˎʼ/ˈ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    iput-object v4, v3, Lʽⁱ/ᵔﹳ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    iget-object v4, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    invoke-interface {v4}, Lˎʼ/ﾞᴵ;->ﾞʻ()I

    move-result v4

    const v6, -0x7fffffff

    if-eq v4, v6, :cond_2e

    iget-object v4, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    invoke-interface {v4}, Lˎʼ/ﾞᴵ;->ﾞʻ()I

    move-result v4

    iput v4, v3, Lʽⁱ/ᵔﹳ;->ᵔᵢ:I

    :cond_2e
    iget-object v4, v0, Lˎʼ/ˈ;->ʼˎ:Lˊﾞ/ٴᵢ;

    new-instance v6, Lʽⁱ/ﹳᐧ;

    invoke-direct {v6, v3}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    invoke-interface {v4, v6}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v3

    iput-wide v3, v0, Lˎʼ/ˈ;->ᵔʾ:J

    goto :goto_23

    :cond_2f
    move-object v5, v8

    move-object v2, v9

    const/16 p2, 0x0

    const-wide/32 v16, 0xf4240

    const-wide/16 v18, 0x0

    iget-wide v3, v0, Lˎʼ/ˈ;->ᵔʾ:J

    cmp-long v3, v3, v18

    if-eqz v3, :cond_30

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v3

    iget-wide v6, v0, Lˎʼ/ˈ;->ᵔʾ:J

    cmp-long v8, v3, v6

    if-gez v8, :cond_30

    sub-long/2addr v6, v3

    long-to-int v3, v6

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :cond_30
    :goto_23
    iget v3, v0, Lˎʼ/ˈ;->ʼᐧ:I

    if-nez v3, :cond_35

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    invoke-virtual/range {p0 .. p1}, Lˎʼ/ˈ;->ˑﹳ(Lˊﾞ/ʼᐧ;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto/16 :goto_28

    :cond_31
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v2

    iget v3, v0, Lˎʼ/ˈ;->ˆʾ:I

    int-to-long v3, v3

    const v6, -0x1f400

    and-int/2addr v6, v2

    int-to-long v6, v6

    const-wide/32 v8, -0x1f400

    and-long/2addr v3, v8

    cmp-long v3, v6, v3

    if-nez v3, :cond_32

    invoke-static {v2}, Lˊﾞ/ﹳٴ;->ˆʾ(I)I

    move-result v3

    const/4 v14, -0x1

    if-ne v3, v14, :cond_33

    :cond_32
    const/4 v7, 0x1

    goto :goto_24

    :cond_33
    invoke-virtual {v5, v2}, Lˊﾞ/ʼʼ;->ﹳٴ(I)Z

    iget-wide v2, v0, Lˎʼ/ˈ;->ﾞʻ:J

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v20

    if-nez v2, :cond_34

    iget-object v2, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lˎʼ/ﾞᴵ;->ʽ(J)J

    move-result-wide v2

    iput-wide v2, v0, Lˎʼ/ˈ;->ﾞʻ:J

    iget-wide v2, v0, Lˎʼ/ˈ;->ﹳٴ:J

    cmp-long v4, v2, v20

    if-eqz v4, :cond_34

    iget-object v4, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    move-wide/from16 v6, v18

    invoke-interface {v4, v6, v7}, Lˎʼ/ﾞᴵ;->ʽ(J)J

    move-result-wide v6

    iget-wide v8, v0, Lˎʼ/ˈ;->ﾞʻ:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v8

    iput-wide v2, v0, Lˎʼ/ˈ;->ﾞʻ:J

    :cond_34
    iget v2, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    iput v2, v0, Lˎʼ/ˈ;->ʼᐧ:I

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    iget v4, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    iput-wide v2, v0, Lˎʼ/ˈ;->ˉˆ:J

    iget-object v2, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    instance-of v2, v2, Lˎʼ/ⁱˊ;

    if-nez v2, :cond_36

    :cond_35
    const/4 v7, 0x1

    goto :goto_27

    :cond_36
    iget-wide v1, v0, Lˎʼ/ˈ;->ˉʿ:J

    iget v3, v5, Lˊﾞ/ʼʼ;->ﾞᴵ:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    mul-long v1, v1, v16

    iget v3, v5, Lˊﾞ/ʼʼ;->ʽ:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    throw p2

    :goto_24
    invoke-interface {v1, v7}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    const/4 v8, 0x0

    iput v8, v0, Lˎʼ/ˈ;->ˆʾ:I

    :goto_25
    const/4 v7, 0x0

    :goto_26
    const/4 v14, -0x1

    goto :goto_29

    :goto_27
    iget-object v2, v0, Lˎʼ/ˈ;->ʼˎ:Lˊﾞ/ٴᵢ;

    iget v3, v0, Lˎʼ/ˈ;->ʼᐧ:I

    invoke-interface {v2, v1, v3, v7}, Lˊﾞ/ٴᵢ;->ʽ(Lʽⁱ/ˆʾ;IZ)I

    move-result v1

    const/4 v14, -0x1

    if-ne v1, v14, :cond_37

    :goto_28
    const/4 v7, -0x1

    goto :goto_26

    :cond_37
    iget v2, v0, Lˎʼ/ˈ;->ʼᐧ:I

    sub-int/2addr v2, v1

    iput v2, v0, Lˎʼ/ˈ;->ʼᐧ:I

    if-lez v2, :cond_38

    goto :goto_25

    :cond_38
    iget-object v6, v0, Lˎʼ/ˈ;->ʼˎ:Lˊﾞ/ٴᵢ;

    iget-wide v1, v0, Lˎʼ/ˈ;->ˉʿ:J

    iget-wide v3, v0, Lˎʼ/ˈ;->ﾞʻ:J

    mul-long v1, v1, v16

    iget v7, v5, Lˊﾞ/ʼʼ;->ʽ:I

    int-to-long v7, v7

    div-long/2addr v1, v7

    add-long v7, v1, v3

    iget v10, v5, Lˊﾞ/ʼʼ;->ⁱˊ:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    iget-wide v1, v0, Lˎʼ/ˈ;->ˉʿ:J

    iget v3, v5, Lˊﾞ/ʼʼ;->ﾞᴵ:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lˎʼ/ˈ;->ˉʿ:J

    const/4 v8, 0x0

    iput v8, v0, Lˎʼ/ˈ;->ʼᐧ:I

    move v7, v8

    goto :goto_26

    :goto_29
    if-ne v7, v14, :cond_3a

    iget-object v1, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    instance-of v2, v1, Lˎʼ/ⁱˊ;

    if-eqz v2, :cond_3a

    iget-wide v2, v0, Lˎʼ/ˈ;->ˉʿ:J

    iget-wide v8, v0, Lˎʼ/ˈ;->ﾞʻ:J

    mul-long v2, v2, v16

    iget v4, v5, Lˊﾞ/ʼʼ;->ʽ:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v2, v8

    invoke-interface {v1}, Lˊﾞ/ʾˋ;->ˉʿ()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_39

    goto :goto_2a

    :cond_39
    iget-object v1, v0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    check-cast v1, Lˎʼ/ⁱˊ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2

    :cond_3a
    :goto_2a
    return v7
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ᵔᵢ(Lˊﾞ/ʼᐧ;Z)Z
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    const v2, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v2, 0x20000

    :goto_0
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget-object v3, v0, Lˎʼ/ˈ;->ˑﹳ:Lʿˎ/ﹳٴ;

    iget-object v3, v3, Lʿˎ/ﹳٴ;->ʾˋ:Lᐧˎ/ﹳᐧ;

    const/4 v5, 0x0

    move v7, v4

    move-object v6, v5

    :goto_1
    :try_start_0
    iget-object v8, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/16 v9, 0xa

    invoke-interface {v1, v8, v4, v9}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ᴵˊ()I

    move-result v8

    const v10, 0x494433

    if-eq v8, v10, :cond_1

    goto :goto_3

    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾᵎ()I

    move-result v8

    add-int/lit8 v10, v8, 0xa

    if-nez v6, :cond_2

    new-array v6, v10, [B

    iget-object v11, v3, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-static {v11, v4, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v1, v6, v9, v8}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    new-instance v8, Lˆʻ/ʼˎ;

    invoke-direct {v8, v5}, Lˆʻ/ʼˎ;-><init>(Lˆʻ/ᵎﹶ;)V

    invoke-virtual {v8, v10, v6}, Lˆʻ/ʼˎ;->ٴʼ(I[B)Lʽⁱ/ٴᵢ;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-interface {v1, v8}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    :goto_2
    add-int/2addr v7, v10

    goto :goto_1

    :catch_0
    :goto_3
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    invoke-interface {v1, v7}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    iput-object v6, v0, Lˎʼ/ˈ;->ٴﹶ:Lʽⁱ/ٴᵢ;

    if-eqz v6, :cond_3

    iget-object v3, v0, Lˎʼ/ˈ;->ˈ:Lˊﾞ/ʻٴ;

    invoke-virtual {v3, v6}, Lˊﾞ/ʻٴ;->ⁱˊ(Lʽⁱ/ٴᵢ;)V

    :cond_3
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ʾᵎ()J

    move-result-wide v5

    long-to-int v3, v5

    if-nez p2, :cond_4

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :cond_4
    move v5, v4

    :goto_4
    move v6, v5

    move v7, v6

    goto :goto_5

    :cond_5
    move v3, v4

    move v5, v3

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p1}, Lˎʼ/ˈ;->ˑﹳ(Lˊﾞ/ʼᐧ;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_7

    if-lez v6, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Lˎʼ/ˈ;->ʽ()V

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_7
    iget-object v8, v0, Lˎʼ/ˈ;->ⁱˊ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v8, v4}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    invoke-virtual {v8}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v8

    if-eqz v5, :cond_8

    int-to-long v10, v5

    const v12, -0x1f400

    and-int/2addr v12, v8

    int-to-long v12, v12

    const-wide/32 v14, -0x1f400

    and-long/2addr v10, v14

    cmp-long v10, v12, v10

    if-nez v10, :cond_9

    :cond_8
    invoke-static {v8}, Lˊﾞ/ﹳٴ;->ˆʾ(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    :cond_9
    add-int/lit8 v5, v7, 0x1

    if-ne v7, v2, :cond_b

    if-eqz p2, :cond_a

    return v4

    :cond_a
    invoke-virtual {v0}, Lˎʼ/ˈ;->ʽ()V

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_b
    if-eqz p2, :cond_c

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    add-int v6, v3, v5

    invoke-interface {v1, v6}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    goto :goto_6

    :cond_c
    invoke-interface {v1, v9}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    :goto_6
    move v6, v4

    move v7, v5

    move v5, v6

    goto :goto_5

    :cond_d
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v9, :cond_e

    iget-object v5, v0, Lˎʼ/ˈ;->ʽ:Lˊﾞ/ʼʼ;

    invoke-virtual {v5, v8}, Lˊﾞ/ʼʼ;->ﹳٴ(I)Z

    move v5, v8

    goto :goto_9

    :cond_e
    const/4 v8, 0x4

    if-ne v6, v8, :cond_10

    :goto_7
    if-eqz p2, :cond_f

    add-int/2addr v3, v7

    invoke-interface {v1, v3}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    goto :goto_8

    :cond_f
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    :goto_8
    iput v5, v0, Lˎʼ/ˈ;->ˆʾ:I

    return v9

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, -0x4

    invoke-interface {v1, v10}, Lˊﾞ/ʼᐧ;->ᴵˊ(I)V

    goto :goto_5
.end method

.method public final ⁱˊ(JJ)V
    .locals 2

    .prologue
    const/4 p1, 0x0

    iput p1, p0, Lˎʼ/ˈ;->ˆʾ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lˎʼ/ˈ;->ﾞʻ:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lˎʼ/ˈ;->ˉʿ:J

    iput p1, p0, Lˎʼ/ˈ;->ʼᐧ:I

    iput-wide p3, p0, Lˎʼ/ˈ;->ˏי:J

    iget-object p1, p0, Lˎʼ/ˈ;->ᵔﹳ:Lˎʼ/ﾞᴵ;

    instance-of p1, p1, Lˎʼ/ⁱˊ;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lˎʼ/ˈ;->ᵔᵢ(Lˊﾞ/ʼᐧ;Z)Z

    move-result p1

    return p1
.end method
