.class public final Lʿᵢ/ʽʽ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public final synthetic ˉٴ:Lˊʼ/ﹳᐧ;

.field public ˊʻ:I

.field public final synthetic ٴʼ:Ljava/lang/Object;

.field public synthetic ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:Lˊʼ/ﹳᐧ;

.field public final synthetic ᵎˊ:Z

.field public final synthetic ᵎⁱ:Lʿᵢ/ˈٴ;


# direct methods
.method public constructor <init>(Lˊʼ/ﹳᐧ;Lʿᵢ/ˈٴ;Ljava/lang/Object;ZLˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ʽʽ;->ˉٴ:Lˊʼ/ﹳᐧ;

    iput-object p2, p0, Lʿᵢ/ʽʽ;->ᵎⁱ:Lʿᵢ/ˈٴ;

    iput-object p3, p0, Lʿᵢ/ʽʽ;->ٴʼ:Ljava/lang/Object;

    iput-boolean p4, p0, Lʿᵢ/ʽʽ;->ᵎˊ:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lʿᵢ/ᵎʻ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʿᵢ/ʽʽ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵢ/ʽʽ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ʽʽ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 6

    new-instance v0, Lʿᵢ/ʽʽ;

    iget-object v3, p0, Lʿᵢ/ʽʽ;->ٴʼ:Ljava/lang/Object;

    iget-boolean v4, p0, Lʿᵢ/ʽʽ;->ᵎˊ:Z

    iget-object v1, p0, Lʿᵢ/ʽʽ;->ˉٴ:Lˊʼ/ﹳᐧ;

    iget-object v2, p0, Lʿᵢ/ʽʽ;->ᵎⁱ:Lʿᵢ/ˈٴ;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lʿᵢ/ʽʽ;-><init>(Lˊʼ/ﹳᐧ;Lʿᵢ/ˈٴ;Ljava/lang/Object;ZLˈי/ˈ;)V

    iput-object p1, v0, Lʿᵢ/ʽʽ;->ٴᵢ:Ljava/lang/Object;

    return-object v0
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lʿᵢ/ʽʽ;->ˊʻ:I

    iget-object v1, p0, Lʿᵢ/ʽʽ;->ٴʼ:Ljava/lang/Object;

    iget-object v2, p0, Lʿᵢ/ʽʽ;->ᵎⁱ:Lʿᵢ/ˈٴ;

    iget-object v3, p0, Lʿᵢ/ʽʽ;->ˉٴ:Lˊʼ/ﹳᐧ;

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lʿᵢ/ʽʽ;->ᴵᵔ:Lˊʼ/ﹳᐧ;

    iget-object v5, p0, Lʿᵢ/ʽʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast v5, Lʿᵢ/ᵎʻ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʿᵢ/ʽʽ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʿᵢ/ᵎʻ;

    invoke-virtual {v2}, Lʿᵢ/ˈٴ;->ᵔᵢ()Lʿᵢ/ˑٴ;

    move-result-object v0

    iput-object p1, p0, Lʿᵢ/ʽʽ;->ٴᵢ:Ljava/lang/Object;

    iput-object v3, p0, Lʿᵢ/ʽʽ;->ᴵᵔ:Lˊʼ/ﹳᐧ;

    iput v5, p0, Lʿᵢ/ʽʽ;->ˊʻ:I

    invoke-interface {v0, p0}, Lʿᵢ/ˑٴ;->ˑﹳ(Lʿᵢ/ʽʽ;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, p1

    move-object p1, v0

    move-object v0, v3

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Lˊʼ/ﹳᐧ;->ʾˋ:I

    const/4 p1, 0x0

    iput-object p1, p0, Lʿᵢ/ʽʽ;->ٴᵢ:Ljava/lang/Object;

    iput-object p1, p0, Lʿᵢ/ʽʽ;->ᴵᵔ:Lˊʼ/ﹳᐧ;

    iput v4, p0, Lʿᵢ/ʽʽ;->ˊʻ:I

    invoke-interface {v5, v1, p0}, Lʿᵢ/ᵎʻ;->ⁱˊ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_4

    :goto_1
    return-object v6

    :cond_4
    :goto_2
    iget-boolean p1, p0, Lʿᵢ/ʽʽ;->ᵎˊ:Z

    if-eqz p1, :cond_6

    iget-object p1, v2, Lʿᵢ/ˈٴ;->ᵔᵢ:Lʼﾞ/ʻٴ;

    new-instance v0, Lʿᵢ/ʽ;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iget v3, v3, Lˊʼ/ﹳᐧ;->ʾˋ:I

    invoke-direct {v0, v2, v3, v1}, Lʿᵢ/ʽ;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lʼﾞ/ʻٴ;->ʽ(Lʿᵢ/ˈˏ;)V

    :cond_6
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
