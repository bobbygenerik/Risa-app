.class public Lʼʻ/ﾞʻ;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# instance fields
.field public final ʽʽ:Lʼʻ/ﾞʻ;

.field public final ʾˋ:Ljava/lang/Object;

.field public final ˈٴ:Ljava/util/Collection;

.field public final synthetic ˊʻ:Lʼʻ/ᴵˑ;

.field public ᴵˊ:Ljava/util/Collection;

.field public final synthetic ᴵᵔ:Lʼʻ/ᴵˑ;


# direct methods
.method public constructor <init>(Lʼʻ/ᴵˑ;Ljava/lang/Object;Ljava/util/List;Lʼʻ/ﾞʻ;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lʼʻ/ﾞʻ;->ˊʻ:Lʼʻ/ᴵˑ;

    iput-object p1, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lʼʻ/ﾞʻ;->ʾˋ:Ljava/lang/Object;

    iput-object p3, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    iput-object p4, p0, Lʼʻ/ﾞʻ;->ʽʽ:Lʼʻ/ﾞʻ;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p4, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    :goto_0
    iput-object p1, p0, Lʼʻ/ﾞʻ;->ˈٴ:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lʼʻ/ﾞʻ;->ˊʻ:Lʼʻ/ᴵˑ;

    iget p2, p1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget v2, v1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ﹳٴ()V

    :cond_0
    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3

    .prologue
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->size()I

    move-result v0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    sub-int/2addr p2, v0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ˊʻ:Lʼʻ/ᴵˑ;

    iget v2, v1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/2addr v2, p2

    iput v2, v1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ﹳٴ()V

    :cond_1
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->size()I

    move-result v0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget v3, v2, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/2addr v3, v1

    iput v3, v2, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ﹳٴ()V

    :cond_1
    return p1
.end method

.method public final clear()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget v2, v1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    sub-int/2addr v2, v0

    iput v2, v1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ˈ()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    new-instance v0, Lʼʻ/ʽ;

    invoke-direct {v0, p0}, Lʼʻ/ʽ;-><init>(Lʼʻ/ﾞʻ;)V

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    new-instance v0, Lʼʻ/ٴﹶ;

    invoke-direct {v0, p0}, Lʼʻ/ٴﹶ;-><init>(Lʼʻ/ﾞʻ;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    new-instance v0, Lʼʻ/ٴﹶ;

    invoke-direct {v0, p0, p1}, Lʼʻ/ٴﹶ;-><init>(Lʼʻ/ﾞʻ;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ˊʻ:Lʼʻ/ᴵˑ;

    iget v1, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ˈ()V

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget v1, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ˈ()V

    :cond_0
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->size()I

    move-result v0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget v2, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/2addr v2, v1

    iput v2, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ˈ()V

    :cond_1
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->size()I

    move-result v0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget v2, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/2addr v2, v1

    iput v2, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ˈ()V

    :cond_0
    return p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lʼʻ/ﾞʻ;->ʽʽ:Lʼʻ/ﾞʻ;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    instance-of v0, p1, Ljava/util/RandomAccess;

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ˊʻ:Lʼʻ/ᴵˑ;

    iget-object v2, p0, Lʼʻ/ﾞʻ;->ʾˋ:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Lʼʻ/ᵔᵢ;

    invoke-direct {v0, v1, v2, p1, p2}, Lʼʻ/ﾞʻ;-><init>(Lʼʻ/ᴵˑ;Ljava/lang/Object;Ljava/util/List;Lʼʻ/ﾞʻ;)V

    return-object v0

    :cond_1
    new-instance v0, Lʼʻ/ﾞʻ;

    invoke-direct {v0, v1, v2, p1, p2}, Lʼʻ/ﾞʻ;-><init>(Lʼʻ/ᴵˑ;Ljava/lang/Object;Ljava/util/List;Lʼʻ/ﾞʻ;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼʻ/ﾞʻ;->ʽʽ:Lʼʻ/ﾞʻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʼʻ/ﾞʻ;->ˈ()V

    return-void

    :cond_0
    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget-object v0, v0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ʾˋ:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼʻ/ﾞʻ;->ʽʽ:Lʼʻ/ﾞʻ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lʼʻ/ﾞʻ;->ⁱˊ()V

    iget-object v0, v0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ˈٴ:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget-object v0, v0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ʾˋ:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼʻ/ﾞʻ;->ʽʽ:Lʼʻ/ﾞʻ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lʼʻ/ﾞʻ;->ﹳٴ()V

    return-void

    :cond_0
    iget-object v0, p0, Lʼʻ/ﾞʻ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget-object v0, v0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    iget-object v1, p0, Lʼʻ/ﾞʻ;->ʾˋ:Ljava/lang/Object;

    iget-object v2, p0, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
