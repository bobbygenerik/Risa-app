.class public final Lﹳˈ/ʽ;
.super Lﾞˉ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ٴﹶ:S

.field public ﾞʻ:[B


# virtual methods
.method public final ᵎⁱ(Lˊⁱ/ˑﹳ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳˈ/ʽ;->ﾞʻ:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﾞˉ/ﹳٴ;->ﾞᴵ:Ljava/util/EnumSet;

    sget-object v1, Lﾞˉ/ˑﹳ;->ˈٴ:Lﾞˉ/ˑﹳ;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    iget-object v1, p0, Lﹳˈ/ʽ;->ﾞʻ:[B

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    invoke-super {p0, p1}, Lﾞˉ/ﹳٴ;->ᵎⁱ(Lˊⁱ/ˑﹳ;)V

    iget-object v0, p0, Lﹳˈ/ʽ;->ﾞʻ:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Lˊⁱ/ˑﹳ;->ʽʽ(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    iget-short v1, p0, Lﹳˈ/ʽ;->ٴﹶ:S

    invoke-virtual {p1, v1}, Lˊⁱ/ˑﹳ;->ᴵᵔ(I)V

    iget-object p1, p1, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˎﹶ/ﾞᴵ;

    invoke-virtual {p1, v0}, Ljava/io/FilterOutputStream;->write([B)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid stub: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹳˈ/ʽ;->ﾞʻ:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
