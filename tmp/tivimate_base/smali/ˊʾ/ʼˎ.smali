.class public final Lˊʾ/ʼˎ;
.super Lʼﹳ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ˉٴ:Ljava/lang/Object;

.field public final synthetic ˊʻ:I

.field public ٴᵢ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    invoke-direct/range {p0 .. p7}, Lʼﹳ/ˉˆ;-><init>(ILʼﹳ/ʽ;Lʼﹳ/ﾞʻ;JJ)V

    return-void
.end method

.method public constructor <init>(Lיˆ/ⁱˊ;Lʼﹳ/ˉˆ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    iput-object p1, p0, Lˊʾ/ʼˎ;->ˉٴ:Ljava/lang/Object;

    invoke-direct {p0}, Lʼﹳ/ˉˆ;-><init>()V

    iput-object p2, p0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lʼﹳ/ˉˆ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ˉˆ;

    invoke-virtual {v0}, Lʼﹳ/ˉˆ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ʼᵢ(Lˋʼ/ﹳٴ;)V
    .locals 6

    .prologue
    iget v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lʼﹳ/ˉˆ;->ʼᵢ(Lˋʼ/ﹳٴ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ˉˆ;

    :try_start_0
    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v1

    check-cast v1, Lʼﹳ/ٴﹶ;

    iget-wide v2, v1, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    const-wide/16 v4, 0x8

    or-long/2addr v2, v4

    iput-wide v2, v1, Lʼﹳ/ٴﹶ;->ٴﹶ:J

    iget v1, p1, Lˎʿ/ⁱˊ;->ˈ:I

    new-instance v2, Lיˆ/ﹳٴ;

    invoke-direct {v2, p0, p1}, Lיˆ/ﹳٴ;-><init>(Lˊʾ/ʼˎ;Lˋʼ/ﹳٴ;)V

    invoke-virtual {v0, v2}, Lʼﹳ/ˉˆ;->ʼᵢ(Lˋʼ/ﹳٴ;)V

    iget-object v0, v2, Lיˆ/ﹳٴ;->ᵔᵢ:Lﾞˎ/ﹳٴ;

    invoke-interface {v0}, Lﾞˎ/ﹳٴ;->ﾞᴵ()[B

    move-result-object v0

    iget-object p1, p1, Lˎʿ/ⁱˊ;->ﹳٴ:[B

    add-int/lit8 v1, v1, 0x30

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/hierynomus/security/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ʽˑ()Lʼﹳ/ˉˆ;
    .locals 1

    .prologue
    iget v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ˉˆ;

    invoke-virtual {v0}, Lʼﹳ/ˉˆ;->ʽˑ()Lʼﹳ/ˉˆ;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic ˈٴ(Lˋʼ/ﹳٴ;)V
    .locals 1

    .prologue
    iget v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lʼﹳ/ˉˆ;->ˈٴ(Lˋʼ/ﹳٴ;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lˊʾ/ʼˎ;->ʼᵢ(Lˋʼ/ﹳٴ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ˊᵔ()Lˋʼ/ⁱˊ;
    .locals 1

    .prologue
    iget v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ˉˆ;

    invoke-virtual {v0}, Lʽⁱ/ᵎﹶ;->ˊᵔ()Lˋʼ/ⁱˊ;

    move-result-object v0

    check-cast v0, Lʼﹳ/ٴﹶ;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public יˉ(Lˋʼ/ﹳٴ;)V
    .locals 11

    .prologue
    iget v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lʼﹳ/ˉˆ;->יˉ(Lˋʼ/ﹳٴ;)V

    return-void

    :pswitch_0
    iget v0, p0, Lʼﹳ/ˉˆ;->ᴵˊ:I

    invoke-virtual {p1, v0}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    iget-object v0, p0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lˋʼ/ﹳٴ;->ʼᐧ(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "SMB 3.x support is not yet implemented"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʼﹳ/ʽ;

    invoke-virtual {v3}, Lʼﹳ/ʽ;->ﹳٴ()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    iget-object v2, p0, Lˊʾ/ʼˎ;->ˉٴ:Ljava/lang/Object;

    check-cast v2, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    const/16 v7, 0x20

    ushr-long v7, v2, v7

    invoke-virtual {p1, v7, v8}, Lˎʿ/ⁱˊ;->ᵔᵢ(J)V

    const/16 v7, 0x10

    ushr-long v7, v2, v7

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    long-to-int v7, v7

    invoke-virtual {p1, v7}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    and-long/2addr v2, v9

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    sget-object v2, Lˎʿ/ʽ;->ˈ:Lˎʿ/ʽ;

    invoke-virtual {v2, p1, v5, v6}, Lˎʿ/ʽ;->ﾞᴵ(Lˎʿ/ⁱˊ;J)V

    sget-object v2, Lʼﹳ/ʽ;->ˉٴ:Lʼﹳ/ʽ;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    invoke-virtual {p1}, Lˋʼ/ﹳٴ;->ﹳᐧ()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lʼﹳ/ʽ;

    iget v5, v5, Lʼﹳ/ʽ;->ʾˋ:I

    invoke-virtual {p1, v5}, Lˎʿ/ⁱˊ;->ᵎﹶ(I)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x22

    rem-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_3

    rsub-int/lit8 v1, v3, 0x8

    invoke-virtual {p1, v1}, Lˋʼ/ﹳٴ;->ʼᐧ(I)V

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹶˎ()I
    .locals 1

    .prologue
    iget v0, p0, Lˊʾ/ʼˎ;->ˊʻ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lʼﹳ/ˉˆ;->ﹶˎ()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lˊʾ/ʼˎ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Lʼﹳ/ˉˆ;

    invoke-virtual {v0}, Lʼﹳ/ˉˆ;->ﹶˎ()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
