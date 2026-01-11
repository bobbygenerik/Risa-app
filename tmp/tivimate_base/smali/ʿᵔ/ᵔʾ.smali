.class public final Lʿᵔ/ᵔʾ;
.super Lᴵʾ/ʽ;
.source "SourceFile"

# interfaces
.implements Lᵎˈ/ᵔᵢ;


# instance fields
.field public final ˈٴ:Lᵎˈ/ᵔᵢ;

.field public ˉٴ:Lˈי/ˈ;

.field public final ˊʻ:I

.field public ٴᵢ:Lˈי/ᵔᵢ;

.field public final ᴵᵔ:Lˈי/ᵔᵢ;


# direct methods
.method public constructor <init>(Lᵎˈ/ᵔᵢ;Lˈי/ᵔᵢ;)V
    .locals 2

    sget-object v0, Lʿᵔ/ﾞʻ;->ʾˋ:Lʿᵔ/ﾞʻ;

    sget-object v1, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    invoke-direct {p0, v0, v1}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;Lˈי/ᵔᵢ;)V

    iput-object p1, p0, Lʿᵔ/ᵔʾ;->ˈٴ:Lᵎˈ/ᵔᵢ;

    iput-object p2, p0, Lʿᵔ/ᵔʾ;->ᴵᵔ:Lˈי/ᵔᵢ;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lʼⁱ/ˎᐧ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lʼⁱ/ˎᐧ;-><init>(I)V

    invoke-interface {p2, p1, v0}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lʿᵔ/ᵔʾ;->ˊʻ:I

    return-void
.end method


# virtual methods
.method public final ʼᐧ()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ˈ()Lᴵʾ/ˈ;
    .locals 2

    .prologue
    iget-object v0, p0, Lʿᵔ/ᵔʾ;->ˉٴ:Lˈי/ˈ;

    instance-of v1, v0, Lᴵʾ/ˈ;

    if-eqz v1, :cond_0

    check-cast v0, Lᴵʾ/ˈ;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final יـ(Lˈי/ˈ;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    invoke-interface {p1}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v0

    invoke-static {v0}, Lᴵי/ʾᵎ;->ᵎﹶ(Lˈי/ᵔᵢ;)V

    iget-object v1, p0, Lʿᵔ/ᵔʾ;->ٴᵢ:Lˈי/ᵔᵢ;

    if-eq v1, v0, :cond_2

    instance-of v2, v1, Lʿᵔ/ʼˎ;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lʾʼ/ᵎˊ;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lʾʼ/ᵎˊ;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lˈי/ᵔᵢ;->ʿᵢ(Ljava/lang/Object;Lᴵⁱ/ʼᐧ;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Lʿᵔ/ᵔʾ;->ˊʻ:I

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lʿᵔ/ᵔʾ;->ٴᵢ:Lˈי/ᵔᵢ;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿᵔ/ᵔʾ;->ᴵᵔ:Lˈי/ᵔᵢ;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\t\tbut emission happened in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, Lʿᵔ/ʼˎ;

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lʿᵔ/ʼˎ;->ᴵˊ:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", but then emission attempt of value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lﹶˑ/ٴﹶ;->ـˏ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lʿᵔ/ᵔʾ;->ˉٴ:Lˈי/ˈ;

    sget-object p1, Lʿᵔ/ʼᐧ;->ﹳٴ:Lᴵⁱ/ᵔﹳ;

    iget-object v0, p0, Lʿᵔ/ᵔʾ;->ˈٴ:Lᵎˈ/ᵔᵢ;

    invoke-interface {p1, v0, p2, p0}, Lᴵⁱ/ᵔﹳ;->ᵎﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    invoke-static {p1, p2}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    iput-object p2, p0, Lʿᵔ/ᵔʾ;->ˉٴ:Lˈי/ˈ;

    :cond_3
    return-object p1
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    invoke-static {p1}, Lʻᵢ/ᵎﹶ;->ﹳٴ(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lʿᵔ/ʼˎ;

    invoke-virtual {p0}, Lʿᵔ/ᵔʾ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lʿᵔ/ʼˎ;-><init>(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    iput-object v1, p0, Lʿᵔ/ᵔʾ;->ٴᵢ:Lˈי/ᵔᵢ;

    :cond_0
    iget-object v0, p0, Lʿᵔ/ᵔʾ;->ˉٴ:Lˈי/ˈ;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lˈי/ˈ;->ᵔᵢ(Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    return-object p1
.end method

.method public final ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;
    .locals 1

    .prologue
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lʿᵔ/ᵔʾ;->יـ(Lˈי/ˈ;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p2, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Lʿᵔ/ʼˎ;

    invoke-interface {p2}, Lˈי/ˈ;->ﾞᴵ()Lˈי/ᵔᵢ;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lʿᵔ/ʼˎ;-><init>(Ljava/lang/Throwable;Lˈי/ᵔᵢ;)V

    iput-object v0, p0, Lʿᵔ/ᵔʾ;->ٴᵢ:Lˈי/ᵔᵢ;

    throw p1
.end method

.method public final ﾞᴵ()Lˈי/ᵔᵢ;
    .locals 1

    .prologue
    iget-object v0, p0, Lʿᵔ/ᵔʾ;->ٴᵢ:Lˈי/ᵔᵢ;

    if-nez v0, :cond_0

    sget-object v0, Lˈי/ʼˎ;->ʾˋ:Lˈי/ʼˎ;

    :cond_0
    return-object v0
.end method
