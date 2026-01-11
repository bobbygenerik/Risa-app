.class public final Lـˉ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lـʾ/ˑﹳ;
.implements Lⁱᵎ/ﾞᴵ;
.implements Lـʾ/ﹳٴ;


# static fields
.field public static final ˈʿ:Ljava/lang/String;


# instance fields
.field public final ʽʽ:Lـˉ/ﹳٴ;

.field public final ʾˋ:Landroid/content/Context;

.field public final ˆﾞ:Lᐧᵎ/ᵢי;

.field public ˈٴ:Z

.field public final ˉٴ:Lـʾ/ᵔﹳ;

.field public final ˊʻ:Lˑʼ/ᵎˊ;

.field public final ٴʼ:Ljava/util/HashMap;

.field public final ٴᵢ:Lـʾ/ʽ;

.field public final ᴵˊ:Ljava/util/HashMap;

.field public final ᴵᵔ:Ljava/lang/Object;

.field public ᵎˊ:Ljava/lang/Boolean;

.field public final ᵎⁱ:Lᴵˋ/ⁱˊ;

.field public final ᵔי:Lʼﹳ/ᵎﹶ;

.field public final ᵔٴ:Lʾⁱ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lᴵˋ/ⁱˊ;Landroidx/leanback/widget/ʻٴ;Lـʾ/ʽ;Lـʾ/ᵔﹳ;Lᐧᵎ/ᵢי;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lـˉ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lـˉ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    new-instance v0, Lˊﾞ/ٴﹶ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lˊﾞ/ٴﹶ;-><init>(I)V

    new-instance v1, Lˑʼ/ᵎˊ;

    invoke-direct {v1, v0}, Lˑʼ/ᵎˊ;-><init>(Lˊﾞ/ٴﹶ;)V

    iput-object v1, p0, Lـˉ/ʽ;->ˊʻ:Lˑʼ/ᵎˊ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lـˉ/ʽ;->ٴʼ:Ljava/util/HashMap;

    iput-object p1, p0, Lـˉ/ʽ;->ʾˋ:Landroid/content/Context;

    iget-object p1, p2, Lᴵˋ/ⁱˊ;->ᵎﹶ:Lˊⁱ/ˑﹳ;

    new-instance v0, Lـˉ/ﹳٴ;

    iget-object v1, p2, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    invoke-direct {v0, p0, p1, v1}, Lـˉ/ﹳٴ;-><init>(Lـˉ/ʽ;Lˊⁱ/ˑﹳ;Lᴵˋ/ˆʾ;)V

    iput-object v0, p0, Lـˉ/ʽ;->ʽʽ:Lـˉ/ﹳٴ;

    new-instance v0, Lʾⁱ/ˈ;

    invoke-direct {v0, p1, p5}, Lʾⁱ/ˈ;-><init>(Lˊⁱ/ˑﹳ;Lـʾ/ᵔﹳ;)V

    iput-object v0, p0, Lـˉ/ʽ;->ᵔٴ:Lʾⁱ/ˈ;

    iput-object p6, p0, Lـˉ/ʽ;->ˆﾞ:Lᐧᵎ/ᵢי;

    new-instance p1, Lʼﹳ/ᵎﹶ;

    invoke-direct {p1, p3}, Lʼﹳ/ᵎﹶ;-><init>(Landroidx/leanback/widget/ʻٴ;)V

    iput-object p1, p0, Lـˉ/ʽ;->ᵔי:Lʼﹳ/ᵎﹶ;

    iput-object p2, p0, Lـˉ/ʽ;->ᵎⁱ:Lᴵˋ/ⁱˊ;

    iput-object p4, p0, Lـˉ/ʽ;->ٴᵢ:Lـʾ/ʽ;

    iput-object p5, p0, Lـˉ/ʽ;->ˉٴ:Lـʾ/ᵔﹳ;

    return-void
.end method


