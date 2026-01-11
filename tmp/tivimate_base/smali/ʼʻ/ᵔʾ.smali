.class public final Lʼʻ/ᵔʾ;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    iput p1, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    iput-object p2, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method public constructor <init>(Lʼʻ/ˈ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    invoke-virtual {v0}, Lʼʻ/ˈ;->clear()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ʻٴ;

    invoke-virtual {v0}, Lʼʻ/ʻٴ;->clear()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ᴵˑ;

    invoke-virtual {v0}, Lʼʻ/ᴵˑ;->ʽ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ᴵˑ;

    invoke-virtual {v0, p1}, Lʼʻ/ˉˆ;->ⁱˊ(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    invoke-virtual {v0}, Lʼʻ/ˈ;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lʼʻ/ﹳـ;

    invoke-direct {v1, v0}, Lʼʻ/ˑʼ;-><init>(Ljava/util/Iterator;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ʻٴ;

    invoke-virtual {v0}, Lʼʻ/ʻٴ;->ʽ()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lʼʻ/יـ;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lʼʻ/יـ;-><init>(Lʼʻ/ʻٴ;I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ᴵˑ;

    new-instance v1, Lʼʻ/ﹳٴ;

    invoke-direct {v1, v0}, Lʼʻ/ﹳٴ;-><init>(Lʼʻ/ᴵˑ;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lʼʻ/ˈ;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lʼʻ/ˈ;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lʼʻ/ˈ;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lʼʻ/ˈ;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .prologue
    iget v0, p0, Lʼʻ/ᵔʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ˈ;

    iget-object v0, v0, Lʼʻ/ˈ;->ʽʽ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ʻٴ;

    invoke-virtual {v0}, Lʼʻ/ʻٴ;->size()I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lʼʻ/ᵔʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼʻ/ᴵˑ;

    iget v0, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
