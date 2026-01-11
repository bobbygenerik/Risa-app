.class public Lﹶי/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ʽʽ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic ˈٴ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic ˊʻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _availablePermits$volatile:I

.field private volatile synthetic deqIdx$volatile:J

.field private volatile synthetic enqIdx$volatile:J

.field private volatile synthetic head$volatile:Ljava/lang/Object;

.field private volatile synthetic tail$volatile:Ljava/lang/Object;

.field public final ʾˋ:I

.field public final ᴵˊ:Lʼⁱ/ˏי;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "head$volatile"

    const-class v1, Lﹶי/ᵎﹶ;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lﹶי/ᵎﹶ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lﹶי/ᵎﹶ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "tail$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lﹶי/ᵎﹶ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lﹶי/ᵎﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹶי/ᵎﹶ;->ʾˋ:I

    if-lez p1, :cond_1

    if-ltz p2, :cond_0

    if-gt p2, p1, :cond_0

    new-instance v0, Lﹶי/ˆʾ;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lﹶי/ˆʾ;-><init>(JLﹶי/ˆʾ;I)V

    iput-object v0, p0, Lﹶי/ᵎﹶ;->head$volatile:Ljava/lang/Object;

    iput-object v0, p0, Lﹶי/ᵎﹶ;->tail$volatile:Ljava/lang/Object;

    sub-int/2addr p1, p2

    iput p1, p0, Lﹶי/ᵎﹶ;->_availablePermits$volatile:I

    new-instance p1, Lʼⁱ/ˏי;

    const/16 p2, 0x17

    invoke-direct {p1, p2, p0}, Lʼⁱ/ˏי;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lﹶי/ᵎﹶ;->ᴵˊ:Lʼⁱ/ˏי;

    return-void

    :cond_0
    const-string p2, "The number of acquired permits should be in 0.."

    invoke-static {p1, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p2, "Semaphore should have at least 1 permit, but had "

    invoke-static {p1, p2}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 14

    .prologue
    :cond_0
    sget-object v0, Lﹶי/ᵎﹶ;->ٴᵢ:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lﹶי/ᵎﹶ;->ʾˋ:I

    if-ge v1, v2, :cond_10

    if-ltz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lﹶי/ᵎﹶ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶי/ˆʾ;

    sget-object v2, Lﹶי/ᵎﹶ;->ˈٴ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    sget v4, Lﹶי/ʼˎ;->ﾞᴵ:I

    int-to-long v4, v4

    div-long v4, v2, v4

    sget-object v6, Lﹶי/ﾞᴵ;->ᵎⁱ:Lﹶי/ﾞᴵ;

    :goto_0
    invoke-static {v1, v4, v5, v6}, Lˊʽ/ⁱˊ;->ⁱˊ(Lˊʽ/ﹳᐧ;JLᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lˊʽ/ⁱˊ;->ˑﹳ(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v7}, Lˊʽ/ⁱˊ;->ʽ(Ljava/lang/Object;)Lˊʽ/ﹳᐧ;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˊʽ/ﹳᐧ;

    iget-wide v10, v9, Lˊʽ/ﹳᐧ;->ʽ:J

    iget-wide v12, v8, Lˊʽ/ﹳᐧ;->ʽ:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lˊʽ/ﹳᐧ;->ˆʾ()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lˊʽ/ﹳᐧ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Lˊʽ/ʽ;->ˑﹳ()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_4

    invoke-virtual {v8}, Lˊʽ/ﹳᐧ;->ﾞᴵ()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lˊʽ/ʽ;->ˑﹳ()V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v7}, Lˊʽ/ⁱˊ;->ʽ(Ljava/lang/Object;)Lˊʽ/ﹳᐧ;

    move-result-object v0

    check-cast v0, Lﹶי/ˆʾ;

    invoke-virtual {v0}, Lˊʽ/ʽ;->ⁱˊ()V

    iget-object v1, v0, Lﹶי/ˆʾ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-wide v6, v0, Lˊʽ/ﹳᐧ;->ʽ:J

    cmp-long v0, v6, v4

    const/4 v4, 0x0

    if-lez v0, :cond_7

    goto :goto_6

    :cond_7
    sget v0, Lﹶי/ʼˎ;->ﾞᴵ:I

    int-to-long v5, v0

    rem-long/2addr v2, v5

    long-to-int v0, v2

    sget-object v2, Lﹶי/ʼˎ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_c

    sget v2, Lﹶי/ʼˎ;->ﹳٴ:I

    move v5, v4

    :goto_3
    if-ge v5, v2, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lﹶי/ʼˎ;->ʽ:Lʻᴵ/ﹳٴ;

    if-ne v6, v7, :cond_8

    :goto_4
    move v4, v3

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    sget-object v5, Lﹶי/ʼˎ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    sget-object v6, Lﹶי/ʼˎ;->ˈ:Lʻᴵ/ﹳٴ;

    :cond_a
    invoke-virtual {v1, v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v4, v3

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v5, :cond_a

    :goto_5
    xor-int/2addr v4, v3

    goto :goto_6

    :cond_c
    sget-object v0, Lﹶי/ʼˎ;->ˑﹳ:Lʻᴵ/ﹳٴ;

    if-ne v2, v0, :cond_d

    goto :goto_6

    :cond_d
    instance-of v0, v2, Lᴵי/ˆʾ;

    if-eqz v0, :cond_f

    check-cast v2, Lᴵי/ˆʾ;

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    iget-object v1, p0, Lﹶי/ᵎﹶ;->ᴵˊ:Lʼⁱ/ˏי;

    invoke-interface {v2, v0, v1}, Lᴵי/ˆʾ;->ﾞʻ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)Lʻᴵ/ﹳٴ;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v2, v0}, Lᴵי/ˆʾ;->ᵔʾ(Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    :goto_6
    if-eqz v4, :cond_0

    :goto_7
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unexpected: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-le v1, v2, :cond_11

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The number of released permits cannot be greater than "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ(Lᴵי/ʽᵔ;)Z
    .locals 14

    .prologue
    sget-object v0, Lﹶי/ᵎﹶ;->ᴵᵔ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹶי/ˆʾ;

    sget-object v2, Lﹶי/ᵎﹶ;->ˊʻ:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lﹶי/ˑﹳ;->ᵎⁱ:Lﹶי/ˑﹳ;

    sget v5, Lﹶי/ʼˎ;->ﾞᴵ:I

    int-to-long v5, v5

    div-long v5, v2, v5

    :goto_0
    invoke-static {v1, v5, v6, v4}, Lˊʽ/ⁱˊ;->ⁱˊ(Lˊʽ/ﹳᐧ;JLᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lˊʽ/ⁱˊ;->ˑﹳ(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lˊʽ/ⁱˊ;->ʽ(Ljava/lang/Object;)Lˊʽ/ﹳᐧ;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lˊʽ/ﹳᐧ;

    iget-wide v10, v9, Lˊʽ/ﹳᐧ;->ʽ:J

    iget-wide v12, v8, Lˊʽ/ﹳᐧ;->ʽ:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Lˊʽ/ﹳᐧ;->ˆʾ()Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lˊʽ/ﹳᐧ;->ﾞᴵ()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lˊʽ/ʽ;->ˑﹳ()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_2

    invoke-virtual {v8}, Lˊʽ/ﹳᐧ;->ﾞᴵ()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lˊʽ/ʽ;->ˑﹳ()V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-static {v7}, Lˊʽ/ⁱˊ;->ʽ(Ljava/lang/Object;)Lˊʽ/ﹳᐧ;

    move-result-object v0

    check-cast v0, Lﹶי/ˆʾ;

    iget-object v1, v0, Lﹶי/ˆʾ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v4, Lﹶי/ʼˎ;->ﾞᴵ:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    long-to-int v2, v2

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {p1, v0, v2}, Lᴵי/ʽᵔ;->ﹳٴ(Lˊʽ/ﹳᐧ;I)V

    return v4

    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v3, Lﹶי/ʼˎ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    sget-object v5, Lﹶי/ʼˎ;->ʽ:Lʻᴵ/ﹳٴ;

    :cond_7
    invoke-virtual {v1, v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    check-cast p1, Lᴵי/ˆʾ;

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    iget-object v1, p0, Lﹶי/ᵎﹶ;->ᴵˊ:Lʼⁱ/ˏי;

    invoke-interface {p1, v0, v1}, Lᴵי/ˆʾ;->ˉʿ(Ljava/lang/Object;Lᴵⁱ/ᵔﹳ;)V

    return v4

    :cond_8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v3, :cond_7

    const/4 p1, 0x0

    return p1
.end method
