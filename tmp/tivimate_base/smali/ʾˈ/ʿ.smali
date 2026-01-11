.class public final Lʾˈ/ʿ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ᵔﹳ;


# instance fields
.field public final synthetic ˉٴ:Lʾˈ/ᴵʼ;

.field public synthetic ˊʻ:Lᵎˈ/ᵔᵢ;

.field public synthetic ٴᵢ:Ljava/lang/Throwable;

.field public ᴵᵔ:I


# direct methods
.method public constructor <init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʾˈ/ʿ;->ˉٴ:Lʾˈ/ᴵʼ;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lᵎˈ/ᵔᵢ;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lˈי/ˈ;

    new-instance v0, Lʾˈ/ʿ;

    iget-object v1, p0, Lʾˈ/ʿ;->ˉٴ:Lʾˈ/ᴵʼ;

    invoke-direct {v0, v1, p3}, Lʾˈ/ʿ;-><init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;)V

    iput-object p1, v0, Lʾˈ/ʿ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    iput-object p2, v0, Lʾˈ/ʿ;->ٴᵢ:Ljava/lang/Throwable;

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {v0, p1}, Lʾˈ/ʿ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    iget v0, p0, Lʾˈ/ʿ;->ᴵᵔ:I

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

    iget-object p1, p0, Lʾˈ/ʿ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    iget-object v0, p0, Lʾˈ/ʿ;->ٴᵢ:Ljava/lang/Throwable;

    new-instance v2, Lʾˈ/ᵎⁱ;

    iget-object v3, p0, Lʾˈ/ʿ;->ˉٴ:Lʾˈ/ᴵʼ;

    iget-object v3, v3, Lʾˈ/ᴵʼ;->ⁱˊ:Lʾˈ/ﹳـ;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lʾˈ/ﹳـ;->ﹳٴ(Lʾˈ/ᵔٴ;)Lʾˈ/ᵔٴ;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Lʾˈ/ᵎⁱ;-><init>(Lʾˈ/ᵔٴ;Lʾˈ/ـﹶ;Ljava/util/Map;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Init session datastore failed with exception message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Emit fallback session "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lʾˈ/ᵔٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FirebaseSessions"

    nop

    iput-object v4, p0, Lʾˈ/ʿ;->ˊʻ:Lᵎˈ/ᵔᵢ;

    iput v1, p0, Lʾˈ/ʿ;->ᴵᵔ:I

    invoke-interface {p1, v2, p0}, Lᵎˈ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
