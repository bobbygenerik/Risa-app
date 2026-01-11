.class public final Lﹶי/ʽ;
.super Lﹶי/ᵎﹶ;
.source "SourceFile"

# interfaces
.implements Lﹶי/ﹳٴ;


# static fields
.field public static final synthetic ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic owner$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "owner$volatile"

    const-class v2, Lﹶי/ʽ;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lﹶי/ʽ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lﹶי/ᵎﹶ;-><init>(II)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lﹶי/ˈ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    :goto_0
    iput-object p1, p0, Lﹶי/ʽ;->owner$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mutex@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lﹶי/ʽ;->ˉˆ()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lﹶי/ʽ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    invoke-virtual {p0}, Lﹶי/ʽ;->ˈ()Z

    move-result v0

    sget-object v1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    invoke-static {p1}, Lᴵי/ʾᵎ;->ﾞʻ(Lˈי/ˈ;)Lᴵי/ٴﹶ;

    move-result-object p1

    :try_start_0
    new-instance v0, Lﹶי/ⁱˊ;

    invoke-direct {v0, p0, p1}, Lﹶי/ⁱˊ;-><init>(Lﹶי/ʽ;Lᴵי/ٴﹶ;)V

    :cond_1
    sget-object v2, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lﹶי/ᵎﹶ;->ʾˋ:I

    if-gt v2, v3, :cond_1

    if-lez v2, :cond_2

    iget-object v2, v0, Lﹶי/ⁱˊ;->ᴵˊ:Lﹶי/ʽ;

    sget-object v3, Lﹶי/ʽ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lﹶי/ⁱˊ;->ʾˋ:Lᴵי/ٴﹶ;

    new-instance v4, Lᐧᵎ/ˆʾ;

    invoke-direct {v4, v2, v0}, Lᐧᵎ/ˆʾ;-><init>(Lﹶי/ʽ;Lﹶי/ⁱˊ;)V

    iget v0, v3, Lᴵי/ᴵᵔ;->ʽʽ:I

    new-instance v2, Lʼⁱ/ˏי;

    const/16 v5, 0x10

    invoke-direct {v2, v5, v4}, Lʼⁱ/ˏי;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v1, v0, v2}, Lᴵי/ٴﹶ;->ᴵᵔ(Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lﹶי/ᵎﹶ;->ﹳٴ(Lᴵי/ʽᵔ;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-ne p1, v0, :cond_4

    return-object p1

    :cond_4
    :goto_2
    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lᴵי/ٴﹶ;->ˈٴ()V

    throw v0
.end method

.method public final ˈ()Z
    .locals 3

    .prologue
    :cond_0
    :goto_0
    sget-object v0, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lﹶי/ᵎﹶ;->ʾˋ:I

    if-le v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    if-gtz v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lﹶי/ʽ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final ˉˆ()Z
    .locals 2

    .prologue
    sget-object v0, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final ᵎﹶ(Ljava/lang/Object;)V
    .locals 4

    .prologue
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lﹶי/ʽ;->ˉˆ()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lﹶי/ʽ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lﹶי/ˈ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    if-eq v1, v2, :cond_0

    if-eq v1, p1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "This mutex is locked by "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is expected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lﹶי/ᵎﹶ;->ⁱˊ()V

    return-void

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This mutex is not locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
