.class public final Lᵎʽ/ﾞʻ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public ˊʻ:I

.field public final synthetic ٴᵢ:Lᵎʽ/ᵔʾ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lᵎʽ/ᵔʾ;Lˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lᵎʽ/ﾞʻ;->ᴵᵔ:I

    iput-object p1, p0, Lᵎʽ/ﾞʻ;->ٴᵢ:Lᵎʽ/ᵔʾ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lᵎʽ/ﾞʻ;->ᴵᵔ:I

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lᵎʽ/ﾞʻ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lᵎʽ/ﾞʻ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lᵎʽ/ﾞʻ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lᵎʽ/ﾞʻ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lᵎʽ/ﾞʻ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lᵎʽ/ﾞʻ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 2

    .prologue
    iget p1, p0, Lᵎʽ/ﾞʻ;->ᴵᵔ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lᵎʽ/ﾞʻ;

    iget-object v0, p0, Lᵎʽ/ﾞʻ;->ٴᵢ:Lᵎʽ/ᵔʾ;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lᵎʽ/ﾞʻ;-><init>(Lᵎʽ/ᵔʾ;Lˈי/ˈ;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lᵎʽ/ﾞʻ;

    iget-object v0, p0, Lᵎʽ/ﾞʻ;->ٴᵢ:Lᵎʽ/ᵔʾ;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lᵎʽ/ﾞʻ;-><init>(Lᵎʽ/ᵔʾ;Lˈי/ˈ;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lᵎʽ/ﾞʻ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lᵎʽ/ﾞʻ;->ˊʻ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lᵎʽ/ﾞʻ;->ٴᵢ:Lᵎʽ/ᵔʾ;

    iget-object p1, p1, Lᵎʽ/ᵔʾ;->ⁱˊ:Lʿᵢ/ᵎﹶ;

    invoke-interface {p1}, Lʿᵢ/ᵎﹶ;->ⁱˊ()Lᵎˈ/ᵎﹶ;

    move-result-object p1

    iput v1, p0, Lᵎʽ/ﾞʻ;->ˊʻ:I

    invoke-static {p1, p0}, Lᵎˈ/ˈٴ;->ᵎﹶ(Lᵎˈ/ᵎﹶ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    iget v0, p0, Lᵎʽ/ﾞʻ;->ˊʻ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lᵎʽ/ﾞʻ;->ٴᵢ:Lᵎʽ/ᵔʾ;

    iget-object v0, p1, Lᵎʽ/ᵔʾ;->ⁱˊ:Lʿᵢ/ᵎﹶ;

    invoke-interface {v0}, Lʿᵢ/ᵎﹶ;->ⁱˊ()Lᵎˈ/ᵎﹶ;

    move-result-object v0

    iget-object p1, p1, Lᵎʽ/ᵔʾ;->ʽ:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lᵎʽ/ٴﹶ;

    invoke-direct {v2, p1}, Lᵎʽ/ٴﹶ;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iput v1, p0, Lᵎʽ/ﾞʻ;->ˊʻ:I

    invoke-interface {v0, v2, p0}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
