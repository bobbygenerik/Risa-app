.class public final Lٴʽ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʽ/ʼˎ;


# instance fields
.field public final ʾˋ:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lʾˎ/ˑﹳ;

    invoke-interface {v3}, Lٴʽ/ʼˎ;->ʽ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˆʾ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lʾˎ/ˑﹳ;

    invoke-interface {v3}, Lٴʽ/ʼˎ;->ˆʾ()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ٴﹶ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lٴʽ/ˏי;->ʾˋ:Ljava/util/Set;

    invoke-static {v0}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lʾˎ/ˑﹳ;

    invoke-interface {v3}, Lٴʽ/ʼˎ;->ٴﹶ()V

    goto :goto_0

    :cond_0
    return-void
.end method
