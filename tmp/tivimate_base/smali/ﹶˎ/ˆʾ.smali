.class public final Lﹶˎ/ˆʾ;
.super Lﹳᵢ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ʼˈ:Lʽⁱ/ᴵˊ;

.field public final ˆﾞ:Z

.field public final ˈʿ:Lʽˑ/ʽ;

.field public final ˉٴ:Lﹶˎ/ʽ;

.field public ˊˋ:Lـˊ/ᵔﹳ;

.field public ˋᵔ:Lʽⁱ/ʾᵎ;

.field public final ˑٴ:J

.field public final ٴʼ:Lᵔﹶ/ˈٴ;

.field public final ᵎˊ:Lⁱᴵ/ﾞʻ;

.field public final ᵎⁱ:Lᐧﹳ/ʽ;

.field public final ᵔי:Lʻᴵ/יـ;

.field public final ᵔٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer.hls"

    invoke-static {v0}, Lʽⁱ/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ᴵˊ;Lᐧﹳ/ʽ;Lﹶˎ/ʽ;Lᵔﹶ/ˈٴ;Lⁱᴵ/ﾞʻ;Lʻᴵ/יـ;Lʽˑ/ʽ;JZI)V
    .locals 0

    invoke-direct {p0}, Lﹳᵢ/ﹳٴ;-><init>()V

    iput-object p1, p0, Lﹶˎ/ˆʾ;->ʼˈ:Lʽⁱ/ᴵˊ;

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    iput-object p1, p0, Lﹶˎ/ˆʾ;->ˋᵔ:Lʽⁱ/ʾᵎ;

    iput-object p2, p0, Lﹶˎ/ˆʾ;->ᵎⁱ:Lᐧﹳ/ʽ;

    iput-object p3, p0, Lﹶˎ/ˆʾ;->ˉٴ:Lﹶˎ/ʽ;

    iput-object p4, p0, Lﹶˎ/ˆʾ;->ٴʼ:Lᵔﹶ/ˈٴ;

    iput-object p5, p0, Lﹶˎ/ˆʾ;->ᵎˊ:Lⁱᴵ/ﾞʻ;

    iput-object p6, p0, Lﹶˎ/ˆʾ;->ᵔי:Lʻᴵ/יـ;

    iput-object p7, p0, Lﹶˎ/ˆʾ;->ˈʿ:Lʽˑ/ʽ;

    iput-wide p8, p0, Lﹶˎ/ˆʾ;->ˑٴ:J

    iput-boolean p10, p0, Lﹶˎ/ˆʾ;->ˆﾞ:Z

    iput p11, p0, Lﹶˎ/ˆʾ;->ᵔٴ:I

    return-void
.end method

