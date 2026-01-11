.class public final Lˉᵎ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳˊ/ⁱˊ;


# static fields
.field public static final ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lˉᵎ/ˑﹳ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Z)V
    .locals 7

    .prologue
    sget-object v0, Lˉᵎ/ᵎﹶ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lˉᵎ/ᵎﹶ;->ﾞʻ:Lיـ/ˑﹳ;

    invoke-virtual {v2}, Lיـ/ˑﹳ;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lˉᵎ/ᵎﹶ;

    iget-object v5, v4, Lˉᵎ/ᵎﹶ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "FirebaseApp"

    const-string v6, "Notifying background state change listeners."

    nop

    iget-object v4, v4, Lˉᵎ/ᵎﹶ;->ʼˎ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˉᵎ/ˈ;

    iget-object v5, v5, Lˉᵎ/ˈ;->ﹳٴ:Lˉᵎ/ᵎﹶ;

    if-nez p1, :cond_1

    iget-object v5, v5, Lˉᵎ/ᵎﹶ;->ᵔᵢ:Lʾﹳ/ⁱˊ;

    invoke-interface {v5}, Lʾﹳ/ⁱˊ;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lـˎ/ʽ;

    invoke-virtual {v5}, Lـˎ/ʽ;->ⁱˊ()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
