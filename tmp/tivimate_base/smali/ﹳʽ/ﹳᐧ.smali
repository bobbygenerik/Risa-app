.class public final Lﹳʽ/ﹳᐧ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lﹳʽ/ﹳᐧ;


# instance fields
.field public final ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    :try_start_0
    new-instance v0, Lﹳʽ/ﹳᐧ;

    invoke-direct {v0}, Lﹳʽ/ﹳᐧ;-><init>()V

    new-instance v1, Lᵔﹶ/ˉʿ;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lᵔﹶ/ˉʿ;-><init>(I)V

    const-class v2, Lﹳʽ/ʼˎ;

    new-instance v3, Lﹳʽ/ˑﹳ;

    invoke-direct {v3, v2, v1}, Lﹳʽ/ˑﹳ;-><init>(Ljava/lang/Class;Lﹳʽ/ﾞᴵ;)V

    invoke-virtual {v0, v3}, Lﹳʽ/ﹳᐧ;->ˈ(Lﹳʽ/ˑﹳ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sput-object v0, Lﹳʽ/ﹳᐧ;->ⁱˊ:Lﹳʽ/ﹳᐧ;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lᐧᵎ/ᵢי;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lᐧᵎ/ᵢי;-><init>(I)V

    new-instance v2, Lﹳʽ/ᵎˊ;

    invoke-direct {v2, v1}, Lﹳʽ/ᵎˊ;-><init>(Lᐧᵎ/ᵢי;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ʽ(Lﹳʽ/ʽ;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lᐧᵎ/ᵢי;

    iget-object v1, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳʽ/ᵎˊ;

    invoke-direct {v0, v1}, Lᐧᵎ/ᵢי;-><init>(Lﹳʽ/ᵎˊ;)V

    invoke-virtual {v0, p1}, Lᐧᵎ/ᵢי;->ٴﹶ(Lﹳʽ/ʽ;)V

    new-instance p1, Lﹳʽ/ᵎˊ;

    invoke-direct {p1, v0}, Lﹳʽ/ᵎˊ;-><init>(Lᐧᵎ/ᵢי;)V

    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public final declared-synchronized ˈ(Lﹳʽ/ˑﹳ;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lᐧᵎ/ᵢי;

    iget-object v1, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳʽ/ᵎˊ;

    invoke-direct {v0, v1}, Lᐧᵎ/ᵢי;-><init>(Lﹳʽ/ᵎˊ;)V

    invoke-virtual {v0, p1}, Lᐧᵎ/ᵢי;->ﾞʻ(Lﹳʽ/ˑﹳ;)V

    new-instance p1, Lﹳʽ/ᵎˊ;

    invoke-direct {p1, v0}, Lﹳʽ/ᵎˊ;-><init>(Lᐧᵎ/ᵢי;)V

    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public final declared-synchronized ˑﹳ(Lﹳʽ/ˏי;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lᐧᵎ/ᵢי;

    iget-object v1, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳʽ/ᵎˊ;

    invoke-direct {v0, v1}, Lᐧᵎ/ᵢי;-><init>(Lﹳʽ/ᵎˊ;)V

    invoke-virtual {v0, p1}, Lᐧᵎ/ᵢי;->ˉʿ(Lﹳʽ/ˏי;)V

    new-instance p1, Lﹳʽ/ᵎˊ;

    invoke-direct {p1, v0}, Lﹳʽ/ᵎˊ;-><init>(Lᐧᵎ/ᵢי;)V

    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public final ᵎﹶ(Lﹳˋ/ʽʽ;)Lﹳʽ/ˉٴ;
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ᵎˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳʽ/ٴʼ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lﹳʽ/ᴵᵔ;

    invoke-direct {v1, v2, v3}, Lﹳʽ/ٴʼ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, v0, Lﹳʽ/ᵎˊ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ˑﹳ;

    iget-object v0, v0, Lﹳʽ/ˑﹳ;->ⁱˊ:Lﹳʽ/ﾞᴵ;

    invoke-interface {v0, p1}, Lﹳʽ/ﾞᴵ;->ﾞᴵ(Lﹳˋ/ʽʽ;)Lﹳʽ/ᴵᵔ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No Key serializer for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ᵔᵢ(Lٴʻ/ʼˎ;)Lﹳʽ/ˉٴ;
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ᵎˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳʽ/ٴʼ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lﹳʽ/ˊʻ;

    invoke-direct {v1, v2, v3}, Lﹳʽ/ٴʼ;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, v0, Lﹳʽ/ᵎˊ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ʻٴ;

    iget-object v0, v0, Lﹳʽ/ʻٴ;->ⁱˊ:Lﹳʽ/ـˆ;

    invoke-interface {v0, p1}, Lﹳʽ/ـˆ;->ﹳٴ(Lٴʻ/ʼˎ;)Lﹳʽ/ˊʻ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No Key Format serializer for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ(Lﹳʽ/ˊʻ;)Lٴʻ/ʼˎ;
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ᵎˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳʽ/ᵎⁱ;

    iget-object v2, p1, Lﹳʽ/ˊʻ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʾᐧ/ﹳٴ;

    const-class v3, Lﹳʽ/ˊʻ;

    invoke-direct {v1, v3, v2}, Lﹳʽ/ᵎⁱ;-><init>(Ljava/lang/Class;Lʾᐧ/ﹳٴ;)V

    iget-object v0, v0, Lﹳʽ/ᵎˊ;->ˈ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ˏי;

    iget-object v0, v0, Lﹳʽ/ˏי;->ⁱˊ:Lﹳʽ/ʽﹳ;

    invoke-interface {v0, p1}, Lﹳʽ/ʽﹳ;->ʽ(Lﹳʽ/ˊʻ;)Lٴʻ/ʼˎ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No Parameters Parser for requested key type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﹳٴ(Lﹳʽ/ᴵᵔ;)Lﹳˋ/ʽʽ;
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ᵎˊ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lﹳʽ/ᵎⁱ;

    iget-object v2, p1, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lʾᐧ/ﹳٴ;

    const-class v3, Lﹳʽ/ᴵᵔ;

    invoke-direct {v1, v3, v2}, Lﹳʽ/ᵎⁱ;-><init>(Ljava/lang/Class;Lʾᐧ/ﹳٴ;)V

    iget-object v0, v0, Lﹳʽ/ᵎˊ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lﹳʽ/ʽ;

    iget-object v0, v0, Lﹳʽ/ʽ;->ⁱˊ:Lﹳʽ/ˈ;

    invoke-interface {v0, p1}, Lﹳʽ/ˈ;->ⁱˊ(Lﹳʽ/ᴵᵔ;)Lﹳˋ/ʽʽ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No Key Parser for requested key type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized ﾞᴵ(Lﹳʽ/ʻٴ;)V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Lᐧᵎ/ᵢי;

    iget-object v1, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lﹳʽ/ᵎˊ;

    invoke-direct {v0, v1}, Lᐧᵎ/ᵢי;-><init>(Lﹳʽ/ᵎˊ;)V

    invoke-virtual {v0, p1}, Lᐧᵎ/ᵢי;->ᵔʾ(Lﹳʽ/ʻٴ;)V

    new-instance p1, Lﹳʽ/ᵎˊ;

    invoke-direct {p1, v0}, Lﹳʽ/ᵎˊ;-><init>(Lᐧᵎ/ᵢי;)V

    iget-object v0, p0, Lﹳʽ/ﹳᐧ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

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
