.class public final Lˑʼ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/ArrayList;

.field public ˈ:Z

.field public ˑﹳ:Z

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Landroid/view/ViewGroup;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    return-void
.end method

.method public static ˆʾ(Ljava/util/ArrayList;)Z
    .locals 8

    .prologue
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    :cond_0
    :goto_0
    move v3, v2

    :goto_1
    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lˑʼ/ʽᵔ;

    iget-object v5, v3, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, v3, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_2
    if-ge v6, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lˑʼ/ـᵎ;

    invoke-virtual {v7}, Lˑʼ/ـᵎ;->ﹳٴ()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lˑʼ/ʽᵔ;

    iget-object v5, v5, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public static ﾞᴵ(Lיـ/ˑﹳ;Landroid/view/View;)V
    .locals 4

    .prologue
    sget-object v0, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Lˑʼ/ᵔﹳ;->ﾞᴵ(Lיـ/ˑﹳ;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final ʼˎ()V
    .locals 12

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    nop

    :cond_0
    iget-object v1, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lˑʼ/ᵔﹳ;->ˉʿ()V

    iget-object v3, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lˑʼ/ᵔﹳ;->ﾞʻ(Ljava/util/List;)V

    iget-object v3, p0, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lˑʼ/ʽᵔ;

    iput-boolean v5, v7, Lˑʼ/ʽᵔ;->ᵎﹶ:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lˑʼ/ʽᵔ;

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v1, :cond_2

    const-string v8, ""

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is not attached to window. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    const-string v9, "FragmentManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpecialEffectsController: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Cancelling running operation "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    :cond_3
    iget-object v8, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Lˑʼ/ʽᵔ;->ﹳٴ(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v5

    :goto_3
    if-ge v6, v3, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lˑʼ/ʽᵔ;

    iput-boolean v5, v7, Lˑʼ/ʽᵔ;->ᵎﹶ:Z

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v5, v3, :cond_8

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lˑʼ/ʽᵔ;

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v1, :cond_6

    const-string v7, ""

    goto :goto_5

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not attached to window. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SpecialEffectsController: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Cancelling pending operation "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    :cond_7
    iget-object v7, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Lˑʼ/ʽᵔ;->ﹳٴ(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_8
    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2

    throw v0
.end method

.method public final ʽ(Ljava/util/List;)V
    .locals 6

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ʽᵔ;

    iget-object v2, v2, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ـᵎ;

    iget-object v5, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Lˑʼ/ـᵎ;->ʽ(Landroid/view/ViewGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ʽᵔ;

    invoke-virtual {p0, v3}, Lˑʼ/ᵔﹳ;->ﹳٴ(Lˑʼ/ʽᵔ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ʽᵔ;

    iget-object v3, v1, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lˑʼ/ʽᵔ;->ⁱˊ()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final ˈ(IILˑʼ/ᴵʼ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p3, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {p0, v1}, Lˑʼ/ᵔﹳ;->ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ʽᵔ;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p3, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v2, v1, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lˑʼ/ᴵᵔ;->ᵔי:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lˑʼ/ᵔﹳ;->ᵔᵢ(Lˑʼ/ᴵᵔ;)Lˑʼ/ʽᵔ;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lˑʼ/ʽᵔ;->ˈ(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :try_start_1
    new-instance v1, Lˑʼ/ʽᵔ;

    invoke-direct {v1, p1, p2, p3}, Lˑʼ/ʽᵔ;-><init>(IILˑʼ/ᴵʼ;)V

    iget-object p1, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lˑʼ/ˈ;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v1, p2}, Lˑʼ/ˈ;-><init>(Lˑʼ/ᵔﹳ;Lˑʼ/ʽᵔ;I)V

    iget-object p2, v1, Lˑʼ/ʽᵔ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lˑʼ/ˈ;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v1, p2}, Lˑʼ/ˈ;-><init>(Lˑʼ/ᵔﹳ;Lˑʼ/ʽᵔ;I)V

    iget-object p2, v1, Lˑʼ/ʽᵔ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final ˉʿ()V
    .locals 6

    .prologue
    iget-object v0, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lˑʼ/ʽᵔ;

    iget v4, v3, Lˑʼ/ʽᵔ;->ⁱˊ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ﹶ()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown visibility "

    invoke-static {v4, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lˑʼ/ʽᵔ;->ˈ(II)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final ˑﹳ()V
    .locals 10

    .prologue
    iget-boolean v0, p0, Lˑʼ/ᵔﹳ;->ﾞᴵ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lˑʼ/ᵔﹳ;->ʼˎ()V

    iput-boolean v1, p0, Lˑʼ/ᵔﹳ;->ˑﹳ:Z

    return-void

    :cond_1
    iget-object v0, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lˑʼ/ʽᵔ;

    iget-object v7, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v7, v7, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :cond_2
    move v5, v1

    :goto_1
    iput-boolean v5, v6, Lˑʼ/ʽᵔ;->ᵎﹶ:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :cond_4
    :goto_2
    const/4 v6, 0x2

    if-ge v4, v2, :cond_8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lˑʼ/ʽᵔ;

    iget-boolean v8, p0, Lˑʼ/ᵔﹳ;->ˈ:Z

    if-eqz v8, :cond_6

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Completing non-seekable operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    :cond_5
    invoke-virtual {v7}, Lˑʼ/ʽᵔ;->ⁱˊ()V

    goto :goto_3

    :cond_6
    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    :cond_7
    iget-object v6, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Lˑʼ/ʽᵔ;->ﹳٴ(Landroid/view/ViewGroup;)V

    :goto_3
    iput-boolean v1, p0, Lˑʼ/ᵔﹳ;->ˈ:Z

    iget-boolean v6, v7, Lˑʼ/ʽᵔ;->ﾞᴵ:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lˑʼ/ᵔﹳ;->ˉʿ()V

    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_1
    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "FragmentManager"

    const-string v4, "SpecialEffectsController: Executing pending operations"

    nop

    :cond_a
    iget-boolean v2, p0, Lˑʼ/ᵔﹳ;->ˑﹳ:Z

    invoke-virtual {p0, v3, v2}, Lˑʼ/ᵔﹳ;->ⁱˊ(Ljava/util/ArrayList;Z)V

    invoke-static {v3}, Lˑʼ/ᵔﹳ;->ˆʾ(Ljava/util/ArrayList;)Z

    move-result v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v8, v1

    move v7, v5

    :cond_b
    :goto_4
    if-ge v8, v4, :cond_c

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lˑʼ/ʽᵔ;

    iget-object v9, v9, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-boolean v9, v9, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    if-nez v9, :cond_b

    move v7, v1

    goto :goto_4

    :cond_c
    if-eqz v7, :cond_d

    if-nez v2, :cond_d

    goto :goto_5

    :cond_d
    move v5, v1

    :goto_5
    iput-boolean v5, p0, Lˑʼ/ᵔﹳ;->ˈ:Z

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: Operation seekable = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " \ntransition = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :cond_e
    if-nez v7, :cond_f

    invoke-virtual {p0, v3}, Lˑʼ/ᵔﹳ;->ﾞʻ(Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lˑʼ/ᵔﹳ;->ʽ(Ljava/util/List;)V

    goto :goto_7

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {p0, v3}, Lˑʼ/ᵔﹳ;->ﾞʻ(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_6
    if-ge v4, v2, :cond_10

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ʽᵔ;

    invoke-virtual {p0, v5}, Lˑʼ/ᵔﹳ;->ﹳٴ(Lˑʼ/ʽᵔ;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    iput-boolean v1, p0, Lˑʼ/ᵔﹳ;->ˑﹳ:Z

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_11
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0

    throw v1
.end method

.method public final ٴﹶ()V
    .locals 9

    .prologue
    iget-object v0, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lˑʼ/ᵔﹳ;->ˉʿ()V

    iget-object v1, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lˑʼ/ʽᵔ;

    iget-object v5, v4, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v5, v5, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_4

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2

    const/4 v8, 0x3

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown visibility "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v8, v7

    :cond_4
    :goto_0
    iget v4, v4, Lˑʼ/ʽᵔ;->ﹳٴ:I

    if-ne v4, v7, :cond_0

    if-eq v8, v7, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_1
    check-cast v2, Lˑʼ/ʽᵔ;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    :cond_6
    const/4 v1, 0x0

    if-eqz v3, :cond_8

    iget-object v2, v3, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    iget-boolean v1, v2, Lˑʼ/ᴵˊ;->ᵔﹳ:Z

    :cond_8
    :goto_2
    iput-boolean v1, p0, Lˑʼ/ᵔﹳ;->ﾞᴵ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw v1
.end method

.method public final ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ʽᵔ;
    .locals 6

    .prologue
    iget-object v0, p0, Lˑʼ/ᵔﹳ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Lˑʼ/ʽᵔ;

    iget-object v5, v4, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-static {v5, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lˑʼ/ʽᵔ;->ˑﹳ:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lˑʼ/ʽᵔ;

    return-object v3
.end method

.method public final ᵔᵢ(Lˑʼ/ᴵᵔ;)Lˑʼ/ʽᵔ;
    .locals 6

    .prologue
    iget-object v0, p0, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Lˑʼ/ʽᵔ;

    iget-object v5, v4, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-static {v5, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lˑʼ/ʽᵔ;->ˑﹳ:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lˑʼ/ʽᵔ;

    return-object v3
.end method

.method public final ⁱˊ(Ljava/util/ArrayList;Z)V
    .locals 26

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    const/4 v15, 0x2

    invoke-static {v15}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    const-string v3, "FragmentManager"

    if-eqz v2, :cond_0

    const-string v2, "Collecting Effects"

    nop

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    const-string v6, "Unknown visibility "

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-ge v5, v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v5, v5, 0x1

    move-object v12, v11

    check-cast v12, Lˑʼ/ʽᵔ;

    iget-object v13, v12, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v13, v13, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v16

    cmpg-float v16, v16, v9

    if-nez v16, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_4

    if-eq v13, v8, :cond_1

    if-ne v13, v7, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v6}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget v12, v12, Lˑʼ/ʽᵔ;->ﹳٴ:I

    if-eq v12, v15, :cond_1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    check-cast v11, Lˑʼ/ʽᵔ;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lˑʼ/ʽᵔ;

    iget-object v13, v12, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v13, v13, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v16

    cmpg-float v16, v16, v9

    if-nez v16, :cond_7

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_6

    if-eq v13, v8, :cond_9

    if-ne v13, v7, :cond_8

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v6}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_2
    iget v12, v12, Lˑʼ/ʽᵔ;->ﹳٴ:I

    if-ne v12, v15, :cond_6

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    check-cast v5, Lˑʼ/ʽᵔ;

    invoke-static {v15}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Executing operations from "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lﹶˈ/ˆʾ;->ـᵎ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lˑʼ/ʽᵔ;

    iget-object v7, v7, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_4
    if-ge v9, v8, :cond_c

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v9, v9, 0x1

    check-cast v12, Lˑʼ/ʽᵔ;

    iget-object v12, v12, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v12, v12, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    iget-object v13, v7, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    move/from16 v16, v15

    iget v15, v13, Lˑʼ/ᴵˊ;->ⁱˊ:I

    iput v15, v12, Lˑʼ/ᴵˊ;->ⁱˊ:I

    iget v15, v13, Lˑʼ/ᴵˊ;->ʽ:I

    iput v15, v12, Lˑʼ/ᴵˊ;->ʽ:I

    iget v15, v13, Lˑʼ/ᴵˊ;->ˈ:I

    iput v15, v12, Lˑʼ/ᴵˊ;->ˈ:I

    iget v13, v13, Lˑʼ/ᴵˊ;->ˑﹳ:I

    iput v13, v12, Lˑʼ/ᴵˊ;->ˑﹳ:I

    move/from16 v15, v16

    goto :goto_4

    :cond_c
    move/from16 v16, v15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_5
    if-ge v8, v7, :cond_f

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lˑʼ/ʽᵔ;

    new-instance v12, Lˑʼ/ᵎﹶ;

    invoke-direct {v12, v9, v14}, Lˑʼ/ᵎﹶ;-><init>(Lˑʼ/ʽᵔ;Z)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lˑʼ/ʼᐧ;

    if-eqz v14, :cond_e

    if-ne v9, v11, :cond_d

    :goto_6
    const/4 v15, 0x1

    goto :goto_7

    :cond_d
    move v15, v4

    goto :goto_7

    :cond_e
    if-ne v9, v5, :cond_d

    goto :goto_6

    :goto_7
    invoke-direct {v12, v9, v14, v15}, Lˑʼ/ʼᐧ;-><init>(Lˑʼ/ʽᵔ;ZZ)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lˑʼ/ˈ;

    invoke-direct {v12, v0, v9, v4}, Lˑʼ/ˈ;-><init>(Lˑʼ/ᵔﹳ;Lˑʼ/ʽᵔ;I)V

    iget-object v9, v9, Lˑʼ/ʽᵔ;->ˈ:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_10
    :goto_8
    if-ge v8, v7, :cond_11

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    move-object v12, v9

    check-cast v12, Lˑʼ/ʼᐧ;

    invoke-virtual {v12}, Lʽⁱ/ᵎﹶ;->ʼـ()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_12
    :goto_9
    if-ge v8, v7, :cond_13

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    move-object v12, v9

    check-cast v12, Lˑʼ/ʼᐧ;

    invoke-virtual {v12}, Lˑʼ/ʼᐧ;->ﹶˎ()Lˑʼ/ˑʼ;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v8, v4

    const/4 v7, 0x0

    :goto_a
    if-ge v8, v1, :cond_16

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lˑʼ/ʼᐧ;

    invoke-virtual {v9}, Lˑʼ/ʼᐧ;->ﹶˎ()Lˑʼ/ˑʼ;

    move-result-object v12

    if-eqz v7, :cond_15

    if-ne v12, v7, :cond_14

    goto :goto_b

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lˑʼ/ʽᵔ;

    iget-object v2, v2, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lˑʼ/ʼᐧ;->ᴵˊ:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which uses a different Transition type than other Fragments."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :goto_b
    move-object v7, v12

    goto :goto_a

    :cond_16
    if-nez v7, :cond_17

    move-object v15, v2

    move-object v0, v3

    const/16 v20, 0x1

    goto/16 :goto_20

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lיـ/ˑﹳ;

    invoke-direct {v9, v4}, Lיـ/ﹳᐧ;-><init>(I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v12

    new-instance v12, Lיـ/ˑﹳ;

    invoke-direct {v12, v4}, Lיـ/ﹳᐧ;-><init>(I)V

    move-object/from16 v18, v13

    new-instance v13, Lיـ/ˑﹳ;

    invoke-direct {v13, v4}, Lיـ/ﹳᐧ;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    :goto_c
    if-ge v15, v4, :cond_31

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v21

    check-cast v10, Lˑʼ/ʼᐧ;

    iget-object v10, v10, Lˑʼ/ʼᐧ;->ˈٴ:Ljava/lang/Object;

    if-eqz v10, :cond_30

    if-eqz v11, :cond_30

    move-object/from16 p1, v1

    iget-object v1, v11, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    move-object/from16 v21, v2

    if-eqz v5, :cond_2f

    iget-object v2, v5, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v7, v10}, Lˑʼ/ˑʼ;->ᵔᵢ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Lˑʼ/ˑʼ;->ʼʼ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move/from16 v22, v4

    iget-object v4, v2, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-eqz v4, :cond_19

    iget-object v4, v4, Lˑʼ/ᴵˊ;->ᵎﹶ:Ljava/util/ArrayList;

    if-nez v4, :cond_18

    goto :goto_e

    :cond_18
    :goto_d
    move-object/from16 v23, v7

    goto :goto_f

    :cond_19
    :goto_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_d

    :goto_f
    iget-object v7, v1, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-eqz v7, :cond_1b

    iget-object v7, v7, Lˑʼ/ᴵˊ;->ᵎﹶ:Ljava/util/ArrayList;

    if-nez v7, :cond_1a

    goto :goto_11

    :cond_1a
    :goto_10
    move-object/from16 v24, v8

    goto :goto_12

    :cond_1b
    :goto_11
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    :goto_12
    iget-object v8, v1, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-eqz v8, :cond_1c

    iget-object v8, v8, Lˑʼ/ᴵˊ;->ᵔᵢ:Ljava/util/ArrayList;

    if-nez v8, :cond_1d

    :cond_1c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v25, v15

    const/4 v15, 0x0

    :goto_13
    const/4 v0, -0x1

    if-ge v15, v14, :cond_1f

    move/from16 v17, v14

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    if-eq v14, v0, :cond_1e

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v14, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    goto :goto_13

    :cond_1f
    iget-object v7, v2, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-eqz v7, :cond_20

    iget-object v7, v7, Lˑʼ/ᴵˊ;->ᵔᵢ:Ljava/util/ArrayList;

    if-nez v7, :cond_21

    :cond_20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_21
    if-nez p2, :cond_22

    new-instance v8, Lʻᵢ/ˑﹳ;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v14}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_22
    const/4 v14, 0x0

    new-instance v8, Lʻᵢ/ˑﹳ;

    invoke-direct {v8, v14, v14}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    iget-object v15, v8, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    if-nez v15, :cond_2e

    iget-object v8, v8, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    if-nez v8, :cond_2d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v8, :cond_23

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v14, v0}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    const/4 v0, -0x1

    const/4 v14, 0x0

    goto :goto_15

    :cond_23
    invoke-static/range {v16 .. v16}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, ">>> entering view names <<<"

    nop

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_16
    const-string v14, "Name: "

    if-ge v8, v0, :cond_24

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v8, v8, 0x1

    check-cast v15, Ljava/lang/String;

    move/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    move/from16 v0, v17

    goto :goto_16

    :cond_24
    const-string v0, ">>> exiting view names <<<"

    nop

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_17
    if-ge v8, v0, :cond_25

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v8, v8, 0x1

    check-cast v15, Ljava/lang/String;

    move/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    move/from16 v0, v17

    goto :goto_17

    :cond_25
    iget-object v0, v1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-static {v12, v0}, Lˑʼ/ᵔﹳ;->ﾞᴵ(Lיـ/ˑﹳ;Landroid/view/View;)V

    invoke-virtual {v12, v4}, Lיـ/ˑﹳ;->ˉʿ(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v9, v0}, Lיـ/ˑﹳ;->ˉʿ(Ljava/util/Collection;)Z

    iget-object v0, v2, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-static {v13, v0}, Lˑʼ/ᵔﹳ;->ﾞᴵ(Lיـ/ˑﹳ;Landroid/view/View;)V

    invoke-virtual {v13, v7}, Lיـ/ˑﹳ;->ˉʿ(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Lיـ/ˑﹳ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v13, v0}, Lיـ/ˑﹳ;->ˉʿ(Ljava/util/Collection;)Z

    sget-object v0, Lˑʼ/ˊᵔ;->ﹳٴ:Lˑʼ/ﹳﹳ;

    iget v0, v9, Lיـ/ﹳᐧ;->ʽʽ:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_18
    if-ge v1, v0, :cond_27

    invoke-virtual {v9, v0}, Lיـ/ﹳᐧ;->ˆʾ(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v9, v0}, Lיـ/ﹳᐧ;->ᵔᵢ(I)Ljava/lang/Object;

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_27
    invoke-virtual {v9}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v12}, Lיـ/ˑﹳ;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˉـ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˉـ;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v8, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v2}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lﹶˈ/ˆʾ;->ʻᵎ(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    :cond_29
    invoke-virtual {v9}, Lיـ/ˑﹳ;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v13}, Lיـ/ˑﹳ;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˉـ;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˉـ;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v8, Lˋᵔ/ᵎˊ;->ﹳٴ:Ljava/util/WeakHashMap;

    invoke-static {v2}, Lˋᵔ/ʽʽ;->ˑﹳ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lﹶˈ/ˆʾ;->ʻᵎ(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    :cond_2b
    invoke-virtual {v9}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring shared elements transition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as there are no matching elements in both the entering and exiting fragment. In order to run a SharedElementTransition, both fragments involved must have the element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    move-object/from16 v18, v4

    move-object/from16 v17, v7

    move-object/from16 v2, v21

    move/from16 v4, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move/from16 v15, v25

    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    move-object/from16 v18, v4

    move-object/from16 v17, v7

    move-object/from16 v19, v10

    :goto_1b
    move-object/from16 v2, v21

    move/from16 v4, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move/from16 v15, v25

    goto/16 :goto_c

    :cond_2d
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_2f
    :goto_1c
    move/from16 v22, v4

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v25, v15

    goto :goto_1d

    :cond_30
    move-object/from16 p1, v1

    move-object/from16 v21, v2

    goto :goto_1c

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, p2

    goto :goto_1b

    :cond_31
    move-object/from16 p1, v1

    move-object/from16 v21, v2

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    if-nez v19, :cond_34

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_32
    move-object v0, v3

    move-object/from16 v15, v21

    goto :goto_20

    :cond_33
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lˑʼ/ʼᐧ;

    iget-object v2, v2, Lˑʼ/ʼᐧ;->ᴵˊ:Ljava/lang/Object;

    if-nez v2, :cond_34

    goto :goto_1e

    :cond_34
    new-instance v1, Lˑʼ/ˉˆ;

    move-object/from16 v7, p1

    move/from16 v14, p2

    move-object v0, v3

    move-object v4, v5

    move-object v2, v6

    move-object v3, v11

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v6, v19

    move-object/from16 v15, v21

    move-object/from16 v5, v23

    move-object/from16 v8, v24

    invoke-direct/range {v1 .. v14}, Lˑʼ/ˉˆ;-><init>(Ljava/util/ArrayList;Lˑʼ/ʽᵔ;Lˑʼ/ʽᵔ;Lˑʼ/ˑʼ;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Lיـ/ˑﹳ;Ljava/util/ArrayList;Ljava/util/ArrayList;Lיـ/ˑﹳ;Lיـ/ˑﹳ;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v3, :cond_35

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lˑʼ/ʼᐧ;

    iget-object v5, v5, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lˑʼ/ʽᵔ;

    iget-object v5, v5, Lˑʼ/ʽᵔ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_35
    :goto_20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_36

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lˑʼ/ᵎﹶ;

    iget-object v5, v5, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v5, Lˑʼ/ʽᵔ;

    iget-object v5, v5, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_21

    :cond_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_37
    :goto_22
    if-ge v5, v3, :cond_3c

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lˑʼ/ᵎﹶ;

    move-object/from16 v7, p0

    iget-object v8, v7, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v6, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v9, Lˑʼ/ʽᵔ;

    invoke-virtual {v6, v8}, Lˑʼ/ᵎﹶ;->ﹶˎ(Landroid/content/Context;)Lﹳʽ/ˊʻ;

    move-result-object v8

    if-nez v8, :cond_38

    goto :goto_22

    :cond_38
    iget-object v8, v8, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Landroid/animation/AnimatorSet;

    if-nez v8, :cond_39

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_39
    iget-object v8, v9, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v10, v9, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3a

    invoke-static/range {v16 .. v16}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_37

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring Animator set on "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as this Fragment was involved in a Transition."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    goto :goto_22

    :cond_3a
    iget v4, v9, Lˑʼ/ʽᵔ;->ﹳٴ:I

    const/4 v8, 0x3

    if-ne v4, v8, :cond_3b

    const/4 v8, 0x0

    iput-boolean v8, v9, Lˑʼ/ʽᵔ;->ʼˎ:Z

    goto :goto_23

    :cond_3b
    const/4 v8, 0x0

    :goto_23
    new-instance v4, Lˑʼ/ʼˎ;

    invoke-direct {v4, v6}, Lˑʼ/ʼˎ;-><init>(Lˑʼ/ᵎﹶ;)V

    iget-object v6, v9, Lˑʼ/ʽᵔ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v20

    goto :goto_22

    :cond_3c
    move-object/from16 v7, p0

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_3d
    :goto_24
    if-ge v8, v3, :cond_40

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v8, 0x1

    check-cast v5, Lˑʼ/ᵎﹶ;

    iget-object v6, v5, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v6, Lˑʼ/ʽᵔ;

    iget-object v9, v6, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    const-string v10, "Ignoring Animation set on "

    if-nez v2, :cond_3e

    invoke-static/range {v16 .. v16}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Transitions."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto :goto_24

    :cond_3e
    if-eqz v4, :cond_3f

    invoke-static/range {v16 .. v16}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " as Animations cannot run alongside Animators."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    goto :goto_24

    :cond_3f
    new-instance v9, Lˑʼ/ﾞᴵ;

    invoke-direct {v9, v5}, Lˑʼ/ﾞᴵ;-><init>(Lˑʼ/ᵎﹶ;)V

    iget-object v5, v6, Lˑʼ/ʽᵔ;->ˆʾ:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_40
    return-void
.end method

.method public final ﹳٴ(Lˑʼ/ʽᵔ;)V
    .locals 3

    .prologue
    iget-boolean v0, p1, Lˑʼ/ʽᵔ;->ʼˎ:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lˑʼ/ʽᵔ;->ﹳٴ:I

    iget-object v1, p1, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v1}, Lˑʼ/ᴵᵔ;->ﹶ()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lˉˆ/ٴᴵ;->ⁱˊ(ILandroid/view/View;Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lˑʼ/ʽᵔ;->ʼˎ:Z

    :cond_0
    return-void
.end method

.method public final ﾞʻ(Ljava/util/List;)V
    .locals 12

    .prologue
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˑʼ/ʽᵔ;

    iget-object v5, v4, Lˑʼ/ʽᵔ;->ﾞʻ:Lˑʼ/ᴵʼ;

    iget-boolean v6, v4, Lˑʼ/ʽᵔ;->ᵔᵢ:Z

    if-eqz v6, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-boolean v3, v4, Lˑʼ/ʽᵔ;->ᵔᵢ:Z

    iget v3, v4, Lˑʼ/ʽᵔ;->ⁱˊ:I

    const/4 v6, 0x2

    const-string v7, " for Fragment "

    const-string v8, "FragmentManager"

    if-ne v3, v6, :cond_8

    iget-object v3, v5, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    iget-object v9, v3, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ˈⁱ()Lˑʼ/ᴵˊ;

    move-result-object v10

    iput-object v9, v10, Lˑʼ/ᴵˊ;->ʼᐧ:Landroid/view/View;

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v10

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "requestFocus: Saved focused view "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    :cond_1
    iget-object v4, v4, Lˑʼ/ʽᵔ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v4}, Lˑʼ/ᴵᵔ;->ﹶ()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v9, 0x0

    if-nez v7, :cond_3

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Adding fragment "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " view "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to container in onStart"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    :cond_2
    invoke-virtual {v5}, Lˑʼ/ᴵʼ;->ⁱˊ()V

    invoke-virtual {v4, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpg-float v5, v5, v9

    if-nez v5, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Making view "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " INVISIBLE in onStart"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    :cond_4
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v5, v3, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v5, :cond_6

    move v5, v7

    goto :goto_1

    :cond_6
    iget v5, v5, Lˑʼ/ᴵˊ;->ˉˆ:F

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setting view alpha to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lˑʼ/ᴵᵔ;->ﹶᐧ:Lˑʼ/ᴵˊ;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    iget v7, v3, Lˑʼ/ᴵˊ;->ˉˆ:F

    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " in onStart"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto :goto_3

    :cond_8
    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    iget-object v3, v5, Lˑʼ/ᴵʼ;->ʽ:Lˑʼ/ᴵᵔ;

    invoke-virtual {v3}, Lˑʼ/ᴵᵔ;->ﹶ()Landroid/view/View;

    move-result-object v4

    invoke-static {v6}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Clearing focus "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    :cond_a
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ʽᵔ;

    iget-object v2, v2, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_4

    :cond_c
    invoke-static {v0}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˑʼ/ـᵎ;

    iget-boolean v4, v2, Lˑʼ/ـᵎ;->ﹳٴ:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lˑʼ/ᵔﹳ;->ﹳٴ:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Lˑʼ/ـᵎ;->ˑﹳ(Landroid/view/ViewGroup;)V

    :cond_d
    iput-boolean v3, v2, Lˑʼ/ـᵎ;->ﹳٴ:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method
