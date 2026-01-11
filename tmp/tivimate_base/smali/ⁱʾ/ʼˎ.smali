.class public abstract Lⁱʾ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽᐧ/ˑﹳ;


# instance fields
.field public final ʽ:Ljava/util/ArrayDeque;

.field public ˈ:Lⁱʾ/ᵎﹶ;

.field public ˑﹳ:J

.field public ᵎﹶ:J

.field public final ⁱˊ:Ljava/util/ArrayDeque;

.field public final ﹳٴ:Ljava/util/ArrayDeque;

.field public ﾞᴵ:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lⁱʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lⁱʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayDeque;

    new-instance v3, Lⁱʾ/ᵎﹶ;

    invoke-direct {v3}, Lʽᐧ/ᵔᵢ;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lⁱʾ/ʼˎ;->ⁱˊ:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lⁱʾ/ʼˎ;->ⁱˊ:Ljava/util/ArrayDeque;

    new-instance v2, Lⁱʾ/ᵔᵢ;

    new-instance v3, Lٴˉ/ﹳٴ;

    const/16 v4, 0x11

    invoke-direct {v3, v4, p0}, Lٴˉ/ﹳٴ;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lʻᴵ/ﾞᴵ;-><init>(I)V

    iput-object v3, v2, Lⁱʾ/ᵔᵢ;->ˉٴ:Lٴˉ/ﹳٴ;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lⁱʾ/ʼˎ;->ʽ:Ljava/util/ArrayDeque;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lⁱʾ/ʼˎ;->ᵎﹶ:J

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lⁱʾ/ʼˎ;->ﾞᴵ:J

    iput-wide v0, p0, Lⁱʾ/ʼˎ;->ˑﹳ:J

    :goto_0
    iget-object v0, p0, Lⁱʾ/ʼˎ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lⁱʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lⁱʾ/ᵎﹶ;

    sget-object v1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Lﹳⁱ/ˑﹳ;->ˏי()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lⁱʾ/ʼˎ;->ˈ:Lⁱʾ/ᵎﹶ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lﹳⁱ/ˑﹳ;->ˏי()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lⁱʾ/ʼˎ;->ˈ:Lⁱʾ/ᵎﹶ;

    :cond_1
    return-void
.end method

.method public ʼˎ()Lʽᐧ/ʼˎ;
    .locals 7

    .prologue
    iget-object v0, p0, Lⁱʾ/ʼˎ;->ⁱˊ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lⁱʾ/ʼˎ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lⁱʾ/ᵎﹶ;

    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    iget-wide v2, v2, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide v4, p0, Lⁱʾ/ʼˎ;->ˑﹳ:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱʾ/ᵎﹶ;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v3

    iget-object v4, p0, Lⁱʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayDeque;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽᐧ/ʼˎ;

    invoke-virtual {v0, v2}, Lʻᴵ/ﾞᴵ;->ⁱˊ(I)V

    invoke-virtual {v1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lⁱʾ/ʼˎ;->ᵔᵢ(Lⁱʾ/ᵎﹶ;)V

    invoke-virtual {p0}, Lⁱʾ/ʼˎ;->ˆʾ()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lⁱʾ/ʼˎ;->ᵎﹶ()Lʼٴ/ʼᐧ;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽᐧ/ʼˎ;

    iget-wide v5, v1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iput-wide v5, v0, Lﹳⁱ/ﾞᴵ;->ʽʽ:J

    iput-object v2, v0, Lʽᐧ/ʼˎ;->ˊʻ:Lʽᐧ/ˈ;

    iput-wide v5, v0, Lʽᐧ/ʼˎ;->ٴᵢ:J

    invoke-virtual {v1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ʽ(J)V
    .locals 0

    iput-wide p1, p0, Lⁱʾ/ʼˎ;->ᵎﹶ:J

    return-void
.end method

.method public abstract ˆʾ()Z
.end method

.method public final ˈ(J)V
    .locals 0

    iput-wide p1, p0, Lⁱʾ/ʼˎ;->ˑﹳ:J

    return-void
.end method

.method public bridge synthetic ˑﹳ()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lⁱʾ/ʼˎ;->ʼˎ()Lʽᐧ/ʼˎ;

    move-result-object v0

    return-object v0
.end method

.method public abstract ᵎﹶ()Lʼٴ/ʼᐧ;
.end method

.method public abstract ᵔᵢ(Lⁱʾ/ᵎﹶ;)V
.end method

.method public final ⁱˊ(Lʽᐧ/ᵔᵢ;)V
    .locals 6

    .prologue
    iget-object v0, p0, Lⁱʾ/ʼˎ;->ˈ:Lⁱʾ/ᵎﹶ;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    check-cast p1, Lⁱʾ/ᵎﹶ;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lʻᴵ/ﾞᴵ;->ˑﹳ(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lⁱʾ/ʼˎ;->ᵎﹶ:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, Lﹳⁱ/ˑﹳ;->ˏי()V

    iget-object v0, p0, Lⁱʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lⁱʾ/ʼˎ;->ﾞᴵ:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lⁱʾ/ʼˎ;->ﾞᴵ:J

    iput-wide v0, p1, Lⁱʾ/ᵎﹶ;->ᵔי:J

    iget-object v0, p0, Lⁱʾ/ʼˎ;->ʽ:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lⁱʾ/ʼˎ;->ˈ:Lⁱʾ/ᵎﹶ;

    return-void
.end method

.method public ﹳٴ()V
    .locals 0

    return-void
.end method

.method public final ﾞᴵ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Lⁱʾ/ʼˎ;->ˈ:Lⁱʾ/ᵎﹶ;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ٴﹶ(Z)V

    iget-object v0, p0, Lⁱʾ/ʼˎ;->ﹳٴ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lⁱʾ/ᵎﹶ;

    iput-object v0, p0, Lⁱʾ/ʼˎ;->ˈ:Lⁱʾ/ᵎﹶ;

    return-object v0
.end method
