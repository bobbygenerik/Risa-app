.class public final Lᵎﾞ/ʽ;
.super Lᵎﾞ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:I


# direct methods
.method public synthetic constructor <init>(Lʾʽ/ᵎﹶ;I)V
    .locals 0

    iput p2, p0, Lᵎﾞ/ʽ;->ⁱˊ:I

    invoke-direct {p0, p1}, Lᵎﾞ/ⁱˊ;-><init>(Lʾʽ/ᵎﹶ;)V

    return-void
.end method


# virtual methods
.method public final ˈ()I
    .locals 1

    .prologue
    iget v0, p0, Lᵎﾞ/ʽ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x9

    return v0

    :pswitch_0
    const/4 v0, 0x7

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˑﹳ(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    iget v0, p0, Lᵎﾞ/ʽ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Lⁱᵎ/ˑﹳ;

    iget-boolean v0, p1, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lⁱᵎ/ˑﹳ;->ʽ:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1

    :pswitch_1
    check-cast p1, Lⁱᵎ/ˑﹳ;

    iget-boolean v0, p1, Lⁱᵎ/ˑﹳ;->ﹳٴ:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lⁱᵎ/ˑﹳ;->ⁱˊ:Z

    if-nez p1, :cond_4

    goto :goto_3

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    return p1

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Lˑᵎ/ﹳᐧ;)Z
    .locals 2

    .prologue
    iget v0, p0, Lᵎﾞ/ʽ;->ⁱˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-boolean p1, p1, Lᴵˋ/ˑﹳ;->ﾞᴵ:Z

    return p1

    :pswitch_0
    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget p1, p1, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    :pswitch_1
    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget p1, p1, Lᴵˋ/ˑﹳ;->ﹳٴ:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1

    :pswitch_2
    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-boolean p1, p1, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    return p1

    :pswitch_3
    iget-object p1, p1, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-boolean p1, p1, Lᴵˋ/ˑﹳ;->ʽ:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
