.class public final Lﹳˈ/ˑﹳ;
.super Lﾞˉ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public ٴﹶ:[B


# virtual methods
.method public final ٴʼ(Lـʾ/ᵔﹳ;)V
    .locals 2

    invoke-super {p0, p1}, Lﾞˉ/ﹳٴ;->ٴʼ(Lـʾ/ᵔﹳ;)V

    iget-short v0, p0, Lﾞˉ/ﹳٴ;->ᵔᵢ:S

    iget-short v1, p0, Lﾞˉ/ﹳٴ;->ʼˎ:S

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lﹳˈ/ˑﹳ;->ٴﹶ:[B

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    iget-object v0, p0, Lﹳˈ/ˑﹳ;->ٴﹶ:[B

    iget-object v1, p1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˎﹶ/ˑﹳ;

    invoke-virtual {v1, v0}, Lˎﹶ/ˑﹳ;->readFully([B)V

    iget-short v0, p0, Lﾞˉ/ﹳٴ;->ʼˎ:S

    invoke-virtual {p1, v0}, Lـʾ/ᵔﹳ;->ٴﹶ(I)V

    return-void
.end method
