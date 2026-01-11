.class public final Lʼʻ/ˆﾞ;
.super Lʼʻ/ʽʽ;
.source "SourceFile"


# virtual methods
.method public final ʽ(Ljava/lang/Object;)Lʼʻ/ʽʽ;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final ᵎﹶ()Lʼʻ/ᵔٴ;
    .locals 3

    .prologue
    iget v0, p0, Lʼʻ/ʽʽ;->ⁱˊ:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lʼʻ/ʽʽ;->ﹳٴ:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lʼʻ/ᵔٴ;->ˆʾ(I[Ljava/lang/Object;)Lʼʻ/ᵔٴ;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lʼʻ/ʽʽ;->ⁱˊ:I

    iput-boolean v1, p0, Lʼʻ/ʽʽ;->ʽ:Z

    return-object v0

    :cond_0
    iget-object v0, p0, Lʼʻ/ʽʽ;->ﹳٴ:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lʼʻ/ᵔٴ;->ʽʽ:I

    new-instance v1, Lʼʻ/ʻˋ;

    invoke-direct {v1, v0}, Lʼʻ/ʻˋ;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    sget v0, Lʼʻ/ᵔٴ;->ʽʽ:I

    sget-object v0, Lʼʻ/ʻᵎ;->ٴʼ:Lʼʻ/ʻᵎ;

    return-object v0
.end method
