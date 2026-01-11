.class public final Lʼʻ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public ʽʽ:Ljava/util/Collection;

.field public final ʾˋ:Ljava/util/Iterator;

.field public ˈٴ:Ljava/util/Iterator;

.field public ᴵˊ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:Lʼʻ/ᴵˑ;


# direct methods
.method public constructor <init>(Lʼʻ/ᴵˑ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼʻ/ﹳٴ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget-object p1, p1, Lʼʻ/ᴵˑ;->ˈٴ:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lʼʻ/ﹳٴ;->ʾˋ:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lʼʻ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object p1, p0, Lʼʻ/ﹳٴ;->ʽʽ:Ljava/util/Collection;

    sget-object p1, Lʼʻ/ˑٴ;->ʾˋ:Lʼʻ/ˑٴ;

    iput-object p1, p0, Lʼʻ/ﹳٴ;->ˈٴ:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lʼʻ/ﹳٴ;->ʾˋ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lʼʻ/ﹳٴ;->ˈٴ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lʼʻ/ﹳٴ;->ˈٴ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lʼʻ/ﹳٴ;->ʾˋ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lʼʻ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lʼʻ/ﹳٴ;->ʽʽ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lʼʻ/ﹳٴ;->ˈٴ:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lʼʻ/ﹳٴ;->ˈٴ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼʻ/ﹳٴ;->ˈٴ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lʼʻ/ﹳٴ;->ʽʽ:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʼʻ/ﹳٴ;->ʾˋ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    iget-object v0, p0, Lʼʻ/ﹳٴ;->ᴵᵔ:Lʼʻ/ᴵˑ;

    iget v1, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    return-void
.end method