# virtual methods
.method public final ʽ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ˈ(Lˑᵎ/ﾞʻ;Z)V
    .locals 2

    .prologue
    iget-object v0, p0, Lـˉ/ʽ;->ˊʻ:Lˑʼ/ᵎˊ;

    invoke-virtual {v0, p1}, Lˑʼ/ᵎˊ;->ʼˈ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lـˉ/ʽ;->ᵔٴ:Lʾⁱ/ˈ;

    invoke-virtual {v1, v0}, Lʾⁱ/ˈ;->ﹳٴ(Lـʾ/ᵔᵢ;)V

    :cond_0
    invoke-virtual {p0, p1}, Lـˉ/ʽ;->ﾞᴵ(Lˑᵎ/ﾞʻ;)V

    if-nez p2, :cond_1

    iget-object p2, p0, Lـˉ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lـˉ/ʽ;->ٴʼ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public final ˑﹳ(Lˑᵎ/ﹳᐧ;Lⁱᵎ/ʽ;)V
    .locals 7

    .prologue
    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object p1

    instance-of v0, p2, Lⁱᵎ/ﹳٴ;

    iget-object v1, p0, Lـˉ/ʽ;->ˉٴ:Lـʾ/ᵔﹳ;

    iget-object v2, p0, Lـˉ/ʽ;->ᵔٴ:Lʾⁱ/ˈ;

    sget-object v3, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    iget-object v4, p0, Lـˉ/ʽ;->ˊʻ:Lˑʼ/ᵎˊ;

    if-eqz v0, :cond_0

    invoke-virtual {v4, p1}, Lˑʼ/ᵎˊ;->ᵔﹳ(Lˑᵎ/ﾞʻ;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Constraints met: Scheduling work ID "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lˑʼ/ᵎˊ;->ᴵˑ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;

    move-result-object p1

    invoke-virtual {v2, p1}, Lʾⁱ/ˈ;->ˈ(Lـʾ/ᵔᵢ;)V

    iget-object p2, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lᐧᵎ/ᵢי;

    new-instance v0, Lcom/parse/ˊﾞ;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3, v2}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lᐧᵎ/ᵢי;->ʼˎ(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Constraints not met: Cancelling work ID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lˑʼ/ᵎˊ;->ʼˈ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Lʾⁱ/ˈ;->ﹳٴ(Lـʾ/ᵔᵢ;)V

    check-cast p2, Lⁱᵎ/ⁱˊ;

    iget p2, p2, Lⁱᵎ/ⁱˊ;->ﹳٴ:I

    invoke-virtual {v1, p1, p2}, Lـʾ/ᵔﹳ;->ـˆ(Lـʾ/ᵔᵢ;I)V

    :cond_1
    return-void
.end method

.method public final ᵎﹶ(Lˑᵎ/ﹳᐧ;)J
    .locals 7

    .prologue
    iget-object v0, p0, Lـˉ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v1

    iget-object v2, p0, Lـˉ/ʽ;->ٴʼ:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lـˉ/ⁱˊ;

    if-nez v2, :cond_0

    new-instance v2, Lـˉ/ⁱˊ;

    iget v3, p1, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    iget-object v4, p0, Lـˉ/ʽ;->ᵎⁱ:Lᴵˋ/ⁱˊ;

    iget-object v4, v4, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lـˉ/ⁱˊ;-><init>(IJ)V

    iget-object v3, p0, Lـˉ/ʽ;->ٴʼ:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-wide v3, v2, Lـˉ/ⁱˊ;->ⁱˊ:J

    iget p1, p1, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    iget v1, v2, Lـˉ/ⁱˊ;->ﹳٴ:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x5

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v5, 0x7530

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Ljava/lang/String;)V
    .locals 4

    .prologue
    sget-object v0, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    iget-object v1, p0, Lـˉ/ʽ;->ᵎˊ:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, p0, Lـˉ/ʽ;->ʾˋ:Landroid/content/Context;

    invoke-static {v1}, Lˆﹶ/ٴﹶ;->ﹳٴ(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lـˉ/ʽ;->ᵎˊ:Ljava/lang/Boolean;

    :cond_0
    iget-object v1, p0, Lـˉ/ʽ;->ᵎˊ:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    const-string v1, "Ignoring schedule request in non-main process"

    invoke-virtual {p1, v0, v1}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lـˉ/ʽ;->ˈٴ:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lـˉ/ʽ;->ٴᵢ:Lـʾ/ʽ;

    invoke-virtual {v1, p0}, Lـʾ/ʽ;->ﹳٴ(Lـʾ/ﹳٴ;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lـˉ/ʽ;->ˈٴ:Z

    :cond_2
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling work ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lـˉ/ʽ;->ʽʽ:Lـˉ/ﹳٴ;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lـˉ/ﹳٴ;->ˈ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lـˉ/ﹳٴ;->ⁱˊ:Lˊⁱ/ˑﹳ;

    iget-object v0, v0, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lـˉ/ʽ;->ˊʻ:Lˑʼ/ᵎˊ;

    iget-object v1, v0, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lˑʼ/ᵎˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˊﾞ/ٴﹶ;

    invoke-virtual {v0, p1}, Lˊﾞ/ٴﹶ;->ʽ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـʾ/ᵔᵢ;

    iget-object v1, p0, Lـˉ/ʽ;->ᵔٴ:Lʾⁱ/ˈ;

    invoke-virtual {v1, v0}, Lʾⁱ/ˈ;->ﹳٴ(Lـʾ/ᵔᵢ;)V

    iget-object v1, p0, Lـˉ/ʽ;->ˉٴ:Lـʾ/ᵔﹳ;

    const/16 v2, -0x200

    invoke-virtual {v1, v0, v2}, Lـʾ/ᵔﹳ;->ـˆ(Lـʾ/ᵔᵢ;I)V

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final varargs ﹳٴ([Lˑᵎ/ﹳᐧ;)V
    .locals 13

    .prologue
    iget-object v0, p0, Lـˉ/ʽ;->ᵎˊ:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lـˉ/ʽ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lˆﹶ/ٴﹶ;->ﹳٴ(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lـˉ/ʽ;->ᵎˊ:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lـˉ/ʽ;->ᵎˊ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object p1

    sget-object v0, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    const-string v1, "Ignoring schedule request in a secondary process"

    invoke-virtual {p1, v0, v1}, Lᴵˋ/ˏי;->ﾞᴵ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lـˉ/ʽ;->ˈٴ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lـˉ/ʽ;->ٴᵢ:Lـʾ/ʽ;

    invoke-virtual {v0, p0}, Lـʾ/ʽ;->ﹳٴ(Lـʾ/ﹳٴ;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lـˉ/ʽ;->ˈٴ:Z

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x0

    if-ge v3, v2, :cond_a

    aget-object v4, p1, v3

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v5

    iget-object v6, p0, Lـˉ/ʽ;->ˊʻ:Lˑʼ/ᵎˊ;

    invoke-virtual {v6, v5}, Lˑʼ/ᵎˊ;->ᵔﹳ(Lˑᵎ/ﾞʻ;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lـˉ/ʽ;->ᵎﹶ(Lˑᵎ/ﹳᐧ;)J

    move-result-wide v5

    invoke-virtual {v4}, Lˑᵎ/ﹳᐧ;->ﹳٴ()J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, p0, Lـˉ/ʽ;->ᵎⁱ:Lᴵˋ/ⁱˊ;

    iget-object v7, v7, Lᴵˋ/ⁱˊ;->ˈ:Lᴵˋ/ˆʾ;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v7, v4, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    sget-object v11, Lᴵˋ/ˈٴ;->ʾˋ:Lᴵˋ/ˈٴ;

    if-ne v7, v11, :cond_9

    cmp-long v7, v9, v5

    if-gez v7, :cond_5

    iget-object v7, p0, Lـˉ/ʽ;->ʽʽ:Lـˉ/ﹳٴ;

    if-eqz v7, :cond_9

    iget-object v8, v7, Lـˉ/ﹳٴ;->ⁱˊ:Lˊⁱ/ˑﹳ;

    iget-object v9, v7, Lـˉ/ﹳٴ;->ˈ:Ljava/util/HashMap;

    iget-object v10, v4, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Runnable;

    if-eqz v10, :cond_4

    iget-object v11, v8, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v11, Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v10, Lˋˋ/ˈ;

    const/16 v11, 0xb

    invoke-direct {v10, v7, v11, v4}, Lˋˋ/ˈ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v4, v4, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lـˉ/ﹳٴ;->ʽ:Lᴵˋ/ˆʾ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v5, v11

    iget-object v4, v8, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    invoke-virtual {v4, v10, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_5
    sget-object v5, Lᴵˋ/ˑﹳ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-object v6, v4, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-static {v5, v6}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v4, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    iget-boolean v6, v5, Lᴵˋ/ˑﹳ;->ˈ:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v5

    sget-object v6, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires device idle."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_7

    invoke-virtual {v5}, Lᴵˋ/ˑﹳ;->ⁱˊ()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v5

    sget-object v6, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Requires ContentUri triggers."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v4, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lـˉ/ʽ;->ˊʻ:Lˑʼ/ᵎˊ;

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v6

    invoke-virtual {v5, v6}, Lˑʼ/ᵎˊ;->ᵔﹳ(Lˑᵎ/ﾞʻ;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v5

    sget-object v6, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Starting work for "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lˑᵎ/ﹳᐧ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lـˉ/ʽ;->ˊʻ:Lˑʼ/ᵎˊ;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v4

    invoke-virtual {v5, v4}, Lˑʼ/ᵎˊ;->ᴵˑ(Lˑᵎ/ﾞʻ;)Lـʾ/ᵔᵢ;

    move-result-object v4

    iget-object v5, p0, Lـˉ/ʽ;->ᵔٴ:Lʾⁱ/ˈ;

    invoke-virtual {v5, v4}, Lʾⁱ/ˈ;->ˈ(Lـʾ/ᵔᵢ;)V

    iget-object v5, p0, Lـˉ/ʽ;->ˉٴ:Lـʾ/ᵔﹳ;

    iget-object v6, v5, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v6, Lᐧᵎ/ᵢי;

    new-instance v7, Lcom/parse/ˊﾞ;

    const/4 v9, 0x6

    invoke-direct {v7, v5, v4, v8, v9}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Lᐧᵎ/ᵢי;->ʼˎ(Ljava/lang/Runnable;)V

    :cond_9
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object p1, p0, Lـˉ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v2

    sget-object v3, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lˑᵎ/ﹳᐧ;

    invoke-static {v6}, Lˉᵎ/ⁱˊ;->ʼᐧ(Lˑᵎ/ﹳᐧ;)Lˑᵎ/ﾞʻ;

    move-result-object v1

    iget-object v2, p0, Lـˉ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v5, p0, Lـˉ/ʽ;->ᵔי:Lʼﹳ/ᵎﹶ;

    iget-object v2, p0, Lـˉ/ʽ;->ˆﾞ:Lᐧᵎ/ᵢי;

    iget-object v2, v2, Lᐧᵎ/ᵢי;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lᴵי/ˏי;

    sget-object v3, Lⁱᵎ/ʼˎ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v2}, Lᴵי/ʾᵎ;->ⁱˊ(Lˈי/ᵔᵢ;)Lˊʽ/ˈ;

    move-result-object v2

    new-instance v4, Lʼˋ/ᵔʾ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v9, 0x17

    move-object v7, p0

    :try_start_1
    invoke-direct/range {v4 .. v9}, Lʼˋ/ᵔʾ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 v3, 0x3

    invoke-static {v2, v8, v4, v3}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    move-result-object v2

    iget-object v3, v7, Lـˉ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, p0

    goto :goto_3

    :cond_b
    move-object v7, p0

    goto :goto_2

    :cond_c
    move-object v7, p0

    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ﾞᴵ(Lˑᵎ/ﾞʻ;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lـˉ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lـˉ/ʽ;->ᴵˊ:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ᴵˑ;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v2, Lـˉ/ʽ;->ˈʿ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping tracking for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lᴵי/ᴵˑ;->ᵎﹶ(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
