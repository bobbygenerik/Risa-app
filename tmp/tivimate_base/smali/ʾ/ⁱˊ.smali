.class public final Lʾ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lʿʾ/ʾᵎ;


# instance fields
.field public final ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

.field public final ﹳٴ:Lיـ/ˑﹳ;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lʿʾ/ʾᵎ;

    new-instance v1, Lʿʾ/ٴﹶ;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v6, Lﹶⁱ/ʽ;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lﹶⁱ/ʽ;-><init>(I)V

    const/4 v7, 0x0

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    invoke-direct/range {v1 .. v7}, Lʿʾ/ٴﹶ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lﹶⁱ/ﹳٴ;Lᵢ/ﹳٴ;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lʿʾ/ʾᵎ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lˑٴ/ʽ;)V

    sput-object v0, Lʾ/ⁱˊ;->ʽ:Lʿʾ/ʾᵎ;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lיـ/ˑﹳ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lיـ/ﹳᐧ;-><init>(I)V

    iput-object v0, p0, Lʾ/ⁱˊ;->ﹳٴ:Lיـ/ˑﹳ;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lʾ/ⁱˊ;->ⁱˊ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lʿʾ/ʾᵎ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lʾ/ⁱˊ;->ﹳٴ:Lיـ/ˑﹳ;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lʾ/ⁱˊ;->ﹳٴ:Lיـ/ˑﹳ;

    new-instance v2, Lʿٴ/ﾞʻ;

    invoke-direct {v2, p1, p2, p3}, Lʿٴ/ﾞʻ;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lʾ/ⁱˊ;->ʽ:Lʿʾ/ʾᵎ;

    :goto_0
    invoke-virtual {v1, v2, p4}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
