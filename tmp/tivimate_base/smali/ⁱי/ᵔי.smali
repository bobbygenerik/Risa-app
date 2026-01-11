.class public final Lⁱי/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lⁱי/ٴʼ;

.field public ʼᐧ:J

.field public final ʽ:Lʻʿ/ˆʾ;

.field public ˆʾ:Lⁱי/ٴʼ;

.field public final ˈ:Lᐧˎ/ʻٴ;

.field public ˉʿ:Lⁱי/ٴʼ;

.field public ˉˆ:Ljava/lang/Object;

.field public final ˑﹳ:Lٴˉ/ﹳٴ;

.field public ٴﹶ:Lⁱי/ٴʼ;

.field public ᵎﹶ:I

.field public ᵔʾ:I

.field public ᵔᵢ:Z

.field public ᵔﹳ:Ljava/util/ArrayList;

.field public final ⁱˊ:Lʽⁱ/ˊˋ;

.field public final ﹳٴ:Lʽⁱ/ˋᵔ;

.field public ﾞʻ:Lⁱי/ٴʼ;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>(Lʻʿ/ˆʾ;Lᐧˎ/ʻٴ;Lٴˉ/ﹳٴ;Lⁱי/ˉˆ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱי/ᵔי;->ʽ:Lʻʿ/ˆʾ;

    iput-object p2, p0, Lⁱי/ᵔי;->ˈ:Lᐧˎ/ʻٴ;

    iput-object p3, p0, Lⁱי/ᵔי;->ˑﹳ:Lٴˉ/ﹳٴ;

    new-instance p1, Lʽⁱ/ˋᵔ;

    invoke-direct {p1}, Lʽⁱ/ˋᵔ;-><init>()V

    iput-object p1, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    new-instance p1, Lʽⁱ/ˊˋ;

    invoke-direct {p1}, Lʽⁱ/ˊˋ;-><init>()V

    iput-object p1, p0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lⁱי/ᵔי;->ᵔﹳ:Ljava/util/ArrayList;

    return-void
.end method

.method public static ˉˆ(Lʽⁱ/ʼˈ;Ljava/lang/Object;JJLʽⁱ/ˊˋ;Lʽⁱ/ˋᵔ;)Lﹳᵢ/ᵢˏ;
    .locals 8

    .prologue
    invoke-virtual {p0, p1, p7}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget v5, p7, Lʽⁱ/ˋᵔ;->ʽ:I

    invoke-virtual {p0, v5, p6}, Lʽⁱ/ʼˈ;->ᵔʾ(ILʽⁱ/ˊˋ;)V

    invoke-virtual/range {p0 .. p1}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    iget-object v5, p7, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    iget v5, v5, Lʽⁱ/ʽ;->ﹳٴ:I

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    invoke-virtual {p7, v7}, Lʽⁱ/ˋᵔ;->ﾞᴵ(I)Z

    :cond_0
    iget-object v5, p7, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7, v7}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    :cond_1
    invoke-virtual {p0, p1, p7}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    invoke-virtual {p7, p2, p3}, Lʽⁱ/ˋᵔ;->ʽ(J)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {p7, p2, p3}, Lʽⁱ/ˋᵔ;->ⁱˊ(J)I

    move-result v0

    new-instance v2, Lﹳᵢ/ᵢˏ;

    invoke-direct {v2, p1, p4, p5, v0}, Lﹳᵢ/ᵢˏ;-><init>(Ljava/lang/Object;JI)V

    return-object v2

    :cond_2
    invoke-virtual {p7, v0}, Lʽⁱ/ˋᵔ;->ˑﹳ(I)I

    move-result v3

    move v2, v0

    new-instance v0, Lﹳᵢ/ᵢˏ;

    const/4 v6, -0x1

    move-object v1, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lﹳᵢ/ᵢˏ;-><init>(Ljava/lang/Object;IIJI)V

    return-object v0
.end method


