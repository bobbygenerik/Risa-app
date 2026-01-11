.class public final Lˈᵔ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public ʽʽ:Lˏـ/ˉʿ;

.field public final ʾˋ:Ljava/util/concurrent/ExecutorService;

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lˈᵔ/ʽ;->ᴵˊ:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v0

    iput-object v0, p0, Lˈᵔ/ʽ;->ʽʽ:Lˏـ/ˉʿ;

    iput-object p1, p0, Lˈᵔ/ʽ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lˈᵔ/ʽ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ⁱˊ(Lﹳˎ/ٴﹶ;)Lˏـ/ˉʿ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˈᵔ/ʽ;->ᴵˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˈᵔ/ʽ;->ʽʽ:Lˏـ/ˉʿ;

    iget-object v2, p0, Lˈᵔ/ʽ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lʻʿ/ˈ;

    const/16 v4, 0x13

    invoke-direct {v3, v4, p1}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lˏـ/ˉʿ;->ʽ(Ljava/util/concurrent/Executor;Lˏـ/ﹳٴ;)Lˏـ/ˉʿ;

    move-result-object p1

    iput-object p1, p0, Lˈᵔ/ʽ;->ʽʽ:Lˏـ/ˉʿ;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﹳٴ(Ljava/lang/Runnable;)Lˏـ/ˉʿ;
    .locals 5

    .prologue
    iget-object v0, p0, Lˈᵔ/ʽ;->ᴵˊ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lˈᵔ/ʽ;->ʽʽ:Lˏـ/ˉʿ;

    iget-object v2, p0, Lˈᵔ/ʽ;->ʾˋ:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lʻʿ/ˈ;

    const/16 v4, 0x14

    invoke-direct {v3, v4, p1}, Lʻʿ/ˈ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lˏـ/ˉʿ;->ʽ(Ljava/util/concurrent/Executor;Lˏـ/ﹳٴ;)Lˏـ/ˉʿ;

    move-result-object p1

    iput-object p1, p0, Lˈᵔ/ʽ;->ʽʽ:Lˏـ/ˉʿ;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
