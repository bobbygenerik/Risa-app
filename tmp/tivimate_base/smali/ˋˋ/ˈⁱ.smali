.class public final Lˋˋ/ˈⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋᵔ/ʼˎ;


# instance fields
.field public final synthetic ʾˋ:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ʽ(IILjava/lang/Object;)V
    .locals 8

    .prologue
    iget-object v0, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v1}, Lcom/parse/ʽˑ;->ᵎˊ()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_5

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v5, v2}, Lcom/parse/ʽˑ;->ٴʼ(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    iget v7, v6, Lˋˋ/ʼـ;->ʽʽ:I

    if-lt v7, p1, :cond_4

    if-ge v7, p2, :cond_4

    invoke-virtual {v6, v3}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    const/16 v3, 0x400

    if-nez p3, :cond_1

    invoke-virtual {v6, v3}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    goto :goto_1

    :cond_1
    iget v7, v6, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/2addr v3, v7

    if-nez v3, :cond_3

    iget-object v3, v6, Lˋˋ/ʼـ;->ᵎˊ:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lˋˋ/ʼـ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v6, Lˋˋ/ʼـ;->ᵔי:Ljava/util/List;

    :cond_2
    iget-object v3, v6, Lˋˋ/ʼـ;->ᵎˊ:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lˋˋ/ˊᵔ;

    iput-boolean v4, v3, Lˋˋ/ˊᵔ;->ʽ:Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v1, p3, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_3
    if-ltz v2, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˋˋ/ʼـ;

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    iget v6, v5, Lˋˋ/ʼـ;->ʽʽ:I

    if-lt v6, p1, :cond_7

    if-ge v6, p2, :cond_7

    invoke-virtual {v5, v3}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    invoke-virtual {p3, v2}, Lˋˋ/ʻˋ;->ᵔᵢ(I)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_8
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->ʻʿ:Z

    return-void
.end method

.method public ˈ(II)V
    .locals 12

    .prologue
    iget-object v0, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v1}, Lcom/parse/ʽˑ;->ᵎˊ()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " now at position "

    const-string v5, " holder "

    const-string v6, "RecyclerView"

    const/4 v7, 0x1

    if-ge v3, v1, :cond_2

    iget-object v8, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v8, v3}, Lcom/parse/ʽˑ;->ٴʼ(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, v8, Lˋˋ/ʼـ;->ʽʽ:I

    if-lt v9, p1, :cond_1

    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "offsetPositionRecordsForInsert attached child "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lˋˋ/ʼـ;->ʽʽ:I

    add-int/2addr v4, p2

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    :cond_0
    invoke-virtual {v8, p2, v2}, Lˋˋ/ʼـ;->ᵔʾ(IZ)V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    iput-boolean v7, v4, Lˋˋ/ᐧﹶ;->ﾞᴵ:Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v1, v1, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v8, v2

    :goto_1
    if-ge v8, v3, :cond_5

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˋˋ/ʼـ;

    if-eqz v9, :cond_4

    iget v10, v9, Lˋˋ/ʼـ;->ʽʽ:I

    if-lt v10, p1, :cond_4

    sget-boolean v10, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "offsetPositionRecordsForInsert cached "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lˋˋ/ʼـ;->ʽʽ:I

    add-int/2addr v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    :cond_3
    invoke-virtual {v9, p2, v2}, Lˋˋ/ʼـ;->ᵔʾ(IZ)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v7, v0, Landroidx/recyclerview/widget/RecyclerView;->ⁱי:Z

    return-void
.end method

.method public ˉʿ()V
    .locals 1

    iget-object v0, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʾˊ()V

    return-void
.end method

.method public ˑﹳ(II)V
    .locals 16

    .prologue
    move/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v3, v1, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v4}, Lcom/parse/ʽˑ;->ᵎˊ()I

    move-result v4

    const/4 v6, 0x1

    if-ge v0, v2, :cond_0

    move v7, v0

    move v8, v2

    const/4 v9, -0x1

    goto :goto_0

    :cond_0
    move v8, v0

    move v7, v2

    move v9, v6

    :goto_0
    const/4 v10, 0x0

    move v11, v10

    :goto_1
    const-string v12, " holder "

    const-string v13, "RecyclerView"

    if-ge v11, v4, :cond_5

    iget-object v14, v3, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v14, v11}, Lcom/parse/ʽˑ;->ٴʼ(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v14

    if-eqz v14, :cond_4

    iget v15, v14, Lˋˋ/ʼـ;->ʽʽ:I

    if-lt v15, v7, :cond_4

    if-le v15, v8, :cond_1

    goto :goto_3

    :cond_1
    sget-boolean v15, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "offsetPositionRecordsForMove attached child "

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :cond_2
    iget v5, v14, Lˋˋ/ʼـ;->ʽʽ:I

    if-ne v5, v0, :cond_3

    sub-int v5, v2, v0

    invoke-virtual {v14, v5, v10}, Lˋˋ/ʼـ;->ᵔʾ(IZ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v14, v9, v10}, Lˋˋ/ʼـ;->ᵔʾ(IZ)V

    :goto_2
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    iput-boolean v6, v5, Lˋˋ/ᐧﹶ;->ﾞᴵ:Z

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    iget-object v4, v4, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    if-ge v0, v2, :cond_6

    move v7, v0

    move v8, v2

    const/4 v5, -0x1

    goto :goto_4

    :cond_6
    move v8, v0

    move v7, v2

    move v5, v6

    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v11, v10

    :goto_5
    if-ge v11, v9, :cond_a

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lˋˋ/ʼـ;

    if-eqz v14, :cond_9

    iget v15, v14, Lˋˋ/ʼـ;->ʽʽ:I

    if-lt v15, v7, :cond_9

    if-le v15, v8, :cond_7

    goto :goto_7

    :cond_7
    if-ne v15, v0, :cond_8

    sub-int v15, v2, v0

    invoke-virtual {v14, v15, v10}, Lˋˋ/ʼـ;->ᵔʾ(IZ)V

    goto :goto_6

    :cond_8
    invoke-virtual {v14, v5, v10}, Lˋˋ/ʼـ;->ᵔʾ(IZ)V

    :goto_6
    sget-boolean v15, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v15, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v10, "offsetPositionRecordsForMove cached child "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v6, v3, Landroidx/recyclerview/widget/RecyclerView;->ⁱי:Z

    return-void
.end method

.method public ٴﹶ()F
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Lˋˋ/ʻᵎ;->ﾞᴵ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ʾﾞ:F

    :goto_0
    neg-float v0, v0

    return v0

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Lˋˋ/ʻᵎ;->ˑﹳ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽⁱ:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ᵔᵢ(F)Z
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Lˋˋ/ʻᵎ;->ﾞᴵ()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    float-to-int p1, p1

    move v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    invoke-virtual {v1}, Lˋˋ/ʻᵎ;->ˑﹳ()Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-int p1, p1

    move v1, v2

    goto :goto_0

    :cond_1
    move p1, v2

    move v1, p1

    :goto_0
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ʾˊ()V

    const v3, 0x7fffffff

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->ٴʼ(IIII)Z

    move-result p1

    return p1
.end method

.method public ⁱˊ(I)Lˋˋ/ʼـ;
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->ᵎⁱ(IZ)Lˋˋ/ʼـ;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    iget-object v2, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v1, v1, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz p1, :cond_1

    const-string p1, "RecyclerView"

    const-string v1, "assuming view holder cannot be find because it is hidden"

    nop

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    return-object p1
.end method

.method public ﹳٴ(Lˋˋ/ﹳٴ;)V
    .locals 3

    .prologue
    iget v0, p1, Lˋˋ/ﹳٴ;->ﹳٴ:I

    const/4 v1, 0x1

    iget-object v2, p0, Lˋˋ/ˈⁱ;->ʾˋ:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    iget v1, p1, Lˋˋ/ﹳٴ;->ⁱˊ:I

    iget p1, p1, Lˋˋ/ﹳٴ;->ˈ:I

    invoke-virtual {v0, v1, p1}, Lˋˋ/ʻᵎ;->ﹶᐧ(II)V

    return-void

    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    iget v1, p1, Lˋˋ/ﹳٴ;->ⁱˊ:I

    iget p1, p1, Lˋˋ/ﹳٴ;->ˈ:I

    invoke-virtual {v0, v2, v1, p1}, Lˋˋ/ʻᵎ;->ˑʼ(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void

    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    iget v1, p1, Lˋˋ/ﹳٴ;->ⁱˊ:I

    iget p1, p1, Lˋˋ/ﹳٴ;->ˈ:I

    invoke-virtual {v0, v1, p1}, Lˋˋ/ʻᵎ;->ﹳﹳ(II)V

    return-void

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    iget v1, p1, Lˋˋ/ﹳٴ;->ⁱˊ:I

    iget p1, p1, Lˋˋ/ﹳٴ;->ˈ:I

    invoke-virtual {v0, v1, p1}, Lˋˋ/ʻᵎ;->ـﹶ(II)V

    return-void
.end method
