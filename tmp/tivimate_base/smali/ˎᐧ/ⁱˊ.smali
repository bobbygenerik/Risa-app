.class public final Lˎᐧ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ˈ:Ljava/lang/Object;

.field public final ⁱˊ:Ljava/lang/Object;

.field public volatile ﹳٴ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    iput-object v0, p0, Lˎᐧ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lˎᐧ/ⁱˊ;->ˈ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lﹳʽ/ˊʻ;Ljava/util/TreeSet;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lˎᐧ/ⁱˊ;->ﹳٴ:Z

    iput-object p1, p0, Lˎᐧ/ⁱˊ;->ˈ:Ljava/lang/Object;

    iput-object p2, p0, Lˎᐧ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/AutoCloseable;)V
    .locals 1

    .prologue
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lˉˆ/ٴᴵ;->ʽﹳ(Ljava/lang/AutoCloseable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public ⁱˊ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lˎᐧ/ⁱˊ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑי/ⁱˊ;

    iget-object v2, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iget-object v3, v1, Lˑי/ⁱˊ;->ⁱˊ:Lˉᵔ/ʽ;

    invoke-virtual {v3}, Lˉᵔ/ʽ;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v1, Lˑי/ⁱˊ;->ʽ:Lʽⁱ/ᵎﹶ;

    invoke-interface {v1, p0, v2, v3}, Lˆˏ/ﾞᴵ;->ʾˋ(Lˎᐧ/ⁱˊ;Ljava/lang/Object;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lˎᐧ/ⁱˊ;->ﹳٴ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lﹶˋ/ⁱˊ;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Lﹶˋ/ﹳٴ;

    if-nez v0, :cond_2

    iget-object v0, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lˎᐧ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏˆ/ﹳٴ;

    new-instance v1, Lﹶˋ/ⁱˊ;

    iget-object v2, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    return-void

    :cond_2
    iget-object v0, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lˎᐧ/ⁱˊ;->ˈ:Ljava/lang/Object;

    check-cast v0, Lﹳʽ/ˊʻ;

    iget-object v0, v0, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˏˆ/ﹳٴ;

    new-instance v1, Lﹶˋ/ﹳٴ;

    iget-object v2, p0, Lˎᐧ/ⁱˊ;->ʽ:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lʽⁱ/ᵎﹶ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lˏˆ/ﹳٴ;->ˊʻ(Ljava/lang/Object;)Lˎᐧ/ⁱˊ;

    :cond_3
    return-void
.end method
