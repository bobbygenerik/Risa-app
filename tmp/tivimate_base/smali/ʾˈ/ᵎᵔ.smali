.class public final Lʾˈ/ᵎᵔ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public ˊʻ:I

.field public final synthetic ٴᵢ:Lʾˈ/ᴵʼ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lʾˈ/ᵎᵔ;->ᴵᵔ:I

    iput-object p1, p0, Lʾˈ/ᵎᵔ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʾˈ/ᵎᵔ;->ᴵᵔ:I

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lʾˈ/ᵎᵔ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʾˈ/ᵎᵔ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʾˈ/ᵎᵔ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lʾˈ/ᵎᵔ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʾˈ/ᵎᵔ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʾˈ/ᵎᵔ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget p1, p0, Lʾˈ/ᵎᵔ;->ᴵᵔ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lʾˈ/ᵎᵔ;

    iget-object v0, p0, Lʾˈ/ᵎᵔ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lʾˈ/ᵎᵔ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lʾˈ/ᵎᵔ;

    iget-object v0, p0, Lʾˈ/ᵎᵔ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lʾˈ/ᵎᵔ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget v0, p0, Lʾˈ/ᵎᵔ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lʾˈ/ᵎᵔ;->ˊʻ:I

    const/4 v1, 0x0

    iget-object v2, p0, Lʾˈ/ᵎᵔ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, v2, Lʾˈ/ᴵʼ;->ˑﹳ:Lʿᵢ/ᵎﹶ;

    new-instance v0, Lʾˈ/ᐧᴵ;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4}, Lʾˈ/ᐧᴵ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;I)V

    iput v3, p0, Lʾˈ/ᵎᵔ;->ˊʻ:I

    invoke-interface {p1, v0, p0}, Lʿᵢ/ᵎﹶ;->ﹳٴ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_3

    goto :goto_3

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "App backgrounded, failed to update data. Message: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FirebaseSessions"

    nop

    iget-object p1, v2, Lʾˈ/ᴵʼ;->ᵔᵢ:Lʾˈ/ᵎⁱ;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    iget-object v0, v2, Lʾˈ/ᴵʼ;->ˈ:Lʾˈ/ˈˏ;

    invoke-virtual {v0}, Lʾˈ/ˈˏ;->ﹳٴ()Lʾˈ/ـﹶ;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {p1, v1, v0, v1, v3}, Lʾˈ/ᵎⁱ;->ﹳٴ(Lʾˈ/ᵎⁱ;Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;I)Lʾˈ/ᵎⁱ;

    move-result-object p1

    iput-object p1, v2, Lʾˈ/ᴵʼ;->ᵔᵢ:Lʾˈ/ᵎⁱ;

    :cond_3
    :goto_2
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_3
    return-object v0

    :pswitch_0
    iget v0, p0, Lʾˈ/ᵎᵔ;->ˊʻ:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʾˈ/ᵎᵔ;->ٴᵢ:Lʾˈ/ᴵʼ;

    iget-object v0, p1, Lʾˈ/ᴵʼ;->ˑﹳ:Lʿᵢ/ᵎﹶ;

    invoke-interface {v0}, Lʿᵢ/ᵎﹶ;->ⁱˊ()Lᵎˈ/ᵎﹶ;

    move-result-object v0

    new-instance v2, Lʾˈ/ʿ;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lʾˈ/ʿ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;)V

    new-instance v3, Lʼﾞ/ᵔʾ;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v2, v4}, Lʼﾞ/ᵔʾ;-><init>(Lᵎˈ/ᵎﹶ;Ljava/io/Serializable;I)V

    new-instance v0, Lʾˈ/ʿᵢ;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1}, Lʾˈ/ʿᵢ;-><init>(ILjava/lang/Object;)V

    iput v1, p0, Lʾˈ/ᵎᵔ;->ˊʻ:I

    invoke-virtual {v3, v0, p0}, Lʼﾞ/ᵔʾ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
