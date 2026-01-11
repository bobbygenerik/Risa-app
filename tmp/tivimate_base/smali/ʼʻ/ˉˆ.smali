.class public abstract Lʼʻ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient ʽʽ:Ljava/util/Map;

.field public transient ʾˋ:Ljava/util/Set;

.field public transient ᴵˊ:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lʼʻ/ˉˆ;

    if-eqz v0, :cond_1

    check-cast p1, Lʼʻ/ˉˆ;

    invoke-virtual {p0}, Lʼʻ/ˉˆ;->ﹳٴ()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lʼʻ/ˉˆ;->ﹳٴ()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ˉˆ;->ﹳٴ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ˉˆ;->ﹳٴ()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ⁱˊ(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʼʻ/ˉˆ;->ﹳٴ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract ﹳٴ()Ljava/util/Map;
.end method
