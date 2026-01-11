.class public final Lcom/bumptech/glide/ˉʿ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lٴʽ/ﹳٴ;


# instance fields
.field public final synthetic ⁱˊ:Lcom/bumptech/glide/ᵔʾ;

.field public final ﹳٴ:Lcom/google/android/gms/internal/measurement/ˊـ;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/ᵔʾ;Lcom/google/android/gms/internal/measurement/ˊـ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/ˉʿ;->ⁱˊ:Lcom/bumptech/glide/ᵔʾ;

    iput-object p2, p0, Lcom/bumptech/glide/ˉʿ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Z)V
    .locals 6

    .prologue
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bumptech/glide/ˉʿ;->ⁱˊ:Lcom/bumptech/glide/ᵔʾ;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/ˉʿ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ˊـ;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lʿٴ/ᵔʾ;->ˑﹳ(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lⁱⁱ/ʽ;

    invoke-interface {v4}, Lⁱⁱ/ʽ;->ᵔᵢ()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Lⁱⁱ/ʽ;->ˑﹳ()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Lⁱⁱ/ʽ;->clear()V

    iget-boolean v5, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ᴵˊ:Z

    if-nez v5, :cond_1

    invoke-interface {v4}, Lⁱⁱ/ʽ;->ﾞᴵ()V

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/ˊـ;->ˈٴ:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    return-void
.end method
