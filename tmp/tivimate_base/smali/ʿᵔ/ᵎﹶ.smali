.class public final Lʿᵔ/ᵎﹶ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public final synthetic ˉٴ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic ˊʻ:[Lᵎˈ/ᵎﹶ;

.field public final synthetic ٴᵢ:I

.field public ᴵᵔ:I

.field public final synthetic ᵎⁱ:Lʽʿ/ﾞᴵ;


# direct methods
.method public constructor <init>([Lᵎˈ/ᵎﹶ;ILjava/util/concurrent/atomic/AtomicInteger;Lʽʿ/ﾞᴵ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʿᵔ/ᵎﹶ;->ˊʻ:[Lᵎˈ/ᵎﹶ;

    iput p2, p0, Lʿᵔ/ᵎﹶ;->ٴᵢ:I

    iput-object p3, p0, Lʿᵔ/ᵎﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lʿᵔ/ᵎﹶ;->ᵎⁱ:Lʽʿ/ﾞᴵ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lʿᵔ/ᵎﹶ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵔ/ᵎﹶ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵔ/ᵎﹶ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 6

    new-instance v0, Lʿᵔ/ᵎﹶ;

    iget-object v3, p0, Lʿᵔ/ᵎﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lʿᵔ/ᵎﹶ;->ᵎⁱ:Lʽʿ/ﾞᴵ;

    iget-object v1, p0, Lʿᵔ/ᵎﹶ;->ˊʻ:[Lᵎˈ/ᵎﹶ;

    iget v2, p0, Lʿᵔ/ᵎﹶ;->ٴᵢ:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lʿᵔ/ᵎﹶ;-><init>([Lᵎˈ/ᵎﹶ;ILjava/util/concurrent/atomic/AtomicInteger;Lʽʿ/ﾞᴵ;Lˈי/ˈ;)V

    return-object v0
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lʿᵔ/ᵎﹶ;->ᴵᵔ:I

    const/4 v1, 0x0

    iget-object v2, p0, Lʿᵔ/ᵎﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lʿᵔ/ᵎﹶ;->ᵎⁱ:Lʽʿ/ﾞᴵ;

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lʿᵔ/ᵎﹶ;->ˊʻ:[Lᵎˈ/ᵎﹶ;

    iget v0, p0, Lʿᵔ/ᵎﹶ;->ٴᵢ:I

    aget-object p1, p1, v0

    new-instance v5, Lʿᵔ/ﾞᴵ;

    invoke-direct {v5, v3, v0}, Lʿᵔ/ﾞᴵ;-><init>(Lʽʿ/ﾞᴵ;I)V

    iput v4, p0, Lʿᵔ/ᵎﹶ;->ᴵᵔ:I

    invoke-interface {p1, v5, p0}, Lᵎˈ/ᵎﹶ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v3, v1}, Lʽʿ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Throwable;)Z

    :cond_3
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3, v1}, Lʽʿ/ﾞᴵ;->ᵔᵢ(Ljava/lang/Throwable;)Z

    :cond_4
    throw p1
.end method