# virtual methods
.method public final ʼˎ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;Z)Z
    .locals 7

    .prologue
    iget-object p2, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object p2

    iget p2, p2, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v0, p0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v3}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p2

    iget-boolean p2, p2, Lʽⁱ/ˊˋ;->ʼˎ:Z

    if-nez p2, :cond_0

    iget v4, p0, Lⁱי/ᵔי;->ᵎﹶ:I

    iget-boolean v5, p0, Lⁱי/ᵔי;->ᵔᵢ:Z

    iget-object v2, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    iget-object v3, p0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lʽⁱ/ʼˈ;->ˈ(ILʽⁱ/ˋᵔ;Lʽⁱ/ˊˋ;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v6
.end method

.method public final ʼᐧ(Lʽⁱ/ʼˈ;Ljava/lang/Object;J)Lﹳᵢ/ᵢˏ;
    .locals 14

    .prologue
    move-object v0, p1

    move-object/from16 v1, p2

    iget-object v2, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {p1, v1, v2}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v3

    iget v3, v3, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v4, p0, Lⁱי/ᵔי;->ˉˆ:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_0

    invoke-virtual {p1, v4}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {p1, v4, v2, v5}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v4

    iget v4, v4, Lʽⁱ/ˋᵔ;->ʽ:I

    if-ne v4, v3, :cond_0

    iget-wide v3, p0, Lⁱי/ᵔי;->ʼᐧ:J

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    :goto_0
    if-eqz v4, :cond_2

    iget-object v7, v4, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v3, v4, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v3, v3, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v3, v3, Lﹳᵢ/ᵢˏ;->ˈ:J

    goto :goto_2

    :cond_1
    iget-object v4, v4, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    :goto_1
    if-eqz v4, :cond_4

    iget-object v7, v4, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v6, :cond_3

    invoke-virtual {p1, v7, v2, v5}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v7

    iget v7, v7, Lʽⁱ/ˋᵔ;->ʽ:I

    if-ne v7, v3, :cond_3

    iget-object v3, v4, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v3, v3, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v3, v3, Lﹳᵢ/ᵢˏ;->ˈ:J

    goto :goto_2

    :cond_3
    iget-object v4, v4, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lⁱי/ᵔי;->ᵔﹳ(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v3, p0, Lⁱי/ᵔי;->ﾞᴵ:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    iput-wide v7, p0, Lⁱי/ᵔי;->ﾞᴵ:J

    iget-object v7, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    if-nez v7, :cond_6

    iput-object v1, p0, Lⁱי/ᵔי;->ˉˆ:Ljava/lang/Object;

    iput-wide v3, p0, Lⁱי/ᵔי;->ʼᐧ:J

    :cond_6
    :goto_2
    invoke-virtual {p1, v1, v2}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget v7, v2, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v8, p0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    invoke-virtual {p1, v7, v8}, Lʽⁱ/ʼˈ;->ᵔʾ(ILʽⁱ/ˊˋ;)V

    invoke-virtual/range {p1 .. p2}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v7

    move v9, v5

    :goto_3
    iget v10, v8, Lʽⁱ/ˊˋ;->ᵔʾ:I

    if-lt v7, v10, :cond_a

    const/4 v10, 0x1

    invoke-virtual {p1, v7, v2, v10}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    iget-object v11, v2, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    iget v11, v11, Lʽⁱ/ʽ;->ﹳٴ:I

    if-lez v11, :cond_7

    goto :goto_4

    :cond_7
    move v10, v5

    :goto_4
    or-int/2addr v9, v10

    iget-wide v11, v2, Lʽⁱ/ˋᵔ;->ˈ:J

    invoke-virtual {v2, v11, v12}, Lʽⁱ/ˋᵔ;->ʽ(J)I

    move-result v11

    if-eq v11, v6, :cond_8

    iget-object v1, v2, Lʽⁱ/ˋᵔ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    if-eqz v9, :cond_9

    if-eqz v10, :cond_a

    iget-wide v10, v2, Lʽⁱ/ˋᵔ;->ˈ:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_a
    :goto_5
    iget-object v6, p0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    iget-object v7, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    move-wide v4, v3

    move-wide/from16 v2, p3

    invoke-static/range {v0 .. v7}, Lⁱי/ᵔי;->ˉˆ(Lʽⁱ/ʼˈ;Ljava/lang/Object;JJLʽⁱ/ˊˋ;Lʽⁱ/ˋᵔ;)Lﹳᵢ/ᵢˏ;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(Lʽⁱ/ʼˈ;Lⁱי/ٴʼ;J)Lⁱי/ᵎˊ;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v8, v9, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-wide v2, v9, Lⁱי/ٴʼ;->ʼᐧ:J

    iget-wide v4, v8, Lⁱי/ᵎˊ;->ˑﹳ:J

    add-long/2addr v2, v4

    sub-long v10, v2, p3

    iget-boolean v2, v8, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    if-eqz v2, :cond_6

    iget-object v2, v9, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v12, v2, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v13, v2, Lⁱי/ᵎˊ;->ʽ:J

    iget-object v2, v12, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v2

    iget v5, v0, Lⁱי/ᵔי;->ᵎﹶ:I

    iget-boolean v6, v0, Lⁱי/ᵔי;->ᵔᵢ:Z

    iget-object v3, v0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    iget-object v4, v0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    invoke-virtual/range {v1 .. v6}, Lʽⁱ/ʼˈ;->ˈ(ILʽⁱ/ˋᵔ;Lʽⁱ/ˊˋ;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v15, v0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v15, v3}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v3

    iget v4, v3, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object v3, v15, Lʽⁱ/ˋᵔ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v12, Lﹳᵢ/ᵢˏ;->ˈ:J

    iget-object v7, v0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    move-wide/from16 p3, v5

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v7, v5, v6}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object v7

    iget v7, v7, Lʽⁱ/ˊˋ;->ᵔʾ:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-ne v7, v2, :cond_4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide v5, v2

    iget-object v2, v0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    iget-object v3, v0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual/range {v1 .. v8}, Lʽⁱ/ʼˈ;->ˆʾ(Lʽⁱ/ˊˋ;Lʽⁱ/ˋᵔ;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, v9, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v1, v1, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v1, v1, Lﹳᵢ/ᵢˏ;->ˈ:J

    :cond_2
    :goto_1
    move-wide v9, v1

    move-object v2, v3

    move-wide v3, v5

    move-wide v5, v9

    move-wide/from16 v9, v16

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Lⁱי/ᵔי;->ᵔﹳ(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v7, -0x1

    cmp-long v4, v1, v7

    if-nez v4, :cond_2

    iget-wide v1, v0, Lⁱי/ᵔי;->ﾞᴵ:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v1

    iput-wide v7, v0, Lⁱי/ᵔי;->ﾞᴵ:J

    goto :goto_1

    :cond_4
    move-object v2, v3

    move-wide v3, v5

    move-wide v9, v3

    move-wide/from16 v5, p3

    :goto_2
    iget-object v7, v0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    iget-object v8, v0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lⁱי/ᵔי;->ˉˆ(Lʽⁱ/ʼˈ;Ljava/lang/Object;JJLʽⁱ/ˊˋ;Lʽⁱ/ˋᵔ;)Lﹳᵢ/ᵢˏ;

    move-result-object v2

    cmp-long v5, v9, v16

    if-eqz v5, :cond_5

    cmp-long v5, v13, v16

    if-eqz v5, :cond_5

    iget-object v5, v12, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v1, v5, v15}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v5

    iget-object v5, v5, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    iget v5, v5, Lʽⁱ/ʽ;->ﹳٴ:I

    iget-object v6, v15, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    :cond_5
    move-wide v5, v3

    move-wide v3, v9

    invoke-virtual/range {v0 .. v6}, Lⁱי/ᵔי;->ˈ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;JJ)Lⁱי/ᵎˊ;

    move-result-object v1

    :goto_3
    return-object v1

    :cond_6
    iget-object v9, v8, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-object v12, v9, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget v2, v9, Lﹳᵢ/ᵢˏ;->ˑﹳ:I

    move v3, v2

    iget-object v2, v0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v12, v2}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    iget-boolean v4, v8, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    invoke-virtual {v9}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_b

    iget v3, v9, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget-object v5, v2, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v5, v3}, Lʽⁱ/ʽ;->ﹳٴ(I)Lʽⁱ/ⁱˊ;

    move-result-object v5

    iget v5, v5, Lʽⁱ/ⁱˊ;->ﹳٴ:I

    if-ne v5, v6, :cond_7

    move-object v13, v0

    goto :goto_4

    :cond_7
    iget v6, v9, Lﹳᵢ/ᵢˏ;->ʽ:I

    iget-object v7, v2, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v7, v3}, Lʽⁱ/ʽ;->ﹳٴ(I)Lʽⁱ/ⁱˊ;

    move-result-object v7

    invoke-virtual {v7, v6}, Lʽⁱ/ⁱˊ;->ﹳٴ(I)I

    move-result v6

    if-ge v6, v5, :cond_8

    iget-object v2, v9, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    move v7, v4

    move v4, v6

    iget-wide v5, v8, Lⁱי/ᵎˊ;->ʽ:J

    move v10, v7

    iget-wide v7, v9, Lﹳᵢ/ᵢˏ;->ˈ:J

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lⁱי/ᵔי;->ˑﹳ(Lʽⁱ/ʼˈ;Ljava/lang/Object;IIJJZ)Lⁱי/ᵎˊ;

    move-result-object v1

    move-object v13, v0

    return-object v1

    :cond_8
    move-object v13, v0

    move v14, v4

    iget-wide v0, v8, Lⁱי/ᵎˊ;->ʽ:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v0, v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_a

    iget v3, v2, Lʽⁱ/ˋᵔ;->ʽ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-wide v10, v4

    move-wide v4, v0

    iget-object v1, v13, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lʽⁱ/ʼˈ;->ˆʾ(Lʽⁱ/ˊˋ;Lʽⁱ/ˋᵔ;IJJ)Landroid/util/Pair;

    move-result-object v1

    move-object v4, v2

    move-object v2, v0

    if-nez v1, :cond_9

    :goto_4
    const/4 v0, 0x0

    return-object v0

    :cond_9
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_5

    :cond_a
    move-wide v10, v4

    move-object v4, v2

    move-object/from16 v2, p1

    :goto_5
    iget v3, v9, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    invoke-virtual {v2, v12, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    invoke-virtual {v4, v3}, Lʽⁱ/ˋᵔ;->ˈ(I)J

    iget-object v4, v4, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v4, v3}, Lʽⁱ/ʽ;->ﹳٴ(I)Lʽⁱ/ⁱˊ;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v8, Lⁱי/ᵎˊ;->ʽ:J

    iget-wide v7, v9, Lﹳᵢ/ᵢˏ;->ˈ:J

    move-object/from16 v1, p1

    move-object v0, v13

    move v9, v14

    invoke-virtual/range {v0 .. v9}, Lⁱי/ᵔי;->ﾞᴵ(Lʽⁱ/ʼˈ;Ljava/lang/Object;JJJZ)Lⁱי/ᵎˊ;

    move-result-object v1

    return-object v1

    :cond_b
    move v14, v4

    move-object v4, v2

    if-eq v3, v6, :cond_c

    invoke-virtual {v4, v3}, Lʽⁱ/ˋᵔ;->ﾞᴵ(I)Z

    :cond_c
    invoke-virtual {v4, v3}, Lʽⁱ/ˋᵔ;->ˑﹳ(I)I

    move-result v0

    invoke-virtual {v4, v3}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    iget-object v1, v4, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v1, v3}, Lʽⁱ/ʽ;->ﹳٴ(I)Lʽⁱ/ⁱˊ;

    move-result-object v1

    iget v1, v1, Lʽⁱ/ⁱˊ;->ﹳٴ:I

    if-eq v0, v1, :cond_d

    iget-object v2, v9, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget v3, v9, Lﹳᵢ/ᵢˏ;->ˑﹳ:I

    iget-wide v5, v8, Lⁱי/ᵎˊ;->ˑﹳ:J

    iget-wide v7, v9, Lﹳᵢ/ᵢˏ;->ˈ:J

    move-object/from16 v1, p1

    move v4, v0

    move v9, v14

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lⁱי/ᵔי;->ˑﹳ(Lʽⁱ/ʼˈ;Ljava/lang/Object;IIJJZ)Lⁱי/ᵎˊ;

    move-result-object v1

    return-object v1

    :cond_d
    move-object/from16 v1, p1

    invoke-virtual {v1, v12, v4}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    invoke-virtual {v4, v3}, Lʽⁱ/ˋᵔ;->ˈ(I)J

    iget-object v0, v4, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v0, v3}, Lʽⁱ/ʽ;->ﹳٴ(I)Lʽⁱ/ⁱˊ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-wide v5, v8, Lⁱי/ᵎˊ;->ˑﹳ:J

    iget-wide v7, v9, Lﹳᵢ/ᵢˏ;->ˈ:J

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lⁱי/ᵔי;->ﾞᴵ(Lʽⁱ/ʼˈ;Ljava/lang/Object;JJJZ)Lⁱי/ᵎˊ;

    move-result-object v1

    return-object v1
