.class public final Lﹳʽ/ᵔﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lﹳʽ/ᵔﹳ;


# instance fields
.field public final ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lﹳʽ/ᵔﹳ;

    invoke-direct {v0}, Lﹳʽ/ᵔﹳ;-><init>()V

    sput-object v0, Lﹳʽ/ᵔﹳ;->ⁱˊ:Lﹳʽ/ᵔﹳ;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lˑʼ/ᵎˊ;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lˑʼ/ᵎˊ;-><init>(I)V

    new-instance v2, Lﹳʽ/ʽʽ;

    invoke-direct {v2, v1}, Lﹳʽ/ʽʽ;-><init>(Lˑʼ/ᵎˊ;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ⁱˊ(Lﹳʽ/ˈٴ;)V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ʽʽ;

    new-instance v1, Lˑʼ/ᵎˊ;

    invoke-direct {v1, v0}, Lˑʼ/ᵎˊ;-><init>(Lﹳʽ/ʽʽ;)V

    iget-object v0, v1, Lˑʼ/ᵎˊ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-interface {p1}, Lﹳʽ/ˈٴ;->ⁱˊ()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ˈٴ;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type"

    invoke-static {v2, v0}, Landroid/support/v4/media/session/ﹳٴ;->ﾞʻ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p1, Lﹳʽ/ʽʽ;

    invoke-direct {p1, v1}, Lﹳʽ/ʽʽ;-><init>(Lˑʼ/ᵎˊ;)V

    iget-object v0, p0, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized ﹳٴ(Lﹳʽ/ᵢˏ;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ʽʽ;

    new-instance v1, Lˑʼ/ᵎˊ;

    invoke-direct {v1, v0}, Lˑʼ/ᵎˊ;-><init>(Lﹳʽ/ʽʽ;)V

    invoke-virtual {v1, p1}, Lˑʼ/ᵎˊ;->ˋᵔ(Lﹳʽ/ᵢˏ;)V

    new-instance p1, Lﹳʽ/ʽʽ;

    invoke-direct {p1, v1}, Lﹳʽ/ʽʽ;-><init>(Lˑʼ/ᵎˊ;)V

    iget-object v0, p0, Lﹳʽ/ᵔﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
