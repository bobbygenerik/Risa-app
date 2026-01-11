.class public abstract Lcom/google/android/gms/internal/measurement/ʻᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Lיـ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lיـ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ʻᐧ;->ﹳٴ:Lיـ/ˑﹳ;

    return-void
.end method

.method public static declared-synchronized ﹳٴ()V
    .locals 4

    .prologue
    const-class v0, Lcom/google/android/gms/internal/measurement/ʻᐧ;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/ʻᐧ;->ﹳٴ:Lיـ/ˑﹳ;

    invoke-virtual {v1}, Lיـ/ˑﹳ;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Lיـ/ˈ;

    invoke-virtual {v2}, Lיـ/ˈ;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lיـ/ﹳᐧ;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ʻᐧ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
