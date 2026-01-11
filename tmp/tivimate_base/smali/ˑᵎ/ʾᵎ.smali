.class public final Lˑᵎ/ʾᵎ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lˑᵎ/ˈ;

.field public final ﹳٴ:Lʼﾞ/ˊʻ;


# direct methods
.method public constructor <init>(Lʼﾞ/ˊʻ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    new-instance p1, Lˑᵎ/ˈ;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lˑᵎ/ˈ;-><init>(I)V

    iput-object p1, p0, Lˑᵎ/ʾᵎ;->ⁱˊ:Lˑᵎ/ˈ;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/String;)Lᴵˋ/ˈٴ;
    .locals 3

    new-instance v0, Lˑᵎ/ʽ;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᴵˋ/ˈٴ;

    return-object p1
.end method

.method public final ˈ(Ljava/lang/String;)Lˑᵎ/ﹳᐧ;
    .locals 3

    new-instance v0, Lˑᵎ/ʽ;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lˑᵎ/ﹳᐧ;

    return-object p1
.end method

.method public final ˑﹳ(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance v0, Lˑᵎ/ʽ;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lˑᵎ/ʽ;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final ᵎﹶ(Lᴵˋ/ˈٴ;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lˑᵎ/ⁱˊ;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p2}, Lˑᵎ/ⁱˊ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public final ᵔᵢ(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lˑᵎ/ˆʾ;

    invoke-direct {v0, p1, p2}, Lˑᵎ/ˆʾ;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    return-void
.end method

.method public final ⁱˊ(Lﹳᴵ/ﹳٴ;Lיـ/ˑﹳ;)V
    .locals 5

    .prologue
    invoke-virtual {p2}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lיـ/ⁱˊ;

    iget-object v1, v0, Lיـ/ⁱˊ;->ʾˋ:Lיـ/ˑﹳ;

    invoke-virtual {v1}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, p2, Lיـ/ﹳᐧ;->ʽʽ:I

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1

    new-instance v0, Lˑᵎ/ʽﹳ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lˑᵎ/ʽﹳ;-><init>(Lˑᵎ/ʾᵎ;Lﹳᴵ/ﹳٴ;I)V

    invoke-static {p2, v0}, Lٴˑ/ﾞᴵ;->ᵔﹳ(Lיـ/ˑﹳ;Lᴵⁱ/ﾞʻ;)V

    return-void

    :cond_1
    const-string v2, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-static {v1, v2}, Lٴˑ/ﾞᴵ;->ﹳٴ(ILjava/lang/StringBuilder;)V

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    invoke-virtual {v0}, Lיـ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    move-object v3, v0

    check-cast v3, Lיـ/ﹳٴ;

    invoke-virtual {v3}, Lיـ/ﹳٴ;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lיـ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p1, v0}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :goto_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    throw p2
.end method

.method public final ﹳٴ(Lﹳᴵ/ﹳٴ;Lיـ/ˑﹳ;)V
    .locals 6

    .prologue
    invoke-virtual {p2}, Lיـ/ˑﹳ;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lיـ/ⁱˊ;

    iget-object v1, v0, Lיـ/ⁱˊ;->ʾˋ:Lיـ/ˑﹳ;

    invoke-virtual {v1}, Lיـ/ﹳᐧ;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, p2, Lיـ/ﹳᐧ;->ʽʽ:I

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    new-instance v0, Lˑᵎ/ʽﹳ;

    invoke-direct {v0, p0, p1, v4}, Lˑᵎ/ʽﹳ;-><init>(Lˑᵎ/ʾᵎ;Lﹳᴵ/ﹳٴ;I)V

    invoke-static {p2, v0}, Lٴˑ/ﾞᴵ;->ᵔﹳ(Lיـ/ˑﹳ;Lᴵⁱ/ﾞʻ;)V

    return-void

    :cond_1
    const-string v2, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-static {v2}, Lʻٴ/ᵎﹶ;->ⁱˊ(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lיـ/ﹳᐧ;->ʽʽ:I

    invoke-static {v1, v2}, Lٴˑ/ﾞᴵ;->ﹳٴ(ILjava/lang/StringBuilder;)V

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lﹳᴵ/ﹳٴ;->ˑʼ(Ljava/lang/String;)Lﹳᴵ/ʽ;

    move-result-object p1

    invoke-virtual {v0}, Lיـ/ⁱˊ;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    move-object v3, v0

    check-cast v3, Lיـ/ﹳٴ;

    invoke-virtual {v3}, Lיـ/ﹳٴ;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lיـ/ﹳٴ;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lﹳᴵ/ʽ;->ˑٴ(ILjava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "work_spec_id"

    invoke-static {p1, v0}, Lٴˑ/ﾞᴵ;->ⁱˊ(Lﹳᴵ/ʽ;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lﹳᴵ/ʽ;->ᵎᵔ()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1, v0}, Lﹳᴵ/ʽ;->ᵔﹳ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {p1, v4}, Lﹳᴵ/ʽ;->getBlob(I)[B

    move-result-object v2

    sget-object v3, Lᴵˋ/ᵔᵢ;->ⁱˊ:Lᴵˋ/ᵔᵢ;

    invoke-static {v2}, Lcom/bumptech/glide/ʽ;->ﾞᴵ([B)Lᴵˋ/ᵔᵢ;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :goto_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    throw p2
.end method

.method public final ﾞᴵ(Ljava/lang/String;J)I
    .locals 2

    new-instance v0, Lˑᵎ/ˏי;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p1, v1}, Lˑᵎ/ˏי;-><init>(JLjava/lang/String;I)V

    iget-object p1, p0, Lˑᵎ/ʾᵎ;->ﹳٴ:Lʼﾞ/ˊʻ;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p2, p3, v0}, Lٴˑ/ﾞᴵ;->ٴﹶ(Lʼﾞ/ˊʻ;ZZLᴵⁱ/ﾞʻ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
