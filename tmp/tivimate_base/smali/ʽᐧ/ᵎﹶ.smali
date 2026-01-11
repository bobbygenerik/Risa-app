.class public final Lʽᐧ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public ʼˎ:[J

.field public final ʽ:Ljava/util/ArrayList;

.field public ˆʾ:J

.field public final ˈ:Lᐧˎ/ﹳᐧ;

.field public ˑﹳ:[B

.field public ᵎﹶ:I

.field public ᵔᵢ:I

.field public final ⁱˊ:Lʽⁱ/ﹳᐧ;

.field public final ﹳٴ:Lʽᐧ/ﾞʻ;

.field public ﾞᴵ:Lˊﾞ/ٴᵢ;


# direct methods
.method public constructor <init>(Lʽᐧ/ﾞʻ;Lʽⁱ/ﹳᐧ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᐧ/ᵎﹶ;->ﹳٴ:Lʽᐧ/ﾞʻ;

    sget-object v0, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    iput-object v0, p0, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B

    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v0, p0, Lʽᐧ/ᵎﹶ;->ˈ:Lᐧˎ/ﹳᐧ;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lʽⁱ/ﹳᐧ;->ﹳٴ()Lʽⁱ/ᵔﹳ;

    move-result-object v0

    const-string v1, "application/x-media3-cues"

    invoke-static {v1}, Lʽⁱ/ˉٴ;->ʼᐧ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lʽⁱ/ᵔﹳ;->ˉʿ:Ljava/lang/String;

    iget-object p2, p2, Lʽⁱ/ﹳᐧ;->ᵔʾ:Ljava/lang/String;

    iput-object p2, v0, Lʽⁱ/ᵔﹳ;->ˆʾ:Ljava/lang/String;

    invoke-interface {p1}, Lʽᐧ/ﾞʻ;->ᵎﹶ()I

    move-result p1

    iput p1, v0, Lʽⁱ/ᵔﹳ;->ᵎˊ:I

    new-instance p1, Lʽⁱ/ﹳᐧ;

    invoke-direct {p1, v0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lʽᐧ/ᵎﹶ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lʽᐧ/ᵎﹶ;->ʽ:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    sget-object p1, Lᐧˎ/ʼʼ;->ʽ:[J

    iput-object p1, p0, Lʽᐧ/ᵎﹶ;->ʼˎ:[J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lʽᐧ/ᵎﹶ;->ˆʾ:J

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 7

    .prologue
    iget v0, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    const/4 v0, 0x3

    invoke-interface {p1, v1, v0}, Lˊﾞ/ᵔﹳ;->ᵔﹳ(II)Lˊﾞ/ٴᵢ;

    move-result-object v0

    iput-object v0, p0, Lʽᐧ/ᵎﹶ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    iget-object v3, p0, Lʽᐧ/ᵎﹶ;->ⁱˊ:Lʽⁱ/ﹳᐧ;

    if-eqz v3, :cond_1

    invoke-interface {v0, v3}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    invoke-interface {p1}, Lˊﾞ/ᵔﹳ;->ᵔᵢ()V

    new-instance v0, Lˊﾞ/ʾᵎ;

    new-array v3, v2, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    new-array v6, v2, [J

    aput-wide v4, v6, v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v4, v5, v3, v6}, Lˊﾞ/ʾᵎ;-><init>(J[J[J)V

    invoke-interface {p1, v0}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    :cond_1
    iput v2, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    return-void
.end method

.method public final ʽ(Lʽᐧ/ﾞᴵ;)V
    .locals 8

    iget-object v0, p0, Lʽᐧ/ᵎﹶ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;)V

    iget-object v0, p1, Lʽᐧ/ﾞᴵ;->ᴵˊ:[B

    array-length v5, v0

    iget-object v1, p0, Lʽᐧ/ᵎﹶ;->ˈ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v1, v2, v0}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    iget-object v0, p0, Lʽᐧ/ᵎﹶ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    invoke-interface {v0, v5, v1}, Lˊﾞ/ٴᵢ;->ˑﹳ(ILᐧˎ/ﹳᐧ;)V

    iget-object v1, p0, Lʽᐧ/ᵎﹶ;->ﾞᴵ:Lˊﾞ/ٴᵢ;

    iget-wide v2, p1, Lʽᐧ/ﾞᴵ;->ʾˋ:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lˊﾞ/ٴᵢ;->ﹳٴ(JIIILˊﾞ/ˊʻ;)V

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 20

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v5, 0x5

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget v2, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 v5, 0x2

    const/16 v6, 0x400

    const-wide/16 v7, -0x1

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v9

    invoke-static {v9, v10}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v6

    :goto_1
    iget-object v9, v1, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B

    array-length v9, v9

    if-le v2, v9, :cond_2

    new-array v2, v2, [B

    iput-object v2, v1, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B

    :cond_2
    iput v4, v1, Lʽᐧ/ᵎﹶ;->ᵎﹶ:I

    iput v5, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    :cond_3
    iget v2, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v11, v1, Lʽᐧ/ᵎﹶ;->ʽ:Ljava/util/ArrayList;

    const/4 v12, 0x4

    const/4 v13, -0x1

    if-ne v2, v5, :cond_a

    iget-object v2, v1, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B

    array-length v5, v2

    iget v14, v1, Lʽᐧ/ᵎﹶ;->ᵎﹶ:I

    if-ne v5, v14, :cond_4

    array-length v5, v2

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B

    :cond_4
    iget-object v2, v1, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B

    iget v5, v1, Lʽᐧ/ᵎﹶ;->ᵎﹶ:I

    array-length v14, v2

    sub-int/2addr v14, v5

    invoke-interface {v0, v2, v5, v14}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result v2

    if-eq v2, v13, :cond_5

    iget v5, v1, Lʽᐧ/ᵎﹶ;->ᵎﹶ:I

    add-int/2addr v5, v2

    iput v5, v1, Lʽᐧ/ᵎﹶ;->ᵎﹶ:I

    :cond_5
    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v14

    cmp-long v5, v14, v7

    if-eqz v5, :cond_6

    iget v5, v1, Lʽᐧ/ᵎﹶ;->ᵎﹶ:I

    move/from16 p2, v4

    int-to-long v4, v5

    cmp-long v4, v4, v14

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_6
    move/from16 p2, v4

    :goto_2
    if-ne v2, v13, :cond_b

    :cond_7
    :try_start_0
    iget-wide v4, v1, Lʽᐧ/ᵎﹶ;->ˆʾ:J

    cmp-long v2, v4, v9

    if-eqz v2, :cond_8

    new-instance v2, Lʽᐧ/ٴﹶ;

    invoke-direct {v2, v3, v4, v5}, Lʽᐧ/ٴﹶ;-><init>(ZJ)V

    :goto_3
    move-object/from16 v18, v2

    goto :goto_4

    :cond_8
    sget-object v2, Lʽᐧ/ٴﹶ;->ʽ:Lʽᐧ/ٴﹶ;

    goto :goto_3

    :goto_4
    iget-object v14, v1, Lʽᐧ/ᵎﹶ;->ﹳٴ:Lʽᐧ/ﾞʻ;

    iget-object v15, v1, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B

    iget v2, v1, Lʽᐧ/ᵎﹶ;->ᵎﹶ:I

    new-instance v4, Lʻʿ/ˈ;

    const/16 v5, 0xf

    invoke-direct {v4, v5, v1}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    const/16 v16, 0x0

    move/from16 v17, v2

    move-object/from16 v19, v4

    invoke-interface/range {v14 .. v19}, Lʽᐧ/ﾞʻ;->ﹳٴ([BIILʽᐧ/ٴﹶ;Lᐧˎ/ﾞᴵ;)V

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v1, Lʽᐧ/ᵎﹶ;->ʼˎ:[J

    move/from16 v2, p2

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    iget-object v4, v1, Lʽᐧ/ᵎﹶ;->ʼˎ:[J

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʽᐧ/ﾞᴵ;

    iget-wide v14, v5, Lʽᐧ/ﾞᴵ;->ʾˋ:J

    aput-wide v14, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_9
    sget-object v2, Lᐧˎ/ʼʼ;->ⁱˊ:[B

    iput-object v2, v1, Lʽᐧ/ᵎﹶ;->ˑﹳ:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iput v12, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    goto :goto_7

    :goto_6
    const-string v2, "SubtitleParser failed."

    invoke-static {v0, v2}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a
    move/from16 p2, v4

    :cond_b
    :goto_7
    iget v2, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_f

    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v4

    cmp-long v2, v4, v7

    if-eqz v2, :cond_c

    invoke-interface {v0}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Lˈˊ/ˉˆ;->ᵔᵢ(J)I

    move-result v6

    :cond_c
    invoke-interface {v0, v6}, Lˊﾞ/ʼᐧ;->ˈ(I)I

    move-result v0

    if-ne v0, v13, :cond_f

    iget-wide v4, v1, Lʽᐧ/ᵎﹶ;->ˆʾ:J

    cmp-long v0, v4, v9

    if-nez v0, :cond_d

    move/from16 v0, p2

    goto :goto_8

    :cond_d
    iget-object v0, v1, Lʽᐧ/ᵎﹶ;->ʼˎ:[J

    invoke-static {v0, v4, v5, v3}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result v0

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽᐧ/ﾞᴵ;

    invoke-virtual {v1, v2}, Lʽᐧ/ᵎﹶ;->ʽ(Lʽᐧ/ﾞᴵ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    iput v12, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    :cond_f
    iget v0, v1, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    if-ne v0, v12, :cond_10

    return v13

    :cond_10
    return p2
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 1

    .prologue
    iget p1, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iput-wide p3, p0, Lʽᐧ/ᵎﹶ;->ˆʾ:J

    iget p1, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iput p2, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    :cond_1
    iget p1, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    :cond_2
    return-void
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget v0, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lʽᐧ/ᵎﹶ;->ﹳٴ:Lʽᐧ/ﾞʻ;

    invoke-interface {v0}, Lʽᐧ/ﾞʻ;->reset()V

    iput v1, p0, Lʽᐧ/ᵎﹶ;->ᵔᵢ:I

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
