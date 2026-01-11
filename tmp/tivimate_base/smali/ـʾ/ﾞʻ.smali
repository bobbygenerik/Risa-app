.class public final Lـʾ/ﾞʻ;
.super Lcom/google/android/gms/internal/play_billing/י;
.source "SourceFile"


# static fields
.field public static final ˈⁱ:Ljava/lang/String;


# instance fields
.field public final ʼˈ:Ljava/util/ArrayList;

.field public final ˈʿ:Ljava/lang/String;

.field public final ˊˋ:Ljava/util/ArrayList;

.field public final ˋᵔ:Ljava/util/List;

.field public final ˑٴ:I

.field public ـˏ:Z

.field public final ᵔٴ:Lـʾ/ﹳᐧ;

.field public ﹳـ:Lᴵˋ/ˆʾ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lـʾ/ﾞʻ;->ˈⁱ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lـʾ/ﹳᐧ;Ljava/lang/String;ILjava/util/List;I)V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـʾ/ﾞʻ;->ᵔٴ:Lـʾ/ﹳᐧ;

    iput-object p2, p0, Lـʾ/ﾞʻ;->ˈʿ:Ljava/lang/String;

    iput p3, p0, Lـʾ/ﾞʻ;->ˑٴ:I

    iput-object p4, p0, Lـʾ/ﾞʻ;->ˋᵔ:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lـʾ/ﾞʻ;->ˊˋ:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lـʾ/ﾞʻ;->ʼˈ:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lᴵˋ/ˉٴ;

    iget-object p2, p2, Lᴵˋ/ˉٴ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-wide v0, p2, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lᴵˋ/ˉٴ;

    iget-object p2, p2, Lᴵˋ/ˉٴ;->ﹳٴ:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lـʾ/ﾞʻ;->ˊˋ:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lـʾ/ﾞʻ;->ʼˈ:Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static ᵔי(Lـʾ/ﾞʻ;)Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final ᵎˊ()Lᴵˋ/ˆʾ;
    .locals 5

    .prologue
    iget-boolean v0, p0, Lـʾ/ﾞʻ;->ـˏ:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lـʾ/ﾞʻ;->ᵔٴ:Lـʾ/ﹳᐧ;

    iget-object v1, v0, Lـʾ/ﹳᐧ;->ˈ:Lᴵˋ/ⁱˊ;

    iget-object v1, v1, Lᴵˋ/ⁱˊ;->ˉʿ:Lᴵˋ/ˆʾ;

    const/4 v2, 0x1

    iget v3, p0, Lـʾ/ﾞʻ;->ˑٴ:I

    if-eq v3, v2, :cond_3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x4

    if-ne v3, v2, :cond_0

    const-string v2, "APPEND_OR_REPLACE"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    const-string v2, "APPEND"

    goto :goto_0

    :cond_2
    const-string v2, "KEEP"

    goto :goto_0

    :cond_3
    const-string v2, "REPLACE"

    :goto_0
    const-string v3, "EnqueueRunnable_"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lـʾ/ﹳᐧ;->ﾞᴵ:Lᐧᵎ/ᵢי;

    iget-object v0, v0, Lᐧᵎ/ᵢי;->ʾˋ:Ljava/lang/Object;

    check-cast v0, Lʼﾞ/ˈʿ;

    new-instance v3, Lיˋ/ˈ;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p0}, Lיˋ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔʾ(Lᴵˋ/ˆʾ;Ljava/lang/String;Ljava/util/concurrent/Executor;Lᴵⁱ/ﹳٴ;)Lᴵˋ/ˆʾ;

    move-result-object v0

    iput-object v0, p0, Lـʾ/ﾞʻ;->ﹳـ:Lᴵˋ/ˆʾ;

    goto :goto_1

    :cond_4
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already enqueued work ids ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    iget-object v3, p0, Lـʾ/ﾞʻ;->ˊˋ:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lـʾ/ﾞʻ;->ˈⁱ:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lᴵˋ/ˏי;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lـʾ/ﾞʻ;->ﹳـ:Lᴵˋ/ˆʾ;

    return-object v0
.end method
