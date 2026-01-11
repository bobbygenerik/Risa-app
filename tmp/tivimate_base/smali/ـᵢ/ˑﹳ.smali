.class public final Lـᵢ/ˑﹳ;
.super Lʽⁱ/ʼˈ;
.source "SourceFile"


# instance fields
.field public final ʼˎ:Lٴᴵ/ʽ;

.field public final ʽ:J

.field public final ˆʾ:Lʽⁱ/ᴵˊ;

.field public final ˈ:J

.field public final ˑﹳ:I

.field public final ٴﹶ:Lʽⁱ/ʾᵎ;

.field public final ᵎﹶ:J

.field public final ᵔᵢ:J

.field public final ⁱˊ:J

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(JJJIJJJLٴᴵ/ʽ;Lʽⁱ/ᴵˊ;Lʽⁱ/ʾᵎ;)V
    .locals 6

    .prologue
    move-object/from16 v0, p14

    move-object/from16 v1, p16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v2, v0, Lٴᴵ/ʽ;->ˈ:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-ne v2, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p1, p0, Lـᵢ/ˑﹳ;->ⁱˊ:J

    iput-wide p3, p0, Lـᵢ/ˑﹳ;->ʽ:J

    iput-wide p5, p0, Lـᵢ/ˑﹳ;->ˈ:J

    iput p7, p0, Lـᵢ/ˑﹳ;->ˑﹳ:I

    iput-wide p8, p0, Lـᵢ/ˑﹳ;->ﾞᴵ:J

    move-wide/from16 p1, p10

    iput-wide p1, p0, Lـᵢ/ˑﹳ;->ᵎﹶ:J

    move-wide/from16 p1, p12

    iput-wide p1, p0, Lـᵢ/ˑﹳ;->ᵔᵢ:J

    iput-object v0, p0, Lـᵢ/ˑﹳ;->ʼˎ:Lٴᴵ/ʽ;

    move-object/from16 p1, p15

    iput-object p1, p0, Lـᵢ/ˑﹳ;->ˆʾ:Lʽⁱ/ᴵˊ;

    iput-object v1, p0, Lـᵢ/ˑﹳ;->ٴﹶ:Lʽⁱ/ʾᵎ;

    return-void
.end method


# virtual methods
.method public final ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;
    .locals 22

    .prologue
    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-static {v2, v1}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    iget-object v4, v0, Lـᵢ/ˑﹳ;->ʼˎ:Lٴᴵ/ʽ;

    iget-boolean v2, v4, Lٴᴵ/ʽ;->ˈ:Z

    const/4 v3, 0x0

    iget-wide v5, v0, Lـᵢ/ˑﹳ;->ᵔᵢ:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_7

    iget-wide v9, v4, Lٴᴵ/ʽ;->ˑﹳ:J

    cmp-long v2, v9, v7

    if-eqz v2, :cond_7

    iget-wide v9, v4, Lٴᴵ/ʽ;->ⁱˊ:J

    cmp-long v2, v9, v7

    if-nez v2, :cond_7

    const-wide/16 v9, 0x0

    cmp-long v2, p3, v9

    if-lez v2, :cond_0

    add-long v5, v5, p3

    iget-wide v11, v0, Lـᵢ/ˑﹳ;->ᵎﹶ:J

    cmp-long v2, v5, v11

    if-lez v2, :cond_0

    move/from16 v16, v1

    move-wide v14, v7

    move-wide/from16 v17, v14

    goto/16 :goto_4

    :cond_0
    iget-wide v11, v0, Lـᵢ/ˑﹳ;->ﾞᴵ:J

    add-long/2addr v11, v5

    invoke-virtual {v4, v3}, Lٴᴵ/ʽ;->ˈ(I)J

    move-result-wide v13

    move v2, v3

    :goto_0
    iget-object v15, v4, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v1

    if-ge v2, v15, :cond_1

    cmp-long v15, v11, v13

    if-ltz v15, :cond_1

    sub-long/2addr v11, v13

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Lٴᴵ/ʽ;->ˈ(I)J

    move-result-wide v13

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v2

    iget-object v15, v2, Lٴᴵ/ᵔᵢ;->ʽ:Ljava/util/List;

    move/from16 v16, v1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    move-wide/from16 v17, v7

    move v7, v3

    :goto_1
    const/4 v8, -0x1

    if-ge v7, v1, :cond_3

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-wide/from16 v20, v9

    move-object/from16 v9, v19

    check-cast v9, Lٴᴵ/ﹳٴ;

    iget v9, v9, Lٴᴵ/ﹳٴ;->ⁱˊ:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v9, v20

    goto :goto_1

    :cond_3
    move-wide/from16 v20, v9

    move v7, v8

    :goto_2
    if-ne v7, v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, v2, Lٴᴵ/ᵔᵢ;->ʽ:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴᴵ/ﹳٴ;

    iget-object v1, v1, Lٴᴵ/ﹳٴ;->ʽ:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lٴᴵ/ˉʿ;

    invoke-virtual {v1}, Lٴᴵ/ˉʿ;->ˈ()Lـᵢ/ʼˎ;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1, v13, v14}, Lـᵢ/ʼˎ;->ᴵᵔ(J)J

    move-result-wide v7

    cmp-long v2, v7, v20

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1, v11, v12, v13, v14}, Lـᵢ/ʼˎ;->ﹳٴ(JJ)J

    move-result-wide v7

    invoke-interface {v1, v7, v8}, Lـᵢ/ʼˎ;->ʽ(J)J

    move-result-wide v1

    add-long/2addr v1, v5

    sub-long v5, v1, v11

    :cond_6
    :goto_3
    move-wide v14, v5

    goto :goto_4

    :cond_7
    move/from16 v16, v1

    move-wide/from16 v17, v7

    goto :goto_3

    :goto_4
    sget-object v1, Lʽⁱ/ˊˋ;->ᵔﹳ:Ljava/lang/Object;

    iget-boolean v1, v4, Lٴᴵ/ʽ;->ˈ:Z

    if-eqz v1, :cond_8

    iget-wide v1, v4, Lٴᴵ/ʽ;->ˑﹳ:J

    cmp-long v1, v1, v17

    if-eqz v1, :cond_8

    iget-wide v1, v4, Lٴᴵ/ʽ;->ⁱˊ:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_8

    move/from16 v12, v16

    goto :goto_5

    :cond_8
    move v12, v3

    :goto_5
    invoke-virtual {v0}, Lـᵢ/ˑﹳ;->ᵔᵢ()I

    move-result v1

    add-int/lit8 v18, v1, -0x1

    iget-wide v1, v0, Lـᵢ/ˑﹳ;->ﾞᴵ:J

    iget-object v3, v0, Lـᵢ/ˑﹳ;->ˆʾ:Lʽⁱ/ᴵˊ;

    iget-wide v5, v0, Lـᵢ/ˑﹳ;->ⁱˊ:J

    iget-wide v7, v0, Lـᵢ/ˑﹳ;->ʽ:J

    iget-wide v9, v0, Lـᵢ/ˑﹳ;->ˈ:J

    iget-object v13, v0, Lـᵢ/ˑﹳ;->ٴﹶ:Lʽⁱ/ʾᵎ;

    move/from16 p1, v12

    iget-wide v11, v0, Lـᵢ/ˑﹳ;->ᵎﹶ:J

    move-wide/from16 v19, v1

    move-wide/from16 v16, v11

    const/4 v11, 0x1

    move/from16 v12, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v20}, Lʽⁱ/ˊˋ;->ⁱˊ(Lʽⁱ/ᴵˊ;Ljava/lang/Object;JJJZZLʽⁱ/ʾᵎ;JJIJ)V

    return-object p2
