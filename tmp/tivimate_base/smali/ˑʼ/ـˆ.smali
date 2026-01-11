.class public final Lˑʼ/ـˆ;
.super Lˑﹳ/ʽ;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑʼ/ـˆ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lˑʼ/ـˆ;->ﹳٴ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑﹳ/ʽ;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lˑﹳ/ʽ;->ﹳٴ(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Operation cannot be started before fragment is in created state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
