.class public Landroidx/emoji2/text/EmojiCompatInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᵎ/ⁱˊ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u02ca\u1d4e/\u2071\u02ca;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ʽ(Landroid/content/Context;)V
    .locals 3

    .prologue
    invoke-static {p1}, Lˊᵎ/ﹳٴ;->ʽ(Landroid/content/Context;)Lˊᵎ/ﹳٴ;

    move-result-object p1

    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lˊᵎ/ﹳٴ;->ˑﹳ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p1, Lˊᵎ/ﹳٴ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v0, v2}, Lˊᵎ/ﹳٴ;->ⁱˊ(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, Landroidx/lifecycle/ʽﹳ;

    invoke-interface {v2}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p1

    new-instance v0, Lʿˋ/ʽﹳ;

    invoke-direct {v0, p0, p1}, Lʿˋ/ʽﹳ;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/ـˆ;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final ⁱˊ(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    .prologue
    new-instance v0, Lـﹶ/ﹳᐧ;

    new-instance v1, Lـﹶ/ﾞʻ;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lـﹶ/ﾞʻ;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lʼﾞ/ᵎⁱ;-><init>(Lـﹶ/ʼˎ;)V

    const/4 v1, 0x1

    iput v1, v0, Lʼﾞ/ᵎⁱ;->ﹳٴ:I

    sget-object v1, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-nez v1, :cond_1

    sget-object v1, Lـﹶ/ˆʾ;->ˆʾ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    if-nez v2, :cond_0

    new-instance v2, Lـﹶ/ˆʾ;

    invoke-direct {v2, v0}, Lـﹶ/ˆʾ;-><init>(Lـﹶ/ﹳᐧ;)V

    sput-object v2, Lـﹶ/ˆʾ;->ٴﹶ:Lـﹶ/ˆʾ;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->ʽ(Landroid/content/Context;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final ﹳٴ()Ljava/util/List;
    .locals 1

    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
