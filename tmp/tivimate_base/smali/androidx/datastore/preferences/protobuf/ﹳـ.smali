.class public final Landroidx/datastore/preferences/protobuf/ﹳـ;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# static fields
.field public static final synthetic ˊʻ:I


# instance fields
.field public ʽʽ:Z

.field public ʾˋ:Ljava/util/List;

.field public volatile ˈٴ:Landroidx/datastore/preferences/protobuf/ˉـ;

.field public ᴵˊ:Ljava/util/Map;

.field public ᴵᵔ:Ljava/util/Map;


# direct methods
.method public static ﾞᴵ()Landroidx/datastore/preferences/protobuf/ﹳـ;
    .locals 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-direct {v0}, Ljava/util/AbstractMap;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵᵔ:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ⁱˊ()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ﹳٴ(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˉـ;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/ˉـ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/protobuf/ˉـ;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˉـ;

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˈٴ:Landroidx/datastore/preferences/protobuf/ˉـ;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/ﹳـ;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Landroidx/datastore/preferences/protobuf/ﹳـ;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast v0, Ljava/util/AbstractSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽ(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽ(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eq v1, v0, :cond_6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ﹳٴ(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ˈⁱ;->ᴵˊ:Ljava/lang/Object;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ˈⁱ;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0

    :cond_1
    return v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᵎﹶ(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ⁱˊ()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ﹳٴ(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᵔᵢ(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final ʽ(I)Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public final ˈ()Ljava/util/Set;
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()Ljava/util/SortedMap;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ⁱˊ()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵᵔ:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public final ᵎﹶ(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ⁱˊ()V

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ﹳٴ(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ˈⁱ;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ⁱˊ()V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˑﹳ()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    const/16 v2, 0xf

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˑﹳ()Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, v1, Landroidx/datastore/preferences/protobuf/ˈⁱ;->ʾˋ:Ljava/lang/Comparable;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/ˈⁱ;->ᴵˊ:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    new-instance v2, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    invoke-direct {v2, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/ˈⁱ;-><init>(Landroidx/datastore/preferences/protobuf/ﹳـ;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final ᵔᵢ(I)Ljava/lang/Object;
    .locals 5

    .prologue
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ⁱˊ()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/ˈⁱ;->ᴵˊ:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ᴵˊ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ﹳـ;->ˑﹳ()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    new-instance v2, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p0, v4, v3}, Landroidx/datastore/preferences/protobuf/ˈⁱ;-><init>(Landroidx/datastore/preferences/protobuf/ﹳـ;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1
.end method

.method public final ⁱˊ()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʽʽ:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final ﹳٴ(Ljava/lang/Comparable;)I
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/ˈⁱ;->ʾˋ:Ljava/lang/Comparable;

    invoke-interface {p1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    neg-int p1, v0

    return p1

    :cond_0
    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_4

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/ﹳـ;->ʾˋ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˈⁱ;

    iget-object v3, v3, Landroidx/datastore/preferences/protobuf/ˈⁱ;->ʾˋ:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
