.class public final Lⁱᴵ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final ⁱˊ:Lﹳᵢ/ᵢˏ;

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILﹳᵢ/ᵢˏ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lⁱᴵ/ʼˎ;->ﹳٴ:I

    iput-object p3, p0, Lⁱᴵ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    return-void
.end method


# virtual methods
.method public final ʽ(I)V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ᵔᵢ;

    iget-object v2, v1, Lⁱᴵ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    iget-object v1, v1, Lⁱᴵ/ᵔᵢ;->ﹳٴ:Landroid/os/Handler;

    new-instance v3, Lʻʻ/ⁱˊ;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v2, p1, v4}, Lʻʻ/ⁱˊ;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-static {v1, v3}, Lᐧˎ/ʼʼ;->ᴵˑ(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˈ(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ᵔᵢ;

    iget-object v2, v1, Lⁱᴵ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    iget-object v1, v1, Lⁱᴵ/ᵔᵢ;->ﹳٴ:Landroid/os/Handler;

    new-instance v3, Lcom/parse/ˊﾞ;

    const/16 v4, 0xe

    invoke-direct {v3, p0, v2, p1, v4}, Lcom/parse/ˊﾞ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, Lᐧˎ/ʼʼ;->ᴵˑ(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ˑﹳ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ᵔᵢ;

    iget-object v2, v1, Lⁱᴵ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    iget-object v1, v1, Lⁱᴵ/ᵔᵢ;->ﹳٴ:Landroid/os/Handler;

    new-instance v3, Lⁱᴵ/ᵎﹶ;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lⁱᴵ/ᵎﹶ;-><init>(Lⁱᴵ/ʼˎ;Lⁱᴵ/ˆʾ;I)V

    invoke-static {v1, v3}, Lᐧˎ/ʼʼ;->ᴵˑ(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ⁱˊ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ᵔᵢ;

    iget-object v2, v1, Lⁱᴵ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    iget-object v1, v1, Lⁱᴵ/ᵔᵢ;->ﹳٴ:Landroid/os/Handler;

    new-instance v3, Lⁱᴵ/ᵎﹶ;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v2, v4}, Lⁱᴵ/ᵎﹶ;-><init>(Lⁱᴵ/ʼˎ;Lⁱᴵ/ˆʾ;I)V

    invoke-static {v1, v3}, Lᐧˎ/ʼʼ;->ᴵˑ(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lⁱᴵ/ʼˎ;->ʽ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lⁱᴵ/ᵔᵢ;

    iget-object v2, v1, Lⁱᴵ/ᵔᵢ;->ⁱˊ:Ljava/lang/Object;

    iget-object v1, v1, Lⁱᴵ/ᵔᵢ;->ﹳٴ:Landroid/os/Handler;

    new-instance v3, Lⁱᴵ/ᵎﹶ;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v2, v4}, Lⁱᴵ/ᵎﹶ;-><init>(Lⁱᴵ/ʼˎ;Lⁱᴵ/ˆʾ;I)V

    invoke-static {v1, v3}, Lᐧˎ/ʼʼ;->ᴵˑ(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
