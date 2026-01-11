.class public Lˊʽ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic ʽʽ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _next$volatile:Ljava/lang/Object;

.field private volatile synthetic _prev$volatile:Ljava/lang/Object;

.field private volatile synthetic _removedRef$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_next$volatile"

    const-class v1, Lˊʽ/ˆʾ;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lˊʽ/ˆʾ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lˊʽ/ˆʾ;->ʽʽ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lˊʽ/ˆʾ;->_next$volatile:Ljava/lang/Object;

    iput-object p0, p0, Lˊʽ/ˆʾ;->_prev$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lˊʽ/ʼˎ;

    const-string v5, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v6, 0x1

    const-class v3, Lᴵי/ʾᵎ;

    const-string v4, "classSimpleName"

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lˊʼ/ʼᐧ;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lᴵי/ʾᵎ;->ٴﹶ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ʼˎ()Z
    .locals 1

    sget-object v0, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lˊʽ/ˉˆ;

    return v0
.end method

.method public final ˑﹳ(Lˊʽ/ˆʾ;I)Z
    .locals 4

    .prologue
    :goto_0
    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ﾞᴵ()Lˊʽ/ˆʾ;

    move-result-object v0

    sget-object v1, Lˊʽ/ˆʾ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    if-nez v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊʽ/ˆʾ;

    :goto_1
    invoke-virtual {v0}, Lˊʽ/ˆʾ;->ʼˎ()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˊʽ/ˆʾ;

    goto :goto_1

    :cond_1
    :goto_2
    instance-of v2, v0, Lˊʽ/ᵔᵢ;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Lˊʽ/ᵔᵢ;

    iget v1, v1, Lˊʽ/ᵔᵢ;->ˈٴ:I

    and-int/2addr v1, p2

    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lˊʽ/ˆʾ;->ˑﹳ(Lˊʽ/ˆʾ;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1, v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, p0}, Lˊʽ/ˆʾ;->ᵎﹶ(Lˊʽ/ˆʾ;)V

    return v3

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_4

    goto :goto_0
.end method

.method public final ᵎﹶ(Lˊʽ/ˆʾ;)V
    .locals 3

    .prologue
    :goto_0
    sget-object v0, Lˊʽ/ˆʾ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊʽ/ˆʾ;

    sget-object v2, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1, v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ʼˎ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lˊʽ/ˆʾ;->ﾞᴵ()Lˊʽ/ˆʾ;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    goto :goto_0
.end method

.method public final ᵔᵢ()Lˊʽ/ˆʾ;
    .locals 2

    .prologue
    sget-object v0, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lˊʽ/ˉˆ;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lˊʽ/ˉˆ;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, v1, Lˊʽ/ˉˆ;->ﹳٴ:Lˊʽ/ˆʾ;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    check-cast v0, Lˊʽ/ˆʾ;

    return-object v0
.end method

.method public final ﾞᴵ()Lˊʽ/ˆʾ;
    .locals 9

    .prologue
    :goto_0
    sget-object v0, Lˊʽ/ˆʾ;->ᴵˊ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊʽ/ˆʾ;

    const/4 v2, 0x0

    move-object v3, v1

    :goto_1
    move-object v4, v2

    :goto_2
    sget-object v5, Lˊʽ/ˆʾ;->ʾˋ:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_2

    if-ne v1, v3, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lˊʽ/ˆʾ;->ʼˎ()Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v2

    :cond_3
    instance-of v7, v6, Lˊʽ/ˉˆ;

    if-eqz v7, :cond_7

    if-eqz v4, :cond_6

    check-cast v6, Lˊʽ/ˉˆ;

    iget-object v6, v6, Lˊʽ/ˉˆ;->ﹳٴ:Lˊʽ/ˆʾ;

    :cond_4
    invoke-virtual {v5, v4, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v3, :cond_4

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lˊʽ/ˆʾ;

    goto :goto_2

    :cond_7
    move-object v4, v6

    check-cast v4, Lˊʽ/ˆʾ;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_2
.end method
