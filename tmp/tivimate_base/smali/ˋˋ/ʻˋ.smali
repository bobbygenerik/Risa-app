.class public final Lˋˋ/ʻˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/ArrayList;

.field public final ˈ:Ljava/util/List;

.field public ˑﹳ:I

.field public ᵎﹶ:Lˋˋ/ﹳﹳ;

.field public final synthetic ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

.field public ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Ljava/util/ArrayList;

.field public ﾞᴵ:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˋˋ/ʻˋ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lˋˋ/ʻˋ;->ˈ:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lˋˋ/ʻˋ;->ˑﹳ:I

    iput p1, p0, Lˋˋ/ʻˋ;->ﾞᴵ:I

    return-void
.end method


# virtual methods
.method public final ʼˎ(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v0

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v1

    iget-object v2, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lˋˋ/ʼـ;->ٴﹶ()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    invoke-virtual {p1, v0}, Lˋˋ/ʻˋ;->ˉʿ(Lˋˋ/ʼـ;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lˋˋ/ʼـ;->ﹳᐧ()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Lˋˋ/ʼـ;->ٴʼ:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lˋˋ/ʻˋ;->ˆʾ(Lˋˋ/ʼـ;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lˋˋ/ʼـ;->ʼˎ()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    invoke-virtual {p1, v0}, Lˋˋ/ᐧᴵ;->ˑﹳ(Lˋˋ/ʼـ;)V

    :cond_3
    return-void
.end method

.method public final ʽ()Lˋˋ/ﹳﹳ;
    .locals 1

    .prologue
    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    if-nez v0, :cond_0

    new-instance v0, Lˋˋ/ﹳﹳ;

    invoke-direct {v0}, Lˋˋ/ﹳﹳ;-><init>()V

    iput-object v0, p0, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    invoke-virtual {p0}, Lˋˋ/ʻˋ;->ˑﹳ()V

    :cond_0
    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    return-object v0
.end method

.method public final ˆʾ(Lˋˋ/ʼـ;)V
    .locals 12

    .prologue
    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˊ:Lˋˋ/ʽʽ;

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ٴﹶ()Z

    move-result v2

    iget-object v3, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_12

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p1}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ᵔﹳ()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, p1, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    sget-object v2, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    iget-object v7, p0, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cached view received recycle internal? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lˋˋ/ʼـ;->ʼˎ()Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, p0, Lˋˋ/ʻˋ;->ﾞᴵ:I

    if-lez v6, :cond_b

    iget v6, p1, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v6, v6, 0x20e

    if-eqz v6, :cond_4

    goto :goto_6

    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v8, p0, Lˋˋ/ʻˋ;->ﾞᴵ:I

    if-lt v6, v8, :cond_5

    if-lez v6, :cond_5

    invoke-virtual {p0, v4}, Lˋˋ/ʻˋ;->ᵔᵢ(I)V

    add-int/lit8 v6, v6, -0x1

    :cond_5
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->ˊˊ:Z

    if-eqz v8, :cond_a

    if-lez v6, :cond_a

    iget v8, p1, Lˋˋ/ʼـ;->ʽʽ:I

    iget-object v9, v1, Lˋˋ/ʽʽ;->ﹳٴ:[I

    if-eqz v9, :cond_7

    iget v9, v1, Lˋˋ/ʽʽ;->ˈ:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v4

    :goto_2
    if-ge v10, v9, :cond_7

    iget-object v11, v1, Lˋˋ/ʽʽ;->ﹳٴ:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v6, -0x1

    :goto_3
    if-ltz v6, :cond_9

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˋˋ/ʼـ;

    iget v8, v8, Lˋˋ/ʼـ;->ʽʽ:I

    iget-object v9, v1, Lˋˋ/ʽʽ;->ﹳٴ:[I

    if-eqz v9, :cond_9

    iget v9, v1, Lˋˋ/ʽʽ;->ˈ:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v4

    :goto_4
    if-ge v10, v9, :cond_9

    iget-object v11, v1, Lˋˋ/ʽʽ;->ﹳٴ:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_8

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    :cond_9
    add-int/2addr v6, v5

    :cond_a
    :goto_5
    invoke-virtual {v7, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v5

    goto :goto_7

    :cond_b
    :goto_6
    move v1, v4

    :goto_7
    if-nez v1, :cond_c

    invoke-virtual {p0, p1, v5}, Lˋˋ/ʻˋ;->ﹳٴ(Lˋˋ/ʼـ;Z)V

    :goto_8
    move v4, v1

    goto :goto_9

    :cond_c
    move v5, v4

    goto :goto_8

    :cond_d
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ᴵˊ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "RecyclerView"

    nop

    :cond_e
    move v5, v4

    :goto_9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ:Lﹳʽ/ˊʻ;

    invoke-virtual {v0, p1}, Lﹳʽ/ˊʻ;->ˊʻ(Lˋˋ/ʼـ;)V

    if-nez v4, :cond_f

    if-nez v5, :cond_f

    if-eqz v2, :cond_f

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﾞᴵ(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lˋˋ/ʼـ;->ʼˈ:Lˋˋ/ᴵˑ;

    iput-object v0, p1, Lˋˋ/ʼـ;->ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ٴﹶ()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ᴵˊ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ˈ(I)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lˋˋ/ʻˋ;->ﾞʻ(IJ)Lˋˋ/ʼـ;

    move-result-object p1

    iget-object p1, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    return-object p1
.end method

.method public final ˉʿ(Lˋˋ/ʼـ;)V
    .locals 1

    .prologue
    iget-boolean v0, p1, Lˋˋ/ʼـ;->ˈʿ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˋˋ/ʻˋ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˋˋ/ʼـ;->ˈʿ:Z

    iget v0, p1, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, Lˋˋ/ʼـ;->ٴʼ:I

    return-void
.end method

.method public final ˑﹳ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->ـˏ:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lˋˋ/ﹳﹳ;->ʽ:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final ٴﹶ(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object p1

    iget v0, p1, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lˋˋ/ʼـ;->ˉʿ()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ˑﹳ()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lˋˋ/ᐧᴵ;->ⁱˊ(Lˋˋ/ʼـ;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    :cond_2
    iput-object p0, p1, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lˋˋ/ʼـ;->ˈʿ:Z

    iget-object v0, p0, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    iget-boolean v0, v0, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iput-object p0, p1, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˋˋ/ʼـ;->ˈʿ:Z

    iget-object v0, p0, Lˋˋ/ʻˋ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ᵎﹶ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lˋˋ/ʻˋ;->ᵔᵢ(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ˊˊ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ـˊ:Lˋˋ/ʽʽ;

    iget-object v1, v0, Lˋˋ/ʽʽ;->ﹳٴ:[I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lˋˋ/ʽʽ;->ˈ:I

    :cond_2
    return-void
.end method

.method public final ᵔʾ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ:Lˋˋ/ʻᵎ;

    if-eqz v0, :cond_0

    iget v0, v0, Lˋˋ/ʻᵎ;->ˆʾ:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lˋˋ/ʻˋ;->ˑﹳ:I

    add-int/2addr v1, v0

    iput v1, p0, Lˋˋ/ʻˋ;->ﾞᴵ:I

    iget-object v0, p0, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lˋˋ/ʻˋ;->ﾞᴵ:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lˋˋ/ʻˋ;->ᵔᵢ(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final ᵔᵢ(I)V
    .locals 5

    .prologue
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    const-string v1, "RecyclerView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Recycling cached view at index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_0
    iget-object v0, p0, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˋˋ/ʼـ;

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CachedViewHolder to be recycled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lˋˋ/ʻˋ;->ﹳٴ(Lˋˋ/ʼـ;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final ⁱˊ(I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v1}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    iget-boolean v1, v1, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lʻᴵ/ʼʼ;->ᵔᵢ(II)I

    move-result p1

    return p1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "invalid position "

    const-string v3, ". State item count is "

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ᵔʾ(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    invoke-virtual {v2}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->ᴵˊ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final ﹳٴ(Lˋˋ/ʼـ;Z)V
    .locals 6

    .prologue
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->ﾞʻ(Lˋˋ/ʼـ;)V

    iget-object v0, p1, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    iget-object v1, p0, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->ٴᴵ:Lˋˋ/יﹳ;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lˋˋ/יﹳ;->ˆʾ()Lˋᵔ/ⁱˊ;

    move-result-object v2

    instance-of v4, v2, Lˋˋ/ˎᐧ;

    if-eqz v4, :cond_0

    check-cast v2, Lˋˋ/ˎᐧ;

    iget-object v2, v2, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˋᵔ/ⁱˊ;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    :cond_1
    if-eqz p2, :cond_6

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->ˈʿ:Lˋˋ/ˑʼ;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->ˑٴ:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    check-cast p2, Landroidx/leanback/widget/ﹳٴ;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/ﹳٴ;->ﹳٴ(Lˋˋ/ʼـ;)V

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˋˋ/ˑʼ;

    check-cast v5, Landroidx/leanback/widget/ﹳٴ;

    invoke-virtual {v5, p1}, Landroidx/leanback/widget/ﹳٴ;->ﹳٴ(Lˋˋ/ʼـ;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lˋˋ/ᴵˑ;->ٴﹶ(Lˋˋ/ʼـ;)V

    :cond_4
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    if-eqz p2, :cond_5

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ:Lﹳʽ/ˊʻ;

    invoke-virtual {p2, p1}, Lﹳʽ/ˊʻ;->ˊʻ(Lˋˋ/ʼـ;)V

    :cond_5
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "dispatchViewRecycled: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "RecyclerView"

    nop

    :cond_6
    iput-object v3, p1, Lˋˋ/ʼـ;->ʼˈ:Lˋˋ/ᴵˑ;

    iput-object v3, p1, Lˋˋ/ʼـ;->ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lˋˋ/ʻˋ;->ʽ()Lˋˋ/ﹳﹳ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lˋˋ/ʼـ;->ˊʻ:I

    invoke-virtual {p2, v1}, Lˋˋ/ﹳﹳ;->ﹳٴ(I)Lˋˋ/ﹶᐧ;

    move-result-object v2

    iget-object v2, v2, Lˋˋ/ﹶᐧ;->ﹳٴ:Ljava/util/ArrayList;

    iget-object p2, p2, Lˋˋ/ﹳﹳ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lˋˋ/ﹶᐧ;

    iget p2, p2, Lˋˋ/ﹶᐧ;->ⁱˊ:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p2, v1, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﾞᴵ(Landroid/view/View;)V

    return-void

    :cond_7
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    if-eqz p2, :cond_9

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "this scrap item already exists"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_2
    invoke-virtual {p1}, Lˋˋ/ʼـ;->ˉˆ()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ﾞʻ(IJ)Lˋˋ/ʼـ;
    .locals 28

    .prologue
    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Lˋˋ/ʻˋ;->ᵔᵢ:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->ᵎʿ:Lˋˋ/ᐧﹶ;

    if-ltz v0, :cond_57

    invoke-virtual {v3}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v4

    if-ge v0, v4, :cond_57

    iget-boolean v4, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    const/16 v5, 0x20

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    iget-object v4, v1, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_2

    iget-object v10, v1, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lˋˋ/ʼـ;

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ﹳᐧ()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ˈ()I

    move-result v11

    if-ne v11, v0, :cond_1

    invoke-virtual {v10, v5}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    iget-boolean v9, v9, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    if-eqz v9, :cond_4

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    invoke-virtual {v9, v0, v8}, Lʻᴵ/ʼʼ;->ᵔᵢ(II)I

    move-result v9

    if-lez v9, :cond_4

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v10}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v10

    if-ge v9, v10, :cond_4

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v10, v9}, Lˋˋ/ᴵˑ;->ⁱˊ(I)J

    move-result-wide v9

    move v11, v8

    :goto_1
    if-ge v11, v4, :cond_4

    iget-object v12, v1, Lˋˋ/ʻˋ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lˋˋ/ʼـ;

    invoke-virtual {v12}, Lˋˋ/ʼـ;->ﹳᐧ()Z

    move-result v13

    if-nez v13, :cond_3

    iget-wide v13, v12, Lˋˋ/ʼـ;->ᴵᵔ:J

    cmp-long v13, v13, v9

    if-nez v13, :cond_3

    invoke-virtual {v12, v5}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    move-object v10, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v8

    goto :goto_4

    :cond_6
    move v4, v8

    const/4 v10, 0x0

    :goto_4
    iget-object v9, v1, Lˋˋ/ʻˋ;->ﹳٴ:Ljava/util/ArrayList;

    iget-object v11, v1, Lˋˋ/ʻˋ;->ʽ:Ljava/util/ArrayList;

    const-string v12, "RecyclerView"

    if-nez v10, :cond_1d

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v13, v8

    :goto_5
    if-ge v13, v10, :cond_9

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lˋˋ/ʼـ;

    invoke-virtual {v14}, Lˋˋ/ʼـ;->ﹳᐧ()Z

    move-result v15

    if-nez v15, :cond_8

    invoke-virtual {v14}, Lˋˋ/ʼـ;->ˈ()I

    move-result v15

    if-ne v15, v0, :cond_8

    invoke-virtual {v14}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v15

    if-nez v15, :cond_8

    iget-boolean v15, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v15, :cond_7

    invoke-virtual {v14}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    invoke-virtual {v14, v5}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    move-object v10, v14

    const/16 v17, 0x1

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    iget-object v10, v10, Lcom/parse/ʽˑ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v8

    :goto_6
    if-ge v14, v13, :cond_b

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v16}, Lˋˋ/ʼـ;->ˈ()I

    move-result v7

    if-ne v7, v0, :cond_a

    invoke-virtual/range {v16 .. v16}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual/range {v16 .. v16}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_b
    const/16 v17, 0x1

    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_f

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v7

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    iget-object v13, v10, Lcom/parse/ʽˑ;->ˈٴ:Ljava/lang/Object;

    check-cast v13, Lʿʽ/ʽ;

    iget-object v14, v10, Lcom/parse/ʽˑ;->ʽʽ:Ljava/lang/Object;

    check-cast v14, Lˋˋ/ﹳـ;

    iget-object v14, v14, Lˋˋ/ﹳـ;->ﹳٴ:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    if-ltz v14, :cond_e

    invoke-virtual {v13, v14}, Lʿʽ/ʽ;->ᵎⁱ(I)Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v13, v14}, Lʿʽ/ʽ;->ˈٴ(I)V

    invoke-virtual {v10, v15}, Lcom/parse/ʽˑ;->ˊˋ(Landroid/view/View;)V

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v10, v15}, Lcom/parse/ʽˑ;->ˆﾞ(Landroid/view/View;)I

    move-result v10

    const/4 v13, -0x1

    if-eq v10, v13, :cond_c

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->ˊʻ:Lcom/parse/ʽˑ;

    invoke-virtual {v13, v10}, Lcom/parse/ʽˑ;->ᵢˏ(I)V

    invoke-virtual {v1, v15}, Lˋˋ/ʻˋ;->ٴﹶ(Landroid/view/View;)V

    const/16 v10, 0x2020

    invoke-virtual {v7, v10}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    move-object v10, v7

    goto/16 :goto_9

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v8

    :goto_8
    if-ge v10, v7, :cond_12

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lˋˋ/ʼـ;

    invoke-virtual {v13}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v13}, Lˋˋ/ʼـ;->ˈ()I

    move-result v14

    if-ne v14, v0, :cond_11

    invoke-virtual {v13}, Lˋˋ/ʼـ;->ﾞᴵ()Z

    move-result v14

    if-nez v14, :cond_11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "getScrapOrHiddenOrCachedHolderForPosition("

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") found match in cache: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    :cond_10
    move-object v10, v13

    goto :goto_9

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_12
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v7

    if-eqz v7, :cond_15

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    if-eqz v7, :cond_14

    iget-boolean v7, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-eqz v7, :cond_13

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "should not receive a removed view unless it is pre layout"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_a
    iget-boolean v7, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    goto :goto_b

    :cond_15
    iget v7, v10, Lˋˋ/ʼـ;->ʽʽ:I

    if-ltz v7, :cond_1c

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v13}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v13

    if-ge v7, v13, :cond_1c

    iget-boolean v7, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v7, :cond_17

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    iget v13, v10, Lˋˋ/ʼـ;->ʽʽ:I

    invoke-virtual {v7, v13}, Lˋˋ/ᴵˑ;->ʽ(I)I

    move-result v7

    iget v13, v10, Lˋˋ/ʼـ;->ˊʻ:I

    if-eq v7, v13, :cond_17

    :cond_16
    move v7, v8

    goto :goto_b

    :cond_17
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    iget-boolean v13, v7, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    if-eqz v13, :cond_18

    iget-wide v13, v10, Lˋˋ/ʼـ;->ᴵᵔ:J

    iget v15, v10, Lˋˋ/ʼـ;->ʽʽ:I

    invoke-virtual {v7, v15}, Lˋˋ/ᴵˑ;->ⁱˊ(I)J

    move-result-wide v15

    cmp-long v7, v13, v15

    if-nez v7, :cond_16

    :cond_18
    move/from16 v7, v17

    :goto_b
    if-nez v7, :cond_1b

    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ٴﹶ()Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, v10, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v7, v10, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    invoke-virtual {v7, v10}, Lˋˋ/ʻˋ;->ˉʿ(Lˋˋ/ʼـ;)V

    goto :goto_c

    :cond_19
    invoke-virtual {v10}, Lˋˋ/ʼـ;->ﹳᐧ()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget v7, v10, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v10, Lˋˋ/ʼـ;->ٴʼ:I

    :cond_1a
    :goto_c
    invoke-virtual {v1, v10}, Lˋˋ/ʻˋ;->ˆʾ(Lˋˋ/ʼـ;)V

    const/4 v10, 0x0

    goto :goto_d

    :cond_1b
    move/from16 v4, v17

    goto :goto_d

    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/16 v17, 0x1

    :cond_1e
    :goto_d
    const-wide/16 v18, 0x0

    const-wide v20, 0x7fffffffffffffffL

    if-nez v10, :cond_34

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    invoke-virtual {v7, v0, v8}, Lʻᴵ/ʼʼ;->ᵔᵢ(II)I

    move-result v7

    if-ltz v7, :cond_33

    const-wide/16 v22, 0x3

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v13}, Lˋˋ/ᴵˑ;->ﹳٴ()I

    move-result v13

    if-ge v7, v13, :cond_33

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v13, v7}, Lˋˋ/ᴵˑ;->ʽ(I)I

    move-result v13

    iget-object v14, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    const-wide/16 v24, 0x4

    iget-boolean v15, v14, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    if-eqz v15, :cond_26

    invoke-virtual {v14, v7}, Lˋˋ/ᴵˑ;->ⁱˊ(I)J

    move-result-wide v14

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_e
    if-ltz v10, :cond_22

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lˋˋ/ʼـ;

    move-object/from16 v27, v9

    iget-wide v8, v6, Lˋˋ/ʼـ;->ᴵᵔ:J

    iget-object v5, v6, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    cmp-long v8, v8, v14

    if-nez v8, :cond_21

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ﹳᐧ()Z

    move-result v8

    if-nez v8, :cond_21

    iget v8, v6, Lˋˋ/ʼـ;->ˊʻ:I

    if-ne v13, v8, :cond_20

    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Lˋˋ/ʼـ;->ﹳٴ(I)V

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-boolean v5, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v5, :cond_1f

    iget v5, v6, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v5, v5, -0xf

    or-int/lit8 v5, v5, 0x2

    iput v5, v6, Lˋˋ/ʼـ;->ٴʼ:I

    :cond_1f
    :goto_f
    move-object v10, v6

    goto :goto_12

    :cond_20
    move-object/from16 v6, v27

    const/16 v8, 0x20

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->ᵔٴ(Landroid/view/View;)Lˋˋ/ʼـ;

    move-result-object v5

    const/4 v8, 0x0

    iput-object v8, v5, Lˋˋ/ʼـ;->ᵔٴ:Lˋˋ/ʻˋ;

    iput-boolean v9, v5, Lˋˋ/ʼـ;->ˈʿ:Z

    iget v8, v5, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v8, v8, -0x21

    iput v8, v5, Lˋˋ/ʼـ;->ٴʼ:I

    invoke-virtual {v1, v5}, Lˋˋ/ʻˋ;->ˆʾ(Lˋˋ/ʼـ;)V

    goto :goto_10

    :cond_21
    move-object/from16 v6, v27

    :goto_10
    add-int/lit8 v10, v10, -0x1

    move-object v9, v6

    const/16 v5, 0x20

    const/4 v8, 0x0

    goto :goto_e

    :cond_22
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_11
    if-ltz v5, :cond_24

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˋˋ/ʼـ;

    iget-wide v8, v6, Lˋˋ/ʼـ;->ᴵᵔ:J

    cmp-long v8, v8, v14

    if-nez v8, :cond_25

    invoke-virtual {v6}, Lˋˋ/ʼـ;->ﾞᴵ()Z

    move-result v8

    if-nez v8, :cond_25

    iget v8, v6, Lˋˋ/ʼـ;->ˊʻ:I

    if-ne v13, v8, :cond_23

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    :cond_23
    invoke-virtual {v1, v5}, Lˋˋ/ʻˋ;->ᵔᵢ(I)V

    :cond_24
    const/4 v10, 0x0

    goto :goto_12

    :cond_25
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    :goto_12
    if-eqz v10, :cond_26

    iput v7, v10, Lˋˋ/ʼـ;->ʽʽ:I

    move/from16 v4, v17

    :cond_26
    if-nez v10, :cond_2b

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v5, :cond_27

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tryGetViewHolderForPositionByDeadline("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") fetching from shared pool"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :cond_27
    invoke-virtual {v1}, Lˋˋ/ʻˋ;->ʽ()Lˋˋ/ﹳﹳ;

    move-result-object v5

    iget-object v5, v5, Lˋˋ/ﹳﹳ;->ﹳٴ:Landroid/util/SparseArray;

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˋˋ/ﹶᐧ;

    if-eqz v5, :cond_29

    iget-object v5, v5, Lˋˋ/ﹶᐧ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_13
    if-ltz v6, :cond_29

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˋˋ/ʼـ;

    invoke-virtual {v7}, Lˋˋ/ʼـ;->ﾞᴵ()Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˋˋ/ʼـ;

    goto :goto_14

    :cond_28
    add-int/lit8 v6, v6, -0x1

    goto :goto_13

    :cond_29
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Lˋˋ/ʼـ;->ˉˆ()V

    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    :cond_2a
    move-object v10, v5

    :cond_2b
    if-nez v10, :cond_35

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    cmp-long v7, p2, v20

    if-eqz v7, :cond_2e

    iget-object v7, v1, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    invoke-virtual {v7, v13}, Lˋˋ/ﹳﹳ;->ﹳٴ(I)Lˋˋ/ﹶᐧ;

    move-result-object v7

    iget-wide v7, v7, Lˋˋ/ﹶᐧ;->ʽ:J

    cmp-long v9, v7, v18

    if-eqz v9, :cond_2d

    add-long/2addr v7, v5

    cmp-long v7, v7, p2

    if-gez v7, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v7, 0x0

    goto :goto_16

    :cond_2d
    :goto_15
    move/from16 v7, v17

    :goto_16
    if-nez v7, :cond_2e

    const/16 v26, 0x0

    return-object v26

    :cond_2e
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Lˆﾞ/ᵎﹶ;->ﹳٴ()Z

    move-result v8

    if-eqz v8, :cond_2f

    const-string v8, "RV onCreateViewHolder type=0x%X"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v10, v17

    new-array v11, v10, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v11, v16

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_19

    :cond_2f
    :goto_17
    invoke-virtual {v7, v2, v13}, Lˋˋ/ᴵˑ;->ᵔᵢ(Landroid/view/ViewGroup;I)Lˋˋ/ʼـ;

    move-result-object v10

    iget-object v7, v10, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_32

    iput v13, v10, Lˋˋ/ʼـ;->ˊʻ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->ˊˊ:Z

    if-eqz v8, :cond_30

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->ٴᵢ(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    if-eqz v7, :cond_30

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v10, Lˋˋ/ʼـ;->ᴵˊ:Ljava/lang/ref/WeakReference;

    :cond_30
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    iget-object v9, v1, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    sub-long/2addr v7, v5

    invoke-virtual {v9, v13}, Lˋˋ/ﹳﹳ;->ﹳٴ(I)Lˋˋ/ﹶᐧ;

    move-result-object v5

    iget-wide v13, v5, Lˋˋ/ﹶᐧ;->ʽ:J

    cmp-long v6, v13, v18

    if-nez v6, :cond_31

    goto :goto_18

    :cond_31
    div-long v13, v13, v24

    mul-long v13, v13, v22

    div-long v7, v7, v24

    add-long/2addr v7, v13

    :goto_18
    iput-wide v7, v5, Lˋˋ/ﹶᐧ;->ʽ:J

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->ﹶʽ:Z

    if-eqz v5, :cond_35

    const-string v5, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    nop

    goto :goto_1a

    :cond_32
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_33
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "(offset:"

    const-string v6, ").state:"

    const-string v8, "Inconsistency detected. Invalid item position "

    invoke-static {v8, v0, v5, v7, v6}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->ᴵˊ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_34
    const-wide/16 v22, 0x3

    const-wide/16 v24, 0x4

    :cond_35
    :goto_1a
    iget-object v5, v10, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    if-eqz v4, :cond_37

    iget-boolean v6, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-nez v6, :cond_37

    iget v6, v10, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v7, v6, 0x2000

    if-eqz v7, :cond_36

    const/4 v7, 0x1

    goto :goto_1b

    :cond_36
    const/4 v7, 0x0

    :goto_1b
    if-eqz v7, :cond_37

    and-int/lit16 v6, v6, -0x2001

    iput v6, v10, Lˋˋ/ʼـ;->ٴʼ:I

    iget-boolean v6, v3, Lˋˋ/ᐧﹶ;->ˆʾ:Z

    if-eqz v6, :cond_37

    invoke-static {v10}, Lˋˋ/ᐧᴵ;->ﹳٴ(Lˋˋ/ʼـ;)V

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->ˑʼ:Lˋˋ/ᐧᴵ;

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ˑﹳ()Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lʻʿ/ˉˆ;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v10}, Lʻʿ/ˉˆ;->ⁱˊ(Lˋˋ/ʼـ;)V

    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->ᐧᴵ(Lˋˋ/ʼـ;Lʻʿ/ˉˆ;)V

    :cond_37
    iget-boolean v6, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-eqz v6, :cond_38

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ᵎﹶ()Z

    move-result v6

    if-eqz v6, :cond_38

    iput v0, v10, Lˋˋ/ʼـ;->ٴᵢ:I

    goto :goto_1d

    :cond_38
    invoke-virtual {v10}, Lˋˋ/ʼـ;->ᵎﹶ()Z

    move-result v6

    if-eqz v6, :cond_3b

    iget v6, v10, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_39

    const/4 v6, 0x1

    goto :goto_1c

    :cond_39
    const/4 v6, 0x0

    :goto_1c
    if-nez v6, :cond_3b

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ᵔᵢ()Z

    move-result v6

    if-eqz v6, :cond_3a

    goto :goto_1e

    :cond_3a
    :goto_1d
    const/4 v9, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    goto/16 :goto_29

    :cond_3b
    :goto_1e
    sget-boolean v6, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    if-eqz v6, :cond_3d

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ˆʾ()Z

    move-result v6

    if-nez v6, :cond_3c

    goto :goto_1f

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lˉˆ/ٴᴵ;->ᵎﹶ(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_1f
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->ᴵᵔ:Lʻᴵ/ʼʼ;

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9}, Lʻᴵ/ʼʼ;->ᵔᵢ(II)I

    move-result v6

    const/4 v8, 0x0

    iput-object v8, v10, Lˋˋ/ʼـ;->ʼˈ:Lˋˋ/ᴵˑ;

    iput-object v2, v10, Lˋˋ/ʼـ;->ˊˋ:Landroidx/recyclerview/widget/RecyclerView;

    iget v7, v10, Lˋˋ/ʼـ;->ˊʻ:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    cmp-long v9, p2, v20

    if-eqz v9, :cond_3e

    iget-object v9, v1, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    invoke-virtual {v9, v7}, Lˋˋ/ﹳﹳ;->ﹳٴ(I)Lˋˋ/ﹶᐧ;

    move-result-object v7

    iget-wide v13, v7, Lˋˋ/ﹶᐧ;->ˈ:J

    cmp-long v7, v13, v18

    if-eqz v7, :cond_3e

    add-long/2addr v13, v11

    cmp-long v7, v13, p2

    if-gez v7, :cond_3a

    :cond_3e
    invoke-virtual {v10}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-static {v2, v5, v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->ˑﹳ(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    goto :goto_20

    :cond_3f
    const/4 v9, 0x0

    :goto_20
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->ˆﾞ:Lˋˋ/ᴵˑ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v10, Lˋˋ/ʼـ;->ʼˈ:Lˋˋ/ᴵˑ;

    if-nez v13, :cond_40

    const/4 v13, 0x1

    goto :goto_21

    :cond_40
    const/4 v13, 0x0

    :goto_21
    if-eqz v13, :cond_42

    iput v6, v10, Lˋˋ/ʼـ;->ʽʽ:I

    iget-boolean v14, v7, Lˋˋ/ᴵˑ;->ⁱˊ:Z

    if-eqz v14, :cond_41

    invoke-virtual {v7, v6}, Lˋˋ/ᴵˑ;->ⁱˊ(I)J

    move-result-wide v14

    iput-wide v14, v10, Lˋˋ/ʼـ;->ᴵᵔ:J

    :cond_41
    iget v14, v10, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v14, v14, -0x208

    const/4 v15, 0x1

    or-int/2addr v14, v15

    iput v14, v10, Lˋˋ/ʼـ;->ٴʼ:I

    invoke-static {}, Lˆﾞ/ᵎﹶ;->ﹳٴ()Z

    move-result v14

    if-eqz v14, :cond_42

    iget v14, v10, Lˋˋ/ʼـ;->ˊʻ:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v8, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v8, v16

    const-string v14, "RV onBindViewHolder type=0x%X"

    invoke-static {v14, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_22

    :cond_42
    const/16 v16, 0x0

    :goto_22
    iput-object v7, v10, Lˋˋ/ʼـ;->ʼˈ:Lˋˋ/ᴵˑ;

    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->ˋـ:Z

    if-eqz v8, :cond_46

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_44

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v8

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v14

    if-ne v8, v14, :cond_43

    goto :goto_23

    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lˋˋ/ʼـ;->ﾞʻ()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", attached to window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", holder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_23
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_46

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v8

    if-nez v8, :cond_45

    goto :goto_24

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempting to bind attached holder with no parent (AKA temp detached): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    :goto_24
    invoke-virtual {v10}, Lˋˋ/ʼـ;->ˑﹳ()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v10, v6, v8}, Lˋˋ/ᴵˑ;->ᵎﹶ(Lˋˋ/ʼـ;ILjava/util/List;)V

    if-eqz v13, :cond_49

    iget-object v6, v10, Lˋˋ/ʼـ;->ᵎˊ:Ljava/util/ArrayList;

    if-eqz v6, :cond_47

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_47
    iget v6, v10, Lˋˋ/ʼـ;->ٴʼ:I

    and-int/lit16 v6, v6, -0x401

    iput v6, v10, Lˋˋ/ʼـ;->ٴʼ:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Lˋˋ/ˊᵔ;

    if-eqz v7, :cond_48

    check-cast v6, Lˋˋ/ˊᵔ;

    const/4 v15, 0x1

    iput-boolean v15, v6, Lˋˋ/ˊᵔ;->ʽ:Z

    :cond_48
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_49
    if-eqz v9, :cond_4a

    invoke-static {v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->ﾞᴵ(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_4a
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    iget-object v8, v1, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    iget v9, v10, Lˋˋ/ʼـ;->ˊʻ:I

    sub-long/2addr v6, v11

    invoke-virtual {v8, v9}, Lˋˋ/ﹳﹳ;->ﹳٴ(I)Lˋˋ/ﹶᐧ;

    move-result-object v8

    iget-wide v11, v8, Lˋˋ/ﹶᐧ;->ˈ:J

    cmp-long v9, v11, v18

    if-nez v9, :cond_4b

    goto :goto_25

    :cond_4b
    div-long v11, v11, v24

    mul-long v11, v11, v22

    div-long v6, v6, v24

    add-long/2addr v6, v11

    :goto_25
    iput-wide v6, v8, Lˋˋ/ﹶᐧ;->ˈ:J

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->ᐧᴵ:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v6, :cond_4c

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v9, 0x1

    goto :goto_26

    :cond_4c
    move/from16 v9, v16

    :goto_26
    if-eqz v9, :cond_52

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    const/4 v15, 0x1

    if-nez v6, :cond_4d

    invoke-virtual {v5, v15}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_4d
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->ٴᴵ:Lˋˋ/יﹳ;

    if-nez v6, :cond_4e

    goto :goto_28

    :cond_4e
    invoke-virtual {v6}, Lˋˋ/יﹳ;->ˆʾ()Lˋᵔ/ⁱˊ;

    move-result-object v6

    instance-of v7, v6, Lˋˋ/ˎᐧ;

    if-eqz v7, :cond_51

    move-object v7, v6

    check-cast v7, Lˋˋ/ˎᐧ;

    invoke-static {v5}, Lˋᵔ/ᵎˊ;->ˈ(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v8

    if-nez v8, :cond_4f

    const/4 v8, 0x0

    goto :goto_27

    :cond_4f
    instance-of v9, v8, Lˋᵔ/ﹳٴ;

    if-eqz v9, :cond_50

    check-cast v8, Lˋᵔ/ﹳٴ;

    iget-object v8, v8, Lˋᵔ/ﹳٴ;->ﹳٴ:Lˋᵔ/ⁱˊ;

    goto :goto_27

    :cond_50
    new-instance v9, Lˋᵔ/ⁱˊ;

    invoke-direct {v9, v8}, Lˋᵔ/ⁱˊ;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object v8, v9

    :goto_27
    if-eqz v8, :cond_51

    if-eq v8, v7, :cond_51

    iget-object v7, v7, Lˋˋ/ˎᐧ;->ˑﹳ:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v5, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    invoke-static {v5, v6}, Lˋᵔ/ᵎˊ;->ˉʿ(Landroid/view/View;Lˋᵔ/ⁱˊ;)V

    goto :goto_28

    :cond_52
    const/4 v15, 0x1

    :goto_28
    iget-boolean v3, v3, Lˋˋ/ᐧﹶ;->ᵎﹶ:Z

    if-eqz v3, :cond_53

    iput v0, v10, Lˋˋ/ʼـ;->ٴᵢ:I

    :cond_53
    move v9, v15

    :goto_29
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_54

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    :cond_54
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_55

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lˋˋ/ˊᵔ;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2a

    :cond_55
    check-cast v0, Lˋˋ/ˊᵔ;

    :goto_2a
    iput-object v10, v0, Lˋˋ/ˊᵔ;->ﹳٴ:Lˋˋ/ʼـ;

    if-eqz v4, :cond_56

    if-eqz v9, :cond_56

    move v7, v15

    goto :goto_2b

    :cond_56
    move/from16 v7, v16

    :goto_2b
    iput-boolean v7, v0, Lˋˋ/ˊᵔ;->ˈ:Z

    return-object v10

    :cond_57
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "("

    const-string v6, "). Item count:"

    const-string v7, "Invalid item position "

    invoke-static {v7, v0, v5, v0, v6}, Lᐧـ/ˈ;->ﹳᐧ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lˋˋ/ᐧﹶ;->ⁱˊ()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->ᴵˊ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final ﾞᴵ(Lˋˋ/ᴵˑ;Z)V
    .locals 4

    .prologue
    iget-object v0, p0, Lˋˋ/ʻˋ;->ᵎﹶ:Lˋˋ/ﹳﹳ;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lˋˋ/ﹳﹳ;->ﹳٴ:Landroid/util/SparseArray;

    iget-object v0, v0, Lˋˋ/ﹳﹳ;->ʽ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋˋ/ﹶᐧ;

    iget-object v0, v0, Lˋˋ/ﹶᐧ;->ﹳٴ:Ljava/util/ArrayList;

    move v2, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˋˋ/ʼـ;

    iget-object v3, v3, Lˋˋ/ʼـ;->ʾˋ:Landroid/view/View;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/ᵎ;->ﾞᴵ(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
