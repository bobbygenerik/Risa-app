.class public final Lʼﾞ/ʻٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lᵎˈ/ٴᵢ;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lᵎˈ/ٴᵢ;

    sget-object v1, Lʿᵢ/ﹳﹳ;->ⁱˊ:Lʿᵢ/ﹳﹳ;

    invoke-direct {v0, v1}, Lᵎˈ/ٴᵢ;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lʼﾞ/ʻٴ;->ﹳٴ:Lᵎˈ/ٴᵢ;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    new-instance v0, Lᵎˈ/ٴᵢ;

    invoke-direct {v0, p1}, Lᵎˈ/ٴᵢ;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lʼﾞ/ʻٴ;->ﹳٴ:Lᵎˈ/ٴᵢ;

    return-void
.end method


# virtual methods
.method public ʽ(Lʿᵢ/ˈˏ;)V
    .locals 5

    .prologue
    :cond_0
    iget-object v0, p0, Lʼﾞ/ʻٴ;->ﹳٴ:Lᵎˈ/ٴᵢ;

    invoke-virtual {v0}, Lᵎˈ/ٴᵢ;->ᵔᵢ()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lʿᵢ/ˈˏ;

    instance-of v3, v2, Lʿᵢ/ᵎᵔ;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lʿᵢ/ﹳﹳ;->ⁱˊ:Lʿᵢ/ﹳﹳ;

    invoke-static {v2, v3}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lʿᵢ/ʽ;

    if-eqz v3, :cond_3

    iget v3, p1, Lʿᵢ/ˈˏ;->ﹳٴ:I

    iget v4, v2, Lʿᵢ/ˈˏ;->ﹳٴ:I

    if-le v3, v4, :cond_4

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lʿᵢ/ˈʿ;

    if-eqz v3, :cond_7

    :cond_4
    :goto_2
    sget-object v3, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    if-nez v1, :cond_5

    move-object v1, v3

    :cond_5
    if-nez v2, :cond_6

    move-object v2, v3

    :cond_6
    invoke-virtual {v0, v1, v2}, Lᵎˈ/ٴᵢ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public ⁱˊ()Lʿᵢ/ˈˏ;
    .locals 1

    iget-object v0, p0, Lʼﾞ/ʻٴ;->ﹳٴ:Lᵎˈ/ٴᵢ;

    invoke-virtual {v0}, Lᵎˈ/ٴᵢ;->ᵔᵢ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʿᵢ/ˈˏ;

    return-object v0
.end method

.method public ﹳٴ(Lʼﾞ/ﹳـ;Lᴵʾ/ʽ;)V
    .locals 4

    .prologue
    instance-of v0, p2, Lʼﾞ/ʽﹳ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʼﾞ/ʽﹳ;

    iget v1, v0, Lʼﾞ/ʽﹳ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ʽﹳ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ʽﹳ;

    invoke-direct {v0, p0, p2}, Lʼﾞ/ʽﹳ;-><init>(Lʼﾞ/ʻٴ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lʼﾞ/ʽﹳ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lʼﾞ/ʽﹳ;->ˊʻ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput v2, v0, Lʼﾞ/ʽﹳ;->ˊʻ:I

    iget-object p2, p0, Lʼﾞ/ʻٴ;->ﹳٴ:Lᵎˈ/ٴᵢ;

    invoke-virtual {p2, p1, v0}, Lᵎˈ/ٴᵢ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    return-void
.end method
