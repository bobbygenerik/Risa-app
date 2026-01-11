.class public final Lʼﾞ/ᵎˊ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public ˊʻ:I

.field public final synthetic ٴᵢ:Lʼﾞ/ٴᵢ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lʼﾞ/ٴᵢ;Lˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lʼﾞ/ᵎˊ;->ᴵᵔ:I

    iput-object p1, p0, Lʼﾞ/ᵎˊ;->ٴᵢ:Lʼﾞ/ٴᵢ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʼﾞ/ᵎˊ;->ᴵᵔ:I

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lʼﾞ/ᵎˊ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʼﾞ/ᵎˊ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʼﾞ/ᵎˊ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lʼﾞ/ᵎˊ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʼﾞ/ᵎˊ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʼﾞ/ᵎˊ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p1, p0, Lʼﾞ/ᵎˊ;->ᴵᵔ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lʼﾞ/ᵎˊ;

    iget-object v0, p0, Lʼﾞ/ᵎˊ;->ٴᵢ:Lʼﾞ/ٴᵢ;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lʼﾞ/ᵎˊ;-><init>(Lʼﾞ/ٴᵢ;Lˈי/ˈ;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lʼﾞ/ᵎˊ;

    iget-object v0, p0, Lʼﾞ/ᵎˊ;->ٴᵢ:Lʼﾞ/ٴᵢ;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lʼﾞ/ᵎˊ;-><init>(Lʼﾞ/ٴᵢ;Lˈי/ˈ;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lʼﾞ/ᵎˊ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʼﾞ/ᵎˊ;->ˊʻ:I

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

    iput v1, p0, Lʼﾞ/ᵎˊ;->ˊʻ:I

    iget-object p1, p0, Lʼﾞ/ᵎˊ;->ٴᵢ:Lʼﾞ/ٴᵢ;

    invoke-static {p1, p0}, Lʼﾞ/ٴᵢ;->ﾞʻ(Lʼﾞ/ٴᵢ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_1
    return-object v0

    :pswitch_0
    iget v0, p0, Lʼﾞ/ᵎˊ;->ˊʻ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput v1, p0, Lʼﾞ/ᵎˊ;->ˊʻ:I

    iget-object p1, p0, Lʼﾞ/ᵎˊ;->ٴᵢ:Lʼﾞ/ٴᵢ;

    invoke-static {p1, p0}, Lʼﾞ/ٴᵢ;->ﾞʻ(Lʼﾞ/ٴᵢ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
