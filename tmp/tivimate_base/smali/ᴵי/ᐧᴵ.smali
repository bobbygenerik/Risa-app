.class public Lᴵי/ᐧᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵי/ᴵˑ;
.implements Lᴵי/ـﹶ;


# static fields
.field public static final synthetic ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state$volatile"

    const-class v1, Lᴵי/ᐧᴵ;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ᐧᴵ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lᴵי/ʾᵎ;->ˆʾ:Lᴵי/ٴʼ;

    goto :goto_0

    :cond_0
    sget-object p1, Lᴵי/ʾᵎ;->ʼˎ:Lᴵי/ٴʼ;

    :goto_0
    iput-object p1, p0, Lᴵי/ᐧᴵ;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static ʼˈ(Lˊʽ/ˆʾ;)Lᴵי/ˉˆ;
    .locals 2

    .prologue
    :goto_0
    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ʼˎ()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lˊʽ/ˆʾ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ﾞᴵ()Lˊʽ/ˆʾ;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lˊʽ/ˆʾ;

    :goto_1
    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ʼˎ()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lˊʽ/ˆʾ;

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ᵔᵢ()Lˊʽ/ˆʾ;

    move-result-object p0

    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ʼˎ()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lᴵי/ˉˆ;

    if-eqz v0, :cond_3

    check-cast p0, Lᴵי/ˉˆ;

    return-object p0

    :cond_3
    instance-of v0, p0, Lᴵי/ˏᵢ;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ᐧᴵ(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    instance-of v0, p0, Lᴵי/ᐧﾞ;

    const-string v1, "Active"

    if-eqz v0, :cond_2

    check-cast p0, Lᴵי/ᐧﾞ;

    invoke-virtual {p0}, Lᴵי/ᐧﾞ;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Cancelling"

    return-object p0

    :cond_0
    sget-object v0, Lᴵי/ᐧﾞ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Completing"

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    instance-of v0, p0, Lᴵי/ـˏ;

    if-eqz v0, :cond_4

    check-cast p0, Lᴵי/ـˏ;

    invoke-interface {p0}, Lᴵי/ـˏ;->ʽ()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    const-string p0, "New"

    return-object p0

    :cond_4
    instance-of p0, p0, Lᴵי/יـ;

    if-eqz p0, :cond_5

    const-string p0, "Cancelled"

    return-object p0

    :cond_5
    const-string p0, "Completed"

    return-object p0
.end method


# virtual methods
.method public final getKey()Lˈי/ᵎﹶ;
    .locals 1

    sget-object v0, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/יـ;

    if-nez v1, :cond_1

    instance-of v1, v0, Lᴵי/ᐧﾞ;

    if-eqz v1, :cond_0

    check-cast v0, Lᴵי/ᐧﾞ;

    invoke-virtual {v0}, Lᴵי/ᐧﾞ;->ˑﹳ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final start()Z
    .locals 2

    .prologue
    :goto_0
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᴵי/ᐧᴵ;->ᐧﾞ(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ˊˋ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lᴵי/ᐧᴵ;->ᐧᴵ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʻٴ(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ᴵᵔ()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ʼʼ(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 4

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ʽﹳ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    :cond_1
    return-object p1

    :cond_2
    check-cast p1, Lᴵי/ـﹶ;

    check-cast p1, Lᴵי/ᐧᴵ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lᴵי/ᐧﾞ;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lᴵי/ᐧﾞ;

    invoke-virtual {v2}, Lᴵי/ᐧﾞ;->ⁱˊ()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    :cond_3
    instance-of v2, v0, Lᴵי/יـ;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lᴵי/יـ;

    iget-object v2, v2, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    goto :goto_1

    :cond_4
    instance-of v2, v0, Lᴵי/ـˏ;

    if-nez v2, :cond_7

    move-object v2, v1

    :goto_1
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-eqz v3, :cond_5

    move-object v1, v2

    check-cast v1, Ljava/util/concurrent/CancellationException;

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {v0}, Lᴵי/ᐧᴵ;->ᐧᴵ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parent job is "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, p1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    :cond_6
    return-object v1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʼᐧ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 3

    .prologue
    :cond_0
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/ـˏ;

    if-nez v1, :cond_2

    instance-of p1, v0, Lᴵי/יـ;

    if-nez p1, :cond_1

    invoke-static {v0}, Lᴵי/ʾᵎ;->ʻٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    check-cast v0, Lᴵי/יـ;

    iget-object p1, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    throw p1

    :cond_2
    invoke-virtual {p0, v0}, Lᴵי/ᐧᴵ;->ᐧﾞ(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Lᴵי/ʿᵢ;

    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lᴵי/ʿᵢ;-><init>(Lˈי/ˈ;Lᴵי/ᐧᴵ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʻٴ()V

    new-instance p1, Lᴵי/ˉʿ;

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Lᴵי/ˉʿ;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lᴵי/ʾᵎ;->ᵔʾ(Lᴵי/ᴵˑ;ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;

    move-result-object p1

    new-instance v1, Lᴵי/ᵔᵢ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lᴵי/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lᴵי/ٴﹶ;->ʼʼ(Lᴵי/ˊᵔ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ʽ()Z
    .locals 2

    .prologue
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/ـˏ;

    if-eqz v1, :cond_0

    check-cast v0, Lᴵי/ـˏ;

    invoke-interface {v0}, Lᴵי/ـˏ;->ʽ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʽʽ(Lᴵי/ᐧﾞ;Ljava/util/ArrayList;)Ljava/lang/Throwable;
    .locals 5

    .prologue
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lᴵי/ᐧﾞ;->ˑﹳ()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ʽﹳ()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :cond_2
    if-ge v2, p1, :cond_3

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    instance-of v4, v4, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v1

    :goto_0
    check-cast v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v2, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_5
    if-ge v0, v2, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    if-eq v4, p1, :cond_5

    instance-of v4, v4, Lkotlinx/coroutines/TimeoutCancellationException;

    if-eqz v4, :cond_5

    move-object v1, v3

    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    return-object v1

    :cond_7
    return-object p1
.end method

.method public ʽﹳ()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final ʾᵎ(Lᴵי/ـˏ;Ljava/lang/Object;)V
    .locals 6

    .prologue
    sget-object v0, Lᴵי/ᐧᴵ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵔʾ;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lᴵי/ᵎⁱ;->ﹳٴ()V

    sget-object v1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v0, p2, Lᴵי/יـ;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lᴵי/יـ;

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    instance-of v0, p1, Lᴵי/ʿ;

    const-string v2, " for "

    const-string v3, "Exception in completion handler "

    if-eqz v0, :cond_3

    :try_start_0
    move-object v0, p1

    check-cast v0, Lᴵי/ʿ;

    invoke-virtual {v0, p2}, Lᴵי/ʿ;->ٴﹶ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lᴵי/ᐧᴵ;->ᵎⁱ(Lkotlinx/coroutines/CompletionHandlerException;)V

    goto :goto_4

    :cond_3
    invoke-interface {p1}, Lᴵי/ـˏ;->ˈ()Lᴵי/ˏᵢ;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lˊʽ/ᵔᵢ;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Lˊʽ/ᵔᵢ;-><init>(I)V

    invoke-virtual {p1, v0, v4}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    sget-object v0, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊʽ/ˆʾ;

    :goto_2
    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    instance-of v4, v0, Lᴵי/ʿ;

    if-eqz v4, :cond_5

    :try_start_1
    move-object v4, v0

    check-cast v4, Lᴵי/ʿ;

    invoke-virtual {v4, p2}, Lᴵי/ʿ;->ٴﹶ(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    if-eqz v1, :cond_4

    invoke-static {v1, v4}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lˊʽ/ˆʾ;->ᵔᵢ()Lˊʽ/ˆʾ;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, v1}, Lᴵי/ᐧᴵ;->ᵎⁱ(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public final ʿ(Lᴵי/ٴʼ;)V
    .locals 3

    .prologue
    new-instance v0, Lᴵי/ˏᵢ;

    invoke-direct {v0}, Lˊʽ/ˆʾ;-><init>()V

    iget-boolean v1, p1, Lᴵי/ٴʼ;->ʾˋ:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lᴵי/ʼˈ;

    invoke-direct {v1, v0}, Lᴵי/ʼˈ;-><init>(Lᴵי/ˏᵢ;)V

    move-object v0, v1

    :cond_1
    :goto_0
    sget-object v1, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    :goto_1
    return-void
.end method

.method public final ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p1, p0}, Lᴵⁱ/ʼᐧ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final ˆﾞ()Z
    .locals 1

    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lᴵי/ـˏ;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final ˈʿ()Ljava/util/concurrent/CancellationException;
    .locals 4

    .prologue
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/ᐧﾞ;

    const-string v2, "Job is still new or active: "

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Lᴵי/ᐧﾞ;

    invoke-virtual {v0}, Lᴵי/ᐧﾞ;->ⁱˊ()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is cancelling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v3, :cond_2

    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ʽﹳ()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {v2, v1, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    return-object v2

    :cond_2
    return-object v3

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v1, v0, Lᴵי/ـˏ;

    if-nez v1, :cond_8

    instance-of v1, v0, Lᴵי/יـ;

    if-eqz v1, :cond_7

    check-cast v0, Lᴵי/יـ;

    iget-object v0, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_5
    if-nez v3, :cond_6

    new-instance v1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ʽﹳ()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    return-object v1

    :cond_6
    return-object v3

    :cond_7
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " has completed normally"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˈٴ(Lᴵʾ/ᵔᵢ;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ʼᐧ(Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ˈⁱ(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public ˉˆ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ᴵˊ()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ˉـ()V
    .locals 0

    return-void
.end method

.method public ˉٴ(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ˊʻ()Z
    .locals 1

    instance-of v0, p0, Lᴵי/ᵔﹳ;

    return v0
.end method

.method public ˊˋ()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ᵔﹳ(Lˈי/ﾞᴵ;Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    return-object p1
.end method

.method public final ˋᵔ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    :cond_0
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lᴵי/ᐧᴵ;->ˏᵢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Job "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p1, Lᴵי/יـ;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast p1, Lᴵי/יـ;

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    :cond_2
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    sget-object v1, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    if-eq v0, v1, :cond_0

    return-object v0
.end method

.method public final ˏי(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ᵔٴ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    sget-object v1, Lᴵי/ᐧᴵ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵔʾ;

    if-eqz v1, :cond_4

    sget-object v2, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1}, Lᴵי/ᵔʾ;->ⁱˊ(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public final ˏᵢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    instance-of v0, p1, Lᴵי/ـˏ;

    if-nez v0, :cond_0

    sget-object p1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    return-object p1

    :cond_0
    instance-of v0, p1, Lᴵי/ٴʼ;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lᴵי/ʿ;

    if-eqz v0, :cond_5

    :cond_1
    instance-of v0, p1, Lᴵי/ˉˆ;

    if-nez v0, :cond_5

    instance-of v0, p2, Lᴵי/יـ;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lᴵי/ـˏ;

    sget-object v2, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of p1, p2, Lᴵי/ـˏ;

    if-eqz p1, :cond_2

    new-instance p1, Lᴵי/ﹳـ;

    move-object v3, p2

    check-cast v3, Lᴵי/ـˏ;

    invoke-direct {p1, v3}, Lᴵי/ﹳـ;-><init>(Lᴵי/ـˏ;)V

    move-object v3, p1

    goto :goto_0

    :cond_2
    move-object v3, p2

    :cond_3
    :goto_0
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Lᴵי/ᐧᴵ;->ﹳـ(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lᴵי/ᐧᴵ;->ˈⁱ(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lᴵי/ᐧᴵ;->ʾᵎ(Lᴵי/ـˏ;Ljava/lang/Object;)V

    return-object p2

    :cond_4
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_3

    sget-object p1, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    return-object p1

    :cond_5
    check-cast p1, Lᴵי/ـˏ;

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ٴᵢ(Lᴵי/ـˏ;)Lᴵי/ˏᵢ;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object p1, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    return-object p1

    :cond_6
    instance-of v2, p1, Lᴵי/ᐧﾞ;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lᴵי/ᐧﾞ;

    goto :goto_1

    :cond_7
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_8

    new-instance v2, Lᴵי/ᐧﾞ;

    invoke-direct {v2, v0, v1}, Lᴵי/ᐧﾞ;-><init>(Lᴵי/ˏᵢ;Ljava/lang/Throwable;)V

    :cond_8
    monitor-enter v2

    :try_start_0
    sget-object v3, Lᴵי/ᐧﾞ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    move v4, v5

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_a

    sget-object p1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_a
    :try_start_1
    invoke-virtual {v3, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    if-eq v2, p1, :cond_d

    sget-object v3, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_b
    invoke-virtual {v3, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_b

    sget-object p1, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object p1

    :cond_d
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Lᴵי/ᐧﾞ;->ˑﹳ()Z

    move-result p1

    instance-of v3, p2, Lᴵי/יـ;

    if-eqz v3, :cond_e

    move-object v3, p2

    check-cast v3, Lᴵי/יـ;

    goto :goto_4

    :cond_e
    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_f

    iget-object v3, v3, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Lᴵי/ᐧﾞ;->ﹳٴ(Ljava/lang/Throwable;)V

    :cond_f
    invoke-virtual {v2}, Lᴵי/ᐧﾞ;->ⁱˊ()Ljava/lang/Throwable;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_10

    move-object v1, v3

    :cond_10
    monitor-exit v2

    if-eqz v1, :cond_11

    invoke-virtual {p0, v0, v1}, Lᴵי/ᐧᴵ;->ـˏ(Lᴵי/ˏᵢ;Ljava/lang/Throwable;)V

    :cond_11
    invoke-static {v0}, Lᴵי/ᐧᴵ;->ʼˈ(Lˊʽ/ˆʾ;)Lᴵי/ˉˆ;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, v2, p1, p2}, Lᴵי/ᐧᴵ;->ᴵʼ(Lᴵי/ᐧﾞ;Lᴵי/ˉˆ;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget-object p1, Lᴵי/ʾᵎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    return-object p1

    :cond_12
    new-instance p1, Lˊʽ/ᵔᵢ;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lˊʽ/ᵔᵢ;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    invoke-static {v0}, Lᴵי/ᐧᴵ;->ʼˈ(Lˊʽ/ˆʾ;)Lᴵי/ˉˆ;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p0, v2, p1, p2}, Lᴵי/ᐧᴵ;->ᴵʼ(Lᴵי/ᐧﾞ;Lᴵי/ˉˆ;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lᴵי/ʾᵎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    return-object p1

    :cond_13
    invoke-virtual {p0, v2, p2}, Lᴵי/ᐧᴵ;->ᵢˏ(Lᴵי/ᐧﾞ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_5
    monitor-exit v2

    throw p1
.end method

.method public final ˑٴ(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    :cond_0
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lᴵי/ᐧᴵ;->ˏᵢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    sget-object v1, Lᴵי/ʾᵎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lᴵי/ᐧᴵ;->ˑﹳ(Ljava/lang/Object;)V

    return v2
.end method

.method public ˑﹳ(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public יـ(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ᵔﹳ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ـˆ(Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ˈ;->ʾˋ(Lˈי/ﾞᴵ;Lˈי/ᵎﹶ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method

.method public final ـˏ(Lᴵי/ˏᵢ;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    invoke-virtual {p0, p2}, Lᴵי/ᐧᴵ;->ﹳـ(Ljava/lang/Throwable;)V

    new-instance v0, Lˊʽ/ᵔᵢ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lˊʽ/ᵔᵢ;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    sget-object v0, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊʽ/ˆʾ;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Lᴵי/ʿ;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lᴵי/ʿ;

    invoke-virtual {v2}, Lᴵי/ʿ;->ˆʾ()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lᴵי/ʿ;

    invoke-virtual {v2, p2}, Lᴵי/ʿ;->ٴﹶ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in completion handler "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lˊʽ/ˆʾ;->ᵔᵢ()Lˊʽ/ˆʾ;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lᴵי/ᐧᴵ;->ᵎⁱ(Lkotlinx/coroutines/CompletionHandlerException;)V

    :cond_3
    invoke-virtual {p0, p2}, Lᴵי/ᐧᴵ;->ˏי(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final ٴʼ(Lᴵי/ᴵˑ;)V
    .locals 3

    .prologue
    sget-object v0, Lᴵי/ᐧᴵ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    if-nez p1, :cond_0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lᴵי/ᴵˑ;->start()Z

    invoke-interface {p1, p0}, Lᴵי/ᴵˑ;->ᵎˊ(Lᴵי/ᐧᴵ;)Lᴵי/ᵔʾ;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ˆﾞ()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lᴵי/ᵎⁱ;->ﹳٴ()V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final ٴᵢ(Lᴵי/ـˏ;)Lᴵי/ˏᵢ;
    .locals 3

    .prologue
    invoke-interface {p1}, Lᴵי/ـˏ;->ˈ()Lᴵי/ˏᵢ;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lᴵי/ٴʼ;

    if-eqz v0, :cond_0

    new-instance p1, Lᴵי/ˏᵢ;

    invoke-direct {p1}, Lˊʽ/ˆʾ;-><init>()V

    return-object p1

    :cond_0
    instance-of v0, p1, Lᴵי/ʿ;

    if-eqz v0, :cond_1

    check-cast p1, Lᴵי/ʿ;

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ᵎᵔ(Lᴵי/ʿ;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State should have list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public ٴﹶ(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ˑﹳ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ᐧﾞ(Ljava/lang/Object;)I
    .locals 4

    .prologue
    instance-of v0, p1, Lᴵי/ٴʼ;

    const/4 v1, 0x1

    sget-object v2, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lᴵי/ٴʼ;

    iget-boolean v0, v0, Lᴵי/ٴʼ;->ʾˋ:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lᴵי/ʾᵎ;->ˆʾ:Lᴵי/ٴʼ;

    :cond_1
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lᴵי/ʼˈ;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lᴵי/ʼˈ;

    iget-object v0, v0, Lᴵי/ʼˈ;->ʾˋ:Lᴵי/ˏᵢ;

    :cond_4
    invoke-virtual {v2, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v1

    :cond_5
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_4

    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ᴵʼ(Lᴵי/ᐧﾞ;Lᴵי/ˉˆ;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    :cond_0
    iget-object v0, p2, Lᴵי/ˉˆ;->ᴵᵔ:Lᴵי/ᐧᴵ;

    new-instance v1, Lᴵי/ᵎᵔ;

    invoke-direct {v1, p0, p1, p2, p3}, Lᴵי/ᵎᵔ;-><init>(Lᴵי/ᐧᴵ;Lᴵי/ᐧﾞ;Lᴵי/ˉˆ;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lᴵי/ʾᵎ;->ᵔʾ(Lᴵי/ᴵˑ;ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;

    move-result-object v0

    sget-object v1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {p2}, Lᴵי/ᐧᴵ;->ʼˈ(Lˊʽ/ˆʾ;)Lᴵי/ˉˆ;

    move-result-object p2

    if-nez p2, :cond_0

    return v2
.end method

.method public final ᴵˊ()Ljava/lang/Object;
    .locals 2

    .prologue
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/ـˏ;

    if-nez v1, :cond_1

    instance-of v1, v0, Lᴵי/יـ;

    if-nez v1, :cond_0

    invoke-static {v0}, Lᴵי/ʾᵎ;->ʻٴ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Lᴵי/יـ;

    iget-object v0, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᴵˑ(Lᴵⁱ/ﾞʻ;)Lᴵי/ᵎⁱ;
    .locals 2

    new-instance v0, Lᴵי/ˉʿ;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lᴵי/ˉʿ;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lᴵי/ᐧᴵ;->ᵔי(ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;

    move-result-object p1

    return-object p1
.end method

.method public ᴵᵔ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ᵎˊ(Lᴵי/ᐧᴵ;)Lᴵי/ᵔʾ;
    .locals 5

    .prologue
    new-instance v0, Lᴵי/ˉˆ;

    invoke-direct {v0, p1}, Lᴵי/ˉˆ;-><init>(Lᴵי/ᐧᴵ;)V

    iput-object p0, v0, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    :goto_0
    sget-object p1, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lᴵי/ٴʼ;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lᴵי/ٴʼ;

    iget-boolean v3, v2, Lᴵי/ٴʼ;->ʾˋ:Z

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lᴵי/ᐧᴵ;->ʿ(Lᴵי/ٴʼ;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lᴵי/ـˏ;

    sget-object v3, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    const/4 v4, 0x0

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lᴵי/ـˏ;

    invoke-interface {v2}, Lᴵי/ـˏ;->ˈ()Lᴵי/ˏᵢ;

    move-result-object v2

    if-nez v2, :cond_4

    check-cast v1, Lᴵי/ʿ;

    invoke-virtual {p0, v1}, Lᴵי/ᐧᴵ;->ᵎᵔ(Lᴵי/ʿ;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    invoke-virtual {v2, v0, v1}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    move-result v1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lᴵי/ᐧﾞ;

    if-eqz v2, :cond_6

    check-cast p1, Lᴵי/ᐧﾞ;

    invoke-virtual {p1}, Lᴵי/ᐧﾞ;->ⁱˊ()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_2

    :cond_6
    instance-of v2, p1, Lᴵי/יـ;

    if-eqz v2, :cond_7

    check-cast p1, Lᴵי/יـ;

    goto :goto_1

    :cond_7
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_8

    iget-object v4, p1, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    :cond_8
    :goto_2
    invoke-virtual {v0, v4}, Lᴵי/ˉˆ;->ٴﹶ(Ljava/lang/Throwable;)V

    if-eqz v1, :cond_9

    :goto_3
    return-object v0

    :cond_9
    return-object v3

    :cond_a
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lᴵי/יـ;

    if-eqz v1, :cond_b

    check-cast p1, Lᴵי/יـ;

    goto :goto_4

    :cond_b
    move-object p1, v4

    :goto_4
    if-eqz p1, :cond_c

    iget-object v4, p1, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    :cond_c
    invoke-virtual {v0, v4}, Lᴵי/ˉˆ;->ٴﹶ(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public final ᵎᵔ(Lᴵי/ʿ;)V
    .locals 3

    .prologue
    new-instance v0, Lᴵי/ˏᵢ;

    invoke-direct {v0}, Lˊʽ/ˆʾ;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lˊʽ/ˆʾ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Lˊʽ/ˆʾ;->ᵎﹶ(Lˊʽ/ˆʾ;)V

    :goto_1
    invoke-virtual {p1}, Lˊʽ/ˆʾ;->ᵔᵢ()Lˊʽ/ˆʾ;

    move-result-object v2

    :cond_1
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return-void

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_0
.end method

.method public ᵎⁱ(Lkotlinx/coroutines/CompletionHandlerException;)V
    .locals 0

    throw p1
.end method

.method public ᵎﹶ(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ʽﹳ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lᴵי/ᐧᴵ;)V

    :cond_0
    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->יـ(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final ᵔי(ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;
    .locals 7

    .prologue
    iput-object p0, p2, Lᴵי/ʿ;->ˈٴ:Lᴵי/ᐧᴵ;

    :cond_0
    :goto_0
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lᴵי/ٴʼ;

    sget-object v3, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lᴵי/ٴʼ;

    iget-boolean v6, v2, Lᴵי/ٴʼ;->ʾˋ:Z

    if-eqz v6, :cond_3

    :cond_1
    invoke-virtual {v0, p0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lᴵי/ᐧᴵ;->ʿ(Lᴵי/ٴʼ;)V

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lᴵי/ـˏ;

    if-eqz v2, :cond_a

    move-object v2, v1

    check-cast v2, Lᴵי/ـˏ;

    invoke-interface {v2}, Lᴵי/ـˏ;->ˈ()Lᴵי/ˏᵢ;

    move-result-object v6

    if-nez v6, :cond_5

    check-cast v1, Lᴵי/ʿ;

    invoke-virtual {p0, v1}, Lᴵי/ᐧᴵ;->ᵎᵔ(Lᴵי/ʿ;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lᴵי/ʿ;->ˆʾ()Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, v2, Lᴵי/ᐧﾞ;

    if-eqz v1, :cond_6

    check-cast v2, Lᴵי/ᐧﾞ;

    goto :goto_1

    :cond_6
    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lᴵי/ᐧﾞ;->ⁱˊ()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v5

    :goto_2
    if-nez v1, :cond_8

    const/4 v1, 0x5

    invoke-virtual {v6, p2, v1}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    move-result v1

    goto :goto_3

    :cond_8
    if-eqz p1, :cond_e

    invoke-virtual {p2, v1}, Lᴵי/ʿ;->ٴﹶ(Ljava/lang/Throwable;)V

    return-object v3

    :cond_9
    invoke-virtual {v6, p2, v4}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_0

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_b

    return-object p2

    :cond_b
    if-eqz p1, :cond_e

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lᴵי/יـ;

    if-eqz v0, :cond_c

    check-cast p1, Lᴵי/יـ;

    goto :goto_5

    :cond_c
    move-object p1, v5

    :goto_5
    if-eqz p1, :cond_d

    iget-object v5, p1, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    :cond_d
    invoke-virtual {p2, v5}, Lᴵי/ʿ;->ٴﹶ(Ljava/lang/Throwable;)V

    :cond_e
    return-object v3
.end method

.method public ᵔٴ()Z
    .locals 1

    instance-of v0, p0, Lᴵי/ﾞᴵ;

    return v0
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    sget-object v0, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    invoke-virtual {p0}, Lᴵי/ᐧᴵ;->ˊʻ()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    :cond_0
    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lᴵי/ـˏ;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lᴵי/ᐧﾞ;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lᴵי/ᐧﾞ;

    sget-object v4, Lᴵי/ᐧﾞ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lᴵי/יـ;

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ʼʼ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v0, v1}, Lᴵי/ᐧᴵ;->ˏᵢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    :goto_1
    sget-object v1, Lᴵי/ʾᵎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    if-ne v0, v1, :cond_3

    goto/16 :goto_7

    :cond_3
    sget-object v1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    move-object v1, v0

    :cond_4
    :goto_2
    sget-object v4, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lᴵי/ᐧﾞ;

    if-eqz v6, :cond_c

    monitor-enter v5

    :try_start_0
    move-object v4, v5

    check-cast v4, Lᴵי/ᐧﾞ;

    sget-object v6, Lᴵי/ᐧﾞ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lᴵי/ʾᵎ;->ᵔᵢ:Lʻᴵ/ﹳٴ;

    if-ne v4, v6, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-eqz v4, :cond_6

    sget-object p1, Lᴵי/ʾᵎ;->ᵎﹶ:Lʻᴵ/ﹳٴ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    :goto_4
    move-object v0, p1

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_6
    :try_start_1
    move-object v4, v5

    check-cast v4, Lᴵי/ᐧﾞ;

    invoke-virtual {v4}, Lᴵי/ᐧﾞ;->ˑﹳ()Z

    move-result v4

    if-nez p1, :cond_7

    if-nez v4, :cond_9

    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ʼʼ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_8
    move-object p1, v5

    check-cast p1, Lᴵי/ᐧﾞ;

    invoke-virtual {p1, v1}, Lᴵי/ᐧﾞ;->ﹳٴ(Ljava/lang/Throwable;)V

    :cond_9
    move-object p1, v5

    check-cast p1, Lᴵי/ᐧﾞ;

    invoke-virtual {p1}, Lᴵי/ᐧﾞ;->ⁱˊ()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_a

    move-object v0, p1

    :cond_a
    monitor-exit v5

    if-eqz v0, :cond_b

    check-cast v5, Lᴵי/ᐧﾞ;

    iget-object p1, v5, Lᴵי/ᐧﾞ;->ʾˋ:Lᴵי/ˏᵢ;

    invoke-virtual {p0, p1, v0}, Lᴵי/ᐧᴵ;->ـˏ(Lᴵי/ˏᵢ;Ljava/lang/Throwable;)V

    :cond_b
    sget-object p1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    goto :goto_4

    :goto_5
    monitor-exit v5

    throw p1

    :cond_c
    instance-of v6, v5, Lᴵי/ـˏ;

    if-eqz v6, :cond_13

    if-nez v1, :cond_d

    invoke-virtual {p0, p1}, Lᴵי/ᐧᴵ;->ʼʼ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_d
    move-object v6, v5

    check-cast v6, Lᴵי/ـˏ;

    invoke-interface {v6}, Lᴵי/ـˏ;->ʽ()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {p0, v6}, Lᴵי/ᐧᴵ;->ٴᵢ(Lᴵי/ـˏ;)Lᴵי/ˏᵢ;

    move-result-object v7

    if-nez v7, :cond_e

    goto :goto_2

    :cond_e
    new-instance v8, Lᴵי/ᐧﾞ;

    invoke-direct {v8, v7, v1}, Lᴵי/ᐧﾞ;-><init>(Lᴵי/ˏᵢ;Ljava/lang/Throwable;)V

    :cond_f
    invoke-virtual {v4, p0, v6, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0, v7, v1}, Lᴵי/ᐧᴵ;->ـˏ(Lᴵי/ˏᵢ;Ljava/lang/Throwable;)V

    sget-object p1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    goto :goto_4

    :cond_10
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v6, :cond_f

    goto/16 :goto_2

    :cond_11
    new-instance v4, Lᴵי/יـ;

    invoke-direct {v4, v1, v2}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    invoke-virtual {p0, v5, v4}, Lᴵי/ᐧᴵ;->ˏᵢ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    if-eq v4, v6, :cond_12

    sget-object v5, Lᴵי/ʾᵎ;->ﾞᴵ:Lʻᴵ/ﹳٴ;

    if-eq v4, v5, :cond_4

    move-object v0, v4

    goto :goto_6

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot happen in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    sget-object p1, Lᴵי/ʾᵎ;->ᵎﹶ:Lʻᴵ/ﹳٴ;

    goto/16 :goto_4

    :cond_14
    :goto_6
    sget-object p1, Lᴵי/ʾᵎ;->ˈ:Lʻᴵ/ﹳٴ;

    if-ne v0, p1, :cond_15

    goto :goto_7

    :cond_15
    sget-object p1, Lᴵי/ʾᵎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    if-ne v0, p1, :cond_16

    :goto_7
    return v3

    :cond_16
    sget-object p1, Lᴵי/ʾᵎ;->ᵎﹶ:Lʻᴵ/ﹳٴ;

    if-ne v0, p1, :cond_17

    return v2

    :cond_17
    invoke-virtual {p0, v0}, Lᴵי/ᐧᴵ;->ˑﹳ(Ljava/lang/Object;)V

    return v3
.end method

.method public final ᵢˏ(Lᴵי/ᐧﾞ;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    instance-of v0, p2, Lᴵי/יـ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lᴵי/יـ;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    :cond_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lᴵי/ᐧﾞ;->ˑﹳ()Z

    move-result v0

    invoke-virtual {p1, v1}, Lᴵי/ᐧﾞ;->ﾞᴵ(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lᴵי/ᐧᴵ;->ʽʽ(Lᴵי/ᐧﾞ;Ljava/util/ArrayList;)Ljava/lang/Throwable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-gt v6, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7, v6}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v7}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :cond_3
    :goto_1
    if-ge v8, v7, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/Throwable;

    if-eq v9, v3, :cond_3

    if-eq v9, v3, :cond_3

    instance-of v10, v9, Ljava/util/concurrent/CancellationException;

    if-nez v10, :cond_3

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v3, v9}, Lʽٴ/ˈ;->ⁱˊ(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit p1

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    if-ne v3, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p2, Lᴵי/יـ;

    invoke-direct {p2, v3, v4}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    :goto_3
    if-eqz v3, :cond_8

    invoke-virtual {p0, v3}, Lᴵי/ᐧᴵ;->ˏי(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v3}, Lᴵי/ᐧᴵ;->ˉٴ(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move-object v1, p2

    check-cast v1, Lᴵי/יـ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lᴵי/יـ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    :cond_8
    if-nez v0, :cond_9

    invoke-virtual {p0, v3}, Lᴵי/ᐧᴵ;->ﹳـ(Ljava/lang/Throwable;)V

    :cond_9
    invoke-virtual {p0, p2}, Lᴵי/ᐧᴵ;->ˈⁱ(Ljava/lang/Object;)V

    sget-object v0, Lᴵי/ᐧᴵ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    instance-of v1, p2, Lᴵי/ـˏ;

    if-eqz v1, :cond_a

    new-instance v1, Lᴵי/ﹳـ;

    move-object v2, p2

    check-cast v2, Lᴵי/ـˏ;

    invoke-direct {v1, v2}, Lᴵי/ﹳـ;-><init>(Lᴵי/ـˏ;)V

    goto :goto_4

    :cond_a
    move-object v1, p2

    :cond_b
    :goto_4
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_b

    :goto_5
    invoke-virtual {p0, p1, p2}, Lᴵי/ᐧᴵ;->ʾᵎ(Lᴵי/ـˏ;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public ﹳـ(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final ﹳᐧ(ZZLʼⁱ/ᴵˊ;)Lᴵי/ᵎⁱ;
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    new-instance p1, Lᴵי/ˈⁱ;

    invoke-direct {p1, p3}, Lᴵי/ˈⁱ;-><init>(Lʼⁱ/ᴵˊ;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lᴵי/ˉʿ;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p3}, Lᴵי/ˉʿ;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Lᴵי/ᐧᴵ;->ᵔי(ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;
    .locals 0

    invoke-static {p0, p1}, Lcom/bumptech/glide/ʽ;->ˏי(Lˈי/ᵔᵢ;Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object p1

    return-object p1
.end method
