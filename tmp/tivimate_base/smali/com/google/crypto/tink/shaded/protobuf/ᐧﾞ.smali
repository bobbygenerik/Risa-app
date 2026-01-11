.class public final Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;
.super Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final ʽ(JLjava/lang/Object;)Z
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)B

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼˎ(JLjava/lang/Object;)B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :pswitch_0
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)B

    move-result p1

    if-eqz p1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼˎ(JLjava/lang/Object;)B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˈ(JLjava/lang/Object;)B
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)B

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼˎ(JLjava/lang/Object;)B

    move-result p1

    :goto_0
    return p1

    :pswitch_0
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵔᵢ(JLjava/lang/Object;)B

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ʼˎ(JLjava/lang/Object;)B

    move-result p1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉʿ(Ljava/lang/Object;JD)V
    .locals 6

    .prologue
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼᐧ(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_0
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ʼᐧ(Ljava/lang/Object;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˑﹳ(JLjava/lang/Object;)D
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵔᵢ(JLjava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final יـ()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ٴﹶ(Ljava/lang/Object;JZ)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    if-eqz v0, :cond_0

    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ﾞʻ(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉʿ(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    if-eqz v0, :cond_1

    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ﾞʻ(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    int-to-byte p4, p4

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉʿ(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔʾ(Ljava/lang/Object;JF)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˉˆ(JLjava/lang/Object;I)V

    return-void

    :pswitch_0
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ˉˆ(JLjava/lang/Object;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞʻ(Ljava/lang/Object;JB)V
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ﾞʻ(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉʿ(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ᵎﹶ:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ﾞʻ(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/ᴵʼ;->ˉʿ(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﾞᴵ(JLjava/lang/Object;)F
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ᐧﾞ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ˏᵢ;->ᵎﹶ(JLjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
