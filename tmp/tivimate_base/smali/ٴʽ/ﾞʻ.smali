.class public final Lٴʽ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ˈٴ:Lᵎˉ/ⁱˊ;


# instance fields
.field public final ʽʽ:Lˑʼ/ᵎˊ;

.field public volatile ʾˋ:Lcom/bumptech/glide/ᵔʾ;

.field public final ᴵˊ:Lٴʽ/ﾞᴵ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lٴʽ/ﾞʻ;->ˈٴ:Lᵎˉ/ⁱˊ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˑʼ/ᵎˊ;

    sget-object v1, Lٴʽ/ﾞʻ;->ˈٴ:Lᵎˉ/ⁱˊ;

    invoke-direct {v0, v1}, Lˑʼ/ᵎˊ;-><init>(Lᵎˉ/ⁱˊ;)V

    iput-object v0, p0, Lٴʽ/ﾞʻ;->ʽʽ:Lˑʼ/ᵎˊ;

    sget-boolean v0, Lᵔﹶ/ʻٴ;->ﾞᴵ:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lᵔﹶ/ʻٴ;->ˑﹳ:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lٴʽ/ˑﹳ;

    invoke-direct {v0}, Lٴʽ/ˑﹳ;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_1
    iput-object v0, p0, Lٴʽ/ﾞʻ;->ᴵˊ:Lٴʽ/ﾞᴵ;

    return-void
.end method

.method public static ﹳٴ(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .prologue
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lٴʽ/ﾞʻ;->ﹳٴ(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ᵔʾ;
    .locals 7

    .prologue
    if-eqz p1, :cond_9

    sget-object v0, Lʿٴ/ᵔʾ;->ﹳٴ:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_6

    instance-of v0, p1, Lᵔᵢ/ˆʾ;

    if-eqz v0, :cond_5

    move-object v2, p1

    check-cast v2, Lᵔᵢ/ˆʾ;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lٴʽ/ﾞʻ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ᵔʾ;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lٴʽ/ﾞʻ;->ᴵˊ:Lٴʽ/ﾞᴵ;

    invoke-interface {p1, v2}, Lٴʽ/ﾞᴵ;->ʽ(Lᵔᵢ/ˆʾ;)V

    invoke-static {v2}, Lٴʽ/ﾞʻ;->ﹳٴ(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v3

    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v3

    iget-object v1, p0, Lٴʽ/ﾞʻ;->ʽʽ:Lˑʼ/ᵎˊ;

    iget-object v4, v2, Lʽ/ٴﹶ;->ˈٴ:Landroidx/lifecycle/ـˆ;

    invoke-virtual {v2}, Lᵔᵢ/ˆʾ;->ٴﹶ()Lˑʼ/ʿ;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lˑʼ/ᵎˊ;->ᵎⁱ(Landroid/content/Context;Lcom/bumptech/glide/ⁱˊ;Landroidx/lifecycle/ـˆ;Lˑʼ/ʿ;Z)Lcom/bumptech/glide/ᵔʾ;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lٴʽ/ﾞʻ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ᵔʾ;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object v0, p0, Lٴʽ/ﾞʻ;->ʾˋ:Lcom/bumptech/glide/ᵔʾ;

    if-nez v0, :cond_8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lٴʽ/ﾞʻ;->ʾˋ:Lcom/bumptech/glide/ᵔʾ;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/ⁱˊ;->ⁱˊ(Landroid/content/Context;)Lcom/bumptech/glide/ⁱˊ;

    move-result-object v0

    new-instance v1, Lᵎˉ/ⁱˊ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lـˎ/ˈ;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lـˎ/ˈ;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v3, Lcom/bumptech/glide/ᵔʾ;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/bumptech/glide/ᵔʾ;-><init>(Lcom/bumptech/glide/ⁱˊ;Lٴʽ/ᵎﹶ;Lٴʽ/ˉʿ;Landroid/content/Context;)V

    iput-object v3, p0, Lٴʽ/ﾞʻ;->ʾˋ:Lcom/bumptech/glide/ᵔʾ;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_7
    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_8
    :goto_5
    iget-object p1, p0, Lٴʽ/ﾞʻ;->ʾˋ:Lcom/bumptech/glide/ᵔʾ;

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