.end method

.method public final ˉˆ()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᵔᵢ()I
    .locals 1

    iget-object v0, p0, Lـᵢ/ˑﹳ;->ʼˎ:Lٴᴵ/ʽ;

    iget-object v0, v0, Lٴᴵ/ʽ;->ˉʿ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final ⁱˊ(Ljava/lang/Object;)I
    .locals 2

    .prologue
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lـᵢ/ˑﹳ;->ˑﹳ:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lـᵢ/ˑﹳ;->ᵔᵢ()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final ﾞʻ(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lـᵢ/ˑﹳ;->ᵔᵢ()I

    move-result v0

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    iget v0, p0, Lـᵢ/ˑﹳ;->ˑﹳ:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;
    .locals 13

    .prologue
    invoke-virtual {p0}, Lـᵢ/ˑﹳ;->ᵔᵢ()I

    move-result v0

    invoke-static {p1, v0}, Lᐧˎ/ﹳٴ;->ᵎﹶ(II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lـᵢ/ˑﹳ;->ʼˎ:Lٴᴵ/ʽ;

    if-eqz p3, :cond_0

    invoke-virtual {v1, p1}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object v2

    iget-object v2, v2, Lٴᴵ/ᵔᵢ;->ﹳٴ:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    iget v0, p0, Lـᵢ/ˑﹳ;->ˑﹳ:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    invoke-virtual {v1, p1}, Lٴᴵ/ʽ;->ˈ(I)J

    move-result-wide v7

    invoke-virtual {v1, p1}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object p1

    iget-wide v2, p1, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lٴᴵ/ʽ;->ⁱˊ(I)Lٴᴵ/ᵔᵢ;

    move-result-object p1

    iget-wide v0, p1, Lٴᴵ/ᵔᵢ;->ⁱˊ:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lᐧˎ/ʼʼ;->ʼˈ(J)J

    move-result-wide v0

    iget-wide v2, p0, Lـᵢ/ˑﹳ;->ﾞᴵ:J

    sub-long v9, v0, v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lʽⁱ/ʽ;->ʽ:Lʽⁱ/ʽ;

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    invoke-virtual/range {v3 .. v12}, Lʽⁱ/ˋᵔ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;IJJLʽⁱ/ʽ;Z)V

    return-object p2
.end method
