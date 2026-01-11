.class public final Lٴᵎ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lﾞʿ/ⁱˊ;

.field public final ˈ:Lٴᵎ/ﹳᐧ;

.field public final ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public volatile ⁱˊ:Ljava/util/Map;

.field public final ﹳٴ:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/util/Map;

    const-string v1, "\u2071\u02ca"

    const-class v2, Lٴᵎ/יـ;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lﾞʿ/ʽ;Lˎᵢ/ʼˎ;)V
    .locals 2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lٴᵎ/יـ;->ﹳٴ:J

    sget-object p2, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    iput-object p2, p0, Lٴᵎ/יـ;->ⁱˊ:Ljava/util/Map;

    invoke-virtual {p1}, Lﾞʿ/ʽ;->ˈ()Lﾞʿ/ⁱˊ;

    move-result-object p1

    iput-object p1, p0, Lٴᵎ/יـ;->ʽ:Lﾞʿ/ⁱˊ;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lⁱᐧ/ˑﹳ;->ⁱˊ:Ljava/lang/String;

    const-string v0, " ConnectionPool connection closer"

    invoke-static {p1, p2, v0}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lٴᵎ/ﹳᐧ;

    invoke-direct {p2, p0, p1}, Lٴᵎ/ﹳᐧ;-><init>(Lٴᵎ/יـ;Ljava/lang/String;)V

    iput-object p2, p0, Lٴᵎ/יـ;->ˈ:Lٴᵎ/ﹳᐧ;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lٴᵎ/יـ;->ˑﹳ:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lٴᵎ/ᵔﹳ;J)I
    .locals 6

    .prologue
    sget-object v0, Lⁱᐧ/ˑﹳ;->ﹳٴ:Ljava/util/TimeZone;

    iget-object v0, p1, Lٴᵎ/ᵔﹳ;->ﹳᐧ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast v3, Lٴᵎ/ᵔʾ;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "A connection to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lٴᵎ/ᵔﹳ;->ˈ:Lˎᵢ/ˊʻ;

    iget-object v5, v5, Lˎᵢ/ˊʻ;->ﹳٴ:Lˎᵢ/ﹳٴ;

    iget-object v5, v5, Lˎᵢ/ﹳٴ;->ᵔᵢ:Lˎᵢ/ʼᐧ;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    sget-object v5, Lـᐧ/ˑﹳ;->ﹳٴ:Lـᐧ/ˑﹳ;

    iget-object v3, v3, Lٴᵎ/ᵔʾ;->ﹳٴ:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Lـᐧ/ˑﹳ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v2, p0, Lٴᵎ/יـ;->ﹳٴ:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lٴᵎ/ᵔﹳ;->יـ:J

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method
