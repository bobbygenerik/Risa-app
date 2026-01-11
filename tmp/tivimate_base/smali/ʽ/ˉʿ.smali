.class public final Lʽ/ˉʿ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# instance fields
.field public final synthetic ʽʽ:Lʽ/ʽﹳ;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lʽ/ʽﹳ;I)V
    .locals 0

    iput p2, p0, Lʽ/ˉʿ;->ᴵˊ:I

    iput-object p1, p0, Lʽ/ˉʿ;->ʽʽ:Lʽ/ʽﹳ;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    iget v0, p0, Lʽ/ˉʿ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lʽ/ⁱˊ;

    iget-object v0, p0, Lʽ/ˉʿ;->ʽʽ:Lʽ/ʽﹳ;

    iget-object v1, v0, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    if-nez v1, :cond_2

    iget-object v0, v0, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->ﹳٴ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lˑʼ/ᵔٴ;

    iget-boolean v2, v2, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lˑʼ/ᵔٴ;

    :cond_2
    if-eqz v1, :cond_8

    iget-object v0, v1, Lˑʼ/ᵔٴ;->ˈ:Lˑʼ/ʿ;

    const/4 v1, 0x2

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v2

    const-string v3, "FragmentManager"

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_3
    iget-object v2, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lˑʼ/ʿ;->ᵔᵢ:Lˑʼ/ﹳٴ;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v4, v5}, Lˑʼ/ʿ;->ﾞᴵ(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˑʼ/ᵔﹳ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Processing Progress "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Lʽ/ⁱˊ;->ʽ:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    nop

    :cond_5
    iget-object v5, v5, Lˑʼ/ᵔﹳ;->ʽ:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_6

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lˑʼ/ʽᵔ;

    iget-object v9, v9, Lˑʼ/ʽᵔ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-static {v9, v6}, Lﹶˈ/ˆʾ;->ᴵʼ(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_1

    :cond_6
    invoke-static {v6}, Lﹶˈ/ˆʾ;->ᐧˎ(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_4

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lˑʼ/ـᵎ;

    invoke-virtual {v8, p1}, Lˑʼ/ـᵎ;->ˈ(Lʽ/ⁱˊ;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, v0, Lˑʼ/ʿ;->ˉˆ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v4, v0, :cond_8

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lˉˑ/ʽ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_8
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_0
    check-cast p1, Lʽ/ⁱˊ;

    iget-object p1, p0, Lʽ/ˉʿ;->ʽʽ:Lʽ/ʽﹳ;

    iget-object v0, p1, Lʽ/ʽﹳ;->ⁱˊ:Lﹶˈ/ᵔᵢ;

    invoke-virtual {v0}, Lﹶˈ/ᵔᵢ;->ﹳٴ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lˑʼ/ᵔٴ;

    iget-boolean v2, v2, Lˑʼ/ᵔٴ;->ﹳٴ:Z

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    check-cast v1, Lˑʼ/ᵔٴ;

    iput-object v1, p1, Lʽ/ʽﹳ;->ʽ:Lˑʼ/ᵔٴ;

    if-eqz v1, :cond_c

    iget-object p1, v1, Lˑʼ/ᵔٴ;->ˈ:Lˑʼ/ʿ;

    const/4 v0, 0x3

    invoke-static {v0}, Lˑʼ/ʿ;->ᵔٴ(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    nop

    :cond_b
    invoke-virtual {p1}, Lˑʼ/ʿ;->ʾᵎ()V

    new-instance v0, Lˑʼ/ˉـ;

    invoke-direct {v0, p1}, Lˑʼ/ˉـ;-><init>(Lˑʼ/ʿ;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lˑʼ/ʿ;->ʼʼ(Lˑʼ/ˈⁱ;Z)V

    :cond_c
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
