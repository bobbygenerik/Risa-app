.class public abstract Lᵎᵎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵎᵎ/ʽ;->ﹳٴ:I

    iput-object p2, p0, Lᵎᵎ/ʽ;->ⁱˊ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract ʽ(Lˈˑ/ʽ;)V
.end method

.method public abstract ˈ([BII)V
.end method

.method public ˑﹳ(Lˎʿ/ⁱˊ;Lˎᵔ/ⁱˊ;)V
    .locals 4

    .prologue
    new-instance v0, Lˈˑ/ʽ;

    iget v1, p0, Lᵎᵎ/ʽ;->ﹳٴ:I

    sget-object v2, Lˎᵔ/ᵎﹶ;->ˈٴ:Lˎᵔ/ᵎﹶ;

    invoke-static {v2, v1}, Lˎᵔ/ﾞᴵ;->ⁱˊ(Lˎᵔ/ᵎﹶ;I)Lˎᵔ/ﾞᴵ;

    move-result-object v1

    sget-object v2, Lˎᵔ/ﹳٴ;->ʽʽ:Lˎᵔ/ﹳٴ;

    invoke-virtual {v1, v2}, Lˎᵔ/ﾞᴵ;->ﹳٴ(Lˎᵔ/ﹳٴ;)Lˎᵔ/ﾞᴵ;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lˈˑ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ⁱˊ;Z)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lﹳʿ/ʽ;->ﹳٴ:Lˆⁱ/ᵎﹶ;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lˈˑ/ʽ;

    sget-object v1, Lˎᵔ/ᵎﹶ;->ʽʽ:Lˎᵔ/ᵎﹶ;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lˎᵔ/ﾞᴵ;->ⁱˊ(Lˎᵔ/ᵎﹶ;I)Lˎᵔ/ﾞᴵ;

    move-result-object v1

    new-instance v3, Lˈˑ/ﹳٴ;

    invoke-direct {v3, p2}, Lˈˑ/ﹳٴ;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {v0, v1, v3, v2}, Lˈˑ/ʽ;-><init>(Lˎᵔ/ﾞᴵ;Lˎᵔ/ⁱˊ;Z)V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lﾞʽ/ⁱˊ;

    new-instance v2, Lᵔﹶ/ˊʻ;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lᵔﹶ/ˊʻ;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lﾞʽ/ⁱˊ;-><init>(Lᵔﹶ/ˊʻ;Ljava/io/ByteArrayOutputStream;)V

    :try_start_0
    invoke-virtual {v1, v0}, Lﾞʽ/ⁱˊ;->ʽ(Lˎᵔ/ⁱˊ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, v0, p2}, Lˎʿ/ⁱˊ;->ˑﹳ(I[B)Lˎʿ/ⁱˊ;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method

.method public ⁱˊ(Lˎᵔ/ⁱˊ;)V
    .locals 5

    .prologue
    iget v0, p0, Lᵎᵎ/ʽ;->ﹳٴ:I

    iget-object v1, p0, Lᵎᵎ/ʽ;->ⁱˊ:Ljava/lang/String;

    instance-of v2, p1, Lˈˑ/ʽ;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lˈˑ/ʽ;

    iget-object v3, v2, Lˎᵔ/ⁱˊ;->ʾˋ:Lˎᵔ/ﾞᴵ;

    iget v3, v3, Lˎᵔ/ﾞᴵ;->ⁱˊ:I

    if-ne v3, v0, :cond_3

    invoke-virtual {v2}, Lˈˑ/ʽ;->ˈ()Lˎᵔ/ⁱˊ;

    move-result-object p1

    instance-of v0, p1, Lˈˑ/ﹳٴ;

    if-eqz v0, :cond_2

    check-cast p1, Lˈˑ/ﹳٴ;

    invoke-virtual {p1}, Lˈˑ/ﹳٴ;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˎᵔ/ⁱˊ;

    instance-of v2, v0, Lˈˑ/ʽ;

    if-eqz v2, :cond_0

    check-cast v0, Lˈˑ/ʽ;

    invoke-virtual {p0, v0}, Lᵎᵎ/ʽ;->ʽ(Lˈˑ/ʽ;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected an ASN.1 TaggedObject as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " contents, not: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (SEQUENCE), not: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Lcom/hierynomus/spnego/SpnegoException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected to find the "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (CHOICE ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]) header, not: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract ﹳٴ()[B
.end method