.end method

.method public final ˆʾ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)Z
    .locals 6

    .prologue
    invoke-virtual {p2}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p2, Lﹳᵢ/ᵢˏ;->ˑﹳ:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p2, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {p1, p2, v0}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v0

    iget v0, v0, Lʽⁱ/ˋᵔ;->ʽ:I

    invoke-virtual {p1, p2}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result p2

    iget-object v3, p0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v3, v4, v5}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p1

    iget p1, p1, Lʽⁱ/ˊˋ;->ˉˆ:I

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public final ˈ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;JJ)Lⁱי/ᵎˊ;
    .locals 11

    .prologue
    iget-object v0, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v1, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {p1, v0, v1}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    invoke-virtual {p2}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget v4, p2, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    iget v5, p2, Lﹳᵢ/ᵢˏ;->ʽ:I

    iget-wide v8, p2, Lﹳᵢ/ᵢˏ;->ˈ:J

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v10}, Lⁱי/ᵔי;->ˑﹳ(Lʽⁱ/ʼˈ;Ljava/lang/Object;IIJJZ)Lⁱי/ᵎˊ;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p2, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-wide v7, p2, Lﹳᵢ/ᵢˏ;->ˈ:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v9}, Lⁱי/ᵔי;->ﾞᴵ(Lʽⁱ/ʼˈ;Ljava/lang/Object;JJJZ)Lⁱי/ᵎˊ;

    move-result-object p1

    return-object p1
