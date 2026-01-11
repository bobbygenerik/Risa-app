.class public final Lـﹶ/ٴﹶ;
.super Lˉᵎ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉˆ:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final synthetic ᵔʾ:Lˉᵎ/ⁱˊ;


# direct methods
.method public constructor <init>(Lˉᵎ/ⁱˊ;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lـﹶ/ٴﹶ;->ᵔʾ:Lˉᵎ/ⁱˊ;

    iput-object p2, p0, Lـﹶ/ٴﹶ;->ˉˆ:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final ˉٴ(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lـﹶ/ٴﹶ;->ˉˆ:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object v1, p0, Lـﹶ/ٴﹶ;->ᵔʾ:Lˉᵎ/ⁱˊ;

    invoke-virtual {v1, p1}, Lˉᵎ/ⁱˊ;->ˉٴ(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p1
.end method

.method public final ᵎⁱ(Lˏˆ/ﹳٴ;)V
    .locals 2

    .prologue
    iget-object v0, p0, Lـﹶ/ٴﹶ;->ˉˆ:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object v1, p0, Lـﹶ/ٴﹶ;->ᵔʾ:Lˉᵎ/ⁱˊ;

    invoke-virtual {v1, p1}, Lˉᵎ/ⁱˊ;->ᵎⁱ(Lˏˆ/ﹳٴ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p1
.end method
