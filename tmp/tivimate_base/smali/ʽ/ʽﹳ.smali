.class public final Lʽ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lˑʼ/ᵔٴ;

.field public final ˈ:Landroid/window/OnBackInvokedCallback;

.field public ˑﹳ:Landroid/window/OnBackInvokedDispatcher;

.field public ᵎﹶ:Z

.field public final ⁱˊ:Lﹶˈ/ᵔᵢ;

.field public final ﹳٴ:Ljava/lang/Runnable;

.field public ﾞᴵ:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽ/ʽﹳ;->ﹳٴ:Ljava/lang/Runnable;

    new-instance p1, Lﹶˈ/ᵔᵢ;

    invoke-direct {p1}, Lﹶˈ/ᵔᵢ;-><init>()V

    iput-object p1, p0, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    new-instance p1, Lʽ/ˉʿ;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lʽ/ˉʿ;-><init>(Lʽ/ʽﹳ;I)V

    new-instance v0, Lʽ/ˉʿ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lʽ/ˉʿ;-><init>(Lʽ/ʽﹳ;I)V

    new-instance v1, Lʽ/ᵔʾ;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lʽ/ᵔʾ;-><init>(Lʽ/ʽﹳ;I)V

    new-instance v2, Lʽ/ᵔʾ;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lʽ/ᵔʾ;-><init>(Lʽ/ʽﹳ;I)V

    sget-object v3, Lʽ/ﹳᐧ;->ﹳٴ:Lʽ/ﹳᐧ;

    invoke-virtual {v3, p1, v0, v1, v2}, Lʽ/ﹳᐧ;->ﹳٴ(Lᴵⁱ/ﾞʻ;Lᴵⁱ/ﾞʻ;Lᴵⁱ/ﹳٴ;Lᴵⁱ/ﹳٴ;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lʽ/ᵔʾ;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lʽ/ᵔʾ;-><init>(Lʽ/ʽﹳ;I)V

    sget-object v0, Lʽ/ʼᐧ;->ﹳٴ:Lʽ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʽ/ʼᐧ;->ﹳٴ(Lᴵⁱ/ﹳٴ;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lʽ/ʽﹳ;->ˈ:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lʽ/ʽﹳ;->ᵎﹶ:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lﹶˈ/ᵔᵢ;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˑʼ/ᵔٴ;

    iget-boolean v3, v3, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lʽ/ʽﹳ;->ᵎﹶ:Z

    if-eq v1, v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, v1}, Lʽ/ʽﹳ;->ⁱˊ(Z)V

    :cond_3
    return-void
.end method

.method public final ⁱˊ(Z)V
    .locals 5

    .prologue
    iget-object v0, p0, Lʽ/ʽﹳ;->ˑﹳ:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lʽ/ʽﹳ;->ˈ:Landroid/window/OnBackInvokedCallback;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    sget-object v3, Lʽ/ʼᐧ;->ﹳٴ:Lʽ/ʼᐧ;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lʽ/ʽﹳ;->ﾞᴵ:Z

    if-nez v4, :cond_0

    invoke-virtual {v3, v0, v2, v1}, Lʽ/ʼᐧ;->ⁱˊ(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lʽ/ʽﹳ;->ﾞᴵ:Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lʽ/ʽﹳ;->ﾞᴵ:Z

    if-eqz p1, :cond_1

    invoke-virtual {v3, v0, v1}, Lʽ/ʼᐧ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lʽ/ʽﹳ;->ﾞᴵ:Z

    :cond_1
    return-void
.end method

.method public final ﹳٴ()V
    .locals 14

    .prologue
    iget-object v0, p0, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->ﹳٴ()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lˑʼ/ᵔٴ;

    iget-boolean v3, v3, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v0, v2

    check-cast v0, Lˑʼ/ᵔٴ;

    :cond_2
    iput-object v1, p0, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lˑʼ/ᵔٴ;->ˈ:Lˑʼ/ʿ;

    const/4 v2, 0x3

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v3

    const-string v4, "FragmentManager"

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_3
    iget-object v3, v0, Lˑʼ/ʿ;->ˆʾ:Lˑʼ/ᵔٴ;

    iget-object v5, v0, Lˑʼ/ʿ;->ˉˆ:Ljava/util/ArrayList;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lˑʼ/ʿ;->ʼˎ:Z

    invoke-virtual {v0, v6}, Lˑʼ/ʿ;->ʾˋ(Z)Z

    const/4 v7, 0x0

    iput-boolean v7, v0, Lˑʼ/ʿ;->ʼˎ:Z

    iget-object v8, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    if-eqz v8, :cond_d

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/LinkedHashSet;

    iget-object v9, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-static {v9}, Lˑʼ/ʿ;->ٴᵢ(Lˑʼ/ﹳٴ;)Ljava/util/HashSet;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v7

    :cond_4
    if-ge v10, v9, :cond_5

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lˉˑ/ʽ;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lˑʼ/ᴵᵔ;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    iget-object v5, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    iget-object v5, v5, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v7

    :cond_6
    :goto_2
    if-ge v9, v8, :cond_7

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lˑʼ/ʻᵎ;

    iget-object v10, v10, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v10, :cond_6

    iput-boolean v7, v10, Lˑʼ/ᴵᵔ;->ˆﾞ:Z

    goto :goto_2

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    iget-object v8, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v5, v7, v6}, Lˑʼ/ʿ;->ﾞᴵ(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lˑʼ/ᵔﹳ;

    iget-object v8, v6, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "SpecialEffectsController: Completing Back "

    nop

    :cond_8
    invoke-virtual {v6, v8}, Lˑʼ/ᵔﹳ;->ﾞʻ(Ljava/util/List;)V

    invoke-virtual {v6, v8}, Lˑʼ/ᵔﹳ;->ʽ(Ljava/util/List;)V

    goto :goto_3

    :cond_9
    iget-object v5, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    iget-object v5, v5, Lˑʼ/ﹳٴ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_a
    :goto_4
    if-ge v7, v6, :cond_b

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lˑʼ/ʻᵎ;

    iget-object v8, v8, Lˑʼ/ʻᵎ;->ⁱˊ:Lˑʼ/ᴵᵔ;

    if-eqz v8, :cond_a

    iget-object v9, v8, Lˑʼ/ᴵᵔ;->ʻᵎ:Landroid/view/ViewGroup;

    if-nez v9, :cond_a

    invoke-virtual {v0, v8}, Lˑʼ/ʿ;->ᵎﹶ(Lˑʼ/ᴵᵔ;)Lˑʼ/ᴵʼ;

    move-result-object v8

    invoke-virtual {v8}, Lˑʼ/ᴵʼ;->ٴﹶ()V

    goto :goto_4

    :cond_b
    iput-object v1, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ᵎʻ()V

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "Op is being set to null"

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnBackPressedCallback enabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v3, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for  FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_c
    return-void

    :cond_d
    iget-boolean v1, v3, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    if-eqz v1, :cond_f

    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Calling popBackStackImmediate via onBackPressed callback"

    nop

    :cond_e
    invoke-virtual {v0}, Lˑʼ/ʿ;->ˉـ()Z

    return-void

    :cond_f
    invoke-static {v2}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "Calling onBackPressed via onBackPressed callback"

    nop

    :cond_10
    iget-object v0, v0, Lˑʼ/ʿ;->ᵎﹶ:Lʽ/ʽﹳ;

    invoke-virtual {v0}, Lʽ/ʽﹳ;->ﹳٴ()V

    return-void

    :cond_11
    iget-object v0, p0, Lʽ/ʽﹳ;->ﹳٴ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
