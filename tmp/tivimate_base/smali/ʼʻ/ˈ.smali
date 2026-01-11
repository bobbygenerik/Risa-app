.class public Lʼʻ/ˈ;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public final transient ʽʽ:Ljava/util/Map;

.field public transient ʾˋ:Lʼʻ/ⁱˊ;

.field public final synthetic ˈٴ:Lʼʻ/ᴵˑ;

.field public transient ᴵˊ:Lʼʻ/ᵔʾ;


# direct methods
.method public constructor <init>(Lʼʻ/ᴵˑ;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lʼʻ/ˈ;->ˈٴ:Lʼʻ/ᴵˑ;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p2, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼʻ/ˈ;->ˈٴ:Lʼʻ/ᴵˑ;

    iget-object v1, v0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    iget-object v2, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lʼʻ/ᴵˑ;->ʽ()V

    return-void

    :cond_0
    new-instance v0, Lʼʻ/ʽ;

    invoke-direct {v0, p0}, Lʼʻ/ʽ;-><init>(Lʼʻ/ˈ;)V

    :goto_0
    invoke-virtual {v0}, Lʼʻ/ʽ;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lʼʻ/ʽ;->next()Ljava/lang/Object;

    invoke-virtual {v0}, Lʼʻ/ʽ;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    iget-object v0, p0, Lʼʻ/ˈ;->ʾˋ:Lʼʻ/ⁱˊ;

    if-nez v0, :cond_0

    new-instance v0, Lʼʻ/ⁱˊ;

    invoke-direct {v0, p0}, Lʼʻ/ⁱˊ;-><init>(Lʼʻ/ˈ;)V

    iput-object v0, p0, Lʼʻ/ˈ;->ʾˋ:Lʼʻ/ⁱˊ;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-eq p0, p1, :cond_1

    iget-object v0, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

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

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    check-cast v0, Ljava/util/List;

    instance-of v2, v0, Ljava/util/RandomAccess;

    iget-object v3, p0, Lʼʻ/ˈ;->ˈٴ:Lʼʻ/ᴵˑ;

    if-eqz v2, :cond_1

    new-instance v2, Lʼʻ/ᵔᵢ;

    invoke-direct {v2, v3, p1, v0, v1}, Lʼʻ/ﾞʻ;-><init>(Lʼʻ/ᴵˑ;Ljava/lang/Object;Ljava/util/List;Lʼʻ/ﾞʻ;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lʼʻ/ﾞʻ;

    invoke-direct {v2, v3, p1, v0, v1}, Lʼʻ/ﾞʻ;-><init>(Lʼʻ/ᴵˑ;Ljava/lang/Object;Ljava/util/List;Lʼʻ/ﾞʻ;)V

    goto :goto_1

    :goto_2
    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .prologue
    iget-object v0, p0, Lʼʻ/ˈ;->ˈٴ:Lʼʻ/ᴵˑ;

    iget-object v1, v0, Lʼʻ/ˉˆ;->ʾˋ:Ljava/util/Set;

    if-nez v1, :cond_2

    iget-object v1, v0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    instance-of v2, v1, Ljava/util/NavigableMap;

    if-eqz v2, :cond_0

    new-instance v2, Lʼʻ/ᵎﹶ;

    check-cast v1, Ljava/util/NavigableMap;

    invoke-direct {v2, v0, v1}, Lʼʻ/ᵎﹶ;-><init>(Lʼʻ/ᴵˑ;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Ljava/util/SortedMap;

    if-eqz v2, :cond_1

    new-instance v2, Lʼʻ/ˆʾ;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v2, v0, v1}, Lʼʻ/ˆʾ;-><init>(Lʼʻ/ᴵˑ;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lʼʻ/ˑﹳ;

    invoke-direct {v2, v0, v1}, Lʼʻ/ˑﹳ;-><init>(Lʼʻ/ᴵˑ;Ljava/util/Map;)V

    :goto_0
    iput-object v2, v0, Lʼʻ/ˉˆ;->ʾˋ:Ljava/util/Set;

    return-object v2

    :cond_2
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget-object v0, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lʼʻ/ˈ;->ˈٴ:Lʼʻ/ᴵˑ;

    invoke-virtual {v0}, Lʼʻ/ᴵˑ;->ˈ()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    sub-int/2addr v3, v2

    iput v3, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-object v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    iget-object v0, p0, Lʼʻ/ˈ;->ᴵˊ:Lʼʻ/ᵔʾ;

    if-nez v0, :cond_0

    new-instance v0, Lʼʻ/ᵔʾ;

    invoke-direct {v0, p0}, Lʼʻ/ᵔʾ;-><init>(Lʼʻ/ˈ;)V

    iput-object v0, p0, Lʼʻ/ˈ;->ᴵˊ:Lʼʻ/ᵔʾ;

    :cond_0
    return-object v0
.end method

.method public final ﹳٴ(Ljava/util/Map$Entry;)Lʼʻ/ᴵᵔ;
    .locals 4

    .prologue
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    instance-of v1, p1, Ljava/util/RandomAccess;

    iget-object v2, p0, Lʼʻ/ˈ;->ˈٴ:Lʼʻ/ᴵˑ;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lʼʻ/ᵔᵢ;

    invoke-direct {v1, v2, v0, p1, v3}, Lʼʻ/ﾞʻ;-><init>(Lʼʻ/ᴵˑ;Ljava/lang/Object;Ljava/util/List;Lʼʻ/ﾞʻ;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lʼʻ/ﾞʻ;

    invoke-direct {v1, v2, v0, p1, v3}, Lʼʻ/ﾞʻ;-><init>(Lʼʻ/ᴵˑ;Ljava/lang/Object;Ljava/util/List;Lʼʻ/ﾞʻ;)V

    :goto_0
    new-instance p1, Lʼʻ/ᴵᵔ;

    invoke-direct {p1, v0, v1}, Lʼʻ/ᴵᵔ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