.method public static ᵢˏ(JLjava/util/List;)Lʽˑ/ᵎﹶ;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽˑ/ᵎﹶ;

    iget-wide v3, v2, Lʽˑ/ˆʾ;->ᴵᵔ:J

    cmp-long v5, v3, p0

    if-gtz v5, :cond_0

    iget-boolean v5, v2, Lʽˑ/ᵎﹶ;->ᵔי:Z

    if-eqz v5, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    cmp-long v2, v3, p0

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final ʾˋ(Lʽˑ/ﾞʻ;)V
    .locals 39

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lʽˑ/ﾞʻ;->ʼᐧ:Z

    iget-boolean v3, v1, Lʽˑ/ﾞʻ;->ᵎﹶ:Z

    iget-object v4, v1, Lʽˑ/ﾞʻ;->ﹳᐧ:Lʼʻ/ᵎⁱ;

    iget-wide v5, v1, Lʽˑ/ﾞʻ;->ʽﹳ:J

    iget-wide v7, v1, Lʽˑ/ﾞʻ;->ˑﹳ:J

    iget v9, v1, Lʽˑ/ﾞʻ;->ˈ:I

    iget-wide v10, v1, Lʽˑ/ﾞʻ;->ᵔᵢ:J

    if-eqz v2, :cond_0

    invoke-static {v10, v11}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v14

    move-wide/from16 v19, v14

    goto :goto_0

    :cond_0
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const/4 v2, 0x1

    const/4 v14, 0x2

    if-eq v9, v14, :cond_2

    if-ne v9, v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_2
    :goto_1
    move-wide/from16 v17, v19

    :goto_2
    new-instance v15, Lᵔﹶ/ˈٴ;

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v12, v0, Lﹶˎ/ˆʾ;->ˈʿ:Lʽˑ/ʽ;

    iget-object v13, v12, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x7

    invoke-direct {v15, v13}, Lᵔﹶ/ˈٴ;-><init>(I)V

    iget-boolean v13, v12, Lʽˑ/ʽ;->ˆﾞ:Z

    const-wide/16 v23, 0x0

    if-eqz v13, :cond_12

    iget-object v13, v1, Lʽˑ/ﾞʻ;->ʻٴ:Lʽˑ/ٴﹶ;

    move-object/from16 v32, v15

    iget-wide v14, v12, Lʽˑ/ʽ;->ᵔٴ:J

    sub-long v25, v10, v14

    iget-boolean v12, v1, Lʽˑ/ﾞʻ;->ˉˆ:Z

    if-eqz v12, :cond_3

    add-long v14, v25, v5

    goto :goto_3

    :cond_3
    move-wide/from16 v14, v21

    :goto_3
    iget-boolean v2, v1, Lʽˑ/ﾞʻ;->ʼᐧ:Z

    move/from16 v28, v3

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lﹶˎ/ˆʾ;->ˑٴ:J

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʽʽ(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v2

    add-long/2addr v10, v5

    sub-long/2addr v2, v10

    move-wide/from16 v35, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v35, v23

    :goto_4
    iget-object v2, v0, Lﹶˎ/ˆʾ;->ˋᵔ:Lʽⁱ/ʾᵎ;

    iget-wide v2, v2, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_5

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v2

    :goto_5
    move-wide/from16 v33, v2

    goto :goto_7

    :cond_5
    cmp-long v2, v7, v21

    if-eqz v2, :cond_6

    sub-long v2, v5, v7

    goto :goto_6

    :cond_6
    iget-wide v2, v13, Lʽˑ/ٴﹶ;->ˈ:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_7

    iget-wide v10, v1, Lʽˑ/ﾞʻ;->ᵔʾ:J

    cmp-long v10, v10, v21

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    iget-wide v2, v13, Lʽˑ/ٴﹶ;->ʽ:J

    cmp-long v10, v2, v21

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    const-wide/16 v2, 0x3

    iget-wide v10, v1, Lʽˑ/ﾞʻ;->ˉʿ:J

    mul-long/2addr v2, v10

    :goto_6
    add-long v2, v2, v35

    goto :goto_5

    :goto_7
    add-long v37, v5, v35

    invoke-static/range {v33 .. v38}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide v2

    invoke-virtual {v0}, Lﹶˎ/ˆʾ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v5

    iget-object v5, v5, Lʽⁱ/ᴵˊ;->ʽ:Lʽⁱ/ʾᵎ;

    iget v6, v5, Lʽⁱ/ʾᵎ;->ˈ:F

    const v10, -0x800001

    cmpl-float v6, v6, v10

    const/4 v11, 0x0

    if-nez v6, :cond_9

    iget v5, v5, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_9

    iget-wide v5, v13, Lʽˑ/ٴﹶ;->ʽ:J

    cmp-long v5, v5, v21

    if-nez v5, :cond_9

    iget-wide v5, v13, Lʽˑ/ٴﹶ;->ˈ:J

    cmp-long v5, v5, v21

    if-nez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    move v5, v11

    :goto_8
    new-instance v6, Lʽⁱ/ـˆ;

    invoke-direct {v6}, Lʽⁱ/ـˆ;-><init>()V

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʻᵎ(J)J

    move-result-wide v2

    iput-wide v2, v6, Lʽⁱ/ـˆ;->ﹳٴ:J

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v5, :cond_a

    move v3, v2

    goto :goto_9

    :cond_a
    iget-object v3, v0, Lﹶˎ/ˆʾ;->ˋᵔ:Lʽⁱ/ʾᵎ;

    iget v3, v3, Lʽⁱ/ʾᵎ;->ˈ:F

    :goto_9
    iput v3, v6, Lʽⁱ/ـˆ;->ˈ:F

    if-eqz v5, :cond_b

    goto :goto_a

    :cond_b
    iget-object v2, v0, Lﹶˎ/ˆʾ;->ˋᵔ:Lʽⁱ/ʾᵎ;

    iget v2, v2, Lʽⁱ/ʾᵎ;->ˑﹳ:F

    :goto_a
    iput v2, v6, Lʽⁱ/ـˆ;->ˑﹳ:F

    new-instance v2, Lʽⁱ/ʾᵎ;

    invoke-direct {v2, v6}, Lʽⁱ/ʾᵎ;-><init>(Lʽⁱ/ـˆ;)V

    iput-object v2, v0, Lﹶˎ/ˆʾ;->ˋᵔ:Lʽⁱ/ʾᵎ;

    cmp-long v3, v7, v21

    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    iget-wide v2, v2, Lʽⁱ/ʾᵎ;->ﹳٴ:J

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v2

    sub-long v7, v37, v2

    :goto_b
    if-eqz v28, :cond_d

    move-wide/from16 v23, v7

    :goto_c
    const/4 v2, 0x2

    goto :goto_e

    :cond_d
    iget-object v2, v1, Lʽˑ/ﾞʻ;->יـ:Lʼʻ/ᵎⁱ;

    invoke-static {v7, v8, v2}, Lﹶˎ/ˆʾ;->ᵢˏ(JLjava/util/List;)Lʽˑ/ᵎﹶ;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-wide v2, v2, Lʽˑ/ˆʾ;->ᴵᵔ:J

    :goto_d
    move-wide/from16 v23, v2

    goto :goto_c

    :cond_e
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_c

    :cond_f
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lᐧˎ/ʼʼ;->ⁱˊ(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽˑ/ʼˎ;

    iget-object v3, v2, Lʽˑ/ʼˎ;->ˆﾞ:Lʼʻ/ᵎⁱ;

    invoke-static {v7, v8, v3}, Lﹶˎ/ˆʾ;->ᵢˏ(JLjava/util/List;)Lʽˑ/ᵎﹶ;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-wide v2, v3, Lʽˑ/ˆʾ;->ᴵᵔ:J

    goto :goto_d

    :cond_10
    iget-wide v2, v2, Lʽˑ/ˆʾ;->ᴵᵔ:J

    goto :goto_d

    :goto_e
    if-ne v9, v2, :cond_11

    iget-boolean v2, v1, Lʽˑ/ﾞʻ;->ﾞᴵ:Z

    if-eqz v2, :cond_11

    const/16 v31, 0x1

    goto :goto_f

    :cond_11
    move/from16 v31, v11

    :goto_f
    new-instance v16, Lﹳᵢ/ᐧﾞ;

    iget-wide v1, v1, Lʽˑ/ﾞʻ;->ʽﹳ:J

    const/16 v27, 0x1

    xor-int/lit8 v30, v12, 0x1

    invoke-virtual {v0}, Lﹶˎ/ˆʾ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v33

    iget-object v3, v0, Lﹶˎ/ˆʾ;->ˋᵔ:Lʽⁱ/ʾᵎ;

    const/16 v29, 0x1

    move-object/from16 v34, v3

    move-wide/from16 v21, v14

    move-wide/from16 v27, v23

    move-wide/from16 v23, v1

    invoke-direct/range {v16 .. v34}, Lﹳᵢ/ᐧﾞ;-><init>(JJJJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;Lʽⁱ/ʾᵎ;)V

    :goto_10
    move-object/from16 v1, v16

    goto :goto_14

    :cond_12
    move/from16 v28, v3

    move-object/from16 v32, v15

    cmp-long v2, v7, v21

    if-eqz v2, :cond_16

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_12

    :cond_13
    if-nez v28, :cond_15

    cmp-long v2, v7, v5

    if-nez v2, :cond_14

    goto :goto_11

    :cond_14
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v4, v2, v3}, Lᐧˎ/ʼʼ;->ⁱˊ(Ljava/util/List;Ljava/lang/Long;Z)I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽˑ/ʼˎ;

    iget-wide v7, v2, Lʽˑ/ˆʾ;->ᴵᵔ:J

    :cond_15
    :goto_11
    move-wide/from16 v27, v7

    goto :goto_13

    :cond_16
    :goto_12
    move-wide/from16 v27, v23

    :goto_13
    new-instance v16, Lﹳᵢ/ᐧﾞ;

    iget-wide v1, v1, Lʽˑ/ﾞʻ;->ʽﹳ:J

    invoke-virtual {v0}, Lﹶˎ/ˆʾ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v33

    const/16 v34, 0x0

    const-wide/16 v25, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-wide/from16 v23, v1

    move-wide/from16 v21, v1

    invoke-direct/range {v16 .. v34}, Lﹳᵢ/ᐧﾞ;-><init>(JJJJJJZZZLjava/lang/Object;Lʽⁱ/ᴵˊ;Lʽⁱ/ʾᵎ;)V

    goto :goto_10

    :goto_14
    invoke-virtual {v0, v1}, Lﹳᵢ/ﹳٴ;->ʻٴ(Lʽⁱ/ʼˈ;)V

    return-void
.end method

.method public final ʾᵎ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lﹶˎ/ˆʾ;->ˈʿ:Lʽˑ/ʽ;

    const/4 v1, 0x0

    iput-object v1, v0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    iput-object v1, v0, Lʽˑ/ʽ;->ᵔי:Lʽˑ/ﾞʻ;

    iput-object v1, v0, Lʽˑ/ʽ;->ٴʼ:Lʽˑ/ˉˆ;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lʽˑ/ʽ;->ᵔٴ:J

    iget-object v2, v0, Lʽˑ/ʽ;->ٴᵢ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v2, v1}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    iput-object v1, v0, Lʽˑ/ʽ;->ٴᵢ:Lᵔⁱ/ˉʿ;

    iget-object v2, v0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʽˑ/ⁱˊ;

    iget-object v4, v4, Lʽˑ/ⁱˊ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v4, v1}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lʽˑ/ʽ;->ˉٴ:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, v0, Lʽˑ/ʽ;->ˉٴ:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lﹶˎ/ˆʾ;->ᵎˊ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v0}, Lⁱᴵ/ﾞʻ;->ﹳٴ()V

    return-void
