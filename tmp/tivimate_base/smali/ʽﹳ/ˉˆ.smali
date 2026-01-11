.class public final Lʽﹳ/ˉˆ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:Lᴵי/ٴﹶ;

.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Lˈˊ/ﹳᐧ;


# direct methods
.method public synthetic constructor <init>(Lˈˊ/ﹳᐧ;Lᴵי/ٴﹶ;I)V
    .locals 0

    iput p3, p0, Lʽﹳ/ˉˆ;->ʾˋ:I

    iput-object p1, p0, Lʽﹳ/ˉˆ;->ᴵˊ:Lˈˊ/ﹳᐧ;

    iput-object p2, p0, Lʽﹳ/ˉˆ;->ʽʽ:Lᴵי/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    iget v0, p0, Lʽﹳ/ˉˆ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽﹳ/ˉˆ;->ᴵˊ:Lˈˊ/ﹳᐧ;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    iget-object v2, p0, Lʽﹳ/ˉˆ;->ʽʽ:Lᴵי/ٴﹶ;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lᴵי/ٴﹶ;->ᵔﹳ(Ljava/lang/Throwable;)Z

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    invoke-virtual {v2, v0}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lʻᵢ/ﾞᴵ;

    invoke-direct {v1, v0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    :goto_2
    return-void

    :catch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lʽﹳ/ˉˆ;->ᴵˊ:Lˈˊ/ﹳᐧ;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    iget-object v2, p0, Lʽﹳ/ˉˆ;->ʽʽ:Lᴵי/ٴﹶ;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lᴵי/ٴﹶ;->ᵔﹳ(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_3
    :try_start_2
    invoke-static {v0}, Lʽﹳ/ᵎﹶ;->ᵔᵢ(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lʻᵢ/ﾞᴵ;

    invoke-direct {v1, v0}, Lʻᵢ/ﾞᴵ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Lᴵי/ٴﹶ;->ᵔᵢ(Ljava/lang/Object;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
