.class public abstract Lᴵי/ﹳﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﹳٴ:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lᴵי/ﹳﹳ;->ﹳٴ:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static ﹳٴ()Lᴵי/ˑٴ;
    .locals 3

    .prologue
    sget-object v0, Lᴵי/ﹳﹳ;->ﹳٴ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lᴵי/ˑٴ;

    if-nez v1, :cond_0

    new-instance v1, Lᴵי/ᵎﹶ;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v1, v2}, Lᴵי/ᵎﹶ;-><init>(Ljava/lang/Thread;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method
