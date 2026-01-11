.class public final Lˉˏ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final ʽ:Lˉˏ/ˈ;

.field public final ˈ:Z

.field public final ˑﹳ:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lˉˏ/ⁱˊ;


# direct methods
.method public constructor <init>(Lˉˏ/ⁱˊ;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lˉˏ/ʽ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lˉˏ/ʽ;->ﹳٴ:Lˉˏ/ⁱˊ;

    iput-object p2, p0, Lˉˏ/ʽ;->ⁱˊ:Ljava/lang/String;

    sget-object p1, Lˉˏ/ˈ;->ﹳٴ:Lˉˏ/ˈ;

    iput-object p1, p0, Lˉˏ/ʽ;->ʽ:Lˉˏ/ˈ;

    iput-boolean p3, p0, Lˉˏ/ʽ;->ˈ:Z

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Lˈˊ/ᵔﹳ;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lˈˊ/ᵔﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iget-object p1, p0, Lˉˏ/ʽ;->ﹳٴ:Lˉˏ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lˈˆ/ˑﹳ;

    invoke-direct {p1, v0}, Lˈˆ/ˑﹳ;-><init>(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "glide-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˉˏ/ʽ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˉˏ/ʽ;->ˑﹳ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method