.end method

.method public final ˉʿ(J)V
    .locals 4

    .prologue
    iget-object v0, p0, Lⁱי/ᵔי;->ﾞʻ:Lⁱי/ٴʼ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-boolean v1, v0, Lⁱי/ٴʼ;->ˑﹳ:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lⁱי/ٴʼ;->ﹳٴ:Ljava/lang/Object;

    iget-wide v2, v0, Lⁱי/ٴʼ;->ʼᐧ:J

    sub-long/2addr p1, v2

    invoke-interface {v1, p1, p2}, Lﹳᵢ/ʿᵢ;->ʻٴ(J)V

    :cond_1
    return-void
.end method

.method public final ˑﹳ(Lʽⁱ/ʼˈ;Ljava/lang/Object;IIJJZ)Lⁱי/ᵎˊ;
    .locals 16

    .prologue
    new-instance v0, Lﹳᵢ/ᵢˏ;

    const/4 v6, -0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v6}, Lﹳᵢ/ᵢˏ;-><init>(Ljava/lang/Object;IIJI)V

    move-object/from16 v15, p0

    iget-object v1, v15, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v1}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lʽⁱ/ˋᵔ;->ﹳٴ(II)J

    move-result-wide v8

    invoke-virtual {v1, v2}, Lʽⁱ/ˋᵔ;->ˑﹳ(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1, v2}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    cmp-long v1, v2, v8

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x1

    sub-long v4, v8, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    move-object v1, v0

    new-instance v0, Lⁱי/ᵎˊ;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v4, p5

    move/from16 v10, p9

    invoke-direct/range {v0 .. v14}, Lⁱי/ᵎˊ;-><init>(Lﹳᵢ/ᵢˏ;JJJJZZZZZ)V

    return-object v0
