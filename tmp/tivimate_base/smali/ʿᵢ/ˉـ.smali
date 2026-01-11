.class public final synthetic Lʿᵢ/ˉـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵי/ᵎⁱ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lʿᵢ/ˉـ;->ʾˋ:I

    iput-object p1, p0, Lʿᵢ/ˉـ;->ᴵˊ:Ljava/lang/Object;

    iput-object p3, p0, Lʿᵢ/ˉـ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 6

    .prologue
    iget v0, p0, Lʿᵢ/ˉـ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ˉـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᐧʼ/ʽ;

    iget-object v1, p0, Lʿᵢ/ˉـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lᴵי/ʻˋ;

    iget-object v0, v0, Lᐧʼ/ʽ;->ᴵˊ:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ˉـ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lʿᵢ/ˉـ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lʿᵢ/ʿ;

    sget-object v2, Lʿᵢ/ʿᵢ;->ⁱˊ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lʿᵢ/ʿᵢ;->ʽ:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lʿᵢ/ʿᵢ;

    if-eqz v4, :cond_0

    iget-object v5, v4, Lʿᵢ/ʿᵢ;->ﹳٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v4, Lʿᵢ/ʿᵢ;->ﹳٴ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
