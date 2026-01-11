.class public final Lʼﾞ/ᵔי;
.super Lʼﾞ/ʼˎ;
.source "SourceFile"


# instance fields
.field public final synthetic ⁱˊ:Lʼﾞ/ٴᵢ;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lʼﾞ/ٴᵢ;)V
    .locals 0

    iput-object p2, p0, Lʼﾞ/ᵔי;->ⁱˊ:Lʼﾞ/ٴᵢ;

    invoke-direct {p0, p1}, Lʼﾞ/ʼˎ;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Ljava/util/Set;)V
    .locals 3

    .prologue
    invoke-static {}, Lʼᐧ/ⁱˊ;->ʾˋ()Lʼᐧ/ⁱˊ;

    move-result-object p1

    new-instance v0, Landroidx/lifecycle/ᵎⁱ;

    const/16 v1, 0x8

    iget-object v2, p0, Lʼﾞ/ᵔי;->ⁱˊ:Lʼﾞ/ٴᵢ;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iget-object v1, p1, Lʼᐧ/ⁱˊ;->ˆʾ:Lʼᐧ/ˈ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/ᵎⁱ;->run()V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lʼᐧ/ⁱˊ;->ᴵˊ(Ljava/lang/Runnable;)V

    return-void
.end method
