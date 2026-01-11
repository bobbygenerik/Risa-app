.class public final Lʽٴ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﾞʼ/ﹳٴ;


# instance fields
.field public ʽʽ:Ljava/lang/Boolean;

.field public final ʾˋ:Ljava/lang/String;

.field public ˈٴ:Ljava/lang/reflect/Method;

.field public final ˊʻ:Ljava/util/Queue;

.field public final ٴᵢ:Z

.field public volatile ᴵˊ:Lﾞʼ/ﹳٴ;

.field public ᴵᵔ:Lcom/parse/ٴʼ;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    iput-object p2, p0, Lʽٴ/ⁱˊ;->ˊʻ:Ljava/util/Queue;

    iput-boolean p3, p0, Lʽٴ/ⁱˊ;->ٴᵢ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lʽٴ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʽٴ/ⁱˊ;

    iget-object v2, p0, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    iget-object p1, p1, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final ʻٴ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lﾞʼ/ﹳٴ;->ʻٴ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;)V

    return-void
.end method

.method public final varargs ʼʼ([Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->ʼʼ([Ljava/lang/Object;)V

    return-void
.end method

.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ʼᐧ(Ljava/lang/Long;Ljava/io/IOException;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ʼᐧ(Ljava/lang/Long;Ljava/io/IOException;)V

    return-void
.end method

.method public final varargs ʽ(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ʽ(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs ʾᵎ([Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->ʾᵎ([Ljava/lang/Object;)V

    return-void
.end method

.method public final ˆʾ(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ˆʾ(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ˈ()Z
    .locals 5

    .prologue
    iget-object v0, p0, Lʽٴ/ⁱˊ;->ʽʽ:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lﹶʻ/ﹳٴ;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lʽٴ/ⁱˊ;->ˈٴ:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lʽٴ/ⁱˊ;->ʽʽ:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lʽٴ/ⁱˊ;->ʽʽ:Ljava/lang/Boolean;

    :goto_0
    iget-object v0, p0, Lʽٴ/ⁱˊ;->ʽʽ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lﾞʼ/ﹳٴ;->ˏי(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ˑﹳ()V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0}, Lﾞʼ/ﹳٴ;->ˑﹳ()V

    return-void
.end method

.method public final יـ(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->יـ(Ljava/lang/Exception;)V

    return-void
.end method

.method public final ـˆ(Lcom/hierynomus/protocol/transport/TransportException;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->ـˆ(Lcom/hierynomus/protocol/transport/TransportException;)V

    return-void
.end method

.method public final ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ᵎﹶ(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)V

    return-void
.end method

.method public final ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ᵔʾ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lﾞʼ/ﹳٴ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ⁱˊ()Lﾞʼ/ﹳٴ;
    .locals 4

    .prologue
    iget-object v0, p0, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʽٴ/ⁱˊ;->ᴵˊ:Lﾞʼ/ﹳٴ;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lʽٴ/ⁱˊ;->ٴᵢ:Z

    if-eqz v0, :cond_1

    sget-object v0, Lʽٴ/ﹳٴ;->ʾˋ:Lʽٴ/ﹳٴ;

    return-object v0

    :cond_1
    iget-object v0, p0, Lʽٴ/ⁱˊ;->ᴵᵔ:Lcom/parse/ٴʼ;

    if-nez v0, :cond_2

    new-instance v0, Lcom/parse/ٴʼ;

    iget-object v1, p0, Lʽٴ/ⁱˊ;->ˊʻ:Ljava/util/Queue;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ٴʼ;-><init>(IZ)V

    iput-object p0, v0, Lcom/parse/ٴʼ;->ʽʽ:Ljava/lang/Object;

    iget-object v2, p0, Lʽٴ/ⁱˊ;->ʾˋ:Ljava/lang/String;

    iput-object v2, v0, Lcom/parse/ٴʼ;->ᴵˊ:Ljava/lang/Object;

    iput-object v1, v0, Lcom/parse/ٴʼ;->ˈٴ:Ljava/lang/Object;

    iput-object v0, p0, Lʽٴ/ⁱˊ;->ᴵᵔ:Lcom/parse/ٴʼ;

    :cond_2
    iget-object v0, p0, Lʽٴ/ⁱˊ;->ᴵᵔ:Lcom/parse/ٴʼ;

    return-object v0
.end method

.method public final ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lﾞʼ/ﹳٴ;->ﹳٴ(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final ﹳᐧ(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->ﹳᐧ(Ljava/lang/String;)V

    return-void
.end method

.method public final ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lﾞʼ/ﹳٴ;->ﾞʻ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs ﾞᴵ([Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lʽٴ/ⁱˊ;->ⁱˊ()Lﾞʼ/ﹳٴ;

    move-result-object v0

    invoke-interface {v0, p1}, Lﾞʼ/ﹳٴ;->ﾞᴵ([Ljava/lang/Object;)V

    return-void
.end method
