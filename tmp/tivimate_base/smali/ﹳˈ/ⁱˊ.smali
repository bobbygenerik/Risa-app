.class public final Lﹳˈ/ⁱˊ;
.super Lﾞˉ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ٴﹶ:S


# virtual methods
.method public final ٴʼ(Lـʾ/ᵔﹳ;)V
    .locals 3

    .prologue
    iget-object v0, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˎﹶ/ˑﹳ;

    invoke-super {p0, p1}, Lﾞˉ/ﹳٴ;->ٴʼ(Lـʾ/ᵔﹳ;)V

    iget-object v1, p0, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v0, 0xd

    if-ne v1, v0, :cond_0

    iget-short v0, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid PDU type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﾞˉ/ﹳٴ;->ˑﹳ:Lﾞˉ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Lˎﹶ/ˑﹳ;->readUnsignedShort()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lﹳˈ/ⁱˊ;->ٴﹶ:S

    invoke-virtual {v0}, Lˎﹶ/ˑﹳ;->readUnsignedShort()I

    iget-short v0, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    return-void
.end method
