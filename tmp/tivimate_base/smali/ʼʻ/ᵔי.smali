.class public abstract Lʼʻ/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# instance fields
.field public transient ʽʽ:Lʼʻ/ˏᵢ;

.field public transient ʾˋ:Lʼʻ/ᐧﾞ;

.field public transient ᴵˊ:Lʼʻ/ᐧᴵ;


# direct methods
.method public static ﹳٴ(Ljava/util/Map;)Lʼʻ/ᵔי;
    .locals 2

    .prologue
    instance-of v0, p0, Lʼʻ/ᵔי;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_0

    check-cast p0, Lʼʻ/ᵔי;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lˉˆ/ٴᴵ;->ʾᵎ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/play_billing/ʽﹳ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ᵢˏ(Ljava/lang/Iterable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/ʽﹳ;->ˑﹳ()Lʼʻ/ᴵʼ;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

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

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .prologue
    invoke-virtual {p0, p1}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ᵔי;->ˈ()Lʼʻ/ˈٴ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lʼʻ/ˈٴ;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ᵔי;->ⁱˊ()Lʼʻ/ᵔٴ;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lʼʻ/ﹳᐧ;->ﾞᴵ(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    invoke-virtual {p0, p1}, Lʼʻ/ᵔי;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ᵔי;->ⁱˊ()Lʼʻ/ᵔٴ;

    move-result-object v0

    invoke-static {v0}, Lʼʻ/ﹳᐧ;->ٴﹶ(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    move-object v0, p0

    check-cast v0, Lʼʻ/ᴵʼ;

    invoke-virtual {v0}, Lʼʻ/ᴵʼ;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ᵔי;->ʽ()Lʼʻ/ᵔٴ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/util/Map$-CC;->$default$merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    move-object v0, p0

    check-cast v0, Lʼʻ/ᴵʼ;

    const-string v1, "size"

    iget v0, v0, Lʼʻ/ᴵʼ;->ˊʻ:I

    invoke-static {v0, v1}, Lʼʻ/ﹳᐧ;->ˈ(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-long v2, v0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lʼʻ/ᵔי;->ⁱˊ()Lʼʻ/ᵔٴ;

    move-result-object v0

    check-cast v0, Lʼʻ/ᐧﾞ;

    invoke-virtual {v0}, Lʼʻ/ᐧﾞ;->ᵔᵢ()Lʼʻ/ٴﹳ;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    move-object v3, v0

    check-cast v3, Lʼʻ/ٴᵢ;

    invoke-virtual {v3}, Lʼʻ/ٴᵢ;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ᵔי;->ˈ()Lʼʻ/ˈٴ;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Lʼʻ/ᵔٴ;
    .locals 5

    .prologue
    iget-object v0, p0, Lʼʻ/ᵔי;->ᴵˊ:Lʼʻ/ᐧᴵ;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lʼʻ/ᴵʼ;

    new-instance v1, Lʼʻ/ˏᵢ;

    const/4 v2, 0x0

    iget v3, v0, Lʼʻ/ᴵʼ;->ˊʻ:I

    iget-object v4, v0, Lʼʻ/ᴵʼ;->ᴵᵔ:[Ljava/lang/Object;

    invoke-direct {v1, v4, v2, v3}, Lʼʻ/ˏᵢ;-><init>([Ljava/lang/Object;II)V

    new-instance v2, Lʼʻ/ᐧᴵ;

    invoke-direct {v2, v0, v1}, Lʼʻ/ᐧᴵ;-><init>(Lʼʻ/ᵔי;Lʼʻ/ˏᵢ;)V

    iput-object v2, p0, Lʼʻ/ᵔי;->ᴵˊ:Lʼʻ/ᐧᴵ;

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final ˈ()Lʼʻ/ˈٴ;
    .locals 4

    .prologue
    iget-object v0, p0, Lʼʻ/ᵔי;->ʽʽ:Lʼʻ/ˏᵢ;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lʼʻ/ᴵʼ;

    new-instance v1, Lʼʻ/ˏᵢ;

    const/4 v2, 0x1

    iget v3, v0, Lʼʻ/ᴵʼ;->ˊʻ:I

    iget-object v0, v0, Lʼʻ/ᴵʼ;->ᴵᵔ:[Ljava/lang/Object;

    invoke-direct {v1, v0, v2, v3}, Lʼʻ/ˏᵢ;-><init>([Ljava/lang/Object;II)V

    iput-object v1, p0, Lʼʻ/ᵔי;->ʽʽ:Lʼʻ/ˏᵢ;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final ⁱˊ()Lʼʻ/ᵔٴ;
    .locals 4

    .prologue
    iget-object v0, p0, Lʼʻ/ᵔי;->ʾˋ:Lʼʻ/ᐧﾞ;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lʼʻ/ᴵʼ;

    new-instance v1, Lʼʻ/ᐧﾞ;

    iget-object v2, v0, Lʼʻ/ᴵʼ;->ᴵᵔ:[Ljava/lang/Object;

    iget v3, v0, Lʼʻ/ᴵʼ;->ˊʻ:I

    invoke-direct {v1, v0, v2, v3}, Lʼʻ/ᐧﾞ;-><init>(Lʼʻ/ᵔי;[Ljava/lang/Object;I)V

    iput-object v1, p0, Lʼʻ/ᵔי;->ʾˋ:Lʼʻ/ᐧﾞ;

    return-object v1

    :cond_0
    return-object v0
.end method
