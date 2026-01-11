.class public final Lᵎʼ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱʼ/ʼᐧ;


# instance fields
.field public final ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lᵎʼ/ʽ;->ﹳٴ:I

    iput-object p2, p0, Lᵎʼ/ʽ;->ⁱˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget v0, p0, Lᵎʼ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    const/4 p1, 0x1

    return p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, [B

    const/4 p1, 0x1

    return p1

    :pswitch_2
    check-cast p1, Lⁱʼ/ᵎﹶ;

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ(Ljava/lang/Object;IILʼᵔ/ᵔᵢ;)Lⁱʼ/ˉˆ;
    .locals 2

    .prologue
    iget p2, p0, Lᵎʼ/ʽ;->ﹳٴ:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/io/File;

    new-instance p2, Lⁱʼ/ˉˆ;

    new-instance p3, Lˋᵎ/ⁱˊ;

    invoke-direct {p3, p1}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lˋﾞ/ⁱˊ;

    iget-object v0, p0, Lᵎʼ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʽ;

    const/4 v1, 0x2

    invoke-direct {p4, v1, p1, v0}, Lˋﾞ/ⁱˊ;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p2

    :pswitch_0
    new-instance p2, Lⁱʼ/ˉˆ;

    new-instance p3, Lˋᵎ/ⁱˊ;

    invoke-direct {p3, p1}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lˋﾞ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lᵎʼ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʽ;

    const/4 v1, 0x1

    invoke-direct {p4, v1, p1, v0}, Lˋﾞ/ⁱˊ;-><init>(ILjava/lang/Comparable;Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p2

    :pswitch_1
    check-cast p1, [B

    new-instance p2, Lⁱʼ/ˉˆ;

    new-instance p3, Lˋᵎ/ⁱˊ;

    invoke-direct {p3, p1}, Lˋᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lⁱʼ/ﾞʻ;

    iget-object v0, p0, Lᵎʼ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lⁱʼ/ʽ;

    const/4 v1, 0x1

    invoke-direct {p4, p1, v1, v0}, Lⁱʼ/ﾞʻ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p2

    :pswitch_2
    check-cast p1, Lⁱʼ/ᵎﹶ;

    new-instance p2, Lⁱʼ/ˉˆ;

    new-instance p3, Lᵎʼ/ﹳٴ;

    iget-object p4, p0, Lᵎʼ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast p4, Lˎᵢ/ˈ;

    invoke-direct {p3, p4, p1}, Lᵎʼ/ﹳٴ;-><init>(Lˎᵢ/ˈ;Lⁱʼ/ᵎﹶ;)V

    invoke-direct {p2, p1, p3}, Lⁱʼ/ˉˆ;-><init>(Lʼᵔ/ˑﹳ;Lcom/bumptech/glide/load/data/ˑﹳ;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
