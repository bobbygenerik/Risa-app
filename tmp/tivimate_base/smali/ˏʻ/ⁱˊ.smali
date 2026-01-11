.class public final Lˏʻ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˏʻ/ﾞᴵ;


# instance fields
.field public final ʽʽ:J

.field public final ʾˋ:Landroidx/leanback/widget/ـˆ;

.field public final ˈٴ:Lˏʻ/ᵔᵢ;

.field public ˉٴ:J

.field public ˊʻ:J

.field public ٴʼ:J

.field public ٴᵢ:J

.field public final ᴵˊ:J

.field public ᴵᵔ:I

.field public ᵎˊ:J

.field public ᵎⁱ:J

.field public ᵔי:J


# direct methods
.method public constructor <init>(Lˏʻ/ᵔᵢ;JJJJZ)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lˏʻ/ⁱˊ;->ˈٴ:Lˏʻ/ᵔᵢ;

    iput-wide p2, p0, Lˏʻ/ⁱˊ;->ᴵˊ:J

    iput-wide p4, p0, Lˏʻ/ⁱˊ;->ʽʽ:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    goto :goto_2

    :cond_2
    :goto_1
    iput-wide p8, p0, Lˏʻ/ⁱˊ;->ˊʻ:J

    const/4 p1, 0x4

    iput p1, p0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    :goto_2
    new-instance p1, Landroidx/leanback/widget/ـˆ;

    invoke-direct {p1}, Landroidx/leanback/widget/ـˆ;-><init>()V

    iput-object p1, p0, Lˏʻ/ⁱˊ;->ʾˋ:Landroidx/leanback/widget/ـˆ;

    return-void
.end method