.end method

.method public final יـ(Lʽⁱ/ʼˈ;JJJ)I
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_d

    iget-object v5, v2, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v5}, Lⁱי/ᵔי;->ᵔᵢ(Lʽⁱ/ʼˈ;Lⁱי/ᵎˊ;)Lⁱי/ᵎˊ;

    move-result-object v3

    move-wide/from16 v6, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v6, p2

    invoke-virtual {v0, v1, v3, v6, v7}, Lⁱי/ᵔי;->ʽ(Lʽⁱ/ʼˈ;Lⁱי/ٴʼ;J)Lⁱי/ᵎˊ;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-wide v9, v5, Lⁱי/ᵎˊ;->ⁱˊ:J

    iget-wide v11, v8, Lⁱי/ᵎˊ;->ⁱˊ:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_c

    iget-object v9, v5, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-object v10, v8, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v9, v10}, Lﹳᵢ/ᵢˏ;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v3, v8

    :goto_1
    iget-wide v8, v3, Lⁱי/ᵎˊ;->ˑﹳ:J

    iget-wide v10, v5, Lⁱי/ᵎˊ;->ʽ:J

    iget-wide v12, v5, Lⁱי/ᵎˊ;->ˑﹳ:J

    invoke-virtual {v3, v10, v11}, Lⁱי/ᵎˊ;->ﹳٴ(J)Lⁱי/ᵎˊ;

    move-result-object v10

    iput-object v10, v2, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    cmp-long v10, v12, v8

    if-eqz v10, :cond_b

    invoke-virtual {v2}, Lⁱי/ٴʼ;->ٴﹶ()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v6

    if-nez v1, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_2

    :cond_1
    iget-wide v10, v2, Lⁱי/ٴʼ;->ʼᐧ:J

    add-long/2addr v8, v10

    :goto_2
    iget-object v1, v0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    const/4 v10, 0x1

    const-wide/high16 v14, -0x8000000000000000L

    if-ne v2, v1, :cond_3

    iget-object v1, v2, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-boolean v1, v1, Lⁱי/ᵎˊ;->ᵎﹶ:Z

    if-nez v1, :cond_3

    cmp-long v1, p4, v14

    if-eqz v1, :cond_2

    cmp-long v1, p4, v8

    if-ltz v1, :cond_3

    :cond_2
    move v1, v10

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iget-object v11, v0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    if-ne v2, v11, :cond_5

    cmp-long v11, p6, v14

    if-eqz v11, :cond_4

    cmp-long v8, p6, v8

    if-ltz v8, :cond_5

    :cond_4
    move v8, v10

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_4
    invoke-virtual {v0, v2}, Lⁱי/ᵔי;->ᵔʾ(Lⁱי/ٴʼ;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    :cond_6
    cmp-long v2, v12, v6

    if-nez v2, :cond_7

    iget-wide v11, v5, Lⁱי/ᵎˊ;->ˈ:J

    cmp-long v5, v11, v14

    if-nez v5, :cond_7

    iget-wide v11, v3, Lⁱי/ᵎˊ;->ˈ:J

    cmp-long v3, v11, v6

    if-eqz v3, :cond_7

    cmp-long v3, v11, v14

    if-eqz v3, :cond_7

    move v3, v10

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    if-eqz v1, :cond_9

    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    move v4, v10

    :cond_9
    if-eqz v8, :cond_a

    or-int/lit8 v1, v4, 0x2

    return v1

    :cond_a
    return v4

    :cond_b
    iget-object v3, v2, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0, v3}, Lⁱי/ᵔי;->ᵔʾ(Lⁱי/ٴʼ;)I

    move-result v1

    return v1

    :cond_d
    return v4
