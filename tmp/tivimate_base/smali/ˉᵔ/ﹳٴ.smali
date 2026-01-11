.class public final Lˉᵔ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public ᴵˊ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˉᵔ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iput-object p2, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˉᵔ/ʽ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˉᵔ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iget-object p1, p1, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    iput-object p1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lˉᵔ/ʽ;B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lˉᵔ/ﹳٴ;->ʾˋ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    iget-object p1, p1, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    iput-object p1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    .prologue
    iget v0, p0, Lˉᵔ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ⁱˊ;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lˉᵔ/ⁱˊ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lˉᵔ/ﹳٴ;->ﹳٴ()V

    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ⁱˊ;

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1

    :pswitch_1
    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ⁱˊ;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    iget v0, p0, Lˉᵔ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ⁱˊ;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lˉᵔ/ⁱˊ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lˉᵔ/ﹳٴ;->ﹳٴ()V

    invoke-virtual {p0}, Lˉᵔ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˉᵔ/ⁱˊ;

    iget-object v1, v1, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iput-object v1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    :goto_1
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ⁱˊ;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lˉᵔ/ⁱˊ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˉᵔ/ⁱˊ;

    iget-object v1, v1, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iput-object v1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 3

    .prologue
    iget v0, p0, Lˉᵔ/ﹳٴ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ⁱˊ;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iget-object v2, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˉᵔ/ʽ;

    invoke-virtual {v0}, Lˉᵔ/ⁱˊ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lˉᵔ/ʽ;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ⁱˊ;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iget-object v2, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Lˉᵔ/ʽ;

    invoke-virtual {v0}, Lˉᵔ/ⁱˊ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lˉᵔ/ʽ;->remove(Ljava/lang/Object;)Z

    iput-object v1, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lˉᵔ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˉᵔ/ʽ;

    iget-object v1, v0, Lˉᵔ/ʽ;->ᴵˊ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :cond_0
    iget-object v2, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    check-cast v2, Lˉᵔ/ⁱˊ;

    iget-object v3, v2, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iput-object v3, p0, Lˉᵔ/ﹳٴ;->ᴵˊ:Ljava/lang/Object;

    iget-object v4, v0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    if-ne v2, v4, :cond_1

    iget-object v4, v4, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iput-object v4, v0, Lˉᵔ/ʽ;->ˈٴ:Lˉᵔ/ⁱˊ;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v4, v2, Lˉᵔ/ⁱˊ;->ⁱˊ:Lˉᵔ/ⁱˊ;

    if-eqz v4, :cond_2

    iput-object v3, v4, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    iget-object v2, v2, Lˉᵔ/ⁱˊ;->ﹳٴ:Lˉᵔ/ⁱˊ;

    if-eqz v2, :cond_3

    iput-object v4, v2, Lˉᵔ/ⁱˊ;->ⁱˊ:Lˉᵔ/ⁱˊ;

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const/4 v2, 0x0

    iput-object v2, v3, Lˉᵔ/ⁱˊ;->ⁱˊ:Lˉᵔ/ⁱˊ;

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lˉᵔ/ⁱˊ;->ﹳٴ()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :cond_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
