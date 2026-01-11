.class public final Lʿᵢ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lᵎˈ/ᵔᵢ;


# direct methods
.method public synthetic constructor <init>(Lᵎˈ/ᵔᵢ;I)V
    .locals 0

    iput p2, p0, Lʿᵢ/ᵔﹳ;->ʾˋ:I

    iput-object p1, p0, Lʿᵢ/ᵔﹳ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lʿᵢ/ᵔﹳ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lﹶﹳ/ˈ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lﹶﹳ/ˈ;

    iget v1, v0, Lﹶﹳ/ˈ;->ᴵᵔ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lﹶﹳ/ˈ;->ᴵᵔ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lﹶﹳ/ˈ;

    invoke-direct {v0, p0, p2}, Lﹶﹳ/ˈ;-><init>(Lʿᵢ/ᵔﹳ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lﹶﹳ/ˈ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lﹶﹳ/ˈ;->ᴵᵔ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    instance-of p2, p1, Lⁱᵎ/ⁱˊ;

    if-eqz p2, :cond_3

    iput v2, v0, Lﹶﹳ/ˈ;->ᴵᵔ:I

    iget-object p2, p0, Lʿᵢ/ᵔﹳ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    invoke-interface {p2, p1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_2
    return-object p2

    :pswitch_0
    instance-of v0, p2, Lʿᵢ/ʼᐧ;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lʿᵢ/ʼᐧ;

    iget v1, v0, Lʿᵢ/ʼᐧ;->ᴵᵔ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵢ/ʼᐧ;->ᴵᵔ:I

    goto :goto_3

    :cond_4
    new-instance v0, Lʿᵢ/ʼᐧ;

    invoke-direct {v0, p0, p2}, Lʿᵢ/ʼᐧ;-><init>(Lʿᵢ/ᵔﹳ;Lˈי/ˈ;)V

    :goto_3
    iget-object p2, v0, Lʿᵢ/ʼᐧ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lʿᵢ/ʼᐧ;->ᴵᵔ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    if-ne v1, v2, :cond_5

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    check-cast p1, Lʿᵢ/ˈˏ;

    instance-of p2, p1, Lʿᵢ/ᵎᵔ;

    if-nez p2, :cond_b

    instance-of p2, p1, Lʿᵢ/ʽ;

    if-eqz p2, :cond_8

    check-cast p1, Lʿᵢ/ʽ;

    iget-object p1, p1, Lʿᵢ/ʽ;->ⁱˊ:Ljava/lang/Object;

    iput v2, v0, Lʿᵢ/ʼᐧ;->ᴵᵔ:I

    iget-object p2, p0, Lʿᵢ/ᵔﹳ;->ᴵˊ:Lᵎˈ/ᵔᵢ;

    invoke-interface {p2, p1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_5
    return-object p2

    :cond_8
    instance-of p2, p1, Lʿᵢ/ˈʿ;

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    instance-of v2, p1, Lʿᵢ/ﹳﹳ;

    :goto_6
    if-eqz v2, :cond_a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_b
    check-cast p1, Lʿᵢ/ᵎᵔ;

    iget-object p1, p1, Lʿᵢ/ᵎᵔ;->ⁱˊ:Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
