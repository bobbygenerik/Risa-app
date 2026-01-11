.class public final Lיי/ᴵᵔ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ˉˆ;


# instance fields
.field public final ʼˎ:Landroid/util/SparseArray;

.field public ʼᐧ:Z

.field public final ʽ:I

.field public ʽﹳ:I

.field public final ˆʾ:Landroid/util/SparseBooleanArray;

.field public final ˈ:Ljava/util/List;

.field public ˉʿ:Lˆˑ/ﹳٴ;

.field public ˉˆ:I

.field public ˏי:I

.field public final ˑﹳ:Lᐧˎ/ﹳᐧ;

.field public יـ:Lיי/ˉٴ;

.field public final ٴﹶ:Landroid/util/SparseBooleanArray;

.field public final ᵎﹶ:Lיי/ﾞᴵ;

.field public ᵔʾ:Lˊﾞ/ᵔﹳ;

.field public final ᵔᵢ:Lʽᐧ/ˆʾ;

.field public ᵔﹳ:Z

.field public final ⁱˊ:I

.field public final ﹳٴ:I

.field public ﹳᐧ:Z

.field public final ﾞʻ:Lיי/ˈٴ;

.field public final ﾞᴵ:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(IILʽᐧ/ˆʾ;Lᐧˎ/ـˆ;Lיי/ﾞᴵ;I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lיי/ᴵᵔ;->ᵎﹶ:Lיי/ﾞᴵ;

    iput p6, p0, Lיי/ᴵᵔ;->ʽ:I

    iput p1, p0, Lיי/ᴵᵔ;->ﹳٴ:I

    iput p2, p0, Lיי/ᴵᵔ;->ⁱˊ:I

    iput-object p3, p0, Lיי/ᴵᵔ;->ᵔᵢ:Lʽᐧ/ˆʾ;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lיי/ᴵᵔ;->ˈ:Ljava/util/List;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lיי/ᴵᵔ;->ˈ:Ljava/util/List;

    :goto_1
    new-instance p1, Lᐧˎ/ﹳᐧ;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p3, p2}, Lᐧˎ/ﹳᐧ;-><init>(I[B)V

    iput-object p1, p0, Lיי/ᴵᵔ;->ˑﹳ:Lᐧˎ/ﹳᐧ;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lיי/ᴵᵔ;->ˆʾ:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lיי/ᴵᵔ;->ٴﹶ:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lיי/ᴵᵔ;->ʼˎ:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Lיי/ᴵᵔ;->ﾞᴵ:Landroid/util/SparseIntArray;

    new-instance p4, Lיי/ˈٴ;

    invoke-direct {p4, p6}, Lיי/ˈٴ;-><init>(I)V

    iput-object p4, p0, Lיי/ᴵᵔ;->ﾞʻ:Lיי/ˈٴ;

    sget-object p4, Lˊﾞ/ᵔﹳ;->ᵔʾ:Lـˎ/ˈ;

    iput-object p4, p0, Lיי/ᴵᵔ;->ᵔʾ:Lˊﾞ/ᵔﹳ;

    const/4 p4, -0x1

    iput p4, p0, Lיי/ᴵᵔ;->ʽﹳ:I

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p4

    move p5, p3

    :goto_2
    if-ge p5, p4, :cond_2

    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p6

    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lיי/ˉٴ;

    invoke-virtual {p2, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Lיי/ʽʽ;

    new-instance p4, Lˑʼ/ᵎˊ;

    invoke-direct {p4, p0}, Lˑʼ/ᵎˊ;-><init>(Lיי/ᴵᵔ;)V

    invoke-direct {p1, p4}, Lיי/ʽʽ;-><init>(Lיי/ᴵˊ;)V

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lיי/ᴵᵔ;->יـ:Lיי/ˉٴ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(Lˊﾞ/ᵔﹳ;)V
    .locals 2

    .prologue
    iget v0, p0, Lיי/ᴵᵔ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/ʼˎ;

    iget-object v1, p0, Lיי/ᴵᵔ;->ᵔᵢ:Lʽᐧ/ˆʾ;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/ʼˎ;-><init>(Lˊﾞ/ᵔﹳ;Lʽᐧ/ˆʾ;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lיי/ᴵᵔ;->ᵔʾ:Lˊﾞ/ᵔﹳ;

    return-void
.end method

.method public final ˈ()Lˊﾞ/ˉˆ;
    .locals 0

    return-object p0
.end method

.method public final ٴﹶ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I
    .locals 26

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v12

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v0, Lיי/ᴵᵔ;->ﹳٴ:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move/from16 v17, v4

    :goto_0
    iget-boolean v7, v0, Lיי/ᴵᵔ;->ʼᐧ:Z

    const/16 v8, 0x47

    const-wide/16 v18, -0x1

    if-eqz v7, :cond_15

    cmp-long v7, v12, v18

    iget-object v11, v0, Lיי/ᴵᵔ;->ﾞʻ:Lיי/ˈٴ;

    if-eqz v7, :cond_10

    if-nez v17, :cond_10

    iget-boolean v7, v11, Lיי/ˈٴ;->ˈ:Z

    if-nez v7, :cond_10

    iget v5, v0, Lיי/ᴵᵔ;->ʽﹳ:I

    iget-object v6, v11, Lיי/ˈٴ;->ⁱˊ:Lᐧˎ/ـˆ;

    iget v7, v11, Lיי/ˈٴ;->ﹳٴ:I

    iget-object v12, v11, Lיי/ˈٴ;->ʽ:Lᐧˎ/ﹳᐧ;

    if-gtz v5, :cond_1

    invoke-virtual {v11, v1}, Lיי/ˈٴ;->ﹳٴ(Lˊﾞ/ʼᐧ;)V

    return v4

    :cond_1
    iget-boolean v13, v11, Lיי/ˈٴ;->ﾞᴵ:Z

    if-nez v13, :cond_8

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v13

    int-to-long v6, v7

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    int-to-long v9, v6

    sub-long/2addr v13, v9

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v9

    cmp-long v7, v9, v13

    if-eqz v7, :cond_2

    iput-wide v13, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    return v3

    :cond_2
    invoke-virtual {v12, v6}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-object v2, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v4, v6}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    iget v1, v12, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v2, v12, Lᐧˎ/ﹳᐧ;->ʽ:I

    add-int/lit16 v6, v2, -0xbc

    :goto_1
    if-lt v6, v1, :cond_7

    iget-object v7, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    const/4 v9, -0x4

    move v10, v4

    :goto_2
    const/4 v13, 0x4

    if-gt v9, v13, :cond_6

    mul-int/lit16 v13, v9, 0xbc

    add-int/2addr v13, v6

    if-lt v13, v1, :cond_4

    if-ge v13, v2, :cond_4

    aget-byte v13, v7, v13

    if-eq v13, v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v10, v3

    const/4 v13, 0x5

    if-ne v10, v13, :cond_5

    invoke-static {v12, v6, v5}, Landroid/support/v4/media/session/ⁱˊ;->ˉˆ(Lᐧˎ/ﹳᐧ;II)J

    move-result-wide v9

    cmp-long v7, v9, v15

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_7
    move-wide v9, v15

    :goto_4
    iput-wide v9, v11, Lיי/ˈٴ;->ᵔᵢ:J

    iput-boolean v3, v11, Lיי/ˈٴ;->ﾞᴵ:Z

    return v4

    :cond_8
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v9, v11, Lיי/ˈٴ;->ᵔᵢ:J

    cmp-long v9, v9, v15

    if-nez v9, :cond_9

    invoke-virtual {v11, v1}, Lיי/ˈٴ;->ﹳٴ(Lˊﾞ/ʼᐧ;)V

    return v4

    :cond_9
    iget-boolean v9, v11, Lיי/ˈٴ;->ˑﹳ:Z

    if-nez v9, :cond_e

    int-to-long v6, v7

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getLength()J

    move-result-wide v9

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v9

    int-to-long v13, v4

    cmp-long v7, v9, v13

    if-eqz v7, :cond_a

    iput-wide v13, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    return v3

    :cond_a
    invoke-virtual {v12, v6}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    invoke-interface {v1}, Lˊﾞ/ʼᐧ;->ﾞʻ()V

    iget-object v2, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    invoke-interface {v1, v2, v4, v6}, Lˊﾞ/ʼᐧ;->ʾˋ([BII)V

    iget v1, v12, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v2, v12, Lᐧˎ/ﹳᐧ;->ʽ:I

    :goto_5
    if-ge v1, v2, :cond_d

    iget-object v6, v12, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    aget-byte v6, v6, v1

    if-eq v6, v8, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v12, v1, v5}, Landroid/support/v4/media/session/ⁱˊ;->ˉˆ(Lᐧˎ/ﹳᐧ;II)J

    move-result-wide v6

    cmp-long v9, v6, v15

    if-eqz v9, :cond_c

    move-wide v9, v6

    goto :goto_7

    :cond_c
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    move-wide v9, v15

    :goto_7
    iput-wide v9, v11, Lיי/ˈٴ;->ᵎﹶ:J

    iput-boolean v3, v11, Lיי/ˈٴ;->ˑﹳ:Z

    return v4

    :cond_e
    iget-wide v2, v11, Lיי/ˈٴ;->ᵎﹶ:J

    cmp-long v5, v2, v15

    if-nez v5, :cond_f

    invoke-virtual {v11, v1}, Lיי/ˈٴ;->ﹳٴ(Lˊﾞ/ʼᐧ;)V

    return v4

    :cond_f
    invoke-virtual {v6, v2, v3}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v2

    iget-wide v7, v11, Lיי/ˈٴ;->ᵔᵢ:J

    invoke-virtual {v6, v7, v8}, Lᐧˎ/ـˆ;->ʽ(J)J

    move-result-wide v5

    sub-long/2addr v5, v2

    iput-wide v5, v11, Lיי/ˈٴ;->ʼˎ:J

    invoke-virtual {v11, v1}, Lיי/ˈٴ;->ﹳٴ(Lˊﾞ/ʼᐧ;)V

    return v4

    :cond_10
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v7, v0, Lיי/ᴵᵔ;->ᵔﹳ:Z

    if-nez v7, :cond_12

    iput-boolean v3, v0, Lיי/ᴵᵔ;->ᵔﹳ:Z

    move v9, v6

    iget-wide v6, v11, Lיי/ˈٴ;->ʼˎ:J

    cmp-long v10, v6, v15

    if-eqz v10, :cond_11

    move v10, v3

    new-instance v3, Lˆˑ/ﹳٴ;

    iget-object v11, v11, Lיי/ˈٴ;->ⁱˊ:Lᐧˎ/ـˆ;

    iget v14, v0, Lיי/ᴵᵔ;->ʽﹳ:I

    move v15, v4

    new-instance v4, Lˋⁱ/ﾞᴵ;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move/from16 v16, v5

    new-instance v5, Lʻˆ/ﾞᴵ;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v14, v5, Lʻˆ/ﾞᴵ;->ʾˋ:I

    iput-object v11, v5, Lʻˆ/ﾞᴵ;->ʽʽ:Ljava/lang/Object;

    iget v11, v0, Lיי/ᴵᵔ;->ʽ:I

    iput v11, v5, Lʻˆ/ﾞᴵ;->ᴵˊ:I

    new-instance v11, Lᐧˎ/ﹳᐧ;

    invoke-direct {v11}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v11, v5, Lʻˆ/ﾞᴵ;->ˈٴ:Ljava/lang/Object;

    const-wide/16 v20, 0x1

    add-long v20, v6, v20

    move v11, v15

    const-wide/16 v14, 0xbc

    move/from16 v22, v16

    const/16 v16, 0x3ac

    move/from16 v23, v10

    move/from16 v24, v11

    const-wide/16 v10, 0x0

    move-wide/from16 v8, v20

    move/from16 v25, v22

    move/from16 v1, v24

    invoke-direct/range {v3 .. v16}, Lˆˑ/ﹳٴ;-><init>(Lˊﾞ/ᵎﹶ;Lˊﾞ/ʼˎ;JJJJJI)V

    iput-object v3, v0, Lיי/ᴵᵔ;->ˉʿ:Lˆˑ/ﹳٴ;

    iget-object v4, v0, Lיי/ᴵᵔ;->ᵔʾ:Lˊﾞ/ᵔﹳ;

    iget-object v3, v3, Lˆˑ/ﹳٴ;->ﹳٴ:Lˊﾞ/ˑﹳ;

    invoke-interface {v4, v3}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    goto :goto_8

    :cond_11
    move/from16 v23, v3

    move v1, v4

    move/from16 v25, v5

    iget-object v3, v0, Lיי/ᴵᵔ;->ᵔʾ:Lˊﾞ/ᵔﹳ;

    new-instance v4, Lˊﾞ/יـ;

    invoke-direct {v4, v6, v7}, Lˊﾞ/יـ;-><init>(J)V

    invoke-interface {v3, v4}, Lˊﾞ/ᵔﹳ;->ˑﹳ(Lˊﾞ/ʾˋ;)V

    goto :goto_8

    :cond_12
    move/from16 v23, v3

    move v1, v4

    move/from16 v25, v5

    :goto_8
    iget-boolean v3, v0, Lיי/ᴵᵔ;->ﹳᐧ:Z

    if-eqz v3, :cond_13

    iput-boolean v1, v0, Lיי/ᴵᵔ;->ﹳᐧ:Z

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v3, v4}, Lיי/ᴵᵔ;->ⁱˊ(JJ)V

    invoke-interface/range {p1 .. p1}, Lˊﾞ/ʼᐧ;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_13

    iput-wide v3, v2, Lʽⁱ/ˏי;->ﹳٴ:J

    return v23

    :cond_13
    iget-object v3, v0, Lיי/ᴵᵔ;->ˉʿ:Lˆˑ/ﹳٴ;

    if-eqz v3, :cond_14

    iget-object v4, v3, Lˆˑ/ﹳٴ;->ʽ:Lˊﾞ/ﾞᴵ;

    if-eqz v4, :cond_14

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2}, Lˆˑ/ﹳٴ;->ⁱˊ(Lˊﾞ/ʼᐧ;Lʽⁱ/ˏי;)I

    move-result v1

    return v1

    :cond_14
    move-object/from16 v4, p1

    goto :goto_9

    :cond_15
    move/from16 v23, v4

    move-object v4, v1

    move/from16 v1, v23

    move/from16 v23, v3

    move/from16 v25, v5

    :goto_9
    iget-object v2, v0, Lיי/ᴵᵔ;->ˑﹳ:Lᐧˎ/ﹳᐧ;

    iget-object v3, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    iget v5, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    rsub-int v5, v5, 0x24b8

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_17

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v5

    if-lez v5, :cond_16

    iget v7, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    invoke-static {v3, v7, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    invoke-virtual {v2, v5, v3}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    :cond_17
    :goto_a
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ﹳٴ()I

    move-result v5

    iget-object v7, v0, Lיי/ᴵᵔ;->ʼˎ:Landroid/util/SparseArray;

    if-ge v5, v6, :cond_1e

    iget v5, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    rsub-int v8, v5, 0x24b8

    invoke-interface {v4, v3, v5, v8}, Lʽⁱ/ˆʾ;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1d

    move v4, v1

    :goto_b
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_1c

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lיי/ˉٴ;

    instance-of v3, v2, Lיי/ʾᵎ;

    if-eqz v3, :cond_1b

    check-cast v2, Lיי/ʾᵎ;

    if-eqz v17, :cond_19

    invoke-virtual {v2}, Lיי/ʾᵎ;->ˑﹳ()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_c

    :cond_18
    move v3, v1

    goto :goto_d

    :cond_19
    :goto_c
    move/from16 v3, v23

    :goto_d
    iget v5, v2, Lיי/ʾᵎ;->ʽ:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1b

    iget v5, v2, Lיי/ʾᵎ;->ˆʾ:I

    if-ne v5, v9, :cond_1b

    if-eqz v17, :cond_1a

    iget-object v5, v2, Lיי/ʾᵎ;->ﹳٴ:Lיי/ʼˎ;

    instance-of v5, v5, Lיי/ٴﹶ;

    if-nez v5, :cond_1b

    :cond_1a
    if-eqz v3, :cond_1b

    new-instance v3, Lᐧˎ/ﹳᐧ;

    invoke-direct {v3}, Lᐧˎ/ﹳᐧ;-><init>()V

    move/from16 v10, v23

    invoke-virtual {v2, v10, v3}, Lיי/ʾᵎ;->ʽ(ILᐧˎ/ﹳᐧ;)V

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    const/16 v23, 0x1

    goto :goto_b

    :cond_1c
    return v9

    :cond_1d
    add-int/2addr v5, v8

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    const/16 v23, 0x1

    goto :goto_a

    :cond_1e
    iget v3, v2, Lᐧˎ/ﹳᐧ;->ⁱˊ:I

    iget v4, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    iget-object v5, v2, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    move v6, v3

    :goto_e
    if-ge v6, v4, :cond_1f

    aget-byte v8, v5, v6

    const/16 v9, 0x47

    if-eq v8, v9, :cond_1f

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1f
    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    add-int/lit16 v5, v6, 0xbc

    const/4 v8, 0x0

    if-le v5, v4, :cond_21

    iget v4, v0, Lיי/ᴵᵔ;->ˏי:I

    sub-int/2addr v6, v3

    add-int/2addr v6, v4

    iput v6, v0, Lיי/ᴵᵔ;->ˏי:I

    move/from16 v3, v25

    const/4 v9, 0x2

    if-ne v3, v9, :cond_22

    const/16 v4, 0x178

    if-gt v6, v4, :cond_20

    goto :goto_f

    :cond_20
    const-string v1, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-static {v8, v1}, Landroidx/media3/common/ParserException;->ﹳٴ(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_21
    move/from16 v3, v25

    const/4 v9, 0x2

    iput v1, v0, Lיי/ᴵᵔ;->ˏי:I

    :cond_22
    :goto_f
    iget v4, v2, Lᐧˎ/ﹳᐧ;->ʽ:I

    if-le v5, v4, :cond_23

    return v1

    :cond_23
    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ٴﹶ()I

    move-result v6

    const/high16 v10, 0x800000

    and-int/2addr v10, v6

    if-eqz v10, :cond_24

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    return v1

    :cond_24
    const/high16 v10, 0x400000

    and-int/2addr v10, v6

    if-eqz v10, :cond_25

    const/4 v10, 0x1

    goto :goto_10

    :cond_25
    move v10, v1

    :goto_10
    const v11, 0x1fff00

    and-int/2addr v11, v6

    shr-int/lit8 v11, v11, 0x8

    and-int/lit8 v14, v6, 0x20

    if-eqz v14, :cond_26

    const/4 v14, 0x1

    goto :goto_11

    :cond_26
    move v14, v1

    :goto_11
    and-int/lit8 v15, v6, 0x10

    if-eqz v15, :cond_27

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lיי/ˉٴ;

    :cond_27
    if-nez v8, :cond_28

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    return v1

    :cond_28
    if-eq v3, v9, :cond_2a

    and-int/lit8 v6, v6, 0xf

    add-int/lit8 v7, v6, -0x1

    iget-object v15, v0, Lיי/ᴵᵔ;->ﾞᴵ:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v11, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    invoke-virtual {v15, v11, v6}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v7, v6, :cond_29

    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    return v1

    :cond_29
    const/16 v23, 0x1

    add-int/lit8 v7, v7, 0x1

    and-int/lit8 v7, v7, 0xf

    if-eq v6, v7, :cond_2a

    invoke-interface {v8}, Lיי/ˉٴ;->ⁱˊ()V

    :cond_2a
    if-eqz v14, :cond_2c

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v6

    invoke-virtual {v2}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_2b

    move v7, v9

    goto :goto_12

    :cond_2b
    move v7, v1

    :goto_12
    or-int/2addr v10, v7

    const/16 v23, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    :cond_2c
    iget-boolean v6, v0, Lיי/ᴵᵔ;->ʼᐧ:Z

    if-eq v3, v9, :cond_2d

    if-nez v6, :cond_2d

    iget-object v7, v0, Lיי/ᴵᵔ;->ٴﹶ:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v11, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v7

    if-nez v7, :cond_2e

    :cond_2d
    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    invoke-interface {v8, v10, v2}, Lיי/ˉٴ;->ʽ(ILᐧˎ/ﹳᐧ;)V

    invoke-virtual {v2, v4}, Lᐧˎ/ﹳᐧ;->ٴʼ(I)V

    :cond_2e
    if-eq v3, v9, :cond_2f

    if-nez v6, :cond_2f

    iget-boolean v3, v0, Lיי/ᴵᵔ;->ʼᐧ:Z

    if-eqz v3, :cond_2f

    cmp-long v3, v12, v18

    if-eqz v3, :cond_2f

    const/4 v10, 0x1

    iput-boolean v10, v0, Lיי/ᴵᵔ;->ﹳᐧ:Z

    :cond_2f
    invoke-virtual {v2, v5}, Lᐧˎ/ﹳᐧ;->ᵎˊ(I)V

    return v1
.end method

.method public final ᵎﹶ()Ljava/util/List;
    .locals 1

    sget-object v0, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v0, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    return-object v0
.end method

.method public final ⁱˊ(JJ)V
    .locals 10

    .prologue
    iget p1, p0, Lיי/ᴵᵔ;->ﹳٴ:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object p1, p0, Lיי/ᴵᵔ;->ˈ:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move v2, v1

    :goto_1
    const-wide/16 v3, 0x0

    if-ge v2, p2, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᐧˎ/ـˆ;

    invoke-virtual {v5}, Lᐧˎ/ـˆ;->ˑﹳ()J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-nez v6, :cond_3

    invoke-virtual {v5}, Lᐧˎ/ـˆ;->ˈ()J

    move-result-wide v6

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    cmp-long v3, v6, v3

    if-eqz v3, :cond_2

    cmp-long v3, v6, p3

    if-eqz v3, :cond_2

    move v6, v0

    goto :goto_3

    :cond_2
    move v6, v1

    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v5, p3, p4}, Lᐧˎ/ـˆ;->ᵎﹶ(J)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    cmp-long p1, p3, v3

    if-eqz p1, :cond_6

    iget-object p1, p0, Lיי/ᴵᵔ;->ˉʿ:Lˆˑ/ﹳٴ;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3, p4}, Lˆˑ/ﹳٴ;->ˈ(J)V

    :cond_6
    iget-object p1, p0, Lיי/ᴵᵔ;->ˑﹳ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {p1, v1}, Lᐧˎ/ﹳᐧ;->ˉٴ(I)V

    iget-object p1, p0, Lיי/ᴵᵔ;->ﾞᴵ:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v1

    :goto_4
    iget-object p2, p0, Lיי/ᴵᵔ;->ʼˎ:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_7

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lיי/ˉٴ;

    invoke-interface {p2}, Lיי/ˉٴ;->ⁱˊ()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    iput v1, p0, Lיי/ᴵᵔ;->ˏי:I

    return-void
.end method

.method public final ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ(Lˊﾞ/ʼᐧ;)Z
    .locals 6

    .prologue
    iget-object v0, p0, Lיי/ᴵᵔ;->ˑﹳ:Lᐧˎ/ﹳᐧ;

    iget-object v0, v0, Lᐧˎ/ﹳᐧ;->ﹳٴ:[B

    check-cast p1, Lˊﾞ/ﾞʻ;

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    invoke-virtual {p1, v0, v1, v2, v1}, Lˊﾞ/ﾞʻ;->ʻٴ([BIIZ)Z

    move v2, v1

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2, v1}, Lˊﾞ/ﾞʻ;->ﹳᐧ(IZ)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
