.class public abstract Lʾʽ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ˈ:Ljava/util/LinkedHashSet;

.field public ˑﹳ:Ljava/lang/Object;

.field public final ⁱˊ:Landroid/content/Context;

.field public final ﹳٴ:Lᐧᵎ/ᵢי;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lᐧᵎ/ᵢי;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lʾʽ/ᵎﹶ;->ﹳٴ:Lᐧᵎ/ᵢי;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lʾʽ/ᵎﹶ;->ⁱˊ:Landroid/content/Context;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾʽ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lʾʽ/ᵎﹶ;->ˈ:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public abstract ʽ()V
.end method

.method public abstract ˈ()V
.end method

.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget-object v0, p0, Lʾʽ/ᵎﹶ;->ʽ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʾʽ/ᵎﹶ;->ˑﹳ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lʾʽ/ᵎﹶ;->ˑﹳ:Ljava/lang/Object;

    iget-object p1, p0, Lʾʽ/ᵎﹶ;->ˈ:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Lﹶˈ/ˆʾ;->ʾﾞ(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lʾʽ/ᵎﹶ;->ﹳٴ:Lᐧᵎ/ᵢי;

    iget-object v1, v1, Lᐧᵎ/ᵢי;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lʿʿ/ʽ;

    new-instance v2, Lʻʿ/ᵔʾ;

    const/16 v3, 0x8

    invoke-direct {v2, p1, v3, p0}, Lʻʿ/ᵔʾ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lʿʿ/ʽ;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public abstract ﹳٴ()Ljava/lang/Object;
.end method
