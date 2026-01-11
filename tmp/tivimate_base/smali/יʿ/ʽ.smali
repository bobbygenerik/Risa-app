.class public final Lיʿ/ʽ;
.super Lˈˋ/ʾˊ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lᐧˎ/ﹳᐧ;

.field public final ˈ:Lʻᴵ/ʻٴ;

.field public ˑﹳ:Lᐧˎ/ـˆ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᐧˎ/ﹳᐧ;

    invoke-direct {v0}, Lᐧˎ/ﹳᐧ;-><init>()V

    iput-object v0, p0, Lיʿ/ʽ;->ʽ:Lᐧˎ/ﹳᐧ;

    new-instance v0, Lʻᴵ/ʻٴ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lʻᴵ/ʻٴ;-><init>(I)V

    iput-object v0, p0, Lיʿ/ʽ;->ˈ:Lʻᴵ/ʻٴ;

    return-void
.end method


# virtual methods
.method public final ˉʿ(Lˆﹳ/ﹳٴ;Ljava/nio/ByteBuffer;)Lʽⁱ/ٴᵢ;
    .locals 24

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lיʿ/ʽ;->ˑﹳ:Lᐧˎ/ـˆ;

    if-eqz v2, :cond_0

    iget-wide v3, v1, Lˆﹳ/ﹳٴ;->ᵎˊ:J

    invoke-virtual {v2}, Lᐧˎ/ـˆ;->ˑﹳ()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lᐧˎ/ـˆ;

    iget-wide v3, v1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    invoke-direct {v2, v3, v4}, Lᐧˎ/ـˆ;-><init>(J)V

    iput-object v2, v0, Lיʿ/ʽ;->ˑﹳ:Lᐧˎ/ـˆ;

    iget-wide v3, v1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide v5, v1, Lˆﹳ/ﹳٴ;->ᵎˊ:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lᐧˎ/ـˆ;->ﹳٴ(J)J

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, v0, Lיʿ/ʽ;->ʽ:Lᐧˎ/ﹳᐧ;

    invoke-virtual {v3, v2, v1}, Lᐧˎ/ﹳᐧ;->ᵎⁱ(I[B)V

    iget-object v4, v0, Lיʿ/ʽ;->ˈ:Lʻᴵ/ʻٴ;

    invoke-virtual {v4, v2, v1}, Lʻᴵ/ʻٴ;->יـ(I[B)V

    const/16 v1, 0x27

    invoke-virtual {v4, v1}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    int-to-long v5, v2

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    invoke-virtual {v4, v2}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    int-to-long v7, v2

    or-long v13, v5, v7

    const/16 v2, 0x14

    invoke-virtual {v4, v2}, Lʻᴵ/ʻٴ;->ʾᵎ(I)V

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lʻᴵ/ʻٴ;->ˉʿ(I)I

    move-result v4

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lᐧˎ/ﹳᐧ;->ᵔי(I)V

    const/4 v5, 0x0

    if-eqz v4, :cond_19

    const/16 v6, 0xff

    const/4 v7, 0x4

    if-eq v4, v6, :cond_18

    const/16 v2, 0x16

    if-eq v4, v7, :cond_e

    const/4 v6, 0x5

    if-eq v4, v6, :cond_3

    const/4 v2, 0x6

    if-eq v4, v2, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_2
    iget-object v2, v0, Lיʿ/ʽ;->ˑﹳ:Lᐧˎ/ـˆ;

    invoke-static {v13, v14, v3}, Lיʿ/ﹳٴ;->ˈ(JLᐧˎ/ﹳᐧ;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v10

    new-instance v6, Lיʿ/ﹳٴ;

    const/4 v7, 0x2

    invoke-direct/range {v6 .. v11}, Lיʿ/ﹳٴ;-><init>(IJJ)V

    move-object v2, v6

    goto/16 :goto_e

    :cond_3
    iget-object v4, v0, Lיʿ/ʽ;->ˑﹳ:Lᐧˎ/ـˆ;

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_0

    :cond_4
    move v6, v5

    :goto_0
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez v6, :cond_d

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v6

    and-int/lit8 v10, v6, 0x40

    if-eqz v10, :cond_5

    move v10, v1

    goto :goto_1

    :cond_5
    move v10, v5

    :goto_1
    and-int/lit8 v11, v6, 0x20

    if-eqz v11, :cond_6

    move v11, v1

    goto :goto_2

    :cond_6
    move v11, v5

    :goto_2
    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v6, v1

    goto :goto_3

    :cond_7
    move v6, v5

    :goto_3
    if-eqz v10, :cond_8

    if-nez v6, :cond_8

    invoke-static {v13, v14, v3}, Lיʿ/ﹳٴ;->ˈ(JLᐧˎ/ﹳᐧ;)J

    move-result-wide v15

    goto :goto_4

    :cond_8
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    if-nez v10, :cond_b

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v5

    :goto_5
    if-ge v12, v7, :cond_a

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    if-nez v6, :cond_9

    invoke-static {v13, v14, v3}, Lיʿ/ﹳٴ;->ˈ(JLᐧˎ/ﹳᐧ;)J

    move-result-wide v17

    move-wide/from16 v8, v17

    goto :goto_6

    :cond_9
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :goto_6
    new-instance v1, Lـˎ/ˈ;

    invoke-virtual {v4, v8, v9}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    invoke-direct {v1, v2}, Lـˎ/ˈ;-><init>(I)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    move-object v7, v10

    :cond_b
    if-eqz v11, :cond_c

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    :cond_c
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-wide v8, v15

    :goto_7
    move-object/from16 v23, v7

    goto :goto_8

    :cond_d
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_7

    :goto_8
    new-instance v18, Lיʿ/ﹳٴ;

    invoke-virtual {v4, v8, v9}, Lᐧˎ/ـˆ;->ⁱˊ(J)J

    move-result-wide v21

    move-wide/from16 v19, v8

    invoke-direct/range {v18 .. v23}, Lיʿ/ﹳٴ;-><init>(JJLjava/util/List;)V

    move-object/from16 v2, v18

    goto/16 :goto_e

    :cond_e
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v5

    :goto_9
    if-ge v6, v1, :cond_17

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    move v7, v5

    :goto_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v7, :cond_16

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v7

    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    goto :goto_b

    :cond_10
    move v9, v5

    :goto_b
    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    goto :goto_c

    :cond_11
    move v7, v5

    :goto_c
    if-eqz v9, :cond_12

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    :cond_12
    if-nez v9, :cond_14

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v5

    :goto_d
    if-ge v10, v8, :cond_13

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    new-instance v11, Lٴﾞ/ˆʾ;

    invoke-direct {v11, v2}, Lٴﾞ/ˆʾ;-><init>(I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_13
    move-object v8, v9

    :cond_14
    if-eqz v7, :cond_15

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    :cond_15
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ᴵᵔ()I

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʼʼ()I

    :cond_16
    new-instance v7, Lᵎˉ/ⁱˊ;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v8}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_17
    new-instance v2, Lיʿ/ˈ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    goto :goto_e

    :cond_18
    invoke-virtual {v3}, Lᐧˎ/ﹳᐧ;->ʾˋ()J

    move-result-wide v11

    sub-int/2addr v2, v7

    new-array v1, v2, [B

    invoke-virtual {v3, v1, v5, v2}, Lᐧˎ/ﹳᐧ;->ʼˎ([BII)V

    new-instance v9, Lיʿ/ﹳٴ;

    const/4 v10, 0x0

    invoke-direct/range {v9 .. v14}, Lיʿ/ﹳٴ;-><init>(IJJ)V

    move-object v2, v9

    goto :goto_e

    :cond_19
    new-instance v2, Lיʿ/ˈ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :goto_e
    new-instance v1, Lʽⁱ/ٴᵢ;

    if-nez v2, :cond_1a

    new-array v2, v5, [Lʽⁱ/ˊʻ;

    invoke-direct {v1, v2}, Lʽⁱ/ٴᵢ;-><init>([Lʽⁱ/ˊʻ;)V

    return-object v1

    :cond_1a
    const/4 v3, 0x1

    new-array v3, v3, [Lʽⁱ/ˊʻ;

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Lʽⁱ/ٴᵢ;-><init>([Lʽⁱ/ˊʻ;)V

    return-object v1
.end method
