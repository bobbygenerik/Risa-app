.class public final Lﹶˈ/ⁱˊ;
.super Lˊʼ/ⁱˊ;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic ˈٴ:Lﹶˈ/ˈ;


# direct methods
.method public constructor <init>(Lﹶˈ/ˈ;I)V
    .locals 3

    .prologue
    iput-object p1, p0, Lﹶˈ/ⁱˊ;->ˈٴ:Lﹶˈ/ˈ;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lˊʼ/ⁱˊ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lﹶˈ/ﹳٴ;->ﹳٴ()I

    move-result p1

    if-ltz p2, :cond_0

    if-gt p2, p1, :cond_0

    iput p2, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {p2, p1, v1, v2}, Landroid/support/v4/media/session/ﹳٴ;->ٴﹶ(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lﹶˈ/ⁱˊ;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    iget-object v1, p0, Lﹶˈ/ⁱˊ;->ˈٴ:Lﹶˈ/ˈ;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