.end method

.method public final ٴﹶ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱי/ᵔי;->ˉʿ:Lⁱי/ٴʼ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lⁱי/ٴʼ;->ᵔᵢ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lⁱי/ᵔי;->ˉʿ:Lⁱי/ٴʼ;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lⁱי/ᵔי;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lⁱי/ᵔי;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱי/ٴʼ;

    invoke-virtual {v1}, Lⁱי/ٴʼ;->ᵔᵢ()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lⁱי/ᵔי;->ˉʿ:Lⁱי/ٴʼ;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ᵎﹶ()Lⁱי/ٴʼ;
    .locals 1

    iget-object v0, p0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    return-object v0
.end method

.method public final ᵔʾ(Lⁱי/ٴʼ;)I
    .locals 2

    .prologue
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, p0, Lⁱי/ᵔי;->ﾞʻ:Lⁱי/ٴʼ;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lⁱי/ᵔי;->ﾞʻ:Lⁱי/ٴʼ;

    :goto_0
    iget-object p1, p1, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    iput-object v0, p0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    iput-object v0, p0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    const/4 v1, 0x3

    :cond_1
    iget-object v0, p0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    iput-object v0, p0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Lⁱי/ٴʼ;->ʼˎ()V

    iget v0, p0, Lⁱי/ᵔי;->ᵔʾ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lⁱי/ᵔי;->ᵔʾ:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lⁱי/ᵔי;->ﾞʻ:Lⁱי/ٴʼ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lⁱי/ٴʼ;->ⁱˊ()V

    const/4 v0, 0x0

    iput-object v0, p1, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    invoke-virtual {p1}, Lⁱי/ٴʼ;->ʽ()V

    :goto_1
    invoke-virtual {p0}, Lⁱי/ᵔי;->ﾞʻ()V

    return v1
.end method

