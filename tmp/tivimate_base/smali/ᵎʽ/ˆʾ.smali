.class public final Lᵎʽ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lᵎʽ/ˉˆ;

.field public final ﹳٴ:Lᵎʽ/ˉˆ;


# direct methods
.method public constructor <init>(Lᵎʽ/ˉˆ;Lᵎʽ/ˉˆ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎʽ/ˆʾ;->ﹳٴ:Lᵎʽ/ˉˆ;

    iput-object p2, p0, Lᵎʽ/ˆʾ;->ⁱˊ:Lᵎʽ/ˉˆ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p1, Lᵎʽ/ʼˎ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lᵎʽ/ʼˎ;

    iget v1, v0, Lᵎʽ/ʼˎ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎʽ/ʼˎ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎʽ/ʼˎ;

    invoke-direct {v0, p0, p1}, Lᵎʽ/ʼˎ;-><init>(Lᵎʽ/ˆʾ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v0, Lᵎʽ/ʼˎ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᵎʽ/ʼˎ;->ٴᵢ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, v0, Lᵎʽ/ʼˎ;->ˈٴ:Lᵎʽ/ˆʾ;

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p0, v0, Lᵎʽ/ʼˎ;->ˈٴ:Lᵎʽ/ˆʾ;

    iput v3, v0, Lᵎʽ/ʼˎ;->ٴᵢ:I

    iget-object p1, p0, Lᵎʽ/ˆʾ;->ﹳٴ:Lᵎʽ/ˉˆ;

    invoke-interface {p1, v0}, Lᵎʽ/ˉˆ;->ʽ(Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p0

    :goto_1
    iget-object p1, v1, Lᵎʽ/ˆʾ;->ⁱˊ:Lᵎʽ/ˉˆ;

    const/4 v1, 0x0

    iput-object v1, v0, Lᵎʽ/ʼˎ;->ˈٴ:Lᵎʽ/ˆʾ;

    iput v2, v0, Lᵎʽ/ʼˎ;->ٴᵢ:I

    invoke-interface {p1, v0}, Lᵎʽ/ˉˆ;->ʽ(Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_5

    :goto_2
    return-object v4

    :cond_5
    :goto_3
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method

.method public final ﹳٴ()D
    .locals 7

    .prologue
    iget-object v0, p0, Lᵎʽ/ˆʾ;->ﹳٴ:Lᵎʽ/ˉˆ;

    invoke-interface {v0}, Lᵎʽ/ˉˆ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v0, v1, v5

    if-gtz v0, :cond_0

    cmpg-double v0, v5, v3

    if-gtz v0, :cond_0

    return-wide v5

    :cond_0
    iget-object v0, p0, Lᵎʽ/ˆʾ;->ⁱˊ:Lᵎʽ/ˉˆ;

    invoke-interface {v0}, Lᵎʽ/ˉˆ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v0, v1, v5

    if-gtz v0, :cond_1

    cmpg-double v0, v5, v3

    if-gtz v0, :cond_1

    return-wide v5

    :cond_1
    return-wide v3
.end method
