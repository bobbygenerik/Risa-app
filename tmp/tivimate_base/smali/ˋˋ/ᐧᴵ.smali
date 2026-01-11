.class public abstract Lˋˋ/ᐧᴵ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:J

.field public ˈ:J

.field public ˑﹳ:J

.field public ⁱˊ:Ljava/util/ArrayList;

.field public ﹳٴ:Lˋˋ/ﹳـ;

.field public ﾞᴵ:J


# direct methods
.method public static ﹳٴ(Lˋˋ/ʼـ;)V
    .locals 2

    .prologue
    iget v0, p0, Lˋˋ/ʼـ;->ٴʼ:I

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lˋˋ/ʼـ;->ⁱˊ()I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final ʽ(Lˋˋ/ʼـ;)V
    .locals 10

    .prologue
    iget-object v0, p0, Lˋˋ/ᐧᴵ;->ﹳٴ:Lˋˋ/ﹳـ;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lˋˋ/ʼـ;->ʼᐧ(Z)V

    iget-object v2, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v3, p1, Lˋˋ/ʼـ;->ˉٴ:Lˋˋ/ʼـ;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p1, Lˋˋ/ʼـ;->ᵎⁱ:Lˋˋ/ʼـ;

    if-nez v3, :cond_0

    iput-object v4, p1, Lˋˋ/ʼـ;->ˉٴ:Lˋˋ/ʼـ;

    :cond_0
    iput-object v4, p1, Lˋˋ/ʼـ;->ᵎⁱ:Lˋˋ/ʼـ;

    iget v3, p1, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->ʽʽ:Lˋˋ/ʻˋ;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ـᵎ()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    iget-object v5, v4, Lcom/parse/ʽˑ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Lʿʽ/ʽ;

    iget-object v6, v4, Lcom/parse/ʽˑ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lˋˋ/ﹳـ;

    iget v7, v4, Lcom/parse/ʽˑ;->ᴵˊ:I

    const/4 v8, 0x0

    if-ne v7, v1, :cond_3

    iget-object v1, v4, Lcom/parse/ʽˑ;->ˊʻ:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    if-ne v1, v2, :cond_2

    :goto_0
    move v1, v8

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v9, 0x2

    if-eq v7, v9, :cond_7

    :try_start_0
    iput v9, v4, Lcom/parse/ʽˑ;->ᴵˊ:I

    iget-object v7, v6, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_4

    invoke-virtual {v4, v2}, Lcom/parse/ʽˑ;->ˊˋ(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput v8, v4, Lcom/parse/ʽˑ;->ᴵˊ:I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :try_start_1
    invoke-virtual {v5, v7}, Lʿʽ/ʽ;->ᵎⁱ(I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5, v7}, Lʿʽ/ʽ;->ˆﾞ(I)Z

    invoke-virtual {v4, v2}, Lcom/parse/ʽˑ;->ˊˋ(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Lˋˋ/ﹳـ;->ʽ(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    iput v8, v4, Lcom/parse/ʽˑ;->ᴵˊ:I

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v4

    invoke-virtual {v3, v4}, Lˋˋ/ʻˋ;->ˉʿ(Lˋˋ/ʼـ;)V

    invoke-virtual {v3, v4}, Lˋˋ/ʻˋ;->ˆʾ(Lˋˋ/ʼـ;)V

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "after removing animated view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecyclerView"

    nop

    :cond_6
    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->ᐧﹶ(Z)V

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0, v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :goto_3
    iput v8, v4, Lcom/parse/ʽˑ;->ᴵˊ:I

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call removeViewIfHidden within removeViewIfHidden"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method public final ˈ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lˋˋ/ᐧᴵ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lᐧـ/ˈ;->ˉʿ(ILjava/util/ArrayList;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method

.method public abstract ˑﹳ(Lˋˋ/ʼـ;)V
.end method

.method public abstract ᵎﹶ()Z
.end method

.method public abstract ᵔᵢ()V
.end method

.method public abstract ⁱˊ(Lˋˋ/ʼـ;Ljava/util/List;)Z
.end method

.method public abstract ﾞᴵ()V
.end method
