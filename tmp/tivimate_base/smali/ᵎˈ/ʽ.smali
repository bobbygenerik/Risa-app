.class public final Lᵎˈ/ʽ;
.super Lʿᵔ/ˈ;
.source "SourceFile"


# instance fields
.field public final ˊʻ:Lᴵʾ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lʿᵔ/ˈ;-><init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V

    check-cast p1, Lᴵʾ/ᵔᵢ;

    iput-object p1, p0, Lᵎˈ/ʽ;->ˊʻ:Lᴵʾ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ˈ(Lʽʿ/יـ;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 4

    .prologue
    instance-of v0, p2, Lᵎˈ/ⁱˊ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᵎˈ/ⁱˊ;

    iget v1, v0, Lᵎˈ/ⁱˊ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lᵎˈ/ⁱˊ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lᵎˈ/ⁱˊ;

    check-cast p2, Lᴵʾ/ʽ;

    invoke-direct {v0, p0, p2}, Lᵎˈ/ⁱˊ;-><init>(Lᵎˈ/ʽ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p2, v0, Lᵎˈ/ⁱˊ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lᵎˈ/ⁱˊ;->ٴᵢ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lᵎˈ/ⁱˊ;->ˈٴ:Lʽʿ/יـ;

    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iput-object p1, v0, Lᵎˈ/ⁱˊ;->ˈٴ:Lʽʿ/יـ;

    iput v2, v0, Lᵎˈ/ⁱˊ;->ٴᵢ:I

    invoke-super {p0, p1, v0}, Lʿᵔ/ˈ;->ˈ(Lʽʿ/יـ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Lʽʿ/ٴﹶ;

    iget-object p1, p1, Lʽʿ/ٴﹶ;->ˈٴ:Lʽʿ/ﾞᴵ;

    invoke-virtual {p1}, Lʽʿ/ﾞᴵ;->ـˆ()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˑﹳ(Lˈי/ᵔᵢ;II)Lʿᵔ/ˈ;
    .locals 2

    new-instance v0, Lᵎˈ/ʽ;

    iget-object v1, p0, Lᵎˈ/ʽ;->ˊʻ:Lᴵʾ/ᵔᵢ;

    invoke-direct {v0, v1, p1, p2, p3}, Lᵎˈ/ʽ;-><init>(Lᴵⁱ/ʼᐧ;Lˈי/ᵔᵢ;II)V

    return-object v0
.end method
