.class public final synthetic Lᐧˎ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic ʾˋ:Lᐧˎ/ˉʿ;


# direct methods
.method public synthetic constructor <init>(Lᐧˎ/ˉʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧˎ/ʼˎ;->ʾˋ:Lᐧˎ/ˉʿ;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .prologue
    iget-object p1, p0, Lᐧˎ/ʼˎ;->ʾˋ:Lᐧˎ/ˉʿ;

    iget-object v0, p1, Lᐧˎ/ˉʿ;->ﾞᴵ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᐧˎ/ﾞʻ;

    iget-object v3, p1, Lᐧˎ/ˉʿ;->ˑﹳ:Ljava/lang/Object;

    check-cast v3, Lᐧˎ/ٴﹶ;

    iget-boolean v4, v1, Lᐧˎ/ﾞʻ;->ˈ:Z

    if-nez v4, :cond_1

    iget-boolean v4, v1, Lᐧˎ/ﾞʻ;->ʽ:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lᐧˎ/ﾞʻ;->ⁱˊ:Lar/tvplayer/core/domain/ʽﹳ;

    invoke-virtual {v4}, Lar/tvplayer/core/domain/ʽﹳ;->ʽ()Lʽⁱ/ʼᐧ;

    move-result-object v4

    new-instance v5, Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lar/tvplayer/core/domain/ʽﹳ;-><init>(I)V

    iput-object v5, v1, Lᐧˎ/ﾞʻ;->ⁱˊ:Lar/tvplayer/core/domain/ʽﹳ;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lᐧˎ/ﾞʻ;->ʽ:Z

    iget-object v1, v1, Lᐧˎ/ﾞʻ;->ﹳٴ:Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Lᐧˎ/ٴﹶ;->ˑﹳ(Ljava/lang/Object;Lʽⁱ/ʼᐧ;)V

    :cond_1
    iget-object v1, p1, Lᐧˎ/ˉʿ;->ˈ:Ljava/lang/Object;

    check-cast v1, Lᐧˎ/ʻٴ;

    iget-object v1, v1, Lᐧˎ/ʻٴ;->ﹳٴ:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return v2
.end method
