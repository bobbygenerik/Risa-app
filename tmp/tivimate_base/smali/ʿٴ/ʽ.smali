.class public final Lʿٴ/ʽ;
.super Lיـ/ˑﹳ;
.source "SourceFile"


# instance fields
.field public ٴᵢ:I


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    invoke-super {p0}, Lיـ/ﹳᐧ;->clear()V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lיـ/ﹳᐧ;->hashCode()I

    move-result v0

    iput v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    :cond_0
    iget v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    invoke-super {p0, p1, p2}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ʼˎ(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    invoke-super {p0, p1, p2}, Lיـ/ﹳᐧ;->ʼˎ(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ᵎﹶ(Lיـ/ˑﹳ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    invoke-super {p0, p1}, Lיـ/ﹳᐧ;->ᵎﹶ(Lיـ/ˑﹳ;)V

    return-void
.end method

.method public final ᵔᵢ(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿٴ/ʽ;->ٴᵢ:I

    invoke-super {p0, p1}, Lיـ/ﹳᐧ;->ᵔᵢ(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
