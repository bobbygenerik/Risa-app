.class public abstract Landroidx/lifecycle/ʽʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ٴﹶ:Ljava/lang/Object;


# instance fields
.field public ʼˎ:Z

.field public ʽ:I

.field public final ˆʾ:Landroidx/leanback/widget/ᵔʾ;

.field public ˈ:Z

.field public volatile ˑﹳ:Ljava/lang/Object;

.field public ᵎﹶ:I

.field public ᵔᵢ:Z

.field public final ⁱˊ:Lᵔﹳ/ﾞᴵ;

.field public final ﹳٴ:Ljava/lang/Object;

.field public volatile ﾞᴵ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/ʽʽ;->ٴﹶ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    new-instance v0, Lᵔﹳ/ﾞᴵ;

    invoke-direct {v0}, Lᵔﹳ/ﾞᴵ;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ʽʽ;->ⁱˊ:Lᵔﹳ/ﾞᴵ;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/ʽʽ;->ʽ:I

    sget-object v0, Landroidx/lifecycle/ʽʽ;->ٴﹶ:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/ʽʽ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v1, Landroidx/leanback/widget/ᵔʾ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/ʽʽ;->ˆʾ:Landroidx/leanback/widget/ᵔʾ;

    iput-object v0, p0, Landroidx/lifecycle/ʽʽ;->ˑﹳ:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ʽʽ;->ᵎﹶ:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object p1, Lᴵˋ/ˆʾ;->ˈ:Lᴵˋ/ʾᵎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    new-instance v0, Lᵔﹳ/ﾞᴵ;

    invoke-direct {v0}, Lᵔﹳ/ﾞᴵ;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ʽʽ;->ⁱˊ:Lᵔﹳ/ﾞᴵ;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/ʽʽ;->ʽ:I

    sget-object v1, Landroidx/lifecycle/ʽʽ;->ٴﹶ:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/ʽʽ;->ﾞᴵ:Ljava/lang/Object;

    new-instance v1, Landroidx/leanback/widget/ᵔʾ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/leanback/widget/ᵔʾ;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/lifecycle/ʽʽ;->ˆʾ:Landroidx/leanback/widget/ᵔʾ;

    iput-object p1, p0, Landroidx/lifecycle/ʽʽ;->ˑﹳ:Ljava/lang/Object;

    iput v0, p0, Landroidx/lifecycle/ʽʽ;->ᵎﹶ:I

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lʼᐧ/ⁱˊ;->ʾˋ()Lʼᐧ/ⁱˊ;

    move-result-object v0

    iget-object v0, v0, Lʼᐧ/ⁱˊ;->ˆʾ:Lʼᐧ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ʼˎ(Ljava/lang/Object;)V
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ʽʽ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/ʽʽ;->ﾞᴵ:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/ʽʽ;->ٴﹶ:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/ʽʽ;->ﾞᴵ:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lʼᐧ/ⁱˊ;->ʾˋ()Lʼᐧ/ⁱˊ;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/ʽʽ;->ˆʾ:Landroidx/leanback/widget/ᵔʾ;

    invoke-virtual {p1, v0}, Lʼᐧ/ⁱˊ;->ᴵˊ(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ʽ(Landroidx/lifecycle/ᴵˊ;)V
    .locals 4

    .prologue
    iget-boolean v0, p0, Landroidx/lifecycle/ʽʽ;->ᵔᵢ:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/ʽʽ;->ʼˎ:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/ʽʽ;->ᵔᵢ:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ʽʽ;->ʼˎ:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ʽʽ;->ⁱˊ(Landroidx/lifecycle/ᴵˊ;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/ʽʽ;->ⁱˊ:Lᵔﹳ/ﾞᴵ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lᵔﹳ/ˈ;

    invoke-direct {v2, v1}, Lᵔﹳ/ˈ;-><init>(Lᵔﹳ/ﾞᴵ;)V

    iget-object v1, v1, Lᵔﹳ/ﾞᴵ;->ʽʽ:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lᵔﹳ/ˈ;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lᵔﹳ/ˈ;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ᴵˊ;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/ʽʽ;->ⁱˊ(Landroidx/lifecycle/ᴵˊ;)V

    iget-boolean v1, p0, Landroidx/lifecycle/ʽʽ;->ʼˎ:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/ʽʽ;->ʼˎ:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/ʽʽ;->ᵔᵢ:Z

    return-void
.end method

.method public ˆʾ(Landroidx/lifecycle/ٴᵢ;)V
    .locals 1

    .prologue
    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/ʽʽ;->ⁱˊ:Lᵔﹳ/ﾞᴵ;

    invoke-virtual {v0, p1}, Lᵔﹳ/ﾞᴵ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ᴵˊ;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/ᴵˊ;->ⁱˊ()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ᴵˊ;->ﹳٴ(Z)V

    return-void
.end method

.method public final ˈ()Ljava/lang/Object;
    .locals 2

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ʽʽ;->ˑﹳ:Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/ʽʽ;->ٴﹶ:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ˑﹳ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ٴᵢ;)V
    .locals 3

    .prologue
    const-string v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v1, Landroidx/lifecycle/ᵔʾ;->ʾˋ:Landroidx/lifecycle/ᵔʾ;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Landroidx/lifecycle/ʾˋ;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/ʾˋ;-><init>(Landroidx/lifecycle/ʽʽ;Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ٴᵢ;)V

    iget-object v1, p0, Landroidx/lifecycle/ʽʽ;->ⁱˊ:Lᵔﹳ/ﾞᴵ;

    invoke-virtual {v1, p2}, Lᵔﹳ/ﾞᴵ;->ﹳٴ(Ljava/lang/Object;)Lᵔﹳ/ʽ;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p2, v2, Lᵔﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v2, Lᵔﹳ/ʽ;

    invoke-direct {v2, p2, v0}, Lᵔﹳ/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p2, v1, Lᵔﹳ/ﾞᴵ;->ˈٴ:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v1, Lᵔﹳ/ﾞᴵ;->ˈٴ:I

    iget-object p2, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    if-nez p2, :cond_2

    iput-object v2, v1, Lᵔﹳ/ﾞᴵ;->ʾˋ:Lᵔﹳ/ʽ;

    iput-object v2, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    goto :goto_0

    :cond_2
    iput-object v2, p2, Lᵔﹳ/ʽ;->ʽʽ:Lᵔﹳ/ʽ;

    iput-object p2, v2, Lᵔﹳ/ʽ;->ˈٴ:Lᵔﹳ/ʽ;

    iput-object v2, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    :goto_0
    const/4 p2, 0x0

    :goto_1
    check-cast p2, Landroidx/lifecycle/ᴵˊ;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ᴵˊ;->ʽ(Landroidx/lifecycle/ʽﹳ;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    :goto_3
    return-void

    :cond_5
    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    return-void
.end method

.method public ٴﹶ(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    iget v0, p0, Landroidx/lifecycle/ʽʽ;->ᵎﹶ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/ʽʽ;->ᵎﹶ:I

    iput-object p1, p0, Landroidx/lifecycle/ʽʽ;->ˑﹳ:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ʽʽ;->ʽ(Landroidx/lifecycle/ᴵˊ;)V

    return-void
.end method

.method public ᵎﹶ()V
    .locals 0

    return-void
.end method

.method public ᵔᵢ()V
    .locals 0

    return-void
.end method

.method public final ⁱˊ(Landroidx/lifecycle/ᴵˊ;)V
    .locals 2

    .prologue
    iget-boolean v0, p1, Landroidx/lifecycle/ᴵˊ;->ᴵˊ:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/ᴵˊ;->ˈ()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ᴵˊ;->ﹳٴ(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/ᴵˊ;->ʽʽ:I

    iget v1, p0, Landroidx/lifecycle/ʽʽ;->ᵎﹶ:I

    if-lt v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iput v1, p1, Landroidx/lifecycle/ᴵˊ;->ʽʽ:I

    iget-object p1, p1, Landroidx/lifecycle/ᴵˊ;->ʾˋ:Landroidx/lifecycle/ٴᵢ;

    iget-object v0, p0, Landroidx/lifecycle/ʽʽ;->ˑﹳ:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroidx/lifecycle/ٴᵢ;->ﹳٴ(Ljava/lang/Object;)V

    return-void
.end method

.method public final ﾞᴵ(Landroidx/lifecycle/ٴᵢ;)V
    .locals 4

    .prologue
    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/ʽʽ;->ﹳٴ(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/ᵢˏ;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/ᴵˊ;-><init>(Landroidx/lifecycle/ʽʽ;Landroidx/lifecycle/ٴᵢ;)V

    iget-object v1, p0, Landroidx/lifecycle/ʽʽ;->ⁱˊ:Lᵔﹳ/ﾞᴵ;

    invoke-virtual {v1, p1}, Lᵔﹳ/ﾞᴵ;->ﹳٴ(Ljava/lang/Object;)Lᵔﹳ/ʽ;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, v2, Lᵔﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v2, Lᵔﹳ/ʽ;

    invoke-direct {v2, p1, v0}, Lᵔﹳ/ʽ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, v1, Lᵔﹳ/ﾞᴵ;->ˈٴ:I

    add-int/2addr p1, v3

    iput p1, v1, Lᵔﹳ/ﾞᴵ;->ˈٴ:I

    iget-object p1, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    if-nez p1, :cond_1

    iput-object v2, v1, Lᵔﹳ/ﾞᴵ;->ʾˋ:Lᵔﹳ/ʽ;

    iput-object v2, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    goto :goto_0

    :cond_1
    iput-object v2, p1, Lᵔﹳ/ʽ;->ʽʽ:Lᵔﹳ/ʽ;

    iput-object p1, v2, Lᵔﹳ/ʽ;->ˈٴ:Lᵔﹳ/ʽ;

    iput-object v2, v1, Lᵔﹳ/ﾞᴵ;->ᴵˊ:Lᵔﹳ/ʽ;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    check-cast p1, Landroidx/lifecycle/ᴵˊ;

    instance-of v1, p1, Landroidx/lifecycle/ʾˋ;

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/lifecycle/ᴵˊ;->ﹳٴ(Z)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
