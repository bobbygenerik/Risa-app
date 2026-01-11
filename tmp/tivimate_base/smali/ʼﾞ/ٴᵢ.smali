.class public final Lʼﾞ/ٴᵢ;
.super Landroidx/lifecycle/ʽʽ;
.source "SourceFile"


# instance fields
.field private final lambdaFunction:Lᴵⁱ/ﾞʻ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "L\u1d35\u2071/\uff9e\u02bb;"
        }
    .end annotation
.end field

.field public final ʼᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ˉʿ:Lﹳʽ/ˊʻ;

.field public final ˉˆ:Lʼﾞ/ᵔי;

.field public final יـ:Lˈי/ᵔᵢ;

.field public final ᵔʾ:Z

.field public final ᵔﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ﹳᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ﾞʻ:Lʼﾞ/ˊʻ;


# direct methods
.method public constructor <init>(Lʼﾞ/ˊʻ;Lﹳʽ/ˊʻ;Z[Ljava/lang/String;Lᴵⁱ/ﾞʻ;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroidx/lifecycle/ʽʽ;-><init>()V

    iput-object p1, p0, Lʼﾞ/ٴᵢ;->ﾞʻ:Lʼﾞ/ˊʻ;

    iput-object p2, p0, Lʼﾞ/ٴᵢ;->ˉʿ:Lﹳʽ/ˊʻ;

    iput-boolean p3, p0, Lʼﾞ/ٴᵢ;->ᵔʾ:Z

    new-instance p2, Lʼﾞ/ᵔי;

    invoke-direct {p2, p4, p0}, Lʼﾞ/ᵔי;-><init>([Ljava/lang/String;Lʼﾞ/ٴᵢ;)V

    iput-object p2, p0, Lʼﾞ/ٴᵢ;->ˉˆ:Lʼﾞ/ᵔי;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x1

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lʼﾞ/ٴᵢ;->ʼᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lʼﾞ/ٴᵢ;->ᵔﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lʼﾞ/ٴᵢ;->ﹳᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lʼﾞ/ˊʻ;->ˆʾ()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    iget-object p1, p1, Lʼﾞ/ˊʻ;->ⁱˊ:Lˈי/ᵔᵢ;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p2, p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    iget-object p2, p2, Lˊʽ/ˈ;->ʾˋ:Lˈי/ᵔᵢ;

    goto :goto_1

    :cond_3
    sget-object p2, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    :goto_1
    iput-object p2, p0, Lʼﾞ/ٴᵢ;->יـ:Lˈי/ᵔᵢ;

    iput-object p5, p0, Lʼﾞ/ٴᵢ;->lambdaFunction:Lᴵⁱ/ﾞʻ;

    return-void
.end method

.method public static final ﾞʻ(Lʼﾞ/ٴᵢ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    instance-of v0, p1, Lʼﾞ/ˆﾞ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lʼﾞ/ˆﾞ;

    iget v1, v0, Lʼﾞ/ˆﾞ;->ˉٴ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ˆﾞ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ˆﾞ;

    invoke-direct {v0, p0, p1}, Lʼﾞ/ˆﾞ;-><init>(Lʼﾞ/ٴᵢ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v0, Lʼﾞ/ˆﾞ;->ˊʻ:Ljava/lang/Object;

    iget v1, v0, Lʼﾞ/ˆﾞ;->ˉٴ:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_1

    iget p0, v0, Lʼﾞ/ˆﾞ;->ᴵᵔ:I

    iget-object v1, v0, Lʼﾞ/ˆﾞ;->ˈٴ:Lʼﾞ/ٴᵢ;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʼﾞ/ٴᵢ;->ﹳᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lʼﾞ/ٴᵢ;->ﾞʻ:Lʼﾞ/ˊʻ;

    iget-object p1, p1, Lʼﾞ/ˊʻ;->ﾞᴵ:Lʼﾞ/ٴﹶ;

    if-nez p1, :cond_3

    move-object p1, v2

    :cond_3
    iget-object v1, p0, Lʼﾞ/ٴᵢ;->ˉˆ:Lʼﾞ/ᵔי;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lʼﾞ/ᐧᴵ;

    invoke-direct {v5, p1, v1}, Lʼﾞ/ᐧᴵ;-><init>(Lʼﾞ/ٴﹶ;Lʼﾞ/ᵔי;)V

    invoke-virtual {p1, v5}, Lʼﾞ/ٴﹶ;->ﹳٴ(Lʼﾞ/ʼˎ;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lʼﾞ/ˆʾ;

    const/4 v5, 0x0

    invoke-direct {v1, p1, v2, v5}, Lʼﾞ/ˆʾ;-><init>(Lʼﾞ/ٴﹶ;Lˈי/ˈ;I)V

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ᵎˊ(Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    :cond_4
    :goto_1
    iget-object p1, p0, Lʼﾞ/ٴᵢ;->ᵔﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    move-object v1, p0

    if-eqz p1, :cond_8

    move-object p1, v2

    move p0, v3

    :goto_2
    :try_start_1
    iget-object v5, v1, Lʼﾞ/ٴᵢ;->ʼᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    :try_start_2
    iput-object v1, v0, Lʼﾞ/ˆﾞ;->ˈٴ:Lʼﾞ/ٴᵢ;

    iput v4, v0, Lʼﾞ/ˆﾞ;->ᴵᵔ:I

    iput v4, v0, Lʼﾞ/ˆﾞ;->ˉٴ:I

    iget-object p0, v1, Lʼﾞ/ٴᵢ;->ﾞʻ:Lʼﾞ/ˊʻ;

    iget-boolean p1, v1, Lʼﾞ/ٴᵢ;->ᵔʾ:Z

    iget-object v5, v1, Lʼﾞ/ٴᵢ;->lambdaFunction:Lᴵⁱ/ﾞʻ;

    invoke-static {p0, v4, p1, v5, v0}, Lٴˑ/ﾞᴵ;->ﾞʻ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p0, :cond_5

    return-object p0

    :cond_5
    move p0, v4

    goto :goto_2

    :goto_3
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Exception while computing database live data."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    if-eqz p0, :cond_7

    invoke-virtual {v1, p1}, Landroidx/lifecycle/ʽʽ;->ʼˎ(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    iget-object p1, v1, Lʼﾞ/ٴᵢ;->ᵔﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_5

    :goto_4
    iget-object p1, v1, Lʼﾞ/ٴᵢ;->ᵔﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0

    :cond_8
    move p0, v3

    :goto_5
    if-eqz p0, :cond_a

    iget-object p0, v1, Lʼﾞ/ٴᵢ;->ʼᐧ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    move-object p0, v1

    goto :goto_1

    :cond_a
    :goto_6
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method


# virtual methods
.method public final ᵎﹶ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lʼﾞ/ٴᵢ;->ˉʿ:Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lʼﾞ/ٴᵢ;->ﾞʻ:Lʼﾞ/ˊʻ;

    iget-object v0, v0, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    new-instance v2, Lʼﾞ/ᵎˊ;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lʼﾞ/ᵎˊ;-><init>(Lʼﾞ/ٴᵢ;Lˈי/ˈ;I)V

    const/4 v1, 0x2

    iget-object v3, p0, Lʼﾞ/ٴᵢ;->יـ:Lˈי/ᵔᵢ;

    invoke-static {v0, v3, v2, v1}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    return-void
.end method

.method public final ᵔᵢ()V
    .locals 1

    iget-object v0, p0, Lʼﾞ/ٴᵢ;->ˉʿ:Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
