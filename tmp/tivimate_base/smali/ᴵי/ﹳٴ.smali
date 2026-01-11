.class public abstract Lᴵי/ﹳٴ;
.super Lᴵי/ᐧᴵ;
.source "SourceFile"

# interfaces
.implements Lˈי/ˈ;
.implements Lᴵי/ـˆ;


# instance fields
.field public final ʽʽ:Lˈי/ᵔᵢ;


# direct methods
.method public constructor <init>(Lˈי/ᵔᵢ;ZZ)V
    .locals 0

    .prologue
    invoke-direct {p0, p3}, Lᴵי/ᐧᴵ;-><init>(Z)V

    if-eqz p2, :cond_0

    sget-object p2, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {p1, p2}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p2

    check-cast p2, Lᴵי/ᴵˑ;

    invoke-virtual {p0, p2}, Lᴵי/ᐧᴵ;->ٴʼ(Lᴵי/ᴵˑ;)V

    :cond_0
    invoke-interface {p1, p0}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p1

    iput-object p1, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public ʻᵎ(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public final ʽﹳ()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʾˋ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    return-object v0
.end method

.method public final ˈˏ(ILᴵי/ﹳٴ;Lᴵⁱ/ʼᐧ;)V
    .locals 4

    .prologue
    invoke-static {p1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p1

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :try_start_0
    iget-object p1, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lˊʽ/ⁱˊ;->ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    instance-of v2, p3, Lᴵʾ/ﹳٴ;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lᴵי/ﹳٴ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v2

    sget-object v3, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    if-ne v2, v3, :cond_0

    new-instance v2, Lᵢˎ/ˈ;

    invoke-direct {v2, p0}, Lᴵʾ/ᵎﹶ;-><init>(Lˈי/ˈ;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lᵢˎ/ˑﹳ;

    invoke-direct {v3, p0, v2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    move-object v2, v3

    :goto_0
    invoke-static {v1, p3}, Lˊʼ/ـˆ;->ⁱˊ(ILjava/lang/Object;)V

    invoke-interface {p3, p2, v2}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-static {v1, p3}, Lˊʼ/ـˆ;->ⁱˊ(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-static {p1, v0}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eq p2, p1, :cond_5

    invoke-virtual {p0, p2}, Lᴵי/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-static {p1, v0}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    instance-of p2, p1, Lkotlinx/coroutines/DispatchException;

    if-eqz p2, :cond_2

    check-cast p1, Lkotlinx/coroutines/DispatchException;

    iget-object p1, p1, Lkotlinx/coroutines/DispatchException;->ʾˋ:Ljava/lang/Throwable;

    :cond_2
    new-instance p2, Lʻᵢ/ﾞᴵ;

    invoke-direct {p2, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lᴵי/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    invoke-static {p2, p0, p3}, Lˉᵎ/ⁱˊ;->ﾞᴵ(Lˈי/ˈ;Lˈי/ˈ;Lᴵⁱ/ʼᐧ;)Lˈי/ˈ;

    move-result-object p1

    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    invoke-interface {p1, v0}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :try_start_4
    invoke-static {p2, p0, p3}, Lˉᵎ/ⁱˊ;->ﾞᴵ(Lˈי/ˈ;Lˈי/ˈ;Lᴵⁱ/ʼᐧ;)Lˈי/ˈ;

    move-result-object p1

    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    invoke-static {v0, p1}, Lˊʽ/ⁱˊ;->ᵔᵢ(Ljava/lang/Object;Lˈי/ˈ;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    instance-of p2, p1, Lkotlinx/coroutines/DispatchException;

    if-eqz p2, :cond_7

    check-cast p1, Lkotlinx/coroutines/DispatchException;

    iget-object p1, p1, Lkotlinx/coroutines/DispatchException;->ʾˋ:Ljava/lang/Throwable;

    :cond_7
    new-instance p2, Lʻᵢ/ﾞᴵ;

    invoke-direct {p2, p1}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lᴵי/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;)V

    throw p1
.end method

.method public final ˈⁱ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    instance-of v0, p1, Lᴵי/יـ;

    if-eqz v0, :cond_1

    check-cast p1, Lᴵי/יـ;

    iget-object v0, p1, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    sget-object v1, Lᴵי/יـ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lᴵי/ﹳٴ;->ʻᵎ(Ljava/lang/Throwable;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lᴵי/ﹳٴ;->ـﹶ(Ljava/lang/Object;)V

    return-void
.end method

.method public ـﹶ(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final ᵎⁱ(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 1

    iget-object v0, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    invoke-static {p1, v0}, Lᴵי/ʾᵎ;->ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    return-void
.end method

.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    invoke-static {p1}, Lʻᵢ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lᴵי/יـ;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ˋᵔ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᴵי/ʾᵎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lᴵי/ﹳٴ;->ٴﹶ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᴵי/ﹳٴ;->ʽʽ:Lˈי/ᵔᵢ;

    return-object v0
.end method
