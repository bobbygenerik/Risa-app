.class public final Lٴˑ/ⁱˊ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public final synthetic ˉٴ:Z

.field public ˊʻ:I

.field public final synthetic ٴʼ:Lᴵⁱ/ﾞʻ;

.field public final synthetic ٴᵢ:Lʼﾞ/ˊʻ;

.field public final synthetic ᴵᵔ:I

.field public final synthetic ᵎⁱ:Z


# direct methods
.method public constructor <init>(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;Lˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lٴˑ/ⁱˊ;->ᴵᵔ:I

    iput-object p1, p0, Lٴˑ/ⁱˊ;->ٴᵢ:Lʼﾞ/ˊʻ;

    iput-boolean p2, p0, Lٴˑ/ⁱˊ;->ˉٴ:Z

    iput-boolean p3, p0, Lٴˑ/ⁱˊ;->ᵎⁱ:Z

    iput-object p4, p0, Lٴˑ/ⁱˊ;->ٴʼ:Lᴵⁱ/ﾞʻ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method

.method public constructor <init>(Lˈי/ˈ;Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lٴˑ/ⁱˊ;->ᴵᵔ:I

    iput-object p2, p0, Lٴˑ/ⁱˊ;->ٴᵢ:Lʼﾞ/ˊʻ;

    iput-boolean p3, p0, Lٴˑ/ⁱˊ;->ˉٴ:Z

    iput-boolean p4, p0, Lٴˑ/ⁱˊ;->ᵎⁱ:Z

    iput-object p5, p0, Lٴˑ/ⁱˊ;->ٴʼ:Lᴵⁱ/ﾞʻ;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lٴˑ/ⁱˊ;->ᴵᵔ:I

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lٴˑ/ⁱˊ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lٴˑ/ⁱˊ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lٴˑ/ⁱˊ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lٴˑ/ⁱˊ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lٴˑ/ⁱˊ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lٴˑ/ⁱˊ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 7

    .prologue
    iget p1, p0, Lٴˑ/ⁱˊ;->ᴵᵔ:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lٴˑ/ⁱˊ;

    iget-boolean v4, p0, Lٴˑ/ⁱˊ;->ᵎⁱ:Z

    iget-object v5, p0, Lٴˑ/ⁱˊ;->ٴʼ:Lᴵⁱ/ﾞʻ;

    iget-object v2, p0, Lٴˑ/ⁱˊ;->ٴᵢ:Lʼﾞ/ˊʻ;

    iget-boolean v3, p0, Lٴˑ/ⁱˊ;->ˉٴ:Z

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lٴˑ/ⁱˊ;-><init>(Lˈי/ˈ;Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)V

    return-object v0

    :pswitch_0
    move-object v1, p2

    new-instance p1, Lٴˑ/ⁱˊ;

    iget-boolean v4, p0, Lٴˑ/ⁱˊ;->ᵎⁱ:Z

    iget-object v5, p0, Lٴˑ/ⁱˊ;->ٴʼ:Lᴵⁱ/ﾞʻ;

    iget-object v2, p0, Lٴˑ/ⁱˊ;->ٴᵢ:Lʼﾞ/ˊʻ;

    iget-boolean v3, p0, Lٴˑ/ⁱˊ;->ˉٴ:Z

    move-object v6, v1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lٴˑ/ⁱˊ;-><init>(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;Lˈי/ˈ;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    iget v0, p0, Lٴˑ/ⁱˊ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lٴˑ/ⁱˊ;->ˊʻ:I

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

    new-instance v2, Lٴˑ/ﹳٴ;

    iget-object v7, p0, Lٴˑ/ⁱˊ;->ٴʼ:Lᴵⁱ/ﾞʻ;

    const/4 v8, 0x1

    iget-boolean v3, p0, Lٴˑ/ⁱˊ;->ᵎⁱ:Z

    iget-boolean v4, p0, Lٴˑ/ⁱˊ;->ˉٴ:Z

    iget-object v5, p0, Lٴˑ/ⁱˊ;->ٴᵢ:Lʼﾞ/ˊʻ;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lٴˑ/ﹳٴ;-><init>(ZZLʼﾞ/ˊʻ;Lˈי/ˈ;Lᴵⁱ/ﾞʻ;I)V

    iput v1, p0, Lٴˑ/ⁱˊ;->ˊʻ:I

    invoke-virtual {v5, v4, v2, p0}, Lʼﾞ/ˊʻ;->ﹳᐧ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1

    :pswitch_0
    iget v0, p0, Lٴˑ/ⁱˊ;->ˊʻ:I

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

    iget-object p1, p0, Lٴˑ/ⁱˊ;->ٴᵢ:Lʼﾞ/ˊʻ;

    invoke-virtual {p1}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lʼﾞ/ˊʻ;->ٴﹶ()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    iget-boolean p1, p0, Lٴˑ/ⁱˊ;->ˉٴ:Z

    if-eqz p1, :cond_6

    move v3, v1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    move v3, p1

    :goto_1
    new-instance v2, Lٴˑ/ﹳٴ;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-boolean v4, p0, Lٴˑ/ⁱˊ;->ᵎⁱ:Z

    iget-object v5, p0, Lٴˑ/ⁱˊ;->ٴᵢ:Lʼﾞ/ˊʻ;

    iget-object v7, p0, Lٴˑ/ⁱˊ;->ٴʼ:Lᴵⁱ/ﾞʻ;

    invoke-direct/range {v2 .. v8}, Lٴˑ/ﹳٴ;-><init>(ZZLʼﾞ/ˊʻ;Lˈי/ˈ;Lᴵⁱ/ﾞʻ;I)V

    iput v1, p0, Lٴˑ/ⁱˊ;->ˊʻ:I

    invoke-virtual {v5, v4, v2, p0}, Lʼﾞ/ˊʻ;->ﹳᐧ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_7

    move-object p1, v0

    :cond_7
    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