.method public final ᵔᵢ(Lʽⁱ/ʼˈ;Lⁱי/ᵎˊ;)Lⁱי/ᵎˊ;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v3}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v4

    iget v5, v3, Lﹳᵢ/ᵢˏ;->ˑﹳ:I

    const/4 v6, -0x1

    if-nez v4, :cond_0

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v13, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    iget v4, v3, Lﹳᵢ/ᵢˏ;->ⁱˊ:I

    invoke-virtual {v0, v1, v3}, Lⁱי/ᵔי;->ˆʾ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)Z

    move-result v14

    invoke-virtual {v0, v1, v3, v13}, Lⁱי/ᵔי;->ʼˎ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;Z)Z

    move-result v15

    iget-object v7, v3, Lﹳᵢ/ᵢˏ;->ﹳٴ:Ljava/lang/Object;

    iget-object v8, v0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v7, v8}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    invoke-virtual {v3}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_2

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v8, v5}, Lʽⁱ/ˋᵔ;->ˈ(I)J

    const-wide/16 v11, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    move-wide v11, v9

    :goto_3
    invoke-virtual {v3}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v3, Lﹳᵢ/ᵢˏ;->ʽ:I

    invoke-virtual {v8, v4, v1}, Lʽⁱ/ˋᵔ;->ﹳٴ(II)J

    move-result-wide v9

    goto :goto_5

    :cond_3
    cmp-long v1, v11, v9

    if-eqz v1, :cond_5

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v1, v11, v9

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-wide v9, v11

    goto :goto_5

    :cond_5
    :goto_4
    iget-wide v9, v8, Lʽⁱ/ˋᵔ;->ˈ:J

    :goto_5
    invoke-virtual {v3}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8, v4}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    goto :goto_6

    :cond_6
    if-eq v5, v6, :cond_7

    invoke-virtual {v8, v5}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    :cond_7
    :goto_6
    new-instance v1, Lⁱי/ᵎˊ;

    move-object v5, v3

    iget-wide v3, v2, Lⁱי/ᵎˊ;->ⁱˊ:J

    move-object v7, v5

    iget-wide v5, v2, Lⁱי/ᵎˊ;->ʽ:J

    iget-boolean v2, v2, Lⁱי/ᵎˊ;->ﾞᴵ:Z

    move-wide/from16 v16, v11

    move v11, v2

    move-object v2, v7

    move-wide/from16 v7, v16

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v15}, Lⁱי/ᵎˊ;-><init>(Lﹳᵢ/ᵢˏ;JJJJZZZZZ)V

    return-object v1
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)J
    .locals 3

    .prologue
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lⁱי/ᵔי;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lⁱי/ᵔי;->ᵔﹳ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱי/ٴʼ;

    iget-object v2, v1, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object p1, p1, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v0, p1, Lﹳᵢ/ᵢˏ;->ˈ:J

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final ⁱˊ()V
    .locals 3

    .prologue
    iget v0, p0, Lⁱי/ᵔי;->ᵔʾ:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v1, v0, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    iput-object v1, p0, Lⁱי/ᵔי;->ˉˆ:Ljava/lang/Object;

    iget-object v1, v0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v1, v1, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v1, v1, Lﹳᵢ/ᵢˏ;->ˈ:J

    iput-wide v1, p0, Lⁱי/ᵔי;->ʼᐧ:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lⁱי/ٴʼ;->ʼˎ()V

    iget-object v0, v0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    iput-object v0, p0, Lⁱי/ᵔי;->ﾞʻ:Lⁱי/ٴʼ;

    iput-object v0, p0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    iput-object v0, p0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    const/4 v0, 0x0

    iput v0, p0, Lⁱי/ᵔי;->ᵔʾ:I

    invoke-virtual {p0}, Lⁱי/ᵔי;->ﾞʻ()V

    return-void
.end method

.method public final ﹳٴ()Lⁱי/ٴʼ;
    .locals 3

    .prologue
    iget-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    if-ne v0, v2, :cond_1

    iget-object v2, v0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    iput-object v2, p0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    :cond_1
    iget-object v2, p0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    if-ne v0, v2, :cond_2

    iget-object v2, v0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    iput-object v2, p0, Lⁱי/ᵔי;->ٴﹶ:Lⁱי/ٴʼ;

    :cond_2
    invoke-virtual {v0}, Lⁱי/ٴʼ;->ʼˎ()V

    iget v0, p0, Lⁱי/ᵔי;->ᵔʾ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lⁱי/ᵔי;->ᵔʾ:I

    if-nez v0, :cond_3

    iput-object v1, p0, Lⁱי/ᵔי;->ﾞʻ:Lⁱי/ٴʼ;

    iget-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    iget-object v1, v0, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    iput-object v1, p0, Lⁱי/ᵔי;->ˉˆ:Ljava/lang/Object;

    iget-object v0, v0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v0, v0, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    iget-wide v0, v0, Lﹳᵢ/ᵢˏ;->ˈ:J

    iput-wide v0, p0, Lⁱי/ᵔי;->ʼᐧ:J

    :cond_3
    iget-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    iget-object v0, v0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    iput-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    invoke-virtual {p0}, Lⁱי/ᵔי;->ﾞʻ()V

    iget-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    return-object v0
.end method

