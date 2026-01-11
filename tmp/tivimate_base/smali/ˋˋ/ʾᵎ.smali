.class public final Lˋˋ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:[I

.field public final ˈ:Lˋˋ/ⁱˊ;

.field public final ˑﹳ:I

.field public final ᵎﹶ:Z

.field public final ⁱˊ:[I

.field public final ﹳٴ:Ljava/util/ArrayList;

.field public final ﾞᴵ:I


# direct methods
.method public constructor <init>(Lˋˋ/ⁱˊ;Ljava/util/ArrayList;[I[I)V
    .locals 10

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˋˋ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    iput-object p3, p0, Lˋˋ/ʾᵎ;->ⁱˊ:[I

    iput-object p4, p0, Lˋˋ/ʾᵎ;->ʽ:[I

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Lˋˋ/ʾᵎ;->ˈ:Lˋˋ/ⁱˊ;

    invoke-virtual {p1}, Lˋˋ/ⁱˊ;->ﾞʻ()I

    move-result v1

    iput v1, p0, Lˋˋ/ʾᵎ;->ˑﹳ:I

    invoke-virtual {p1}, Lˋˋ/ⁱˊ;->ٴﹶ()I

    move-result v2

    iput v2, p0, Lˋˋ/ʾᵎ;->ﾞᴵ:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lˋˋ/ʾᵎ;->ᵎﹶ:Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˋˋ/ـˆ;

    :goto_0
    if-eqz v4, :cond_1

    iget v5, v4, Lˋˋ/ـˆ;->ﹳٴ:I

    if-nez v5, :cond_1

    iget v4, v4, Lˋˋ/ـˆ;->ⁱˊ:I

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lˋˋ/ـˆ;

    invoke-direct {v4, v0, v0, v0}, Lˋˋ/ـˆ;-><init>(III)V

    invoke-virtual {p2, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    new-instance v4, Lˋˋ/ـˆ;

    invoke-direct {v4, v1, v2, v0}, Lˋˋ/ـˆ;-><init>(III)V

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_3
    if-ge v2, v1, :cond_5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lˋˋ/ـˆ;

    move v5, v0

    :goto_1
    iget v6, v4, Lˋˋ/ـˆ;->ʽ:I

    if-ge v5, v6, :cond_3

    iget v6, v4, Lˋˋ/ـˆ;->ﹳٴ:I

    add-int/2addr v6, v5

    iget v7, v4, Lˋˋ/ـˆ;->ⁱˊ:I

    add-int/2addr v7, v5

    invoke-virtual {p1, v6, v7}, Lˋˋ/ⁱˊ;->ﹳٴ(II)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v3

    goto :goto_2

    :cond_4
    const/4 v8, 0x2

    :goto_2
    shl-int/lit8 v9, v7, 0x4

    or-int/2addr v9, v8

    aput v9, p3, v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v6, v8

    aput v6, p4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lˋˋ/ʾᵎ;->ᵎﹶ:Z

    if-eqz v1, :cond_b

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_b

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˋˋ/ـˆ;

    :goto_4
    iget v5, v4, Lˋˋ/ـˆ;->ﹳٴ:I

    if-ge v2, v5, :cond_a

    aget v5, p3, v2

    if-nez v5, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    move v7, v6

    :goto_5
    if-ge v6, v5, :cond_9

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˋˋ/ـˆ;

    :goto_6
    iget v9, v8, Lˋˋ/ـˆ;->ⁱˊ:I

    if-ge v7, v9, :cond_8

    aget v9, p4, v7

    if-nez v9, :cond_7

    invoke-virtual {p1, v2, v7}, Lˋˋ/ⁱˊ;->ʽ(II)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p1, v2, v7}, Lˋˋ/ⁱˊ;->ﹳٴ(II)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x8

    goto :goto_7

    :cond_6
    const/4 v5, 0x4

    :goto_7
    shl-int/lit8 v6, v7, 0x4

    or-int/2addr v6, v5

    aput v6, p3, v2

    shl-int/lit8 v6, v2, 0x4

    or-int/2addr v5, v6

    aput v5, p4, v7

    goto :goto_8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    iget v7, v8, Lˋˋ/ـˆ;->ʽ:I

    add-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    iget v2, v4, Lˋˋ/ـˆ;->ʽ:I

    add-int/2addr v2, v5

    goto :goto_3

    :cond_b
    return-void
.end method

.method public static ⁱˊ(Ljava/util/ArrayDeque;IZ)Lˋˋ/ʼʼ;
    .locals 2

    .prologue
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋˋ/ʼʼ;

    iget v1, v0, Lˋˋ/ʼʼ;->ﹳٴ:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Lˋˋ/ʼʼ;->ʽ:Z

    if-ne v1, p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˋˋ/ʼʼ;

    if-eqz p2, :cond_2

    iget v1, p1, Lˋˋ/ʼʼ;->ⁱˊ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lˋˋ/ʼʼ;->ⁱˊ:I

    goto :goto_0

    :cond_2
    iget v1, p1, Lˋˋ/ʼʼ;->ⁱˊ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lˋˋ/ʼʼ;->ⁱˊ:I

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final ﹳٴ(Lˉˆ/ʿ;)V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    new-instance v1, Lˋˋ/ᵔᵢ;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lˋˋ/ᵔᵢ;-><init>(Lˋˋ/ˑٴ;)V

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, v0, Lˋˋ/ʾᵎ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget v6, v0, Lˋˋ/ʾᵎ;->ˑﹳ:I

    iget v7, v0, Lˋˋ/ʾᵎ;->ﾞᴵ:I

    move v8, v7

    move v7, v6

    :goto_0
    if-ltz v4, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˋˋ/ـˆ;

    iget v10, v9, Lˋˋ/ـˆ;->ﹳٴ:I

    iget v11, v9, Lˋˋ/ـˆ;->ʽ:I

    add-int v12, v10, v11

    iget v9, v9, Lˋˋ/ـˆ;->ⁱˊ:I

    add-int v13, v9, v11

    :goto_1
    iget-object v14, v0, Lˋˋ/ʾᵎ;->ⁱˊ:[I

    iget-object v15, v0, Lˋˋ/ʾᵎ;->ˈ:Lˋˋ/ⁱˊ;

    move/from16 p1, v5

    const/4 v5, 0x0

    if-le v7, v12, :cond_3

    add-int/lit8 v7, v7, -0x1

    aget v14, v14, v7

    and-int/lit8 v16, v14, 0xc

    if-eqz v16, :cond_2

    move-object/from16 v16, v3

    shr-int/lit8 v3, v14, 0x4

    invoke-static {v2, v3, v5}, Lˋˋ/ʾᵎ;->ⁱˊ(Ljava/util/ArrayDeque;IZ)Lˋˋ/ʼʼ;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v5, v5, Lˋˋ/ʼʼ;->ⁱˊ:I

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v7, v5}, Lˋˋ/ᵔᵢ;->ˆʾ(II)V

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_0

    invoke-virtual {v15, v7, v3}, Lˋˋ/ⁱˊ;->ʼˎ(II)Ljava/lang/Object;

    move-result-object v3

    move/from16 v14, p1

    invoke-virtual {v1, v5, v14, v3}, Lˋˋ/ᵔᵢ;->ʽʽ(IILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    move/from16 v14, p1

    goto :goto_2

    :cond_1
    move/from16 v14, p1

    new-instance v3, Lˋˋ/ʼʼ;

    sub-int v5, v6, v7

    sub-int/2addr v5, v14

    invoke-direct {v3, v7, v5, v14}, Lˋˋ/ʼʼ;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move/from16 v14, p1

    move-object/from16 v16, v3

    invoke-virtual {v1, v7, v14}, Lˋˋ/ᵔᵢ;->ʼˎ(II)V

    add-int/lit8 v6, v6, -0x1

    :goto_2
    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v16, v3

    :goto_3
    if-le v8, v13, :cond_7

    add-int/lit8 v8, v8, -0x1

    iget-object v3, v0, Lˋˋ/ʾᵎ;->ʽ:[I

    aget v3, v3, v8

    and-int/lit8 v12, v3, 0xc

    if-eqz v12, :cond_5

    shr-int/lit8 v12, v3, 0x4

    const/4 v5, 0x1

    invoke-static {v2, v12, v5}, Lˋˋ/ʾᵎ;->ⁱˊ(Ljava/util/ArrayDeque;IZ)Lˋˋ/ʼʼ;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lˋˋ/ʼʼ;

    sub-int v3, v6, v7

    const/4 v12, 0x0

    invoke-direct {v0, v8, v3, v12}, Lˋˋ/ʼʼ;-><init>(IIZ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move/from16 v17, v12

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    iget v0, v0, Lˋˋ/ʼʼ;->ⁱˊ:I

    sub-int v0, v6, v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0, v7}, Lˋˋ/ᵔᵢ;->ˆʾ(II)V

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_6

    invoke-virtual {v15, v12, v8}, Lˋˋ/ⁱˊ;->ʼˎ(II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v7, v5, v0}, Lˋˋ/ᵔᵢ;->ʽʽ(IILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    move/from16 v17, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v7, v5}, Lˋˋ/ᵔᵢ;->ᵢˏ(II)V

    add-int/lit8 v6, v6, 0x1

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    move/from16 v5, v17

    goto :goto_3

    :cond_7
    move/from16 v17, v5

    move v3, v9

    move v0, v10

    :goto_5
    if-ge v5, v11, :cond_9

    aget v7, v14, v0

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    invoke-virtual {v15, v0, v3}, Lˋˋ/ⁱˊ;->ʼˎ(II)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v0, v8, v7}, Lˋˋ/ᵔᵢ;->ʽʽ(IILjava/lang/Object;)V

    goto :goto_6

    :cond_8
    const/4 v8, 0x1

    :goto_6
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v8, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move v5, v8

    move v8, v9

    move v7, v10

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lˋˋ/ᵔᵢ;->ﹳٴ()V

    return-void
.end method