.end method

.method public final ˈ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹶˎ/ˆʾ;->ˈʿ:Lʽˑ/ʽ;

    iget-object v1, v0, Lʽˑ/ʽ;->ٴᵢ:Lᵔⁱ/ˉʿ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lᵔⁱ/ˉʿ;->ʽ()V

    :cond_0
    iget-object v1, v0, Lʽˑ/ʽ;->ᵎˊ:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ⁱˊ;

    iget-object v1, v0, Lʽˑ/ⁱˊ;->ᴵˊ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v1}, Lᵔⁱ/ˉʿ;->ʽ()V

    iget-object v0, v0, Lʽˑ/ⁱˊ;->ٴʼ:Ljava/io/IOException;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final ˏי(Lـˊ/ᵔﹳ;)V
    .locals 13

    .prologue
    iput-object p1, p0, Lﹶˎ/ˆʾ;->ˊˋ:Lـˊ/ᵔﹳ;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v1, p0, Lﹶˎ/ˆʾ;->ᵎˊ:Lⁱᴵ/ﾞʻ;

    invoke-interface {v1, p1, v0}, Lⁱᴵ/ﾞʻ;->ʼˎ(Landroid/os/Looper;Lʻʿ/יـ;)V

    invoke-interface {v1}, Lⁱᴵ/ﾞʻ;->ᵔᵢ()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lﹳᵢ/ﹳٴ;->ᵔﹳ(Lﹳᵢ/ᵢˏ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v0

    invoke-virtual {p0}, Lﹶˎ/ˆʾ;->ﹳٴ()Lʽⁱ/ᴵˊ;

    move-result-object v1

    iget-object v1, v1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lʽⁱ/ʼʼ;->ﹳٴ:Landroid/net/Uri;

    iget-object v1, p0, Lﹶˎ/ˆʾ;->ˈʿ:Lʽˑ/ʽ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lᐧˎ/ʼʼ;->ʼᐧ(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, v1, Lʽˑ/ʽ;->ˉٴ:Landroid/os/Handler;

    iput-object v0, v1, Lʽˑ/ʽ;->ˊʻ:Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    iput-object p0, v1, Lʽˑ/ʽ;->ᵎⁱ:Lﹶˎ/ˆʾ;

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string p1, "The uri must be set."

    invoke-static {v3, p1}, Lᐧˎ/ﹳٴ;->ˉʿ(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lـˊ/ᵔᵢ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v2 .. v12}, Lـˊ/ᵔᵢ;-><init>(Landroid/net/Uri;I[BLjava/util/Map;JJLjava/lang/String;I)V

    new-instance p1, Lᵔⁱ/ᵔﹳ;

    iget-object v0, v1, Lʽˑ/ʽ;->ʾˋ:Lᐧﹳ/ʽ;

    iget-object v0, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lـˊ/ˑﹳ;

    invoke-interface {v0}, Lـˊ/ˑﹳ;->ˆʾ()Lـˊ/ﾞᴵ;

    move-result-object v0

    iget-object v3, v1, Lʽˑ/ʽ;->ᴵˊ:Lʽˑ/ﹳᐧ;

    invoke-interface {v3}, Lʽˑ/ﹳᐧ;->ˉˆ()Lᵔⁱ/ʼᐧ;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p1, v0, v2, v4, v3}, Lᵔⁱ/ᵔﹳ;-><init>(Lـˊ/ﾞᴵ;Lـˊ/ᵔᵢ;ILᵔⁱ/ʼᐧ;)V

    iget-object v0, v1, Lʽˑ/ʽ;->ٴᵢ:Lᵔⁱ/ˉʿ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    new-instance v0, Lᵔⁱ/ˉʿ;

    const-string v2, "DefaultHlsPlaylistTracker:MultivariantPlaylist"

    invoke-direct {v0, v2}, Lᵔⁱ/ˉʿ;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lʽˑ/ʽ;->ٴᵢ:Lᵔⁱ/ˉʿ;

    iget-object v2, v1, Lʽˑ/ʽ;->ʽʽ:Lʻᴵ/יـ;

    iget v3, p1, Lᵔⁱ/ᵔﹳ;->ʽʽ:I

    invoke-virtual {v2, v3}, Lʻᴵ/יـ;->ⁱˊ(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lᵔⁱ/ˉʿ;->ﾞᴵ(Lᵔⁱ/ٴﹶ;Lᵔⁱ/ʼˎ;I)V

    return-void
.end method

.method public final ˑﹳ(Lﹳᵢ/ʾᵎ;)V
    .locals 12

    .prologue
    check-cast p1, Lﹶˎ/ʼˎ;

    iget-object v0, p1, Lﹶˎ/ʼˎ;->ᴵˊ:Lʽˑ/ʽ;

    iget-object v0, v0, Lʽˑ/ʽ;->ᴵᵔ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lﹶˎ/ʼˎ;->ـˏ:[Lﹶˎ/ˉˆ;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    iget-boolean v6, v5, Lﹶˎ/ˉˆ;->ˏᵢ:Z

    if-eqz v6, :cond_1

    iget-object v6, v5, Lﹶˎ/ˉˆ;->ˈⁱ:[Lﹶˎ/ᵔʾ;

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v9}, Lﹳᵢ/ᴵˑ;->ٴﹶ()V

    iget-object v10, v9, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    if-eqz v10, :cond_0

    iget-object v11, v9, Lﹳᵢ/ᴵˑ;->ˑﹳ:Lⁱᴵ/ʼˎ;

    invoke-interface {v10, v11}, Lⁱᴵ/ﾞᴵ;->ˈ(Lⁱᴵ/ʼˎ;)V

    iput-object v4, v9, Lﹳᵢ/ᴵˑ;->ᵔᵢ:Lⁱᴵ/ﾞᴵ;

    iput-object v4, v9, Lﹳᵢ/ᴵˑ;->ᵎﹶ:Lʽⁱ/ﹳᐧ;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, v5, Lﹶˎ/ˉˆ;->ˈٴ:Lﹶˎ/ᵎﹶ;

    iget-object v7, v6, Lﹶˎ/ᵎﹶ;->ﹳᐧ:Lﹶʽ/ˏי;

    invoke-interface {v7}, Lﹶʽ/ˏי;->ʼˎ()I

    move-result v7

    iget-object v8, v6, Lﹶˎ/ᵎﹶ;->ᵎﹶ:Lʽˑ/ʽ;

    iget-object v9, v6, Lﹶˎ/ᵎﹶ;->ˑﹳ:[Landroid/net/Uri;

    aget-object v7, v9, v7

    iget-object v8, v8, Lʽˑ/ʽ;->ˈٴ:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lʽˑ/ⁱˊ;

    if-eqz v7, :cond_2

    iput-boolean v2, v7, Lʽˑ/ⁱˊ;->ᵎˊ:Z

    :cond_2
    iput-object v4, v6, Lﹶˎ/ᵎﹶ;->ᵔʾ:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    iget-object v6, v5, Lﹶˎ/ˉˆ;->ٴʼ:Lᵔⁱ/ˉʿ;

    invoke-virtual {v6, v5}, Lᵔⁱ/ˉʿ;->ˑﹳ(Lᵔⁱ/ﾞʻ;)V

    iget-object v6, v5, Lﹶˎ/ˉˆ;->ˊˋ:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v4, 0x1

    iput-boolean v4, v5, Lﹶˎ/ˉˆ;->ـﹶ:Z

    iget-object v4, v5, Lﹶˎ/ˉˆ;->ʼˈ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput-object v4, p1, Lﹶˎ/ʼˎ;->ˋᵔ:Lﹳᵢ/ـˆ;

    return-void
.end method

.method public final declared-synchronized ᵔʾ(Lʽⁱ/ᴵˊ;)V
    .locals 0

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lﹶˎ/ˆʾ;->ʼˈ:Lʽⁱ/ᴵˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Lﹳᵢ/ᵢˏ;Lᵔⁱ/ˑﹳ;J)Lﹳᵢ/ʾᵎ;
    .locals 14

    invoke-virtual/range {p0 .. p1}, Lﹳᵢ/ﹳٴ;->ᵔﹳ(Lﹳᵢ/ᵢˏ;)Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    move-result-object v8

    new-instance v6, Lⁱᴵ/ʼˎ;

    iget-object v0, p0, Lﹳᵢ/ﹳٴ;->ˈٴ:Lⁱᴵ/ʼˎ;

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1, p1}, Lⁱᴵ/ʼˎ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V

    new-instance v0, Lﹶˎ/ʼˎ;

    iget-object v4, p0, Lﹶˎ/ˆʾ;->ˊˋ:Lـˊ/ᵔﹳ;

    iget-object v13, p0, Lﹳᵢ/ﹳٴ;->ٴᵢ:Lʻʿ/יـ;

    invoke-static {v13}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v1, p0, Lﹶˎ/ˆʾ;->ˉٴ:Lﹶˎ/ʽ;

    iget-object v2, p0, Lﹶˎ/ˆʾ;->ˈʿ:Lʽˑ/ʽ;

    iget-object v3, p0, Lﹶˎ/ˆʾ;->ᵎⁱ:Lᐧﹳ/ʽ;

    iget-object v5, p0, Lﹶˎ/ˆʾ;->ᵎˊ:Lⁱᴵ/ﾞʻ;

    iget-object v7, p0, Lﹶˎ/ˆʾ;->ᵔי:Lʻᴵ/יـ;

    iget-object v10, p0, Lﹶˎ/ˆʾ;->ٴʼ:Lᵔﹶ/ˈٴ;

    iget-boolean v11, p0, Lﹶˎ/ˆʾ;->ˆﾞ:Z

    iget v12, p0, Lﹶˎ/ˆʾ;->ᵔٴ:I

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v13}, Lﹶˎ/ʼˎ;-><init>(Lﹶˎ/ʽ;Lʽˑ/ʽ;Lᐧﹳ/ʽ;Lـˊ/ᵔﹳ;Lⁱᴵ/ﾞʻ;Lⁱᴵ/ʼˎ;Lʻᴵ/יـ;Lcom/google/android/gms/internal/play_billing/ʽﹳ;Lᵔⁱ/ˑﹳ;Lᵔﹶ/ˈٴ;ZILʻʿ/יـ;)V

    return-object v0
.end method

.method public final declared-synchronized ﹳٴ()Lʽⁱ/ᴵˊ;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lﹶˎ/ˆʾ;->ʼˈ:Lʽⁱ/ᴵˊ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
