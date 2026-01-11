.class public final Lcom/google/android/gms/internal/measurement/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/ᵔʾ;
.implements Lcom/google/android/gms/internal/measurement/ˆʾ;


# instance fields
.field public final ʾˋ:Ljava/util/TreeMap;

.field public final ᴵˊ:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ᴵˊ:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/ˈ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/ʼᐧ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/measurement/ʼᐧ;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˏי(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʼˎ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ᴵˊ:Ljava/util/TreeMap;

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V
    .locals 2

    .prologue
    const/16 v0, 0x7ed4

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x15

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Out of bounds index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Array too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 5

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/ˆʾ;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final ˈ(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 2

    .prologue
    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ˈ;->ˑﹳ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ᴵˊ:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1
.end method

.method public final ˉʿ()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final ˏי(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-nez p1, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    move-object v3, p1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v3, v4, Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    if-nez v3, :cond_1

    instance-of v3, v4, Lcom/google/android/gms/internal/measurement/ﾞʻ;

    if-nez v3, :cond_1

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final ˑﹳ(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ᴵˊ:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

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

.method public final יـ(I)V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-ltz p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    if-eqz v2, :cond_1

    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final ٴﹶ()Ljava/util/List;
    .locals 3

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ᵎﹶ()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˏי(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔﹳ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Attempting to get element outside of current array"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔᵢ(Ljava/lang/String;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 37

    .prologue
    move-object/from16 v1, p1

    const-string v4, "concat"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "unshift"

    const-string v7, "toString"

    const-string v8, "splice"

    const-string v9, "sort"

    const-string v10, "some"

    const-string v11, "slice"

    const-string v12, "shift"

    const-string v13, "reverse"

    const-string v14, "reduceRight"

    const-string v15, "reduce"

    move/from16 v16, v5

    const-string v5, "push"

    move-object/from16 v17, v4

    const-string v4, "pop"

    const-string v0, "map"

    const-string v2, "lastIndexOf"

    const-string v3, "join"

    move-object/from16 v18, v6

    const-string v6, "indexOf"

    move-object/from16 v19, v7

    const-string v7, "forEach"

    move-object/from16 v20, v8

    const-string v8, "filter"

    move-object/from16 v21, v9

    const-string v9, "every"

    if-nez v16, :cond_4

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v16, v8

    move-object/from16 v8, v21

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v19, v15

    move-object/from16 v15, v18

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v22, v2

    move-object/from16 v18, v7

    move-object/from16 v23, v15

    move-object/from16 v7, p0

    move-object/from16 v2, p2

    :goto_0
    move-object/from16 v15, p3

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/media/session/ﹳٴ;->ـˆ(Lcom/google/android/gms/internal/measurement/ˆʾ;Lcom/google/android/gms/internal/measurement/ᵔﹳ;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v22, v2

    move-object/from16 v19, v15

    :goto_1
    move-object/from16 v23, v18

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v18, v7

    move-object/from16 v7, p0

    goto :goto_2

    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v20, v15

    goto :goto_1

    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v21, v15

    goto :goto_1

    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v16, v8

    move-object/from16 v23, v18

    move-object/from16 v8, v21

    move-object/from16 v2, p2

    move-object/from16 v18, v7

    move-object/from16 v21, v15

    move-object/from16 v7, p0

    goto :goto_0

    :goto_2
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v24

    move-object/from16 v25, v4

    const-string v4, ","

    move-object/from16 v28, v4

    iget-object v4, v7, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    sget-object v31, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    move-object/from16 v32, v4

    const-string v4, "Callback should be a method"

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    const-wide/16 v35, 0x0

    const/4 v3, 0x0

    sparse-switch v24, :sswitch_data_0

    goto/16 :goto_20

    :sswitch_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x2

    invoke-static {v6, v1, v15}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v3, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v31

    :cond_5
    move-object/from16 v1, v31

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v4, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v1

    :cond_6
    cmpg-double v4, v2, v35

    if-gez v4, :cond_7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v4

    int-to-double v4, v4

    add-double v3, v4, v2

    goto :goto_3

    :cond_7
    move-wide v3, v2

    goto :goto_3

    :cond_8
    move-wide/from16 v3, v35

    :goto_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ﾞʻ()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v8, v5

    cmpg-double v6, v8, v3

    if-ltz v6, :cond_9

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v5

    invoke-static {v5, v1}, Lˉᵎ/ⁱˊ;->ﹳـ(Lcom/google/android/gms/internal/measurement/ᵔʾ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v1

    :sswitch_1
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    invoke-static {v1, v13, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v4, 0x0

    :goto_4
    div-int/lit8 v1, v0, 0x2

    if-ge v4, v1, :cond_17

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔﹳ(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-virtual {v7, v4, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v4

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔﹳ(I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    :cond_b
    invoke-virtual {v7, v2, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :sswitch_2
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v1, 0x0

    invoke-static {v7, v2, v15, v1}, Lˈˊ/ˉˆ;->ᵎˊ(Lcom/google/android/gms/internal/measurement/ˈ;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    return-object v0

    :sswitch_3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v1, 0x2

    invoke-static {v11, v1, v15}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    int-to-double v0, v0

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v4, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v3

    cmpg-double v5, v3, v35

    if-gez v5, :cond_e

    add-double/2addr v3, v0

    move-wide/from16 v5, v35

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    goto :goto_5

    :cond_e
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v6, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmpg-double v2, v5, v8

    if-gez v2, :cond_f

    add-double/2addr v0, v5

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_6

    :cond_f
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :cond_10
    :goto_6
    new-instance v2, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    double-to-int v3, v3

    :goto_7
    int-to-double v4, v3

    cmpg-double v4, v4, v0

    if-gez v4, :cond_11

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    return-object v2

    :sswitch_4
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v3, 0x0

    invoke-static {v3, v12, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_16

    :cond_12
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->יـ(I)V

    return-object v0

    :sswitch_5
    const/4 v3, 0x0

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v4, 0x1

    invoke-static {v4, v9, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    if-eqz v1, :cond_14

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_a

    :cond_13
    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v2, v0, v1, v3}, Lˈˊ/ˉˆ;->ᵔי(Lcom/google/android/gms/internal/measurement/ˈ;Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ˉʿ;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/ˈ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    if-eq v0, v1, :cond_1a

    goto/16 :goto_b

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v4, v34

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v4, 0x1

    invoke-static {v8, v4, v15}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ٴﹶ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    if-eqz v3, :cond_15

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should be a method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_8
    new-instance v1, Lcom/google/android/gms/internal/measurement/ʽﹳ;

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/measurement/ʽﹳ;-><init>(Lcom/google/android/gms/internal/measurement/ᵔᵢ;Lˏˆ/ﹳٴ;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {v32 .. v32}, Ljava/util/TreeMap;->clear()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v2, v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v7, v4, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    move v4, v5

    goto :goto_9

    :cond_17
    return-object v7

    :sswitch_7
    move-object/from16 v4, v34

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v5, 0x1

    invoke-static {v5, v10, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    if-eqz v1, :cond_1c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    if-nez v1, :cond_18

    goto :goto_b

    :cond_18
    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔᵢ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ﾞʻ()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔﹳ(I)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v4

    int-to-double v5, v3

    new-instance v3, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/ᵔʾ;

    const/16 v29, 0x0

    aput-object v4, v5, v29

    const/16 v30, 0x1

    aput-object v3, v5, v30

    const/16 v27, 0x2

    aput-object v7, v5, v27

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;->ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_1a
    :goto_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ˑﹳ;

    return-object v0

    :cond_1b
    :goto_b
    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ:Lcom/google/android/gms/internal/measurement/ˑﹳ;

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v0, :cond_1d

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v3, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v3

    invoke-virtual {v7, v3, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_c

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v0

    :sswitch_9
    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v4, 0x1

    invoke-static {v0, v4, v15}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵔᵢ:Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    return-object v0

    :cond_1e
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ﾞʻ;

    if-nez v1, :cond_20

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    if-eqz v1, :cond_1f

    goto :goto_d

    :cond_1f
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_20
    :goto_d
    const-string v4, ""

    goto :goto_e

    :cond_21
    move-object/from16 v4, v28

    :goto_e
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/ˈ;->ˏי(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_a
    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    invoke-static {v1, v0, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_16

    :cond_22
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->יـ(I)V

    return-object v1

    :sswitch_b
    move-object/from16 v0, v26

    move-object/from16 v4, v34

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v5, 0x1

    invoke-static {v5, v0, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    if-eqz v1, :cond_24

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    if-nez v1, :cond_23

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    return-object v0

    :cond_23
    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    invoke-static {v7, v2, v0, v3, v3}, Lˈˊ/ˉˆ;->ᵔי(Lcom/google/android/gms/internal/measurement/ˈ;Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ˉʿ;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/ˈ;

    move-result-object v0

    return-object v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_26

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v5, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    instance-of v5, v3, Lcom/google/android/gms/internal/measurement/ﾞᴵ;

    if-nez v5, :cond_25

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_f

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument evaluation failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ﾞʻ()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_10

    :cond_27
    invoke-virtual/range {v32 .. v32}, Ljava/util/TreeMap;->clear()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ﾞʻ()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_11

    :cond_28
    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v0

    :sswitch_d
    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x2

    invoke-static {v3, v1, v15}, Lˉᵎ/ⁱˊ;->ˊˋ(Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v3, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v31

    :cond_29
    move-object/from16 v1, v31

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2b

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v4, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    :goto_12
    const-wide/16 v35, 0x0

    goto :goto_13

    :cond_2a
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v2

    goto :goto_12

    :goto_13
    cmpg-double v4, v2, v35

    if-gez v4, :cond_2c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_14

    :cond_2b
    const-wide/16 v35, 0x0

    int-to-double v2, v3

    :cond_2c
    :goto_14
    cmpg-double v4, v2, v35

    if-gez v4, :cond_2d

    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v1

    :cond_2d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_15
    if-ltz v2, :cond_2f

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔﹳ(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-static {v3, v1}, Lˉᵎ/ⁱˊ;->ﹳـ(Lcom/google/android/gms/internal/measurement/ᵔʾ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Z

    move-result v3

    if-eqz v3, :cond_2e

    int-to-double v0, v2

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v2

    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_2f
    new-instance v1, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object v1

    :sswitch_e
    move-object/from16 v0, v18

    move-object/from16 v4, v34

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v5, 0x1

    invoke-static {v5, v0, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    if-eqz v1, :cond_31

    invoke-virtual/range {v32 .. v32}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_30

    :goto_16
    return-object v31

    :cond_30
    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    invoke-static {v7, v2, v0, v3, v3}, Lˈˊ/ˉˆ;->ᵔי(Lcom/google/android/gms/internal/measurement/ˈ;Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ˉʿ;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/ˈ;

    return-object v31

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_f
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    return-object v0

    :cond_32
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    iget-object v4, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-gez v0, :cond_33

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v0, v1

    goto :goto_17

    :cond_33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    if-le v0, v1, :cond_34

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v0

    :cond_34
    :goto_17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v1

    new-instance v5, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_3b

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lˉᵎ/ⁱˊ;->ᴵˑ(D)D

    move-result-wide v8

    double-to-int v3, v8

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v3, :cond_35

    move v6, v0

    :goto_18
    add-int v8, v0, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v6, v8, :cond_35

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v9

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->יـ(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_35
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x2

    if-le v1, v6, :cond_3c

    :goto_19
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3c

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/ﾞᴵ;

    if-nez v3, :cond_3a

    add-int v3, v0, v6

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_39

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v8

    if-lt v3, v8, :cond_36

    invoke-virtual {v7, v3, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    move-object/from16 v10, v32

    goto :goto_1b

    :cond_36
    invoke-virtual/range {v32 .. v32}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_1a
    if-lt v8, v3, :cond_38

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v10, v32

    invoke-virtual {v10, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    if-eqz v11, :cond_37

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v7, v12, v11}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    invoke-virtual {v10, v9}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v32, v10

    goto :goto_1a

    :cond_38
    move-object/from16 v10, v32

    invoke-virtual {v7, v3, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v32, v10

    goto :goto_19

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x15

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid value index: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse elements to add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :goto_1c
    if-ge v0, v1, :cond_3c

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v4

    invoke-virtual {v5, v4, v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    invoke-virtual {v7, v0, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_3c
    return-object v5

    :sswitch_10
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v5, 0x1

    invoke-static {v7, v2, v15, v5}, Lˈˊ/ˉˆ;->ᵎˊ(Lcom/google/android/gms/internal/measurement/ˈ;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;Z)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    return-object v0

    :sswitch_11
    move-object/from16 v0, v16

    move-object/from16 v10, v32

    move-object/from16 v4, v34

    const/4 v5, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {v5, v0, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v1, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    if-eqz v1, :cond_3f

    invoke-virtual {v10}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_3d

    new-instance v0, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    return-object v0

    :cond_3d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˈ;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˉʿ;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v2, v0, v3, v4}, Lˈˊ/ˉˆ;->ᵔי(Lcom/google/android/gms/internal/measurement/ˈ;Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ˉʿ;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/ˈ;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/ˈ;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ﾞʻ()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_1d

    :cond_3e
    return-object v2

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_12
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/ˈ;->ˆʾ()Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :cond_40
    :goto_1e
    if-ge v4, v1, :cond_43

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v5, v2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    instance-of v5, v3, Lcom/google/android/gms/internal/measurement/ﾞᴵ;

    if-nez v5, :cond_42

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ˉʿ()I

    move-result v5

    instance-of v6, v3, Lcom/google/android/gms/internal/measurement/ˈ;

    if-eqz v6, :cond_41

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˈ;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ﾞʻ()Ljava/util/Iterator;

    move-result-object v6

    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_1f

    :cond_41
    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/internal/measurement/ˈ;->ʼᐧ(ILcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_1e

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed evaluation of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    return-object v0

    :sswitch_13
    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x0

    invoke-static {v1, v0, v15}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    move-object/from16 v1, v28

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/measurement/ˈ;->ˏי(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_44
    :goto_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ᵔﹳ(I)Z
    .locals 3

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x15

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Out of bounds index: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ⁱˊ()Ljava/lang/Double;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/ˈ;->ᵔʾ(I)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final ﾞʻ()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final ﾞᴵ()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ʾˋ:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˈ;->ᴵˊ:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/ʽ;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ʽ;-><init>(Lcom/google/android/gms/internal/measurement/ˈ;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method
