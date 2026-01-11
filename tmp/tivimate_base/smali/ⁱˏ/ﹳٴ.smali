.class public final Lⁱˏ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public ʽʽ:I

.field public final synthetic ʾˋ:I

.field public ˈٴ:I

.field public ᴵˊ:I

.field public final ᴵᵔ:Lﹶˈ/ˑﹳ;


# direct methods
.method public constructor <init>(Lⁱˏ/ʽ;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    iput p2, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    const/4 p2, -0x1

    iput p2, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    invoke-static {p1}, Lⁱˏ/ʽ;->ˈ(Lⁱˏ/ʽ;)I

    move-result p1

    iput p1, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    return-void
.end method

.method public constructor <init>(Lⁱˏ/ⁱˊ;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    iput p2, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    const/4 p2, -0x1

    iput p2, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    invoke-static {p1}, Lⁱˏ/ⁱˊ;->ˈ(Lⁱˏ/ⁱˊ;)I

    move-result p1

    iput p1, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 3

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ⁱˊ()V

    iget-object v0, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v0, Lⁱˏ/ʽ;

    iget v1, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    invoke-virtual {v0, v1, p1}, Lⁱˏ/ʽ;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    invoke-static {v0}, Lⁱˏ/ʽ;->ˈ(Lⁱˏ/ʽ;)I

    move-result p1

    iput p1, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ﹳٴ()V

    iget-object v0, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v0, Lⁱˏ/ⁱˊ;

    iget v1, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    invoke-virtual {v0, v1, p1}, Lⁱˏ/ⁱˊ;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    invoke-static {v0}, Lⁱˏ/ⁱˊ;->ˈ(Lⁱˏ/ⁱˊ;)I

    move-result p1

    iput p1, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ʽ;

    iget v1, v1, Lⁱˏ/ʽ;->ᴵˊ:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ⁱˊ;

    iget v1, v1, Lⁱˏ/ⁱˊ;->ʽʽ:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ⁱˊ()V

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ʽ;

    iget v2, v1, Lⁱˏ/ʽ;->ᴵˊ:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iput v0, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    iget-object v1, v1, Lⁱˏ/ʽ;->ʾˋ:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ﹳٴ()V

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ⁱˊ;

    iget v2, v1, Lⁱˏ/ⁱˊ;->ʽʽ:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iput v0, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    iget-object v2, v1, Lⁱˏ/ⁱˊ;->ʾˋ:[Ljava/lang/Object;

    iget v1, v1, Lⁱˏ/ⁱˊ;->ᴵˊ:I

    add-int/2addr v1, v0

    aget-object v0, v2, v1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    return v0

    :pswitch_0
    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ⁱˊ()V

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iput v0, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ʽ;

    iget-object v1, v1, Lⁱˏ/ʽ;->ʾˋ:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ﹳٴ()V

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iput v0, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ⁱˊ;

    iget-object v2, v1, Lⁱˏ/ⁱˊ;->ʾˋ:[Ljava/lang/Object;

    iget v1, v1, Lⁱˏ/ⁱˊ;->ᴵˊ:I

    add-int/2addr v1, v0

    aget-object v0, v2, v1

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    :goto_0
    add-int/lit8 v0, v0, -0x1

    return v0

    :pswitch_0
    iget v0, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v0, Lⁱˏ/ʽ;

    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ⁱˊ()V

    iget v1, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lⁱˏ/ʽ;->ⁱˊ(I)Ljava/lang/Object;

    iget v1, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    iput v1, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iput v2, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    invoke-static {v0}, Lⁱˏ/ʽ;->ˈ(Lⁱˏ/ʽ;)I

    move-result v0

    iput v0, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v0, Lⁱˏ/ⁱˊ;

    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ﹳٴ()V

    iget v1, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lⁱˏ/ⁱˊ;->ⁱˊ(I)Ljava/lang/Object;

    iget v1, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    iput v1, p0, Lⁱˏ/ﹳٴ;->ᴵˊ:I

    iput v2, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    invoke-static {v0}, Lⁱˏ/ⁱˊ;->ˈ(Lⁱˏ/ⁱˊ;)I

    move-result v0

    iput v0, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget v0, p0, Lⁱˏ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ⁱˊ()V

    iget v0, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ʽ;

    invoke-virtual {v1, v0, p1}, Lⁱˏ/ʽ;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lⁱˏ/ﹳٴ;->ﹳٴ()V

    iget v0, p0, Lⁱˏ/ﹳٴ;->ʽʽ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v1, Lⁱˏ/ⁱˊ;

    invoke-virtual {v1, v0, p1}, Lⁱˏ/ⁱˊ;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ⁱˊ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v0, Lⁱˏ/ʽ;

    invoke-static {v0}, Lⁱˏ/ʽ;->ˈ(Lⁱˏ/ʽ;)I

    move-result v0

    iget v1, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public ﹳٴ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱˏ/ﹳٴ;->ᴵᵔ:Lﹶˈ/ˑﹳ;

    check-cast v0, Lⁱˏ/ⁱˊ;

    iget-object v0, v0, Lⁱˏ/ⁱˊ;->ᴵᵔ:Lⁱˏ/ʽ;

    invoke-static {v0}, Lⁱˏ/ʽ;->ˈ(Lⁱˏ/ʽ;)I

    move-result v0

    iget v1, p0, Lⁱˏ/ﹳٴ;->ˈٴ:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
