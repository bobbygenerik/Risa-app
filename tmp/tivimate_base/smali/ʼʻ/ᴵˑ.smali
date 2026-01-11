.class public final Lʼʻ/ᴵˑ;
.super Lʼʻ/ˉˆ;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient ˈٴ:Ljava/util/Map;

.field public transient ˊʻ:Lʼʻ/ˈⁱ;

.field public transient ᴵᵔ:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final ʽ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    return-void
.end method

.method public final ˈ()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lʼʻ/ᴵˑ;->ˊʻ:Lʼʻ/ˈⁱ;

    invoke-virtual {v0}, Lʼʻ/ˈⁱ;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final ﹳٴ()Ljava/util/Map;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼʻ/ˉˆ;->ʽʽ:Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p0, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lʼʻ/ﾞᴵ;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lʼʻ/ﾞᴵ;-><init>(Lʼʻ/ᴵˑ;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lʼʻ/ʼˎ;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lʼʻ/ʼˎ;-><init>(Lʼʻ/ᴵˑ;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lʼʻ/ˈ;

    invoke-direct {v1, p0, v0}, Lʼʻ/ˈ;-><init>(Lʼʻ/ᴵˑ;Ljava/util/Map;)V

    :goto_0
    iput-object v1, p0, Lʼʻ/ˉˆ;->ʽʽ:Ljava/util/Map;

    return-object v1

    :cond_2
    return-object v0
.end method
