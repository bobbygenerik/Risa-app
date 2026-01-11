.class public final Lʼﾞ/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lʼﾞ/ˉʿ;->ʾˋ:I

    iput-object p1, p0, Lʼﾞ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʼﾞ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lʿᵢ/ᵔʾ;Lᵎˈ/ᵔᵢ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʼﾞ/ˉʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, p0, Lʼﾞ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lᵎˈ/ᵔᵢ;Lᴵⁱ/ʼᐧ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʼﾞ/ˉʿ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᴵʾ/ᵔᵢ;

    iput-object p2, p0, Lʼﾞ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 10

    .prologue
    iget v0, p0, Lʼﾞ/ˉʿ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lⁱᵎ/ʽ;

    iget-object p2, p0, Lʼﾞ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lⁱᵎ/ﾞᴵ;

    iget-object v0, p0, Lʼﾞ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˑᵎ/ﹳᐧ;

    invoke-interface {p2, v0, p1}, Lⁱᵎ/ﾞᴵ;->ˑﹳ(Lˑᵎ/ﹳᐧ;Lⁱᵎ/ʽ;)V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_0
    instance-of v0, p2, Lᵎˈ/ʼʼ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎˈ/ʼʼ;

    iget v1, v0, Lᵎˈ/ʼʼ;->ᴵᵔ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ʼʼ;->ᴵᵔ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ʼʼ;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ʼʼ;-><init>(Lʼﾞ/ˉʿ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lᵎˈ/ʼʼ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ʼʼ;->ᴵᵔ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lᵎˈ/ʼʼ;->ˉٴ:Lᵎˈ/ᵔᵢ;

    iget-object v1, v0, Lᵎˈ/ʼʼ;->ٴᵢ:Ljava/lang/Object;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʼﾞ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᵎˈ/ᵔᵢ;

    iget-object v1, p0, Lʼﾞ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᴵʾ/ᵔᵢ;

    iput-object p1, v0, Lᵎˈ/ʼʼ;->ٴᵢ:Ljava/lang/Object;

    iput-object p2, v0, Lᵎˈ/ʼʼ;->ˉٴ:Lᵎˈ/ᵔᵢ;

    iput v3, v0, Lᵎˈ/ʼʼ;->ᴵᵔ:I

    invoke-interface {v1, p1, v0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p1

    move-object p1, p2

    :goto_1
    const/4 p2, 0x0

    iput-object p2, v0, Lᵎˈ/ʼʼ;->ٴᵢ:Ljava/lang/Object;

    iput-object p2, v0, Lᵎˈ/ʼʼ;->ˉٴ:Lᵎˈ/ᵔᵢ;

    iput v2, v0, Lᵎˈ/ʼʼ;->ᴵᵔ:I

    invoke-interface {p1, v1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_3
    return-object v4

    :pswitch_1
    instance-of v0, p2, Lᵎˈ/ˏי;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Lᵎˈ/ˏי;

    iget v1, v0, Lᵎˈ/ˏי;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_6

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ˏי;->ˊʻ:I

    goto :goto_4

    :cond_6
    new-instance v0, Lᵎˈ/ˏי;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ˏי;-><init>(Lʼﾞ/ˉʿ;Lˈי/ˈ;)V

    :goto_4
    iget-object p2, v0, Lᵎˈ/ˏי;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ˏי;->ˊʻ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_7

    iget-object p1, v0, Lᵎˈ/ˏי;->ˈٴ:Lʼﾞ/ˉʿ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_6

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object p1, v0, Lᵎˈ/ˏי;->ˉٴ:Ljava/lang/Object;

    iget-object v1, v0, Lᵎˈ/ˏי;->ˈٴ:Lʼﾞ/ˉʿ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object v9, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, v9

    goto :goto_5

    :cond_9
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʼﾞ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lʿᵢ/ᵔʾ;

    iput-object p0, v0, Lᵎˈ/ˏי;->ˈٴ:Lʼﾞ/ˉʿ;

    iput-object p1, v0, Lᵎˈ/ˏי;->ˉٴ:Ljava/lang/Object;

    iput v3, v0, Lᵎˈ/ˏי;->ˊʻ:I

    invoke-virtual {p2, p1, v0}, Lʿᵢ/ᵔʾ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_a

    goto :goto_7

    :cond_a
    move-object v1, p2

    move-object p2, p1

    move-object p1, p0

    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p1, Lʼﾞ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lᵎˈ/ᵔᵢ;

    iput-object p1, v0, Lᵎˈ/ˏי;->ˈٴ:Lʼﾞ/ˉʿ;

    const/4 v5, 0x0

    iput-object v5, v0, Lᵎˈ/ˏי;->ˉٴ:Ljava/lang/Object;

    iput v2, v0, Lᵎˈ/ˏי;->ˊʻ:I

    invoke-interface {v1, p2, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_c

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :cond_c
    :goto_6
    if-eqz v3, :cond_d

    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_7
    return-object v4

    :cond_d
    new-instance p2, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lᵎˈ/ᵔᵢ;)V

    throw p2

    :pswitch_2
    instance-of v0, p2, Lʼﾞ/ﾞʻ;

    if-eqz v0, :cond_e

    move-object v0, p2

    check-cast v0, Lʼﾞ/ﾞʻ;

    iget v1, v0, Lʼﾞ/ﾞʻ;->ᴵᵔ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_e

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ﾞʻ;->ᴵᵔ:I

    goto :goto_8

    :cond_e
    new-instance v0, Lʼﾞ/ﾞʻ;

    invoke-direct {v0, p0, p2}, Lʼﾞ/ﾞʻ;-><init>(Lʼﾞ/ˉʿ;Lˈי/ˈ;)V

    :goto_8
    iget-object p2, v0, Lʼﾞ/ﾞʻ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lʼﾞ/ﾞʻ;->ᴵᵔ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    if-ne v1, v2, :cond_f

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʼﾞ/ˉʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᵎˈ/ᵔᵢ;

    check-cast p1, Ljava/util/Set;

    new-instance v1, Lⁱˏ/ʼˎ;

    invoke-direct {v1}, Lⁱˏ/ʼˎ;-><init>()V

    iget-object v3, p0, Lʼﾞ/ˉʿ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_13

    aget-object v6, v3, v5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lﹶˑ/ᵔﹳ;->ʿ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v1, v6}, Lⁱˏ/ʼˎ;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    invoke-static {v1}, Lˈˋ/ʾˊ;->ˈ(Lⁱˏ/ʼˎ;)Lⁱˏ/ʼˎ;

    move-result-object p1

    iget-object v1, p1, Lⁱˏ/ʼˎ;->ʾˋ:Lⁱˏ/ﾞᴵ;

    invoke-virtual {v1}, Lⁱˏ/ﾞᴵ;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p1, 0x0

    :cond_14
    if-eqz p1, :cond_15

    iput v2, v0, Lʼﾞ/ﾞʻ;->ᴵᵔ:I

    invoke-interface {p2, p1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_15

    goto :goto_c

    :cond_15
    :goto_b
    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_c
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
