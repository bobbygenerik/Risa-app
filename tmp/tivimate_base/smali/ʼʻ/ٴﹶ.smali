.class public final Lʼʻ/ٴﹶ;
.super Lʼʻ/ʽ;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic ᴵᵔ:Lʼʻ/ﾞʻ;


# direct methods
.method public constructor <init>(Lʼʻ/ﾞʻ;)V
    .locals 0

    iput-object p1, p0, Lʼʻ/ٴﹶ;->ᴵᵔ:Lʼʻ/ﾞʻ;

    invoke-direct {p0, p1}, Lʼʻ/ʽ;-><init>(Lʼʻ/ﾞʻ;)V

    return-void
.end method

.method public constructor <init>(Lʼʻ/ﾞʻ;I)V
    .locals 1

    iput-object p1, p0, Lʼʻ/ٴﹶ;->ᴵᵔ:Lʼʻ/ﾞʻ;

    iget-object v0, p1, Lʼʻ/ﾞʻ;->ᴵˊ:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lʼʻ/ʽ;-><init>(Lʼʻ/ﾞʻ;Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʼʻ/ٴﹶ;->ᴵᵔ:Lʼʻ/ﾞʻ;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    invoke-virtual {p0}, Lʼʻ/ٴﹶ;->ⁱˊ()Ljava/util/ListIterator;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, v0, Lʼʻ/ﾞʻ;->ˊʻ:Lʼʻ/ᴵˑ;

    iget v2, p1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lʼʻ/ᴵˑ;->ᴵᵔ:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lʼʻ/ﾞʻ;->ﹳٴ()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ٴﹶ;->ⁱˊ()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ٴﹶ;->ⁱˊ()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ٴﹶ;->ⁱˊ()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ٴﹶ;->ⁱˊ()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ٴﹶ;->ⁱˊ()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final ⁱˊ()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lʼʻ/ʽ;->ﹳٴ()V

    iget-object v0, p0, Lʼʻ/ʽ;->ᴵˊ:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method
