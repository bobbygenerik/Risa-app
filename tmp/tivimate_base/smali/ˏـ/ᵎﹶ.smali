.class public final Lˏـ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ﹳٴ:Lˏـ/ˉʿ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˏـ/ˉʿ;

    invoke-direct {v0}, Lˏـ/ˉʿ;-><init>()V

    iput-object v0, p0, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    return-void
.end method

.method public constructor <init>(Lˊⁱ/ˑﹳ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lˏـ/ˉʿ;

    invoke-direct {v0}, Lˏـ/ˉʿ;-><init>()V

    iput-object v0, p0, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    new-instance v0, Lˉˆ/ʿ;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lˉˆ/ʿ;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lˊⁱ/ˑﹳ;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lˊⁱ/ˑﹳ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˏـ/ˉʿ;

    sget-object v0, Lˏـ/ᵔᵢ;->ﹳٴ:Lʿʿ/ʽ;

    invoke-virtual {p1, v0, v1}, Lˏـ/ˉʿ;->ⁱˊ(Ljava/util/concurrent/Executor;Lˏـ/ˑﹳ;)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    invoke-virtual {v0, p1}, Lˏـ/ˉʿ;->ﾞʻ(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ﹳٴ(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lٴﾞ/ʻٴ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lˏـ/ˉʿ;->ﹳٴ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lˏـ/ˉʿ;->ʽ:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lˏـ/ˉʿ;->ʽ:Z

    iput-object p1, v0, Lˏـ/ˉʿ;->ﾞᴵ:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lˏـ/ˉʿ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ˊـ;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/ˊـ;->ٴﹶ(Lˏـ/ˉʿ;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
