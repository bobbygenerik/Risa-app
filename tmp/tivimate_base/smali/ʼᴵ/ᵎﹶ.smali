.class public final Lʼᴵ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lˈי/ˈ;
.implements Lⁱʿ/ﹳٴ;


# instance fields
.field public ʽʽ:Ljava/util/Iterator;

.field public ʾˋ:I

.field public ˈٴ:Lˈי/ˈ;

.field public ᴵˊ:Ljava/lang/Object;


# virtual methods
.method public final hasNext()Z
    .locals 4

    .prologue
    :goto_0
    iget v0, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lʼᴵ/ᵎﹶ;->ﹳٴ()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lʼᴵ/ᵎﹶ;->ʽʽ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    return v3

    :cond_3
    iput-object v1, p0, Lʼᴵ/ᵎﹶ;->ʽʽ:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    iget-object v0, p0, Lʼᴵ/ᵎﹶ;->ˈٴ:Lˈי/ˈ;

    iput-object v1, p0, Lʼᴵ/ᵎﹶ;->ˈٴ:Lˈי/ˈ;

    sget-object v1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-interface {v0, v1}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    iget-object v0, p0, Lʼᴵ/ᵎﹶ;->ᴵˊ:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lʼᴵ/ᵎﹶ;->ᴵˊ:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lʼᴵ/ᵎﹶ;->ﹳٴ()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iput v1, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    iget-object v0, p0, Lʼᴵ/ᵎﹶ;->ʽʽ:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lʼᴵ/ᵎﹶ;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lʼᴵ/ᵎﹶ;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    const/4 p1, 0x4

    iput p1, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    return-void
.end method

.method public final ﹳٴ()Ljava/lang/RuntimeException;
    .locals 3

    .prologue
    iget v0, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state of the iterator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lʼᴵ/ᵎﹶ;->ʾˋ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator has failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    return-object v0
.end method

.method public final ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    sget-object v0, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    return-object v0
.end method
