.class public final Lٴـ/ﾞᴵ;
.super Lٴـ/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public ʾˋ:Lٴـ/ᵎﹶ;


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lٴـ/ﾞᴵ;->ʾˋ:Lٴـ/ᵎﹶ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lٴـ/ᵎﹶ;->close()V

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 1

    iget-object v0, p0, Lٴـ/ﾞᴵ;->ʾˋ:Lٴـ/ᵎﹶ;

    invoke-virtual {v0}, Lٴـ/ᵎﹶ;->read()I

    move-result v0

    return v0
.end method

.method public final read([B)I
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lٴـ/ﾞᴵ;->ʾˋ:Lٴـ/ᵎﹶ;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lٴـ/ᵎﹶ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 1

    iget-object v0, p0, Lٴـ/ﾞᴵ;->ʾˋ:Lٴـ/ᵎﹶ;

    invoke-virtual {v0, p1, p2, p3}, Lٴـ/ᵎﹶ;->read([BII)I

    move-result p1

    return p1
.end method

.method public final ʽ(Lـʽ/ˑﹳ;)V
    .locals 3

    iget-object v0, p0, Lٴـ/ﾞᴵ;->ʾˋ:Lٴـ/ᵎﹶ;

    iget-wide v1, p1, Lـʽ/ˑﹳ;->ˉـ:J

    invoke-virtual {v0, v1, v2}, Lٴـ/ᵎﹶ;->seek(J)V

    return-void
.end method
