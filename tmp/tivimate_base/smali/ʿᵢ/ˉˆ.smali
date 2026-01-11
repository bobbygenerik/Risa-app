.class public final Lʿᵢ/ˉˆ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ᵔﹳ;


# instance fields
.field public ˊʻ:I

.field public synthetic ٴᵢ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(ILˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʿᵢ/ˉˆ;->ᴵᵔ:I

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method

.method public constructor <init>(Lʿᵢ/ˈٴ;Lˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʿᵢ/ˉˆ;->ᴵᵔ:I

    iput-object p1, p0, Lʿᵢ/ˉˆ;->ٴᵢ:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʿᵢ/ˉˆ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lʿᵢ/ᐧﾞ;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lˈי/ˈ;

    new-instance p2, Lʿᵢ/ˉˆ;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p3}, Lʿᵢ/ˉˆ;-><init>(ILˈי/ˈ;)V

    iput-object p1, p2, Lʿᵢ/ˉˆ;->ٴᵢ:Ljava/lang/Object;

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p2, p1}, Lʿᵢ/ˉˆ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lᵎˈ/ᵔᵢ;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lˈי/ˈ;

    new-instance p1, Lʿᵢ/ˉˆ;

    iget-object p2, p0, Lʿᵢ/ˉˆ;->ٴᵢ:Ljava/lang/Object;

    check-cast p2, Lʿᵢ/ˈٴ;

    invoke-direct {p1, p2, p3}, Lʿᵢ/ˉˆ;-><init>(Lʿᵢ/ˈٴ;Lˈי/ˈ;)V

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ˉˆ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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
    iget v0, p0, Lʿᵢ/ˉˆ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʿᵢ/ˉˆ;->ˊʻ:I

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

    iget-object p1, p0, Lʿᵢ/ˉˆ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ᐧﾞ;

    iput v1, p0, Lʿᵢ/ˉˆ;->ˊʻ:I

    invoke-interface {p1, p0}, Lʿᵢ/ᐧﾞ;->ﹳٴ(Lʿᵢ/ˉˆ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    iget v0, p0, Lʿᵢ/ˉˆ;->ˊʻ:I

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

    iget-object p1, p0, Lʿᵢ/ˉˆ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ˈٴ;

    iput v1, p0, Lʿᵢ/ˉˆ;->ˊʻ:I

    invoke-static {p1, p0}, Lʿᵢ/ˈٴ;->ʽ(Lʿᵢ/ˈٴ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