# virtual methods
.method public final ʽ()Lˊﾞ/ʾˋ;
    .locals 4

    .prologue
    iget-wide v0, p0, Lˏʻ/ⁱˊ;->ˊʻ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lˏʻ/ﹳٴ;

    invoke-direct {v0, p0}, Lˏʻ/ﹳٴ;-><init>(Lˏʻ/ⁱˊ;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;)J
    .locals 27

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    iget-wide v5, v0, Lˏʻ/ⁱˊ;->ʽʽ:J

    const/4 v7, 0x0

    iget-object v8, v0, Lˏʻ/ⁱˊ;->ʾˋ:Landroidx/leanback/widget/ـˆ;

    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x4

    if-eqz v2, :cond_d

    if-eq v2, v9, :cond_c

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v12, :cond_0

    return-wide v10

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_1
    const-wide/16 v19, 0x2

    goto/16 :goto_4

    :cond_2
    const-wide/16 v15, 0x2

    iget-wide v13, v0, Lˏʻ/ⁱˊ;->ᵎⁱ:J

    const-wide/16 v17, 0x0

    iget-wide v3, v0, Lˏʻ/ⁱˊ;->ٴʼ:J

    cmp-long v2, v13, v3

    if-nez v2, :cond_3

    move-wide v4, v10

    :goto_0
    move-wide/from16 v19, v15

    goto/16 :goto_3

    :cond_3
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Lˏʻ/ⁱˊ;->ٴʼ:J

    invoke-virtual {v8, v1, v4, v5}, Landroidx/leanback/widget/ـˆ;->ˑﹳ(Lˊﾞ/ʼᐧ;J)Z

    move-result v4

    if-nez v4, :cond_5

    iget-wide v4, v0, Lˏʻ/ⁱˊ;->ᵎⁱ:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {v8, v1, v7}, Landroidx/leanback/widget/ـˆ;->ˈ(Lˊﾞ/ʼᐧ;Z)Z

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-wide v4, v0, Lˏʻ/ⁱˊ;->ˉٴ:J

    iget-wide v13, v8, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    sub-long/2addr v4, v13

    iget v9, v8, Landroidx/leanback/widget/ـˆ;->ˈ:I

    move-wide/from16 v19, v15

    iget v15, v8, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    add-int/2addr v9, v15

    cmp-long v15, v17, v4

    if-gtz v15, :cond_6

    const-wide/32 v15, 0x11940

    cmp-long v15, v4, v15

    if-gez v15, :cond_6

    move-wide v4, v10

    goto :goto_3

    :cond_6
    cmp-long v15, v4, v17

    if-gez v15, :cond_7

    iput-wide v2, v0, Lˏʻ/ⁱˊ;->ٴʼ:J

    iput-wide v13, v0, Lˏʻ/ⁱˊ;->ᵔי:J

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    int-to-long v13, v9

    add-long/2addr v2, v13

    iput-wide v2, v0, Lˏʻ/ⁱˊ;->ᵎⁱ:J

    iget-wide v2, v8, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    iput-wide v2, v0, Lˏʻ/ⁱˊ;->ᵎˊ:J

    :goto_1
    iget-wide v2, v0, Lˏʻ/ⁱˊ;->ٴʼ:J

    iget-wide v13, v0, Lˏʻ/ⁱˊ;->ᵎⁱ:J

    sub-long/2addr v2, v13

    const-wide/32 v16, 0x186a0

    cmp-long v2, v2, v16

    if-gez v2, :cond_8

    iput-wide v13, v0, Lˏʻ/ⁱˊ;->ٴʼ:J

    move-wide v4, v13

    goto :goto_3

    :cond_8
    int-to-long v2, v9

    if-gtz v15, :cond_9

    move-wide/from16 v15, v19

    goto :goto_2

    :cond_9
    const-wide/16 v15, 0x1

    :goto_2
    mul-long/2addr v2, v15

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v15

    sub-long/2addr v15, v2

    iget-wide v2, v0, Lˏʻ/ⁱˊ;->ٴʼ:J

    const-wide/16 v17, 0x1

    iget-wide v13, v0, Lˏʻ/ⁱˊ;->ᵎⁱ:J

    sub-long v21, v2, v13

    mul-long v21, v21, v4

    iget-wide v4, v0, Lˏʻ/ⁱˊ;->ᵔי:J

    move-wide/from16 v23, v13

    iget-wide v12, v0, Lˏʻ/ⁱˊ;->ᵎˊ:J

    sub-long/2addr v4, v12

    div-long v21, v21, v4

    add-long v21, v21, v15

    sub-long v25, v2, v17

    invoke-static/range {v21 .. v26}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide v4

    :goto_3
    cmp-long v2, v4, v10

    if-eqz v2, :cond_a

    return-wide v4

    :cond_a
    iput v6, v0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    :goto_4
    invoke-virtual {v8, v1, v10, v11}, Landroidx/leanback/widget/ـˆ;->ˑﹳ(Lˊﾞ/ʼᐧ;J)Z

    invoke-virtual {v8, v1, v7}, Landroidx/leanback/widget/ـˆ;->ˈ(Lˊﾞ/ʼᐧ;Z)Z

    iget-wide v2, v8, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    iget-wide v4, v0, Lˏʻ/ⁱˊ;->ˉٴ:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    const/4 v1, 0x4

    iput v1, v0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    iget-wide v1, v0, Lˏʻ/ⁱˊ;->ᵎˊ:J

    add-long v1, v1, v19

    neg-long v1, v1

    return-wide v1

    :cond_b
    iget v2, v8, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iget v3, v8, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Lˏʻ/ⁱˊ;->ᵎⁱ:J

    iget-wide v2, v8, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    iput-wide v2, v0, Lˏʻ/ⁱˊ;->ᵎˊ:J

    goto :goto_4

    :cond_c
    const-wide/16 v17, 0x0

    goto :goto_5

    :cond_d
    const-wide/16 v17, 0x0

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Lˏʻ/ⁱˊ;->ٴᵢ:J

    iput v9, v0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    const-wide/32 v12, 0xff1b

    sub-long v12, v5, v12

    cmp-long v2, v12, v2

    if-lez v2, :cond_e

    return-wide v12

    :cond_e
    :goto_5
    iput v7, v8, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    move-wide/from16 v2, v17

    iput-wide v2, v8, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    iput v7, v8, Landroidx/leanback/widget/ـˆ;->ʽ:I

    iput v7, v8, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iput v7, v8, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    invoke-virtual {v8, v1, v10, v11}, Landroidx/leanback/widget/ـˆ;->ˑﹳ(Lˊﾞ/ʼᐧ;J)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v8, v1, v7}, Landroidx/leanback/widget/ـˆ;->ˈ(Lˊﾞ/ʼᐧ;Z)Z

    iget v2, v8, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iget v3, v8, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V

    iget-wide v2, v8, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    :goto_6
    iget v4, v8, Landroidx/leanback/widget/ـˆ;->ﹳٴ:I

    const/4 v7, 0x4

    and-int/2addr v4, v7

    if-eq v4, v7, :cond_f

    invoke-virtual {v8, v1, v10, v11}, Landroidx/leanback/widget/ـˆ;->ˑﹳ(Lˊﾞ/ʼᐧ;J)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v12

    cmp-long v4, v12, v5

    if-gez v4, :cond_f

    invoke-virtual {v8, v1, v9}, Landroidx/leanback/widget/ـˆ;->ˈ(Lˊﾞ/ʼᐧ;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v8, Landroidx/leanback/widget/ـˆ;->ˈ:I

    iget v7, v8, Landroidx/leanback/widget/ـˆ;->ˑﹳ:I

    add-int/2addr v4, v7

    :try_start_0
    invoke-interface {v1, v4}, Lˊﾞ/ʼᐧ;->ᵔʾ(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v2, v8, Landroidx/leanback/widget/ـˆ;->ⁱˊ:J

    goto :goto_6

    :catch_0
    :cond_f
    iput-wide v2, v0, Lˏʻ/ⁱˊ;->ˊʻ:J

    const/4 v1, 0x4

    iput v1, v0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    iget-wide v1, v0, Lˏʻ/ⁱˊ;->ٴᵢ:J

    return-wide v1

    :cond_10
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final ᵔʾ(J)V
    .locals 10

    iget-wide v0, p0, Lˏʻ/ⁱˊ;->ˊʻ:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lˏʻ/ⁱˊ;->ˉٴ:J

    const/4 p1, 0x2

    iput p1, p0, Lˏʻ/ⁱˊ;->ᴵᵔ:I

    iget-wide p1, p0, Lˏʻ/ⁱˊ;->ᴵˊ:J

    iput-wide p1, p0, Lˏʻ/ⁱˊ;->ᵎⁱ:J

    iget-wide p1, p0, Lˏʻ/ⁱˊ;->ʽʽ:J

    iput-wide p1, p0, Lˏʻ/ⁱˊ;->ٴʼ:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lˏʻ/ⁱˊ;->ᵎˊ:J

    iget-wide p1, p0, Lˏʻ/ⁱˊ;->ˊʻ:J

    iput-wide p1, p0, Lˏʻ/ⁱˊ;->ᵔי:J

    return-void
.end method
