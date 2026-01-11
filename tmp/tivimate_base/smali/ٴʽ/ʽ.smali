.class public final Lٴʽ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʽ/ⁱˊ;


# instance fields
.field public final ʾˋ:Landroid/content/Context;

.field public final ᴵˊ:Lcom/bumptech/glide/ˉʿ;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/ˉʿ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lٴʽ/ʽ;->ʾˋ:Landroid/content/Context;

    iput-object p2, p0, Lٴʽ/ʽ;->ᴵˊ:Lcom/bumptech/glide/ˉʿ;

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lٴʽ/ʽ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lٴʽ/יـ;->ⁱˊ(Landroid/content/Context;)Lٴʽ/יـ;

    move-result-object v0

    iget-object v1, p0, Lٴʽ/ʽ;->ᴵˊ:Lcom/bumptech/glide/ˉʿ;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lٴʽ/יـ;->ﹳٴ:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lٴʽ/יـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lٴʽ/ˉˆ;

    invoke-interface {v1}, Lٴʽ/ˉˆ;->ﹳٴ()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lٴʽ/יـ;->ﹳٴ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final ˆʾ()V
    .locals 3

    .prologue
    iget-object v0, p0, Lٴʽ/ʽ;->ʾˋ:Landroid/content/Context;

    invoke-static {v0}, Lٴʽ/יـ;->ⁱˊ(Landroid/content/Context;)Lٴʽ/יـ;

    move-result-object v0

    iget-object v1, p0, Lٴʽ/ʽ;->ᴵˊ:Lcom/bumptech/glide/ˉʿ;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v1, v0, Lٴʽ/יـ;->ﹳٴ:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lٴʽ/יـ;->ʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lٴʽ/יـ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Lٴʽ/ˉˆ;

    invoke-interface {v1}, Lٴʽ/ˉˆ;->ⁱˊ()Z

    move-result v1

    iput-boolean v1, v0, Lٴʽ/יـ;->ﹳٴ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final ٴﹶ()V
    .locals 0

    return-void
.end method
