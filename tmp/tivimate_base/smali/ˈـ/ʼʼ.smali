.class public final Lˈـ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final ʽʽ:Landroid/os/Handler;

.field public final ʾˋ:Ljava/io/OutputStream;

.field public final ᴵˊ:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lˈـ/ᵢˏ;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lˈـ/ʼʼ;->ʾˋ:Ljava/io/OutputStream;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayer:RtspMessageChannel:Sender"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lˈـ/ʼʼ;->ᴵˊ:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lˈـ/ʼʼ;->ʽʽ:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    iget-object v0, p0, Lˈـ/ʼʼ;->ᴵˊ:Landroid/os/HandlerThread;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/ᵎⁱ;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Landroidx/lifecycle/ᵎⁱ;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Lˈـ/ʼʼ;->ʽʽ:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
