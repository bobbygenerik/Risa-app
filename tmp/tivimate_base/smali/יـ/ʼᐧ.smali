.class public final Lיـ/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:[Ljava/lang/Object;

.field public ˈ:I

.field public ˑﹳ:I

.field public ⁱˊ:[Ljava/lang/Object;

.field public ﹳٴ:[J

.field public ﾞᴵ:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lיـ/ʼᐧ;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lיـ/ᵔﹳ;->ﹳٴ:[J

    iput-object v0, p0, Lיـ/ʼᐧ;->ﹳٴ:[J

    sget-object v0, Lˏי/ﹳٴ;->ⁱˊ:[Ljava/lang/Object;

    iput-object v0, p0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    iput-object v0, p0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lיـ/ᵔﹳ;->ˈ(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lיـ/ʼᐧ;->ʽ(I)V

    return-void

    :cond_1
    const-string p1, "Capacity must be a positive value."

    invoke-static {p1}, Lˏי/ﹳٴ;->ʽ(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 27

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    return v2

    :cond_0
    instance-of v3, v1, Lיـ/ʼᐧ;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return v4

    :cond_1
    check-cast v1, Lיـ/ʼᐧ;

    iget v3, v1, Lיـ/ʼᐧ;->ˑﹳ:I

    iget v5, v0, Lיـ/ʼᐧ;->ˑﹳ:I

    if-eq v3, v5, :cond_2

    return v4

    :cond_2
    iget-object v3, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    iget-object v5, v0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    iget-object v6, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_e

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

    if-eqz v11, :cond_d

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move/from16 v16, v2

    move v2, v4

    :goto_1
    if-ge v2, v11, :cond_c

    const-wide/16 v17, 0xff

    and-long v17, v9, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_a

    shl-int/lit8 v17, v8, 0x3

    add-int v17, v17, v2

    move/from16 v18, v4

    aget-object v4, v3, v17

    move/from16 p1, v13

    aget-object v13, v5, v17

    if-nez v13, :cond_9

    invoke-virtual {v1, v4}, Lיـ/ʼᐧ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v13

    goto :goto_2

    :cond_3
    move/from16 v13, v18

    :goto_2
    const v17, -0x3361d2af    # -8.293031E7f

    mul-int v13, v13, v17

    shl-int/lit8 v17, v13, 0x10

    xor-int v13, v13, v17

    move-wide/from16 v19, v14

    and-int/lit8 v14, v13, 0x7f

    iget v15, v1, Lיـ/ʼᐧ;->ˈ:I

    ushr-int/lit8 v13, v13, 0x7

    and-int/2addr v13, v15

    move/from16 v21, v12

    move/from16 v17, v18

    :goto_3
    iget-object v12, v1, Lיـ/ʼᐧ;->ﹳٴ:[J

    shr-int/lit8 v22, v13, 0x3

    and-int/lit8 v23, v13, 0x7

    shl-int/lit8 v0, v23, 0x3

    aget-wide v23, v12, v22

    ushr-long v23, v23, v0

    add-int/lit8 v22, v22, 0x1

    aget-wide v25, v12, v22

    rsub-int/lit8 v12, v0, 0x40

    shl-long v25, v25, v12

    move/from16 v22, v2

    move-object v12, v3

    int-to-long v2, v0

    neg-long v2, v2

    const/16 v0, 0x3f

    shr-long/2addr v2, v0

    and-long v2, v25, v2

    or-long v2, v23, v2

    move-object v0, v5

    move-object/from16 v23, v6

    int-to-long v5, v14

    const-wide v24, 0x101010101010101L

    mul-long v5, v5, v24

    xor-long/2addr v5, v2

    sub-long v24, v5, v24

    not-long v5, v5

    and-long v5, v24, v5

    and-long v5, v5, v19

    :goto_4
    const-wide/16 v24, 0x0

    cmp-long v26, v5, v24

    if-eqz v26, :cond_5

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v24

    shr-int/lit8 v24, v24, 0x3

    add-int v24, v13, v24

    and-int v24, v24, v15

    move-object/from16 v26, v0

    iget-object v0, v1, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v0, v0, v24

    invoke-static {v0, v4}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    const-wide/16 v24, 0x1

    sub-long v24, v5, v24

    and-long v5, v5, v24

    move-object/from16 v0, v26

    goto :goto_4

    :cond_5
    move-object/from16 v26, v0

    not-long v5, v2

    const/4 v0, 0x6

    shl-long/2addr v5, v0

    and-long/2addr v2, v5

    and-long v2, v2, v19

    cmp-long v0, v2, v24

    if-eqz v0, :cond_7

    const/16 v24, -0x1

    :goto_5
    if-ltz v24, :cond_6

    move/from16 v0, v16

    goto :goto_6

    :cond_6
    move/from16 v0, v18

    :goto_6
    if-nez v0, :cond_b

    goto :goto_7

    :cond_7
    add-int/lit8 v17, v17, 0x8

    add-int v13, v13, v17

    and-int/2addr v13, v15

    move-object/from16 v0, p0

    move-object v3, v12

    move/from16 v2, v22

    move-object/from16 v6, v23

    move-object/from16 v5, v26

    goto :goto_3

    :cond_8
    :goto_7
    return v18

    :cond_9
    move/from16 v22, v2

    move-object/from16 v26, v5

    move-object/from16 v23, v6

    move/from16 v21, v12

    move-wide/from16 v19, v14

    move-object v12, v3

    invoke-virtual {v1, v4}, Lיـ/ʼᐧ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v18

    :cond_a
    move/from16 v22, v2

    move/from16 v18, v4

    move-object/from16 v26, v5

    move-object/from16 v23, v6

    move/from16 v21, v12

    move/from16 p1, v13

    move-wide/from16 v19, v14

    move-object v12, v3

    :cond_b
    shr-long v9, v9, v21

    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object v3, v12

    move/from16 v4, v18

    move-wide/from16 v14, v19

    move/from16 v12, v21

    move-object/from16 v6, v23

    move-object/from16 v5, v26

    goto/16 :goto_1

    :cond_c
    move/from16 v18, v4

    move-object/from16 v26, v5

    move-object/from16 v23, v6

    move v0, v12

    move-object v12, v3

    if-ne v11, v0, :cond_f

    goto :goto_8

    :cond_d
    move/from16 v16, v2

    move-object v12, v3

    move/from16 v18, v4

    move-object/from16 v26, v5

    move-object/from16 v23, v6

    :goto_8
    if-eq v8, v7, :cond_f

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object v3, v12

    move/from16 v2, v16

    move/from16 v4, v18

    move-object/from16 v6, v23

    move-object/from16 v5, v26

    goto/16 :goto_0

    :cond_e
    move/from16 v16, v2

    :cond_f
    return v16
.end method

.method public final hashCode()I
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v1, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    iget-object v2, v0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    iget-object v3, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    if-ltz v4, :cond_7

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

    if-eqz v10, :cond_5

    sub-int v10, v6, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v5

    :goto_1
    if-ge v12, v10, :cond_3

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_2

    shl-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v12

    aget-object v14, v1, v13

    aget-object v13, v2, v13

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v14

    goto :goto_2

    :cond_0
    move v14, v5

    :goto_2
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v13

    goto :goto_3

    :cond_1
    move v13, v5

    :goto_3
    xor-int/2addr v13, v14

    add-int/2addr v7, v13

    :cond_2
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    if-ne v10, v11, :cond_4

    goto :goto_4

    :cond_4
    return v7

    :cond_5
    :goto_4
    if-eq v6, v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return v7

    :cond_7
    return v5
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget v1, v0, Lיـ/ʼᐧ;->ˑﹳ:I

    if-nez v1, :cond_0

    const-string v1, "{}"

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    iget-object v3, v0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    iget-object v4, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_6

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

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

    move v13, v6

    :goto_1
    if-ge v13, v11, :cond_4

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_3

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    aget-object v15, v2, v14

    aget-object v14, v3, v14

    const-string v16, "(this)"

    if-ne v15, v0, :cond_1

    move-object/from16 v15, v16

    :cond_1
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v14, v0, :cond_2

    move-object/from16 v14, v16

    :cond_2
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    iget v14, v0, Lיـ/ʼᐧ;->ˑﹳ:I

    if-ge v8, v14, :cond_3

    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    if-ne v11, v12, :cond_6

    :cond_5
    if-eq v7, v5, :cond_6

    add-int/lit8 v7, v7, 0x1

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
    iput p1, p0, Lיـ/ʼᐧ;->ˈ:I

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

    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x3

    aget-wide v3, v2, v0

    const-wide/16 v5, 0xff

    shl-long/2addr v5, v1

    not-long v7, v5

    and-long/2addr v3, v7

    or-long/2addr v3, v5

    aput-wide v3, v2, v0

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lיـ/ʼᐧ;->ﹳٴ:[J

    iget v0, p0, Lיـ/ʼᐧ;->ˈ:I

    invoke-static {v0}, Lיـ/ᵔﹳ;->ﹳٴ(I)I

    move-result v0

    iget v1, p0, Lיـ/ʼᐧ;->ˑﹳ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lיـ/ʼᐧ;->ﾞᴵ:I

    sget-object v0, Lˏי/ﹳٴ;->ⁱˊ:[Ljava/lang/Object;

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    new-array v1, p1, [Ljava/lang/Object;

    :goto_2
    iput-object v1, p0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    new-array v0, p1, [Ljava/lang/Object;

    :goto_3
    iput-object v0, p0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    return-void
.end method

.method public final ˈ(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x7f

    iget v3, p0, Lיـ/ʼᐧ;->ˈ:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    iget-object v4, p0, Lיـ/ʼᐧ;->ﹳٴ:[J

    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v6, v1, 0x7

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

    int-to-long v6, v2

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    and-int/2addr v10, v3

    iget-object v11, p0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v11, v11, v10

    invoke-static {v11, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_2

    :cond_2
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    const/4 v10, -0x1

    :goto_3
    const/4 p1, 0x0

    if-ltz v10, :cond_3

    iget v0, p0, Lיـ/ʼᐧ;->ˑﹳ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lיـ/ʼᐧ;->ˑﹳ:I

    iget-object v0, p0, Lיـ/ʼᐧ;->ﹳٴ:[J

    iget v1, p0, Lיـ/ʼᐧ;->ˈ:I

    shr-int/lit8 v2, v10, 0x3

    and-int/lit8 v3, v10, 0x7

    shl-int/lit8 v3, v3, 0x3

    aget-wide v4, v0, v2

    const-wide/16 v6, 0xff

    shl-long/2addr v6, v3

    not-long v6, v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0xfe

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    aput-wide v4, v0, v2

    add-int/lit8 v2, v10, -0x7

    and-int/2addr v2, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x3

    aput-wide v4, v0, v1

    iget-object v0, p0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    aput-object p1, v0, v10

    iget-object v0, p0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    aget-object v1, v0, v10

    aput-object p1, v0, v10

    return-object v1

    :cond_3
    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    goto/16 :goto_1
.end method

.method public final ˑﹳ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 33

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const v4, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v3, v4

    shl-int/lit8 v5, v3, 0x10

    xor-int/2addr v3, v5

    ushr-int/lit8 v5, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    iget v6, v0, Lיـ/ʼᐧ;->ˈ:I

    and-int v7, v5, v6

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    shr-int/lit8 v10, v7, 0x3

    and-int/lit8 v11, v7, 0x7

    shl-int/lit8 v11, v11, 0x3

    aget-wide v12, v9, v10

    ushr-long/2addr v12, v11

    const/4 v14, 0x1

    add-int/2addr v10, v14

    aget-wide v15, v9, v10

    rsub-int/lit8 v9, v11, 0x40

    shl-long v9, v15, v9

    move/from16 v16, v14

    int-to-long v14, v11

    neg-long v14, v14

    const/16 v11, 0x3f

    shr-long/2addr v14, v11

    and-long/2addr v9, v14

    or-long/2addr v9, v12

    int-to-long v11, v3

    const-wide v13, 0x101010101010101L

    mul-long v17, v11, v13

    move/from16 v19, v3

    const/4 v15, 0x0

    xor-long v2, v9, v17

    sub-long v13, v2, v13

    not-long v2, v2

    and-long/2addr v2, v13

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v13

    :goto_2
    const-wide/16 v17, 0x0

    cmp-long v20, v2, v17

    if-eqz v20, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v17

    shr-int/lit8 v17, v17, 0x3

    add-int v17, v7, v17

    and-int v17, v17, v6

    move/from16 v20, v4

    iget-object v4, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v4, v4, v17

    invoke-static {v4, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v1, v17

    goto/16 :goto_f

    :cond_1
    const-wide/16 v17, 0x1

    sub-long v17, v2, v17

    and-long v2, v2, v17

    move/from16 v4, v20

    goto :goto_2

    :cond_2
    move/from16 v20, v4

    not-long v2, v9

    const/4 v4, 0x6

    shl-long/2addr v2, v4

    and-long/2addr v2, v9

    and-long/2addr v2, v13

    cmp-long v2, v2, v17

    const/16 v3, 0x8

    if-eqz v2, :cond_13

    invoke-virtual {v0, v5}, Lיـ/ʼᐧ;->ﹳٴ(I)I

    move-result v2

    iget v4, v0, Lיـ/ʼᐧ;->ﾞᴵ:I

    const-wide/16 v8, 0xff

    if-nez v4, :cond_3

    iget-object v4, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    shr-int/lit8 v17, v2, 0x3

    aget-wide v17, v4, v17

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x3

    shr-long v17, v17, v4

    and-long v17, v17, v8

    const-wide/16 v21, 0xfe

    cmp-long v4, v17, v21

    if-nez v4, :cond_4

    :cond_3
    move-wide/from16 v23, v8

    move-wide/from16 v27, v11

    const-wide/16 v18, 0x80

    const/16 v25, 0x7

    goto/16 :goto_e

    :cond_4
    iget v2, v0, Lיـ/ʼᐧ;->ˈ:I

    if-le v2, v3, :cond_d

    iget v4, v0, Lיـ/ʼᐧ;->ˑﹳ:I

    move/from16 v17, v3

    int-to-long v3, v4

    const-wide/16 v18, 0x20

    mul-long v3, v3, v18

    const-wide/16 v18, 0x80

    int-to-long v6, v2

    const-wide/16 v23, 0x19

    mul-long v6, v6, v23

    const-wide/high16 v23, -0x8000000000000000L

    xor-long v3, v3, v23

    xor-long v6, v6, v23

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    if-gtz v2, :cond_c

    iget-object v2, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    iget v3, v0, Lיـ/ʼᐧ;->ˈ:I

    iget-object v4, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    iget-object v6, v0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x7

    shr-int/lit8 v7, v7, 0x3

    move-wide/from16 v23, v8

    move v8, v15

    :goto_3
    if-ge v8, v7, :cond_5

    aget-wide v25, v2, v8

    move-wide/from16 v27, v11

    const/4 v9, 0x7

    and-long v10, v25, v13

    not-long v13, v10

    ushr-long/2addr v10, v9

    add-long/2addr v13, v10

    const-wide v10, -0x101010101010102L

    and-long/2addr v10, v13

    aput-wide v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v11, v27

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_3

    :cond_5
    move-wide/from16 v27, v11

    const/4 v9, 0x7

    array-length v7, v2

    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v7, v7, -0x2

    aget-wide v10, v2, v7

    const-wide v12, 0xffffffffffffffL

    and-long/2addr v10, v12

    const-wide/high16 v12, -0x100000000000000L

    or-long/2addr v10, v12

    aput-wide v10, v2, v7

    aget-wide v10, v2, v15

    aput-wide v10, v2, v8

    move v7, v15

    :goto_4
    if-eq v7, v3, :cond_b

    shr-int/lit8 v8, v7, 0x3

    aget-wide v10, v2, v8

    and-int/lit8 v12, v7, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v10, v12

    and-long v10, v10, v23

    cmp-long v13, v10, v18

    if-nez v13, :cond_6

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    cmp-long v10, v10, v21

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    aget-object v10, v4, v7

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_6

    :cond_8
    move v10, v15

    :goto_6
    mul-int v10, v10, v20

    shl-int/lit8 v11, v10, 0x10

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v10, 0x7

    invoke-virtual {v0, v11}, Lיـ/ʼᐧ;->ﹳٴ(I)I

    move-result v13

    and-int/2addr v11, v3

    sub-int v14, v13, v11

    and-int/2addr v14, v3

    div-int/lit8 v14, v14, 0x8

    sub-int v11, v7, v11

    and-int/2addr v11, v3

    div-int/lit8 v11, v11, 0x8

    if-ne v14, v11, :cond_9

    and-int/lit8 v10, v10, 0x7f

    int-to-long v10, v10

    aget-wide v13, v2, v8

    move/from16 v25, v9

    move-wide/from16 v29, v10

    shl-long v9, v23, v12

    not-long v9, v9

    and-long/2addr v9, v13

    shl-long v11, v29, v12

    or-long/2addr v9, v11

    aput-wide v9, v2, v8

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    aget-wide v9, v2, v15

    aput-wide v9, v2, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v25

    goto :goto_4

    :cond_9
    move/from16 v25, v9

    shr-int/lit8 v9, v13, 0x3

    aget-wide v29, v2, v9

    and-int/lit8 v11, v13, 0x7

    shl-int/lit8 v11, v11, 0x3

    shr-long v31, v29, v11

    and-long v31, v31, v23

    cmp-long v14, v31, v18

    if-nez v14, :cond_a

    and-int/lit8 v10, v10, 0x7f

    move v14, v3

    move-object/from16 v26, v4

    int-to-long v3, v10

    move-wide/from16 v31, v3

    shl-long v3, v23, v11

    not-long v3, v3

    and-long v3, v29, v3

    shl-long v10, v31, v11

    or-long/2addr v3, v10

    aput-wide v3, v2, v9

    aget-wide v3, v2, v8

    shl-long v9, v23, v12

    not-long v9, v9

    and-long/2addr v3, v9

    shl-long v9, v18, v12

    or-long/2addr v3, v9

    aput-wide v3, v2, v8

    aget-object v3, v26, v7

    aput-object v3, v26, v13

    const/4 v3, 0x0

    aput-object v3, v26, v7

    aget-object v4, v6, v7

    aput-object v4, v6, v13

    aput-object v3, v6, v7

    goto :goto_7

    :cond_a
    move v14, v3

    move-object/from16 v26, v4

    and-int/lit8 v3, v10, 0x7f

    int-to-long v3, v3

    move-wide/from16 v31, v3

    shl-long v3, v23, v11

    not-long v3, v3

    and-long v3, v29, v3

    shl-long v10, v31, v11

    or-long/2addr v3, v10

    aput-wide v3, v2, v9

    aget-object v3, v26, v13

    aget-object v4, v26, v7

    aput-object v4, v26, v13

    aput-object v3, v26, v7

    aget-object v3, v6, v13

    aget-object v4, v6, v7

    aput-object v4, v6, v13

    aput-object v3, v6, v7

    add-int/lit8 v7, v7, -0x1

    :goto_7
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v8, v2, v15

    aput-wide v8, v2, v3

    add-int/lit8 v7, v7, 0x1

    move v3, v14

    move/from16 v9, v25

    move-object/from16 v4, v26

    goto/16 :goto_4

    :cond_b
    move/from16 v25, v9

    iget v2, v0, Lיـ/ʼᐧ;->ˈ:I

    invoke-static {v2}, Lיـ/ᵔﹳ;->ﹳٴ(I)I

    move-result v2

    iget v3, v0, Lיـ/ʼᐧ;->ˑﹳ:I

    sub-int/2addr v2, v3

    iput v2, v0, Lיـ/ʼᐧ;->ﾞᴵ:I

    goto/16 :goto_d

    :cond_c
    :goto_8
    move-wide/from16 v23, v8

    move-wide/from16 v27, v11

    const/16 v25, 0x7

    goto :goto_9

    :cond_d
    const-wide/16 v18, 0x80

    goto :goto_8

    :goto_9
    iget v2, v0, Lיـ/ʼᐧ;->ˈ:I

    invoke-static {v2}, Lיـ/ᵔﹳ;->ⁱˊ(I)I

    move-result v2

    iget-object v3, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    iget-object v4, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    iget-object v6, v0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    iget v7, v0, Lיـ/ʼᐧ;->ˈ:I

    invoke-virtual {v0, v2}, Lיـ/ʼᐧ;->ʽ(I)V

    iget-object v2, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    iget-object v8, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    iget-object v9, v0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    iget v10, v0, Lיـ/ʼᐧ;->ˈ:I

    move v11, v15

    :goto_a
    if-ge v11, v7, :cond_10

    shr-int/lit8 v12, v11, 0x3

    aget-wide v12, v3, v12

    and-int/lit8 v14, v11, 0x7

    shl-int/lit8 v14, v14, 0x3

    shr-long/2addr v12, v14

    and-long v12, v12, v23

    cmp-long v12, v12, v18

    if-gez v12, :cond_f

    aget-object v12, v4, v11

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    goto :goto_b

    :cond_e
    move v13, v15

    :goto_b
    mul-int v13, v13, v20

    shl-int/lit8 v14, v13, 0x10

    xor-int/2addr v13, v14

    ushr-int/lit8 v14, v13, 0x7

    invoke-virtual {v0, v14}, Lיـ/ʼᐧ;->ﹳٴ(I)I

    move-result v14

    and-int/lit8 v13, v13, 0x7f

    move-object/from16 v17, v2

    int-to-long v1, v13

    shr-int/lit8 v13, v14, 0x3

    and-int/lit8 v21, v14, 0x7

    shl-int/lit8 v21, v21, 0x3

    aget-wide v29, v17, v13

    move-wide/from16 v31, v1

    shl-long v1, v23, v21

    not-long v1, v1

    and-long v1, v29, v1

    shl-long v21, v31, v21

    or-long v1, v1, v21

    aput-wide v1, v17, v13

    add-int/lit8 v13, v14, -0x7

    and-int/2addr v13, v10

    and-int/lit8 v21, v10, 0x7

    add-int v13, v13, v21

    shr-int/lit8 v13, v13, 0x3

    aput-wide v1, v17, v13

    aput-object v12, v8, v14

    aget-object v1, v6, v11

    aput-object v1, v9, v14

    goto :goto_c

    :cond_f
    move-object/from16 v17, v2

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    goto :goto_a

    :cond_10
    :goto_d
    invoke-virtual {v0, v5}, Lיـ/ʼᐧ;->ﹳٴ(I)I

    move-result v2

    :goto_e
    iget v1, v0, Lיـ/ʼᐧ;->ˑﹳ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lיـ/ʼᐧ;->ˑﹳ:I

    iget v1, v0, Lיـ/ʼᐧ;->ﾞᴵ:I

    iget-object v3, v0, Lיـ/ʼᐧ;->ﹳٴ:[J

    shr-int/lit8 v4, v2, 0x3

    aget-wide v5, v3, v4

    and-int/lit8 v7, v2, 0x7

    shl-int/lit8 v7, v7, 0x3

    shr-long v8, v5, v7

    and-long v8, v8, v23

    cmp-long v8, v8, v18

    if-nez v8, :cond_11

    move/from16 v15, v16

    :cond_11
    sub-int/2addr v1, v15

    iput v1, v0, Lיـ/ʼᐧ;->ﾞᴵ:I

    iget v1, v0, Lיـ/ʼᐧ;->ˈ:I

    shl-long v8, v23, v7

    not-long v8, v8

    and-long/2addr v5, v8

    shl-long v7, v27, v7

    or-long/2addr v5, v7

    aput-wide v5, v3, v4

    add-int/lit8 v4, v2, -0x7

    and-int/2addr v4, v1

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v4, v1

    shr-int/lit8 v1, v4, 0x3

    aput-wide v5, v3, v1

    not-int v1, v2

    :goto_f
    if-gez v1, :cond_12

    not-int v1, v1

    :cond_12
    iget-object v2, v0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object v2, v0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    aput-object p2, v2, v1

    return-void

    :cond_13
    move/from16 v17, v3

    add-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    and-int/2addr v7, v6

    move-object/from16 v1, p1

    move/from16 v3, v19

    move/from16 v4, v20

    goto/16 :goto_1
.end method

.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v1, v2

    shl-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x7f

    iget v3, p0, Lיـ/ʼᐧ;->ˈ:I

    ushr-int/lit8 v1, v1, 0x7

    :goto_1
    and-int/2addr v1, v3

    iget-object v4, p0, Lיـ/ʼᐧ;->ﹳٴ:[J

    shr-int/lit8 v5, v1, 0x3

    and-int/lit8 v6, v1, 0x7

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

    int-to-long v6, v2

    const-wide v8, 0x101010101010101L

    mul-long/2addr v6, v8

    xor-long/2addr v6, v4

    sub-long v8, v6, v8

    not-long v6, v6

    and-long/2addr v6, v8

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    and-int/2addr v10, v3

    iget-object v11, p0, Lיـ/ʼᐧ;->ⁱˊ:[Ljava/lang/Object;

    aget-object v11, v11, v10

    invoke-static {v11, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_3

    :cond_1
    const-wide/16 v10, 0x1

    sub-long v10, v6, v10

    and-long/2addr v6, v10

    goto :goto_2

    :cond_2
    not-long v6, v4

    const/4 v12, 0x6

    shl-long/2addr v6, v12

    and-long/2addr v4, v6

    and-long/2addr v4, v8

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4

    const/4 v10, -0x1

    :goto_3
    if-ltz v10, :cond_3

    iget-object p1, p0, Lיـ/ʼᐧ;->ʽ:[Ljava/lang/Object;

    aget-object p1, p1, v10

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final ﹳٴ(I)I
    .locals 9

    .prologue
    iget v0, p0, Lיـ/ʼᐧ;->ˈ:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lיـ/ʼᐧ;->ﹳٴ:[J

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
