.class public final Lʿᵔ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final synthetic ʾˋ:Lʽʿ/ﾞᴵ;

.field public final synthetic ᴵˊ:I


# direct methods
.method public constructor <init>(Lʽʿ/ﾞᴵ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵔ/ﾞᴵ;->ʾˋ:Lʽʿ/ﾞᴵ;

    iput p2, p0, Lʿᵔ/ﾞᴵ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 5

    .prologue
    instance-of v0, p2, Lʿᵔ/ˑﹳ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʿᵔ/ˑﹳ;

    iget v1, v0, Lʿᵔ/ˑﹳ;->ˊʻ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʿᵔ/ˑﹳ;->ˊʻ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʿᵔ/ˑﹳ;

    invoke-direct {v0, p0, p2}, Lʿᵔ/ˑﹳ;-><init>(Lʿᵔ/ﾞᴵ;Lˈי/ˈ;)V

    :goto_0
    iget-object p2, v0, Lʿᵔ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    iget v1, v0, Lʿᵔ/ˑﹳ;->ˊʻ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance p2, Lﹶˈ/יـ;

    iget v1, p0, Lʿᵔ/ﾞᴵ;->ᴵˊ:I

    invoke-direct {p2, v1, p1}, Lﹶˈ/יـ;-><init>(ILjava/lang/Object;)V

    iput v3, v0, Lʿᵔ/ˑﹳ;->ˊʻ:I

    iget-object p1, p0, Lʿᵔ/ﾞᴵ;->ʾˋ:Lʽʿ/ﾞᴵ;

    invoke-interface {p1, p2, v0}, Lʽʿ/ʻٴ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iput v2, v0, Lʿᵔ/ˑﹳ;->ˊʻ:I

    invoke-static {v0}, Lᴵי/ʾᵎ;->ʾˋ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_5

    :goto_2
    return-object v4

    :cond_5
    :goto_3
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
