.class public final Lʼʻ/ٴᵢ;
.super Lʼʻ/ٴﹳ;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final ʽʽ:Lʼʻ/ᵎⁱ;

.field public final ʾˋ:I

.field public ᴵˊ:I


# direct methods
.method public constructor <init>(Lʼʻ/ᵎⁱ;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/י;->ʼˎ(II)V

    iput v0, p0, Lʼʻ/ٴᵢ;->ʾˋ:I

    iput p2, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    iput-object p1, p0, Lʼʻ/ٴᵢ;->ʽʽ:Lʼʻ/ᵎⁱ;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    iget v1, p0, Lʼʻ/ٴᵢ;->ʾˋ:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    iget v0, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lʼʻ/ٴᵢ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    invoke-virtual {p0, v0}, Lʼʻ/ٴᵢ;->ﹳٴ(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lʼʻ/ٴᵢ;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    invoke-virtual {p0, v0}, Lʼʻ/ٴᵢ;->ﹳٴ(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lʼʻ/ٴᵢ;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final ﹳٴ(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lʼʻ/ٴᵢ;->ʽʽ:Lʼʻ/ᵎⁱ;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
