.class public final Lˊٴ/ﾞᴵ;
.super Lˊٴ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:I


# direct methods
.method public synthetic constructor <init>(Lˊٴ/ˆʾ;Lـʽ/ﾞʻ;[CZI)V
    .locals 0

    iput p5, p0, Lˊٴ/ﾞᴵ;->ʽʽ:I

    invoke-direct {p0, p1, p2, p3, p4}, Lˊٴ/ⁱˊ;-><init>(Lˊٴ/ˆʾ;Lـʽ/ﾞʻ;[CZ)V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3

    .prologue
    iget v0, p0, Lˊٴ/ﾞᴵ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lˊٴ/ⁱˊ;->write(I)V

    return-void

    :pswitch_0
    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-super {p0, v1, v2, v0}, Lˊٴ/ⁱˊ;->write([BII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public write([B)V
    .locals 2

    .prologue
    iget v0, p0, Lˊٴ/ﾞᴵ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lˊٴ/ⁱˊ;->write([B)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-super {p0, p1, v0, v1}, Lˊٴ/ⁱˊ;->write([BII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵎﹶ(Lـʽ/ﾞʻ;[CZ)Lˊⁱ/ˈ;
    .locals 4

    .prologue
    iget v0, p0, Lˊٴ/ﾞᴵ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p1, Lـʽ/ﾞʻ;->ﾞʻ:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lـʽ/ﾞʻ;->ˆʾ:J

    invoke-static {v0, v1}, Lᴵﾞ/ﹳٴ;->ˈ(J)J

    move-result-wide v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lـʽ/ﾞʻ;->ᵔᵢ:J

    :goto_0
    new-instance p1, Lﹶﾞ/ⁱי;

    invoke-direct {p1, p2, v0, v1, p3}, Lﹶﾞ/ⁱי;-><init>([CJZ)V

    iget-object p2, p1, Lﹶﾞ/ⁱי;->ʽʽ:Ljava/lang/Object;

    check-cast p2, [B

    iget-object p3, p0, Lˊٴ/ⁱˊ;->ʾˋ:Lˊٴ/ˆʾ;

    invoke-virtual {p3, p2}, Lˊٴ/ˆʾ;->write([B)V

    return-object p1

    :pswitch_0
    new-instance p1, Lˋⁱ/ﾞᴵ;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
