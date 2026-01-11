.class public final Lʿᵢ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵎﹶ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʿᵢ/ﹳᐧ;->ʾˋ:I

    iput-object p2, p0, Lʿᵢ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lᴵⁱ/ʼᐧ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lʿᵢ/ﹳᐧ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lᴵʾ/ᵔᵢ;

    iput-object p1, p0, Lʿᵢ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 8

    .prologue
    iget v0, p0, Lʿᵢ/ﹳᐧ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ᵔʾ;

    new-instance v1, Lʿᵢ/ᵔﹳ;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lʿᵢ/ᵔﹳ;-><init>(Lᵎˈ/ᵔᵢ;I)V

    invoke-virtual {v0, v1, p2}, Lʼﾞ/ᵔʾ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Lᵎˈ/ᵎﹶ;

    new-instance v3, Lʿᵢ/ˉٴ;

    const/4 v0, 0x3

    invoke-direct {v3, v0, v2}, Lʿᵢ/ˉٴ;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lⁱᵎ/ᵔᵢ;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v4, v1, v0}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    new-instance v1, Lʿᵔ/ᵔᵢ;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lʿᵔ/ᵔᵢ;-><init>([Lᵎˈ/ᵎﹶ;Lʿᵢ/ˉٴ;Lⁱᵎ/ᵔᵢ;Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)V

    new-instance p1, Lʿᵔ/ˆʾ;

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    const/4 p2, 0x1

    invoke-static {p1, p2, p1, v1}, Lﹳˋ/ʽʽ;->ˈٴ(Lˊʽ/ᵔﹳ;ZLˊʽ/ᵔﹳ;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    if-ne p1, v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2

    :pswitch_1
    move-object v5, p1

    instance-of p1, p2, Lᵎˈ/ﹳٴ;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lᵎˈ/ﹳٴ;

    iget v0, p1, Lᵎˈ/ﹳٴ;->ٴᵢ:I

    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-eqz v2, :cond_3

    sub-int/2addr v0, v1

    iput v0, p1, Lᵎˈ/ﹳٴ;->ٴᵢ:I

    goto :goto_2

    :cond_3
    new-instance p1, Lᵎˈ/ﹳٴ;

    invoke-direct {p1, p0, p2}, Lᵎˈ/ﹳٴ;-><init>(Lʿᵢ/ﹳᐧ;Lˈי/ˈ;)V

    :goto_2
    iget-object p2, p1, Lᵎˈ/ﹳٴ;->ᴵᵔ:Ljava/lang/Object;

    iget v0, p1, Lᵎˈ/ﹳٴ;->ٴᵢ:I

    sget-object v1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-ne v0, v2, :cond_4

    iget-object p1, p1, Lᵎˈ/ﹳٴ;->ˈٴ:Lʿᵔ/ᵔʾ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_7

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance p2, Lʿᵔ/ᵔʾ;

    iget-object v0, p1, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    invoke-direct {p2, v5, v0}, Lʿᵔ/ᵔʾ;-><init>(Lᵎˈ/ᵔᵢ;Lˈי/ᵔᵢ;)V

    :try_start_1
    iput-object p2, p1, Lᵎˈ/ﹳٴ;->ˈٴ:Lʿᵔ/ᵔʾ;

    iput v2, p1, Lᵎˈ/ﹳٴ;->ٴᵢ:I

    iget-object v0, p0, Lʿᵢ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᴵʾ/ᵔᵢ;

    invoke-interface {v0, p2, p1}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v1

    :goto_3
    if-ne p1, v0, :cond_7

    move-object v1, v0

    goto :goto_5

    :cond_7
    move-object p1, p2

    :goto_4
    invoke-virtual {p1}, Lᴵʾ/ʽ;->ﹳᐧ()V

    :goto_5
    return-object v1

    :goto_6
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :goto_7
    invoke-virtual {p1}, Lᴵʾ/ʽ;->ﹳᐧ()V

    throw p2

    :pswitch_2
    move-object v5, p1

    iget-object p1, p0, Lʿᵢ/ﹳᐧ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lʼﾞ/ᵔʾ;

    new-instance v0, Lʿᵢ/ᵔﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Lʿᵢ/ᵔﹳ;-><init>(Lᵎˈ/ᵔᵢ;I)V

    invoke-virtual {p1, v0, p2}, Lʼﾞ/ᵔʾ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_8

    goto :goto_8

    :cond_8
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_8
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