.method public final ﹳᐧ(Lʽⁱ/ʼˈ;)I
    .locals 7

    .prologue
    iget-object v0, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, v0, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget v5, p0, Lⁱי/ᵔי;->ᵎﹶ:I

    iget-boolean v6, p0, Lⁱי/ᵔי;->ᵔᵢ:Z

    iget-object v3, p0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    iget-object v4, p0, Lⁱי/ᵔי;->ⁱˊ:Lʽⁱ/ˊˋ;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lʽⁱ/ʼˈ;->ˈ(ILʽⁱ/ˋᵔ;Lʽⁱ/ˊˋ;IZ)I

    move-result v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    if-eqz p1, :cond_1

    iget-object v3, v0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-boolean v3, v3, Lⁱי/ᵎˊ;->ᵔᵢ:Z

    if-nez v3, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lⁱי/ٴʼ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lʽⁱ/ʼˈ;->ⁱˊ(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lⁱי/ᵔי;->ᵔʾ(Lⁱי/ٴʼ;)I

    move-result p1

    iget-object v2, v0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    invoke-virtual {p0, v1, v2}, Lⁱי/ᵔי;->ᵔᵢ(Lʽⁱ/ʼˈ;Lⁱי/ᵎˊ;)Lⁱי/ᵎˊ;

    move-result-object v1

    iput-object v1, v0, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    return p1
.end method

.method public final ﾞʻ()V
    .locals 4

    .prologue
    invoke-static {}, Lʼʻ/ᵎⁱ;->ˆʾ()Lʼʻ/ˊʻ;

    move-result-object v0

    iget-object v1, p0, Lⁱי/ᵔי;->ʼˎ:Lⁱי/ٴʼ;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v2, v2, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    invoke-virtual {v0, v2}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    iget-object v1, v1, Lⁱי/ٴʼ;->ˉʿ:Lⁱי/ٴʼ;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lⁱי/ᵔי;->ˆʾ:Lⁱי/ٴʼ;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lⁱי/ٴʼ;->ᵎﹶ:Lⁱי/ᵎˊ;

    iget-object v1, v1, Lⁱי/ᵎˊ;->ﹳٴ:Lﹳᵢ/ᵢˏ;

    :goto_1
    new-instance v2, Lcom/parse/ˊﾞ;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, p0, Lⁱי/ᵔי;->ˈ:Lᐧˎ/ʻٴ;

    invoke-virtual {v0, v2}, Lᐧˎ/ʻٴ;->ʽ(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ﾞᴵ(Lʽⁱ/ʼˈ;Ljava/lang/Object;JJJZ)Lⁱי/ᵎˊ;
    .locals 25

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Lⁱי/ᵔי;->ﹳٴ:Lʽⁱ/ˋᵔ;

    invoke-virtual {v1, v2, v5}, Lʽⁱ/ʼˈ;->ᵎﹶ(Ljava/lang/Object;Lʽⁱ/ˋᵔ;)Lʽⁱ/ˋᵔ;

    invoke-virtual {v5, v3, v4}, Lʽⁱ/ˋᵔ;->ⁱˊ(J)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    iget-object v9, v5, Lʽⁱ/ˋᵔ;->ᵎﹶ:Lʽⁱ/ʽ;

    iget v9, v9, Lʽⁱ/ʽ;->ﹳٴ:I

    if-lez v9, :cond_1

    invoke-virtual {v5, v7}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    :cond_1
    :goto_0
    new-instance v11, Lﹳᵢ/ᵢˏ;

    move-wide/from16 v9, p7

    invoke-direct {v11, v2, v9, v10, v6}, Lﹳᵢ/ᵢˏ;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v11}, Lﹳᵢ/ᵢˏ;->ⁱˊ()Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_2

    if-ne v6, v8, :cond_2

    move v7, v9

    :cond_2
    invoke-virtual {v0, v1, v11}, Lⁱי/ᵔי;->ˆʾ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;)Z

    move-result v23

    invoke-virtual {v0, v1, v11, v7}, Lⁱי/ᵔי;->ʼˎ(Lʽⁱ/ʼˈ;Lﹳᵢ/ᵢˏ;Z)Z

    move-result v24

    if-eq v6, v8, :cond_3

    invoke-virtual {v5, v6}, Lʽⁱ/ˋᵔ;->ᵎﹶ(I)Z

    :cond_3
    if-eq v6, v8, :cond_4

    invoke-virtual {v5, v6}, Lʽⁱ/ˋᵔ;->ﾞᴵ(I)Z

    :cond_4
    const-wide/16 v1, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v6, v8, :cond_5

    invoke-virtual {v5, v6}, Lʽⁱ/ˋᵔ;->ˈ(I)J

    move-wide/from16 v16, v1

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v12

    :goto_1
    cmp-long v6, v16, v12

    if-eqz v6, :cond_7

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v6, v16, v14

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move-wide/from16 v18, v16

    goto :goto_3

    :cond_7
    :goto_2
    iget-wide v5, v5, Lʽⁱ/ˋᵔ;->ˈ:J

    move-wide/from16 v18, v5

    :goto_3
    cmp-long v5, v18, v12

    if-eqz v5, :cond_8

    cmp-long v5, v3, v18

    if-ltz v5, :cond_8

    int-to-long v3, v9

    sub-long v3, v18, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v12, v1

    goto :goto_4

    :cond_8
    move-wide v12, v3

    :goto_4
    new-instance v10, Lⁱי/ᵎˊ;

    const/16 v21, 0x0

    move-wide/from16 v14, p5

    move/from16 v20, p9

    move/from16 v22, v7

    invoke-direct/range {v10 .. v24}, Lⁱי/ᵎˊ;-><init>(Lﹳᵢ/ᵢˏ;JJJJZZZZZ)V

    return-object v10
.end method
