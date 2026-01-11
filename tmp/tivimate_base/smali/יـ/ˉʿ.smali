.class public final Lיـ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:[Ljava/lang/Object;

.field public ˈ:I

.field public ˑﹳ:I

.field public ⁱˊ:[J

.field public ﹳٴ:[J

.field public ﾞᴵ:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lיـ/ˉʿ;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lיـ/ᵔﹳ;->ﹳٴ:[J

    iput-object v0, p0, Lיـ/ˉʿ;->ﹳٴ:[J

    sget-object v0, Lיـ/ᵔᵢ;->ⁱˊ:[J

    iput-object v0, p0, Lיـ/ˉʿ;->ⁱˊ:[J

    sget-object v0, Lˏי/ﹳٴ;->ⁱˊ:[Ljava/lang/Object;

    iput-object v0, p0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lיـ/ᵔﹳ;->ˈ(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lיـ/ˉʿ;->ʽ(I)V

    return-void

    :cond_1
    const-string p1, "Capacity must be a positive value."

    invoke-static {p1}, Lˏי/ﹳٴ;->ʽ(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 29

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    instance-of v3, v1, Lיـ/ˉʿ;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    check-cast v1, Lיـ/ˉʿ;

    iget v3, v1, Lיـ/ˉʿ;->ˑﹳ:I

    iget v5, v0, Lיـ/ˉʿ;->ˑﹳ:I

    if-eq v3, v5, :cond_2

    return v4

    :cond_2
    iget-object v3, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    iget-object v5, v0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    iget-object v6, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_d

    move v8, v4

    :goto_0
    aget-wide v9, v6, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v14

    cmp-long v11, v11, v14

    if-eqz v11, :cond_c

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move/from16 v16, v2

    move v2, v4

    :goto_1
    if-ge v2, v11, :cond_b

    const-wide/16 v17, 0xff

    and-long v17, v9, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_9

    shl-int/lit8 v17, v8, 0x3

    add-int v17, v17, v2

    move/from16 v18, v4

    move-object/from16 v19, v5

    aget-wide v4, v3, v17

    move/from16 p1, v13

    aget-object v13, v19, v17

    if-nez v13, :cond_8

    invoke-virtual {v1, v4, v5}, Lיـ/ˉʿ;->ⁱˊ(J)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    const/16 v13, 0x20

    ushr-long v20, v4, v13

    move-wide/from16 v22, v14

    xor-long v14, v4, v20

    long-to-int v13, v14

    const v14, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v13, v14

    shl-int/lit8 v14, v13, 0x10

    xor-int/2addr v13, v14

    and-int/lit8 v14, v13, 0x7f

    iget v15, v1, Lיـ/ˉʿ;->ˈ:I

    ushr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v15

    move/from16 v20, v12

    move/from16 v17, v18

    :goto_2
    iget-object v12, v1, Lיـ/ˉʿ;->ﹳٴ:[J

    shr-int/lit8 v21, v13, 0x3

    and-int/lit8 v24, v13, 0x7

    shl-int/lit8 v0, v24, 0x3

    aget-wide v24, v12, v21

    ushr-long v24, v24, v0

    add-int/lit8 v21, v21, 0x1

    aget-wide v26, v12, v21

    rsub-int/lit8 v12, v0, 0x40

    shl-long v26, v26, v12

    move/from16 v21, v2

    move-object v12, v3

    int-to-long v2, v0

    neg-long v2, v2

    const/16 v0, 0x3f

    shr-long/2addr v2, v0

    and-long v2, v26, v2

    or-long v2, v24, v2

    move-wide/from16 v24, v9

    int-to-long v9, v14

    const-wide v26, 0x101010101010101L

    mul-long v9, v9, v26

    xor-long/2addr v9, v2

    sub-long v26, v9, v26

    not-long v9, v9

    and-long v9, v26, v9

    and-long v9, v9, v22

    :goto_3
    const-wide/16 v26, 0x0

    cmp-long v0, v9, v26

    if-eqz v0, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v13

    and-int/2addr v0, v15

    move/from16 v26, v0

    iget-object v0, v1, Lיـ/ˉʿ;->ⁱˊ:[J

    aget-wide v27, v0, v26

    cmp-long v0, v27, v4

    if-nez v0, :cond_3

    move/from16 v0, v26

    goto :goto_4

    :cond_3
    const-wide/16 v26, 0x1

    sub-long v26, v9, v26

    and-long v9, v9, v26

    goto :goto_3

    :cond_4
    not-long v9, v2

    const/4 v0, 0x6

    shl-long/2addr v9, v0

    and-long/2addr v2, v9

    and-long v2, v2, v22

    cmp-long v0, v2, v26

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_4
    if-ltz v0, :cond_5

    move/from16 v0, v16

    goto :goto_5

    :cond_5
    move/from16 v0, v18

    :goto_5
    if-nez v0, :cond_a

    goto :goto_6

    :cond_6
    add-int/lit8 v17, v17, 0x8

    add-int v13, v13, v17

    and-int/2addr v13, v15

    move-object/from16 v0, p0

    move-object v3, v12

    move/from16 v2, v21

    move-wide/from16 v9, v24

    goto :goto_2

    :cond_7
    :goto_6
    return v18

    :cond_8
    move/from16 v21, v2

    move-wide/from16 v24, v9

    move/from16 v20, v12

    move-wide/from16 v22, v14

    move-object v12, v3

    invoke-virtual {v1, v4, v5}, Lיـ/ˉʿ;->ⁱˊ(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v18

    :cond_9
    move/from16 v21, v2

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-wide/from16 v24, v9

    move/from16 v20, v12

    move/from16 p1, v13

    move-wide/from16 v22, v14

    move-object v12, v3

    :cond_a
    shr-long v9, v24, v20

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object v3, v12

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v12, v20

    move-wide/from16 v14, v22

    goto/16 :goto_1

    :cond_b
    move/from16 v18, v4

    move-object/from16 v19, v5

    move v0, v12

    move-object v12, v3

    if-ne v11, v0, :cond_e

    goto :goto_7

    :cond_c
    move/from16 v16, v2

    move-object v12, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    :goto_7
    if-eq v8, v7, :cond_e

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object v3, v12

    move/from16 v2, v16

    move/from16 v4, v18

    move-object/from16 v5, v19

    goto/16 :goto_0

    :cond_d
    move/from16 v16, v2

    :cond_e
    return v16
.end method

.method public final hashCode()I
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    iget-object v2, v0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    iget-object v3, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_6

    move v6, v5

    move v7, v6

    :goto_0
    aget-wide v8, v3, v6

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    sub-int v10, v6, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v5

    :goto_1
    if-ge v12, v10, :cond_2

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    shl-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v12

    aget-wide v14, v1, v13

    aget-object v13, v2, v13

    const/16 v16, 0x20

    ushr-long v16, v14, v16

    xor-long v14, v14, v16

    long-to-int v14, v14

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v13

    goto :goto_2

    :cond_0
    move v13, v5

    :goto_2
    xor-int/2addr v13, v14

    add-int/2addr v7, v13

    :cond_1
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-ne v10, v11, :cond_3

    goto :goto_3

    :cond_3
    return v7

    :cond_4
    :goto_3
    if-eq v6, v4, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    return v7

    :cond_6
    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lיـ/ˉʿ;->ˑﹳ:I

    if-nez v1, :cond_0

    const-string v1, "{}"

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    iget-object v3, v0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    iget-object v4, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    aget-wide v9, v4, v7

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    sub-int v11, v7, v5

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_4

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_2

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    move/from16 v16, v7

    aget-wide v6, v2, v14

    aget-object v14, v3, v14

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v14, v0, :cond_1

    const-string v14, "(this)"

    :cond_1
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    iget v6, v0, Lיـ/ˉʿ;->ˑﹳ:I

    if-ge v8, v6, :cond_3

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    :cond_3
    :goto_2
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v7

    if-ne v11, v12, :cond_6

    move/from16 v6, v16

    goto :goto_3

    :cond_5
    move v6, v7

    :goto_3
    if-eq v6, v5, :cond_6

    add-int/lit8 v7, v6, 0x1

    goto :goto_0

    :cond_6
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final ʽ(I)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    if-lez p1, :cond_0

    invoke-static {p1}, Lיـ/ᵔﹳ;->ʽ(I)I

    move-result p1

    const/4 v1, 0x7

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lיـ/ˉʿ;->ˈ:I

    if-nez p1, :cond_1

    sget-object v0, Lיـ/ᵔﹳ;->ﹳٴ:[J

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, -0x8

    shr-int/lit8 v1, v1, 0x3

    new-array v2, v1, [J

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-static {v2, v0, v1, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lיـ/ˉʿ;->ﹳٴ:[J

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 v2, p1, 0x7

    shl-int/lit8 v2, v2, 0x3

    aget-wide v3, v0, v1

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v2

    not-long v7, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    aput-wide v3, v0, v1

    iget v0, p0, Lיـ/ˉʿ;->ˈ:I

    invoke-static {v0}, Lיـ/ᵔﹳ;->ﹳٴ(I)I

    move-result v0

    iget v1, p0, Lיـ/ˉʿ;->ˑﹳ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lיـ/ˉʿ;->ﾞᴵ:I

    new-array v0, p1, [J

    iput-object v0, p0, Lיـ/ˉʿ;->ⁱˊ:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    return-void
.end method

.method public final ˈ(I)V
    .locals 22

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    iget-object v2, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    iget-object v3, v0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    iget v4, v0, Lיـ/ˉʿ;->ˈ:I

    invoke-virtual/range {p0 .. p1}, Lיـ/ˉʿ;->ʽ(I)V

    iget-object v5, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    iget-object v6, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    iget-object v7, v0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    iget v8, v0, Lיـ/ˉʿ;->ˈ:I

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_1

    shr-int/lit8 v10, v9, 0x3

    aget-wide v10, v1, v10

    and-int/lit8 v12, v9, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const-wide/16 v14, 0x80

    cmp-long v10, v10, v14

    if-gez v10, :cond_0

    aget-wide v10, v2, v9

    const/16 v14, 0x20

    ushr-long v14, v10, v14

    xor-long/2addr v14, v10

    long-to-int v14, v14

    const v15, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v14, v15

    shl-int/lit8 v15, v14, 0x10

    xor-int/2addr v14, v15

    ushr-int/lit8 v15, v14, 0x7

    invoke-virtual {v0, v15}, Lיـ/ˉʿ;->ﹳٴ(I)I

    move-result v15

    and-int/lit8 v14, v14, 0x7f

    move-wide/from16 v16, v12

    int-to-long v12, v14

    shr-int/lit8 v14, v15, 0x3

    and-int/lit8 v18, v15, 0x7

    shl-int/lit8 v18, v18, 0x3

    aget-wide v19, v5, v14

    move-object/from16 v21, v1

    shl-long v0, v16, v18

    not-long v0, v0

    and-long v0, v19, v0

    shl-long v12, v12, v18

    or-long/2addr v0, v12

    aput-wide v0, v5, v14

    add-int/lit8 v12, v15, -0x7

    and-int/2addr v12, v8

    and-int/lit8 v13, v8, 0x7

    add-int/2addr v12, v13

    shr-int/lit8 v12, v12, 0x3

    aput-wide v0, v5, v12

    aput-wide v10, v6, v15

    aget-object v0, v3, v9

    aput-object v0, v7, v15

    goto :goto_1

    :cond_0
    move-object/from16 v21, v1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ˑﹳ(JLjava/lang/Object;)V
    .locals 39

    .prologue
    move-object/from16 v0, p0

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    xor-long v2, p1, v2

    long-to-int v2, v2

    const v3, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v2, v3

    shl-int/lit8 v4, v2, 0x10

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x7

    and-int/lit8 v2, v2, 0x7f

    iget v5, v0, Lיـ/ˉʿ;->ˈ:I

    and-int v6, v4, v5

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    shr-int/lit8 v10, v6, 0x3

    and-int/lit8 v11, v6, 0x7

    shl-int/lit8 v11, v11, 0x3

    aget-wide v12, v9, v10

    ushr-long/2addr v12, v11

    const/4 v14, 0x1

    add-int/2addr v10, v14

    aget-wide v15, v9, v10

    rsub-int/lit8 v9, v11, 0x40

    shl-long v9, v15, v9

    move/from16 v16, v8

    const/4 v15, 0x0

    int-to-long v7, v11

    neg-long v7, v7

    const/16 v11, 0x3f

    shr-long/2addr v7, v11

    and-long/2addr v7, v9

    or-long/2addr v7, v12

    int-to-long v9, v2

    const-wide v11, 0x101010101010101L

    mul-long v17, v9, v11

    move v13, v1

    move/from16 v19, v2

    xor-long v1, v7, v17

    sub-long v11, v1, v11

    not-long v1, v1

    and-long/2addr v1, v11

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v11

    :goto_1
    const-wide/16 v17, 0x0

    cmp-long v20, v1, v17

    if-eqz v20, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v17

    shr-int/lit8 v17, v17, 0x3

    add-int v17, v6, v17

    and-int v17, v17, v5

    move/from16 v20, v3

    iget-object v3, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    aget-wide v21, v3, v17

    cmp-long v3, v21, p1

    if-nez v3, :cond_0

    goto/16 :goto_b

    :cond_0
    const-wide/16 v17, 0x1

    sub-long v17, v1, v17

    and-long v1, v1, v17

    move/from16 v3, v20

    goto :goto_1

    :cond_1
    move/from16 v20, v3

    not-long v1, v7

    const/4 v3, 0x6

    shl-long/2addr v1, v3

    and-long/2addr v1, v7

    and-long/2addr v1, v11

    cmp-long v1, v1, v17

    const/16 v2, 0x8

    if-eqz v1, :cond_d

    invoke-virtual {v0, v4}, Lיـ/ˉʿ;->ﹳٴ(I)I

    move-result v1

    iget v3, v0, Lיـ/ˉʿ;->ﾞᴵ:I

    const-wide/16 v7, 0xff

    const/16 v16, 0x7

    if-nez v3, :cond_2

    iget-object v3, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    shr-int/lit8 v19, v1, 0x3

    aget-wide v21, v3, v19

    and-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    shr-long v21, v21, v3

    and-long v21, v21, v7

    const-wide/16 v23, 0xfe

    cmp-long v3, v21, v23

    if-nez v3, :cond_3

    :cond_2
    move-wide/from16 v29, v7

    move/from16 v33, v14

    const-wide/16 v25, 0x80

    goto/16 :goto_9

    :cond_3
    iget v1, v0, Lיـ/ˉʿ;->ˈ:I

    if-le v1, v2, :cond_b

    iget v3, v0, Lיـ/ˉʿ;->ˑﹳ:I

    move/from16 v21, v2

    int-to-long v2, v3

    const-wide/16 v25, 0x20

    mul-long v2, v2, v25

    const-wide/16 v25, 0x80

    int-to-long v5, v1

    const-wide/16 v27, 0x19

    mul-long v5, v5, v27

    const-wide/high16 v27, -0x8000000000000000L

    xor-long v2, v2, v27

    xor-long v5, v5, v27

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    if-gtz v1, :cond_a

    iget-object v1, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    iget v2, v0, Lיـ/ˉʿ;->ˈ:I

    iget-object v3, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    iget-object v5, v0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x7

    shr-int/lit8 v6, v6, 0x3

    move-wide/from16 v29, v7

    move v7, v15

    :goto_2
    if-ge v7, v6, :cond_4

    aget-wide v31, v1, v7

    move-wide/from16 v33, v11

    and-long v11, v31, v33

    move/from16 v22, v13

    move v8, v14

    not-long v13, v11

    ushr-long v11, v11, v16

    add-long/2addr v13, v11

    const-wide v11, -0x101010101010102L

    and-long/2addr v11, v13

    aput-wide v11, v1, v7

    add-int/lit8 v7, v7, 0x1

    move v14, v8

    move/from16 v13, v22

    move-wide/from16 v11, v33

    goto :goto_2

    :cond_4
    move/from16 v22, v13

    move v8, v14

    array-length v6, v1

    add-int/lit8 v7, v6, -0x1

    add-int/lit8 v6, v6, -0x2

    aget-wide v11, v1, v6

    const-wide v13, 0xffffffffffffffL

    and-long/2addr v11, v13

    const-wide/high16 v31, -0x100000000000000L

    or-long v11, v11, v31

    aput-wide v11, v1, v6

    aget-wide v11, v1, v15

    aput-wide v11, v1, v7

    move v6, v15

    :goto_3
    if-eq v6, v2, :cond_9

    shr-int/lit8 v7, v6, 0x3

    aget-wide v11, v1, v7

    and-int/lit8 v19, v6, 0x7

    shl-int/lit8 v19, v19, 0x3

    shr-long v11, v11, v19

    and-long v11, v11, v29

    cmp-long v31, v11, v25

    if-nez v31, :cond_5

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    cmp-long v11, v11, v23

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_6
    aget-wide v11, v3, v6

    ushr-long v31, v11, v22

    xor-long v11, v11, v31

    long-to-int v11, v11

    mul-int v11, v11, v20

    shl-int/lit8 v12, v11, 0x10

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v11, 0x7

    invoke-virtual {v0, v12}, Lיـ/ˉʿ;->ﹳٴ(I)I

    move-result v31

    and-int/2addr v12, v2

    sub-int v32, v31, v12

    and-int v32, v32, v2

    move/from16 v33, v8

    div-int/lit8 v8, v32, 0x8

    sub-int v12, v6, v12

    and-int/2addr v12, v2

    div-int/lit8 v12, v12, 0x8

    if-ne v8, v12, :cond_7

    and-int/lit8 v8, v11, 0x7f

    int-to-long v11, v8

    aget-wide v31, v1, v7

    move-wide/from16 v34, v13

    shl-long v13, v29, v19

    not-long v13, v13

    and-long v13, v31, v13

    shl-long v11, v11, v19

    or-long/2addr v11, v13

    aput-wide v11, v1, v7

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-wide v11, v1, v15

    and-long v11, v11, v34

    or-long v11, v11, v27

    aput-wide v11, v1, v7

    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v33

    move-wide/from16 v13, v34

    goto :goto_3

    :cond_7
    move-wide/from16 v34, v13

    shr-int/lit8 v8, v31, 0x3

    aget-wide v12, v1, v8

    and-int/lit8 v14, v31, 0x7

    shl-int/lit8 v14, v14, 0x3

    shr-long v36, v12, v14

    and-long v36, v36, v29

    cmp-long v32, v36, v25

    if-nez v32, :cond_8

    and-int/lit8 v11, v11, 0x7f

    move/from16 v32, v2

    move-object/from16 v36, v3

    int-to-long v2, v11

    move-wide/from16 v37, v2

    shl-long v2, v29, v14

    not-long v2, v2

    and-long/2addr v2, v12

    shl-long v11, v37, v14

    or-long/2addr v2, v11

    aput-wide v2, v1, v8

    aget-wide v2, v1, v7

    shl-long v11, v29, v19

    not-long v11, v11

    and-long/2addr v2, v11

    shl-long v11, v25, v19

    or-long/2addr v2, v11

    aput-wide v2, v1, v7

    aget-wide v2, v36, v6

    aput-wide v2, v36, v31

    aput-wide v17, v36, v6

    aget-object v2, v5, v6

    aput-object v2, v5, v31

    const/4 v2, 0x0

    aput-object v2, v5, v6

    goto :goto_5

    :cond_8
    move/from16 v32, v2

    move-object/from16 v36, v3

    and-int/lit8 v2, v11, 0x7f

    int-to-long v2, v2

    move-wide/from16 v37, v2

    shl-long v2, v29, v14

    not-long v2, v2

    and-long/2addr v2, v12

    shl-long v11, v37, v14

    or-long/2addr v2, v11

    aput-wide v2, v1, v8

    aget-wide v2, v36, v31

    aget-wide v7, v36, v6

    aput-wide v7, v36, v31

    aput-wide v2, v36, v6

    aget-object v2, v5, v31

    aget-object v3, v5, v6

    aput-object v3, v5, v31

    aput-object v2, v5, v6

    add-int/lit8 v6, v6, -0x1

    :goto_5
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v7, v1, v15

    and-long v7, v7, v34

    or-long v7, v7, v27

    aput-wide v7, v1, v2

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v32

    move/from16 v8, v33

    move-wide/from16 v13, v34

    move-object/from16 v3, v36

    goto/16 :goto_3

    :cond_9
    move/from16 v33, v8

    iget v1, v0, Lיـ/ˉʿ;->ˈ:I

    invoke-static {v1}, Lיـ/ᵔﹳ;->ﹳٴ(I)I

    move-result v1

    iget v2, v0, Lיـ/ˉʿ;->ˑﹳ:I

    sub-int/2addr v1, v2

    iput v1, v0, Lיـ/ˉʿ;->ﾞᴵ:I

    goto :goto_8

    :cond_a
    :goto_6
    move-wide/from16 v29, v7

    move/from16 v33, v14

    goto :goto_7

    :cond_b
    const-wide/16 v25, 0x80

    goto :goto_6

    :goto_7
    iget v1, v0, Lיـ/ˉʿ;->ˈ:I

    invoke-static {v1}, Lיـ/ᵔﹳ;->ⁱˊ(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lיـ/ˉʿ;->ˈ(I)V

    :goto_8
    invoke-virtual {v0, v4}, Lיـ/ˉʿ;->ﹳٴ(I)I

    move-result v1

    :goto_9
    move/from16 v17, v1

    iget v1, v0, Lיـ/ˉʿ;->ˑﹳ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lיـ/ˉʿ;->ˑﹳ:I

    iget v1, v0, Lיـ/ˉʿ;->ﾞᴵ:I

    iget-object v2, v0, Lיـ/ˉʿ;->ﹳٴ:[J

    shr-int/lit8 v3, v17, 0x3

    aget-wide v4, v2, v3

    and-int/lit8 v6, v17, 0x7

    shl-int/lit8 v6, v6, 0x3

    shr-long v7, v4, v6

    and-long v7, v7, v29

    cmp-long v7, v7, v25

    if-nez v7, :cond_c

    move/from16 v7, v33

    goto :goto_a

    :cond_c
    move v7, v15

    :goto_a
    sub-int/2addr v1, v7

    iput v1, v0, Lיـ/ˉʿ;->ﾞᴵ:I

    iget v1, v0, Lיـ/ˉʿ;->ˈ:I

    shl-long v7, v29, v6

    not-long v7, v7

    and-long/2addr v4, v7

    shl-long v6, v9, v6

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    add-int/lit8 v3, v17, -0x7

    and-int/2addr v3, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v3, v1

    shr-int/lit8 v1, v3, 0x3

    aput-wide v4, v2, v1

    :goto_b
    iget-object v1, v0, Lיـ/ˉʿ;->ⁱˊ:[J

    aput-wide p1, v1, v17

    iget-object v1, v0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    aput-object p3, v1, v17

    return-void

    :cond_d
    move/from16 v21, v2

    move/from16 v22, v13

    add-int/lit8 v8, v16, 0x8

    add-int/2addr v6, v8

    and-int/2addr v6, v5

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v1, v22

    goto/16 :goto_0
.end method

.method public final ⁱˊ(J)Ljava/lang/Object;
    .locals 14

    .prologue
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    const v1, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x7f

    iget v2, p0, Lיـ/ˉʿ;->ˈ:I

    ushr-int/lit8 v0, v0, 0x7

    and-int/2addr v0, v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lיـ/ˉʿ;->ﹳٴ:[J

    shr-int/lit8 v5, v0, 0x3

    and-int/lit8 v6, v0, 0x7

    shl-int/lit8 v6, v6, 0x3

    aget-wide v7, v4, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v5, v5, 0x1

    aget-wide v9, v4, v5

    rsub-int/lit8 v4, v6, 0x40

    shl-long v4, v9, v4

    int-to-long v9, v6

    neg-long v9, v9

    const/16 v6, 0x3f

    shr-long/2addr v9, v6

    and-long/2addr v4, v9

    or-long/2addr v4, v7

    int-to-long v6, v1

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v0

    and-int/2addr v10, v2

    iget-object v11, p0, Lיـ/ˉʿ;->ⁱˊ:[J

    aget-wide v12, v11, v10

    cmp-long v11, v12, p1

    if-nez v11, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_1

    :cond_1
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3

    const/4 v10, -0x1

    :goto_2
    if-ltz v10, :cond_2

    iget-object v0, p0, Lיـ/ˉʿ;->ʽ:[Ljava/lang/Object;

    aget-object v0, v0, v10

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    and-int/2addr v0, v2

    goto :goto_0
.end method

.method public final ﹳٴ(I)I
    .locals 9

    .prologue
    iget v0, p0, Lיـ/ˉʿ;->ˈ:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lיـ/ˉʿ;->ﹳٴ:[J

    shr-int/lit8 v3, p1, 0x3

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    aget-wide v5, v2, v3

    ushr-long/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    aget-wide v7, v2, v3

    rsub-int/lit8 v2, v4, 0x40

    shl-long v2, v7, v2

    int-to-long v7, v4

    neg-long v7, v7

    const/16 v4, 0x3f

    shr-long/2addr v7, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v5

    not-long v4, v2

    const/4 v6, 0x7

    shl-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x8

    add-int/2addr p1, v1

    and-int/2addr p1, v0

    goto :goto_0
.end method
