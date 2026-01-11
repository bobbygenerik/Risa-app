.class public final Lᴵי/ᵎʻ;
.super Lˊʽ/ᵔﹳ;
.source "SourceFile"


# instance fields
.field private volatile threadLocalIsSet:Z

.field public final ᴵᵔ:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V
    .locals 2

    .prologue
    sget-object v0, Lᴵי/ـᵎ;->ʾˋ:Lᴵי/ـᵎ;

    invoke-interface {p2, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lˈי/ᵔᵢ;->ﹶᐧ(Lˈי/ᵔᵢ;)Lˈי/ᵔᵢ;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Lˊʽ/ᵔﹳ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lᴵי/ᵎʻ;->ᴵᵔ:Ljava/lang/ThreadLocal;

    invoke-interface {p1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p1

    sget-object v0, Lˈי/ˑﹳ;->ʾˋ:Lˈי/ˑﹳ;

    invoke-interface {p1, v0}, Lˈי/ᵔᵢ;->ˊᵔ(Lˈי/ᵎﹶ;)Lˈי/ﾞᴵ;

    move-result-object p1

    instance-of p1, p1, Lᴵי/ˏי;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lˊʽ/ⁱˊ;->ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lᴵי/ᵎʻ;->ٴﹳ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final ʻˋ()Z
    .locals 3

    .prologue
    iget-boolean v0, p0, Lᴵי/ᵎʻ;->threadLocalIsSet:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lᴵי/ᵎʻ;->ᴵᵔ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lᴵי/ᵎʻ;->ᴵᵔ:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    xor-int/2addr v0, v1

    return v0
.end method

.method public final ˑʼ()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lᴵי/ᵎʻ;->threadLocalIsSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lᴵי/ᵎʻ;->ᴵᵔ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʻᵢ/ˑﹳ;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lʻᵢ/ˑﹳ;->ʾˋ:Ljava/lang/Object;

    check-cast v1, Lˈי/ᵔᵢ;

    iget-object v0, v0, Lʻᵢ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    invoke-static {v1, v0}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lᴵי/ᵎʻ;->ᴵᵔ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_1
    return-void
.end method

.method public final ٴﹳ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵי/ᵎʻ;->threadLocalIsSet:Z

    iget-object v0, p0, Lᴵי/ᵎʻ;->ᴵᵔ:Ljava/lang/ThreadLocal;

    new-instance v1, Lʻᵢ/ˑﹳ;

    invoke-direct {v1, p1, p2}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final ٴﹶ(Ljava/lang/Object;)V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lᴵי/ᵎʻ;->ˑʼ()V

    invoke-static {p1}, Lᴵי/ʾᵎ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lˊʽ/ᵔﹳ;->ˈٴ:Lˈי/ˈ;

    invoke-interface {v0}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lˊʽ/ⁱˊ;->ˉʿ(Lˈי/ᵔᵢ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lˊʽ/ⁱˊ;->ˈ:Lʻᴵ/ﹳٴ;

    if-eq v3, v4, :cond_0

    invoke-static {v0, v1, v3}, Lᴵי/ʾᵎ;->ـˆ(Lˈי/ˈ;Lˈי/ᵔᵢ;Ljava/lang/Object;)Lᴵי/ᵎʻ;

    move-result-object v2

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lᴵי/ᵎʻ;->ʻˋ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {v1, v3}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lᴵי/ᵎʻ;->ʻˋ()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {v1, v3}, Lˊʽ/ⁱˊ;->ᵎﹶ(Lˈי/ᵔᵢ;Ljava/lang/Object;)V

    :cond_4
    throw p1
.end method

.method public final ﹳﹳ()V
    .locals 0

    invoke-virtual {p0}, Lᴵי/ᵎʻ;->ˑʼ()V

    return-void
.end method
