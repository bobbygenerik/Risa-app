.class public final Lʼˋ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final ˈٴ:Lʻᵢ/ﹳٴ;

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lˊʼ/ᵔﹳ;Lᵎˈ/ᵔᵢ;Landroidx/lifecycle/ˉˆ;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lʼˋ/ˆʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼˋ/ˆʾ;->ʽʽ:Ljava/lang/Object;

    iput-object p2, p0, Lʼˋ/ˆʾ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʼˋ/ˆʾ;->ˈٴ:Lʻᵢ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lᵎˈ/ᵔᵢ;Lʼﾞ/ˊʻ;Lar/tvplayer/core/domain/ـˆ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʼˋ/ˆʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼˋ/ˆʾ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʼˋ/ˆʾ;->ʽʽ:Ljava/lang/Object;

    iput-object p3, p0, Lʼˋ/ˆʾ;->ˈٴ:Lʻᵢ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Lᵎˈ/ᵔᵢ;Lˈי/ᵔᵢ;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lʼˋ/ˆʾ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʼˋ/ˆʾ;->ᴵˊ:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lˊʽ/ⁱˊ;->ˑﹳ:Lʼⁱ/ˎᐧ;

    invoke-interface {p2, v0, v1}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lʼˋ/ˆʾ;->ʽʽ:Ljava/lang/Object;

    new-instance p2, Lʼˋ/ﾞᴵ;

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p2, p1, v0, v1}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Lˈי/ˈ;I)V

    iput-object p2, p0, Lʼˋ/ˆʾ;->ˈٴ:Lʻᵢ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 8

    .prologue
    iget v0, p0, Lʼˋ/ˆʾ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lᵎˈ/ﹳᐧ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎˈ/ﹳᐧ;

    iget v1, v0, Lᵎˈ/ﹳᐧ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ﹳᐧ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ﹳᐧ;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ﹳᐧ;-><init>(Lʼˋ/ˆʾ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lᵎˈ/ﹳᐧ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ﹳᐧ;->ˉٴ:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    const/4 v5, 0x1

    sget-object v6, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p1, v0, Lᵎˈ/ﹳᐧ;->ᴵᵔ:Ljava/lang/Object;

    iget-object v1, v0, Lᵎˈ/ﹳᐧ;->ˈٴ:Lʼˋ/ˆʾ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʼˋ/ˆʾ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lˊʼ/ᵔﹳ;

    iget-boolean p2, p2, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lʼˋ/ˆʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᵎˈ/ᵔᵢ;

    iput v5, v0, Lᵎˈ/ﹳᐧ;->ˉٴ:I

    invoke-interface {p2, p1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_7

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lʼˋ/ˆʾ;->ˈٴ:Lʻᵢ/ﹳٴ;

    check-cast p2, Landroidx/lifecycle/ˉˆ;

    iput-object p0, v0, Lᵎˈ/ﹳᐧ;->ˈٴ:Lʼˋ/ˆʾ;

    iput-object p1, v0, Lᵎˈ/ﹳᐧ;->ᴵᵔ:Ljava/lang/Object;

    iput v3, v0, Lᵎˈ/ﹳᐧ;->ˉٴ:I

    invoke-virtual {p2, p1, v0}, Landroidx/lifecycle/ˉˆ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, v1, Lʼˋ/ˆʾ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lˊʼ/ᵔﹳ;

    iput-boolean v5, p2, Lˊʼ/ᵔﹳ;->ʾˋ:Z

    iget-object p2, v1, Lʼˋ/ˆʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᵎˈ/ᵔᵢ;

    const/4 v1, 0x0

    iput-object v1, v0, Lᵎˈ/ﹳᐧ;->ˈٴ:Lʼˋ/ˆʾ;

    iput-object v1, v0, Lᵎˈ/ﹳᐧ;->ᴵᵔ:Ljava/lang/Object;

    iput v2, v0, Lᵎˈ/ﹳᐧ;->ˉٴ:I

    invoke-interface {p2, p1, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v6, :cond_7

    :goto_2
    move-object v4, v6

    :cond_7
    :goto_3
    return-object v4

    :pswitch_0
    iget-object v0, p0, Lʼˋ/ˆʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˈי/ᵔᵢ;

    iget-object v1, p0, Lʼˋ/ˆʾ;->ˈٴ:Lʻᵢ/ﹳٴ;

    check-cast v1, Lʼˋ/ﾞᴵ;

    iget-object v2, p0, Lʼˋ/ˆʾ;->ʽʽ:Ljava/lang/Object;

    invoke-static {v0, p1, v2, v1, p2}, Lʿᵔ/ⁱˊ;->ﹳٴ(Lˈי/ᵔᵢ;Ljava/lang/Object;Ljava/lang/Object;Lᴵⁱ/ʼᐧ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_8

    goto :goto_4

    :cond_8
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_4
    return-object p1

    :pswitch_1
    instance-of v0, p2, Lʼˋ/ʼˎ;

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Lʼˋ/ʼˎ;

    iget v1, v0, Lʼˋ/ʼˎ;->ᴵᵔ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_9

    sub-int/2addr v1, v2

    iput v1, v0, Lʼˋ/ʼˎ;->ᴵᵔ:I

    goto :goto_5

    :cond_9
    new-instance v0, Lʼˋ/ʼˎ;

    invoke-direct {v0, p0, p2}, Lʼˋ/ʼˎ;-><init>(Lʼˋ/ˆʾ;Lˈי/ˈ;)V

    :goto_5
    iget-object p2, v0, Lʼˋ/ʼˎ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lʼˋ/ʼˎ;->ᴵᵔ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_c

    if-eq v1, v3, :cond_b

    if-ne v1, v2, :cond_a

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    iget-object p1, v0, Lʼˋ/ʼˎ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p2, p0, Lʼˋ/ˆʾ;->ᴵˊ:Ljava/lang/Object;

    check-cast p2, Lᵎˈ/ᵔᵢ;

    check-cast p1, Ljava/util/Set;

    iget-object p1, p0, Lʼˋ/ˆʾ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lʼﾞ/ˊʻ;

    iget-object v1, p0, Lʼˋ/ˆʾ;->ˈٴ:Lʻᵢ/ﹳٴ;

    check-cast v1, Lar/tvplayer/core/domain/ـˆ;

    iput-object p2, v0, Lʼˋ/ʼˎ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    iput v3, v0, Lʼˋ/ʼˎ;->ᴵᵔ:I

    const/4 v5, 0x0

    invoke-static {p1, v3, v5, v1, v0}, Lٴˑ/ﾞᴵ;->ﾞʻ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_d

    goto :goto_8

    :cond_d
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_6
    const/4 v1, 0x0

    iput-object v1, v0, Lʼˋ/ʼˎ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    iput v2, v0, Lʼˋ/ʼˎ;->ᴵᵔ:I

    invoke-interface {p1, p2, v0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    sget-object v4, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    :goto_8
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
