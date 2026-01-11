.class public Lˊʼ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lˊʼ/ⁱˊ;->ʾˋ:I

    iput-object p2, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lˊʼ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    iget-object v1, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lﹶˈ/ˈ;

    invoke-virtual {v1}, Lﹶˈ/ﹳٴ;->ﹳٴ()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    iget-object v1, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_1
    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    iget-object v1, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :pswitch_2
    iget v0, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    iget-object v1, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lˊʼ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lˊʼ/ⁱˊ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lﹶˈ/ˈ;

    iget v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/util/LongSparseArray;

    iget v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    .prologue
    iget v0, p0, Lˊʼ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lˊʼ/ⁱˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lˊʼ/ⁱˊ;->ᴵˊ:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
