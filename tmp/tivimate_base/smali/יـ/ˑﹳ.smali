.class public Lיـ/ˑﹳ;
.super Lיـ/ﹳᐧ;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Lj$/util/Map;


# instance fields
.field public ˈٴ:Landroidx/datastore/preferences/protobuf/ˉـ;

.field public ˊʻ:Lיـ/ˈ;

.field public ᴵᵔ:Lיـ/ⁱˊ;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lיـ/ﹳᐧ;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lיـ/ˑﹳ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lיـ/ﹳᐧ;-><init>(I)V

    invoke-virtual {p0, p1}, Lיـ/ﹳᐧ;->ᵎﹶ(Lיـ/ˑﹳ;)V

    return-void
.end method


# virtual methods
.method public synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    iget-object v0, p0, Lיـ/ˑﹳ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˉـ;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/ˉـ;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/protobuf/ˉـ;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Lיـ/ˑﹳ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˉـ;

    :cond_0
    return-object v0
.end method

.method public synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .prologue
    iget-object v0, p0, Lיـ/ˑﹳ;->ᴵᵔ:Lיـ/ⁱˊ;

    if-nez v0, :cond_0

    new-instance v0, Lיـ/ⁱˊ;

    invoke-direct {v0, p0}, Lיـ/ⁱˊ;-><init>(Lיـ/ˑﹳ;)V

    iput-object v0, p0, Lיـ/ˑﹳ;->ᴵᵔ:Lיـ/ⁱˊ;

    :cond_0
    return-object v0
.end method

.method public synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/util/Map$-CC;->$default$merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    .prologue
    iget v0, p0, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lיـ/ﹳᐧ;->ⁱˊ(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    iget-object v0, p0, Lיـ/ˑﹳ;->ˊʻ:Lיـ/ˈ;

    if-nez v0, :cond_0

    new-instance v0, Lיـ/ˈ;

    invoke-direct {v0, p0}, Lיـ/ˈ;-><init>(Lיـ/ˑﹳ;)V

    iput-object v0, p0, Lיـ/ˑﹳ;->ˊʻ:Lיـ/ˈ;

    :cond_0
    return-object v0
.end method

.method public final ˉʿ(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    iget v0, p0, Lיـ/ﹳᐧ;->ʽʽ:I

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lיـ/ﹳᐧ;->ﾞᴵ(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lיـ/ﹳᐧ;->ᵔᵢ(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lיـ/ﹳᐧ;->ʽʽ:I

    if-eq v0, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final ٴﹶ(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lיـ/ﹳᐧ;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final ﾞʻ(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    iget v0, p0, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v1}, Lיـ/ﹳᐧ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget p1, p0, Lיـ/ﹳᐧ;->ʽʽ:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
