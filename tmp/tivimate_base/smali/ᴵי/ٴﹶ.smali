.class public Lᴵי/ٴﹶ;
.super Lᴵי/ᴵᵔ;
.source "SourceFile"

# interfaces
.implements Lᴵי/ˆʾ;
.implements Lᴵʾ/ˈ;
.implements Lᴵי/ʽᵔ;


# static fields
.field public static final synthetic ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public final ˈٴ:Lˈי/ˈ;

.field public final ᴵᵔ:Lˈי/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex$volatile"

    const-class v1, Lᴵי/ٴﹶ;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ٴﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lᴵי/ٴﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILˈי/ˈ;)V
    .locals 0

    invoke-direct {p0, p1}, Lᴵי/ᴵᵔ;-><init>(I)V

    iput-object p2, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p1

    iput-object p1, p0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    const p1, 0x1fffffff

    iput p1, p0, Lᴵי/ٴﹶ;->_decisionAndIndex$volatile:I

    sget-object p1, Lᴵי/ⁱˊ;->ﹳٴ:Lᴵי/ⁱˊ;

    iput-object p1, p0, Lᴵי/ٴﹶ;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static ٴᵢ(Lᴵי/ˊᵔ;Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)Ljava/lang/Object;
    .locals 6

    .prologue
    instance-of v0, p1, Lᴵי/יـ;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    instance-of p2, p0, Lᴵי/ʼˎ;

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    new-instance v0, Lᴵי/ﹳᐧ;

    instance-of p2, p0, Lᴵי/ʼˎ;

    if-eqz p2, :cond_4

    check-cast p0, Lᴵי/ʼˎ;

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lᴵי/ﹳᐧ;-><init>(Ljava/lang/Object;Lᴵי/ʼˎ;Lᴵⁱ/ᵔﹳ;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static ᴵˊ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ʽʽ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    invoke-static {v1}, Lᴵי/ʾᵎ;->ʽﹳ(Lˈי/ˈ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lᴵי/ˊᵔ;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lᴵי/ﾞʻ;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʻٴ()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ـˆ()Lᴵי/ᵎⁱ;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lᴵי/ˊᵔ;

    if-nez v1, :cond_1

    invoke-interface {v0}, Lᴵי/ᵎⁱ;->ﹳٴ()V

    sget-object v0, Lᴵי/ٴﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ʼʼ(Lᴵי/ˊᵔ;)V
    .locals 7

    .prologue
    :goto_0
    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lᴵי/ⁱˊ;

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_2
    instance-of v1, v2, Lᴵי/ʼˎ;

    const/4 v3, 0x0

    if-nez v1, :cond_10

    instance-of v1, v2, Lˊʽ/ﹳᐧ;

    if-nez v1, :cond_10

    instance-of v1, v2, Lᴵי/יـ;

    if-eqz v1, :cond_5

    move-object v0, v2

    check-cast v0, Lᴵי/יـ;

    sget-object v1, Lᴵי/יـ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v2, Lᴵי/ﾞʻ;

    if-eqz v1, :cond_e

    iget-object v0, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    instance-of v1, p1, Lᴵי/ʼˎ;

    if-eqz v1, :cond_3

    check-cast p1, Lᴵי/ʼˎ;

    invoke-virtual {p0, p1, v0}, Lᴵי/ٴﹶ;->ٴﹶ(Lᴵי/ʼˎ;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    check-cast p1, Lˊʽ/ﹳᐧ;

    invoke-virtual {p0, p1, v0}, Lᴵי/ٴﹶ;->ʼᐧ(Lˊʽ/ﹳᐧ;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-static {p1, v2}, Lᴵי/ٴﹶ;->ᴵˊ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_5
    instance-of v1, v2, Lᴵי/ﹳᐧ;

    if-eqz v1, :cond_b

    move-object v1, v2

    check-cast v1, Lᴵי/ﹳᐧ;

    iget-object v4, v1, Lᴵי/ﹳᐧ;->ⁱˊ:Lᴵי/ʼˎ;

    if-nez v4, :cond_a

    instance-of v4, p1, Lˊʽ/ﹳᐧ;

    if-eqz v4, :cond_6

    return-void

    :cond_6
    move-object v4, p1

    check-cast v4, Lᴵי/ʼˎ;

    iget-object v5, v1, Lᴵי/ﹳᐧ;->ˑﹳ:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    invoke-virtual {p0, v4, v5}, Lᴵי/ٴﹶ;->ٴﹶ(Lᴵי/ʼˎ;Ljava/lang/Throwable;)V

    return-void

    :cond_7
    const/16 v5, 0x1d

    invoke-static {v1, v4, v3, v5}, Lᴵי/ﹳᐧ;->ﹳٴ(Lᴵי/ﹳᐧ;Lᴵי/ʼˎ;Ljava/lang/Throwable;I)Lᴵי/ﹳᐧ;

    move-result-object v1

    :cond_8
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_8

    goto :goto_0

    :cond_a
    invoke-static {p1, v2}, Lᴵי/ٴﹶ;->ᴵˊ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_b
    instance-of v1, p1, Lˊʽ/ﹳᐧ;

    if-eqz v1, :cond_c

    return-void

    :cond_c
    move-object v3, p1

    check-cast v3, Lᴵי/ʼˎ;

    new-instance v1, Lᴵי/ﹳᐧ;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lᴵי/ﹳᐧ;-><init>(Ljava/lang/Object;Lᴵי/ʼˎ;Lᴵⁱ/ᵔﹳ;Ljava/lang/Throwable;I)V

    :cond_d
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    :goto_1
    return-void

    :cond_f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_d

    goto/16 :goto_0

    :cond_10
    invoke-static {p1, v2}, Lᴵי/ٴﹶ;->ᴵˊ(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3
.end method

.method public final ʼᐧ(Lˊʽ/ﹳᐧ;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    iget-object p2, p0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    sget-object v0, Lᴵי/ٴﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lˊʽ/ﹳᐧ;->ᵔᵢ(ILˈי/ᵔᵢ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p2}, Lᴵי/ʾᵎ;->ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽ()Lˈי/ˈ;
    .locals 1

    iget-object v0, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    return-object v0
.end method

.method public ʽʽ()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final ʽﹳ()Ljava/lang/Object;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ʾˋ()Z

    move-result v0

    :cond_0
    sget-object v1, Lᴵי/ٴﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1d

    if-eqz v3, :cond_7

    const/4 v1, 0x2

    if-ne v3, v1, :cond_6

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ˈٴ()V

    :cond_1
    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lᴵי/יـ;

    if-nez v2, :cond_5

    iget v2, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    sget-object v2, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v1, v2}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    check-cast v1, Lᴵי/ᴵˑ;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lᴵי/ᴵˑ;->ʽ()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lᴵי/ᴵˑ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lᴵי/ٴﹶ;->ⁱˊ(Ljava/util/concurrent/CancellationException;)V

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lᴵי/ٴﹶ;->ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_5
    check-cast v0, Lᴵי/יـ;

    iget-object v0, v0, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const v3, 0x1fffffff

    and-int/2addr v3, v2

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lᴵי/ٴﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵎⁱ;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ـˆ()Lᴵי/ᵎⁱ;

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ˈٴ()V

    :cond_9
    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    return-object v0
.end method

.method public final ʾˋ()Z
    .locals 2

    .prologue
    iget v0, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    check-cast v0, Lˊʽ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lˊʽ/ﾞᴵ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ʾᵎ(Lᴵⁱ/ﾞʻ;)V
    .locals 2

    new-instance v0, Lᴵי/ᵔᵢ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lᴵי/ᵔᵢ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lᴵי/ٴﹶ;->ʼʼ(Lᴵי/ˊᵔ;)V

    return-void
.end method

.method public final ˆʾ()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()Lᴵʾ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    instance-of v1, v0, Lᴵʾ/ˈ;

    if-eqz v1, :cond_0

    check-cast v0, Lᴵʾ/ˈ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˈٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    instance-of v1, v0, Lˊʽ/ﾞᴵ;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lˊʽ/ﾞᴵ;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    sget-object v1, Lˊʽ/ﾞᴵ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lˊʽ/ⁱˊ;->ʽ:Lʻᴵ/ﹳٴ;

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ﹳᐧ()V

    invoke-virtual {p0, v2}, Lᴵי/ٴﹶ;->ᵔﹳ(Ljava/lang/Throwable;)Z

    return-void

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistent state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    return-void
.end method

.method public final ˉʿ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)V
    .locals 1

    iget v0, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {p0, p1, v0, p2}, Lᴵי/ٴﹶ;->ᴵᵔ(Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)V

    return-void
.end method

.method public final ˉˆ(Lᴵⁱ/ᵔﹳ;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    :try_start_0
    invoke-interface {p1, p2, p3, v0}, Lᴵⁱ/ᵔﹳ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lᴵי/ʾᵎ;->ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    return-void
.end method

.method public final ˉٴ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Lʻᴵ/ﹳٴ;
    .locals 5

    .prologue
    sget-object v0, Lᴵי/ʾᵎ;->ﹳٴ:Lʻᴵ/ﹳٴ;

    :goto_0
    sget-object v1, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lᴵי/ˊᵔ;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lᴵי/ˊᵔ;

    iget v4, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-static {v3, p1, v4, p2}, Lᴵי/ٴﹶ;->ٴᵢ(Lᴵי/ˊᵔ;Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ʾˋ()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ﹳᐧ()V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final ˊʻ(Lᴵי/ˏי;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    instance-of v1, v0, Lˊʽ/ﾞᴵ;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lˊʽ/ﾞᴵ;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lˊʽ/ﾞᴵ;->ˈٴ:Lᴵי/ˏי;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    :goto_2
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p0, v0, p1, v2}, Lᴵי/ٴﹶ;->ᴵᵔ(Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)V

    return-void
.end method

.method public ˏי(Lᴵי/ᐧᴵ;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p1}, Lᴵי/ᐧᴵ;->ˈʿ()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final ˑﹳ(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .prologue
    invoke-super {p0, p1}, Lᴵי/ᴵᵔ;->ˑﹳ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final יـ(I)V
    .locals 6

    .prologue
    :cond_0
    sget-object v0, Lᴵי/ٴﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    if-ne v2, v0, :cond_a

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lᴵי/ٴﹶ;->ˈٴ:Lˈי/ˈ;

    if-nez v1, :cond_9

    instance-of v4, v3, Lˊʽ/ﾞᴵ;

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    iget v5, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    if-eq v5, v0, :cond_4

    if-ne v5, v4, :cond_5

    :cond_4
    move v2, v0

    :cond_5
    if-ne p1, v2, :cond_9

    move-object p1, v3

    check-cast p1, Lˊʽ/ﾞᴵ;

    iget-object v1, p1, Lˊʽ/ﾞᴵ;->ˈٴ:Lᴵי/ˏי;

    iget-object p1, p1, Lˊʽ/ﾞᴵ;->ᴵᵔ:Lᴵʾ/ʽ;

    invoke-interface {p1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p1

    invoke-static {v1, p1}, Lˊʽ/ⁱˊ;->ˆʾ(Lᴵי/ˏי;Lˈי/ᵔᵢ;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, p1, p0}, Lˊʽ/ⁱˊ;->ʼˎ(Lᴵי/ˏי;Lˈי/ᵔᵢ;Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-static {}, Lᴵי/ﹳﹳ;->ﹳٴ()Lᴵי/ˑٴ;

    move-result-object p1

    iget-wide v1, p1, Lᴵי/ˑٴ;->ᴵˊ:J

    const-wide v4, 0x100000000L

    cmp-long v1, v1, v4

    if-ltz v1, :cond_7

    invoke-virtual {p1, p0}, Lᴵי/ˑٴ;->ˑ(Lᴵי/ᴵᵔ;)V

    return-void

    :cond_7
    invoke-virtual {p1, v0}, Lᴵי/ˑٴ;->ˎᐧ(Z)V

    :try_start_0
    invoke-static {p0, v3, v0}, Lᴵי/ʾᵎ;->ﹳᐧ(Lᴵי/ٴﹶ;Lˈי/ˈ;Z)V

    :cond_8
    invoke-virtual {p1}, Lᴵי/ˑٴ;->ʽⁱ()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    :goto_3
    invoke-virtual {p1, v0}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0, v1}, Lᴵי/ᴵᵔ;->ʼˎ(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {p1, v0}, Lᴵי/ˑٴ;->ʾˊ(Z)V

    throw v1

    :cond_9
    invoke-static {p0, v3, v1}, Lᴵי/ʾᵎ;->ﹳᐧ(Lᴵי/ٴﹶ;Lˈי/ˈ;Z)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const v2, 0x1fffffff

    and-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_4
    return-void
.end method

.method public final ـˆ()Lᴵי/ᵎⁱ;
    .locals 4

    .prologue
    iget-object v0, p0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    sget-object v1, Lᴵי/ʽﹳ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-interface {v0, v1}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵי/ᴵˑ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lᴵי/ˉʿ;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lᴵי/ˉʿ;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lᴵי/ʾᵎ;->ᵔʾ(Lᴵי/ᴵˑ;ZLᴵי/ʿ;)Lᴵי/ᵎⁱ;

    move-result-object v0

    :cond_1
    sget-object v2, Lᴵי/ٴﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0
.end method

.method public final ٴﹶ(Lᴵי/ʼˎ;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    :try_start_0
    invoke-interface {p1, p2}, Lᴵי/ʼˎ;->ﹳٴ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    invoke-static {p2, p1}, Lᴵי/ʾᵎ;->ˉʿ(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    return-void
.end method

.method public final ᴵᵔ(Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)V
    .locals 4

    .prologue
    :goto_0
    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lᴵי/ˊᵔ;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lᴵי/ˊᵔ;

    invoke-static {v2, p1, p2, p3}, Lᴵי/ٴﹶ;->ٴᵢ(Lᴵי/ˊᵔ;Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ʾˋ()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ﹳᐧ()V

    :cond_1
    invoke-virtual {p0, p2}, Lᴵי/ٴﹶ;->יـ(I)V

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_3
    instance-of p2, v1, Lᴵי/ﾞʻ;

    if-eqz p2, :cond_5

    check-cast v1, Lᴵי/ﾞʻ;

    sget-object p2, Lᴵי/ﾞʻ;->ʽ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    iget-object p2, v1, Lᴵי/יـ;->ﹳٴ:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p2, p1}, Lᴵי/ٴﹶ;->ˉˆ(Lᴵⁱ/ᵔﹳ;Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Already resumed, but proposed with update "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final ᵎﹶ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    instance-of v0, p1, Lᴵי/ﹳᐧ;

    if-eqz v0, :cond_0

    check-cast p1, Lᴵי/ﹳᐧ;

    iget-object p1, p1, Lᴵי/ﹳᐧ;->ﹳٴ:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final ᵔʾ(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {p0, p1}, Lᴵי/ٴﹶ;->יـ(I)V

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
    iget v0, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lᴵי/ٴﹶ;->ᴵᵔ(Ljava/lang/Object;ILᴵⁱ/ᵔﹳ;)V

    return-void
.end method

.method public final ᵔﹳ(Ljava/lang/Throwable;)Z
    .locals 8

    .prologue
    :goto_0
    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lᴵי/ˊᵔ;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Lᴵי/ﾞʻ;

    instance-of v4, v1, Lᴵי/ʼˎ;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    instance-of v4, v1, Lˊʽ/ﹳᐧ;

    if-eqz v4, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    if-nez p1, :cond_3

    new-instance v4, Ljava/util/concurrent/CancellationException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Continuation "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " was cancelled normally"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, p1

    :goto_1
    invoke-direct {v2, v4, v3}, Lᴵי/יـ;-><init>(Ljava/lang/Throwable;Z)V

    :cond_4
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v1

    check-cast v0, Lᴵי/ˊᵔ;

    instance-of v2, v0, Lᴵי/ʼˎ;

    if-eqz v2, :cond_5

    check-cast v1, Lᴵי/ʼˎ;

    invoke-virtual {p0, v1, p1}, Lᴵי/ٴﹶ;->ٴﹶ(Lᴵי/ʼˎ;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    instance-of v0, v0, Lˊʽ/ﹳᐧ;

    if-eqz v0, :cond_6

    check-cast v1, Lˊʽ/ﹳᐧ;

    invoke-virtual {p0, v1, p1}, Lᴵי/ٴﹶ;->ʼᐧ(Lˊʽ/ﹳᐧ;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ʾˋ()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lᴵי/ٴﹶ;->ﹳᐧ()V

    :cond_7
    iget p1, p0, Lᴵי/ᴵᵔ;->ʽʽ:I

    invoke-virtual {p0, p1}, Lᴵי/ٴﹶ;->יـ(I)V

    return v5

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_4

    goto :goto_0
.end method

.method public final ᵢˏ()Z
    .locals 1

    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lᴵי/ˊᵔ;

    return v0
.end method

.method public final ⁱˊ(Ljava/util/concurrent/CancellationException;)V
    .locals 7

    .prologue
    :goto_0
    sget-object v0, Lᴵי/ٴﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lᴵי/ˊᵔ;

    if-nez v1, :cond_9

    instance-of v1, v2, Lᴵי/יـ;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v2, Lᴵי/ﹳᐧ;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Lᴵי/ﹳᐧ;

    iget-object v3, v1, Lᴵי/ﹳᐧ;->ˑﹳ:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-static {v1, v3, p1, v4}, Lᴵי/ﹳᐧ;->ﹳٴ(Lᴵי/ﹳᐧ;Lᴵי/ʼˎ;Ljava/lang/Throwable;I)Lᴵי/ﹳᐧ;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v1, Lᴵי/ﹳᐧ;->ⁱˊ:Lᴵי/ʼˎ;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p1}, Lᴵי/ٴﹶ;->ٴﹶ(Lᴵי/ʼˎ;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, v1, Lᴵי/ﹳᐧ;->ʽ:Lᴵⁱ/ᵔﹳ;

    if-eqz v0, :cond_7

    iget-object v1, v1, Lᴵי/ﹳᐧ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lᴵי/ٴﹶ;->ˉˆ(Lᴵⁱ/ᵔﹳ;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_1

    move-object v5, p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called at most once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v1, Lᴵי/ﹳᐧ;

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lᴵי/ﹳᐧ;-><init>(Ljava/lang/Object;Lᴵי/ʼˎ;Lᴵⁱ/ᵔﹳ;Ljava/lang/Throwable;I)V

    :cond_6
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v2, :cond_6

    :goto_2
    move-object p1, v5

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not completed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(Lˊʽ/ﹳᐧ;I)V
    .locals 4

    .prologue
    :cond_0
    sget-object v0, Lᴵי/ٴﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lᴵי/ٴﹶ;->ʼʼ(Lᴵי/ˊᵔ;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳᐧ()V
    .locals 2

    .prologue
    sget-object v0, Lᴵי/ٴﹶ;->ˉٴ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᵎⁱ;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Lᴵי/ᵎⁱ;->ﹳٴ()V

    sget-object v1, Lᴵי/ʻᵎ;->ʾˋ:Lᴵי/ʻᵎ;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final ﾞʻ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Lʻᴵ/ﹳٴ;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lᴵי/ٴﹶ;->ˉٴ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Lʻᴵ/ﹳٴ;

    move-result-object p1

    return-object p1
.end method

.method public final ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    iget-object v0, p0, Lᴵי/ٴﹶ;->ᴵᵔ:Lˈי/ᵔᵢ;

    return-object v0
.end method
