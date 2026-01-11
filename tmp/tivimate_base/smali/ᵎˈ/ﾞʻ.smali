.class public final Lᵎˈ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵎﹶ;


# instance fields
.field public final synthetic ʾˋ:Lʿᵢ/ﹳᐧ;

.field public final synthetic ᴵˊ:Lʿᵢ/ˉˆ;


# direct methods
.method public constructor <init>(Lʿᵢ/ﹳᐧ;Lʿᵢ/ˉˆ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵎˈ/ﾞʻ;->ʾˋ:Lʿᵢ/ﹳᐧ;

    iput-object p2, p0, Lᵎˈ/ﾞʻ;->ᴵˊ:Lʿᵢ/ˉˆ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 8

    .prologue
    instance-of v0, p2, Lᵎˈ/ٴﹶ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎˈ/ٴﹶ;

    iget v1, v0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ٴﹶ;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ٴﹶ;-><init>(Lᵎˈ/ﾞʻ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lᵎˈ/ٴﹶ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lᵎˈ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Lʿᵔ/ᵔʾ;

    :try_start_0
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lᵎˈ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_6

    :cond_3
    iget-object p1, v0, Lᵎˈ/ٴﹶ;->ˉٴ:Lᵎˈ/ᵔᵢ;

    iget-object v1, v0, Lᵎˈ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Lᵎˈ/ﾞʻ;

    :try_start_1
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Lᵎˈ/ﾞʻ;->ʾˋ:Lʿᵢ/ﹳᐧ;

    iput-object p0, v0, Lᵎˈ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    iput-object p1, v0, Lᵎˈ/ٴﹶ;->ˉٴ:Lᵎˈ/ᵔᵢ;

    iput v4, v0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    invoke-virtual {p2, p1, v0}, Lʿᵢ/ﹳᐧ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p2, v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, p0

    :goto_1
    new-instance p2, Lʿᵔ/ᵔʾ;

    iget-object v3, v0, Lᴵʾ/ʽ;->ᴵˊ:Lˈי/ᵔᵢ;

    invoke-direct {p2, p1, v3}, Lʿᵔ/ᵔʾ;-><init>(Lᵎˈ/ᵔᵢ;Lˈי/ᵔᵢ;)V

    :try_start_3
    iget-object p1, v1, Lᵎˈ/ﾞʻ;->ᴵˊ:Lʿᵢ/ˉˆ;

    iput-object p2, v0, Lᵎˈ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    iput-object v5, v0, Lᵎˈ/ٴﹶ;->ˉٴ:Lᵎˈ/ᵔᵢ;

    iput v2, v0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    invoke-virtual {p1, p2, v5, v0}, Lʿᵢ/ˉˆ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v6, :cond_6

    goto :goto_5

    :cond_6
    move-object p1, p2

    :goto_2
    invoke-virtual {p1}, Lᴵʾ/ʽ;->ﹳᐧ()V

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_3
    invoke-virtual {p1}, Lᴵʾ/ʽ;->ﹳᐧ()V

    throw p2

    :catchall_3
    move-exception p1

    move-object v1, p0

    :goto_4
    new-instance p2, Lᵎˈ/ᵎⁱ;

    invoke-direct {p2, p1}, Lᵎˈ/ᵎⁱ;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, v1, Lᵎˈ/ﾞʻ;->ᴵˊ:Lʿᵢ/ˉˆ;

    iput-object p1, v0, Lᵎˈ/ٴﹶ;->ٴᵢ:Ljava/lang/Object;

    iput-object v5, v0, Lᵎˈ/ٴﹶ;->ˉٴ:Lᵎˈ/ᵔᵢ;

    iput v3, v0, Lᵎˈ/ٴﹶ;->ᴵᵔ:I

    invoke-static {p2, v1, p1, v0}, Lᵎˈ/ˈٴ;->ﹳٴ(Lᵎˈ/ᵎⁱ;Lʿᵢ/ˉˆ;Ljava/lang/Throwable;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_7

    :goto_5
    return-object v6

    :cond_7
    :goto_6
    throw p1
.end method
