.class public final Lʼʼ/ˉʿ;
.super Lʼʼ/ˉˆ;
.source "SourceFile"


# instance fields
.field public ٴﹶ:Lʼʼ/ﾞᴵ;

.field public ﾞʻ:Lʼʼ/ﹳٴ;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ـﹶ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ()V
    .locals 15

    .prologue
    iget-object v0, p0, Lʼʼ/ˉʿ;->ٴﹶ:Lʼʼ/ﾞᴵ;

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v2, v1, Lʾᵎ/ˈ;->ﹳٴ:Z

    iget-object v3, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v1

    invoke-virtual {v3, v1}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    :cond_0
    iget-boolean v1, v3, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    iget-object v2, v3, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    iget-object v4, v3, Lʼʼ/ﾞᴵ;->ﾞʻ:Ljava/util/ArrayList;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x3

    iget-object v8, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    iget-object v9, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    if-nez v1, :cond_3

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v10, v1, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v10, v10, v6

    iput v10, p0, Lʼʼ/ˉˆ;->ˈ:I

    iget-boolean v1, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v1, :cond_1

    new-instance v1, Lʼʼ/ﹳٴ;

    invoke-direct {v1, p0}, Lʼʼ/ᵎﹶ;-><init>(Lʼʼ/ˉˆ;)V

    iput-object v1, p0, Lʼʼ/ˉʿ;->ﾞʻ:Lʼʼ/ﹳٴ;

    :cond_1
    iget v1, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-eq v1, v7, :cond_4

    if-ne v1, v5, :cond_2

    iget-object v10, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v10, v10, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v10, :cond_2

    iget-object v11, v10, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v11, v11, v6

    if-ne v11, v6, :cond_2

    invoke-virtual {v10}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v0

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v10, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v1, v1, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    invoke-static {v9, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget-object v1, v10, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v1, v1, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    invoke-virtual {v3, v0}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    return-void

    :cond_2
    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    invoke-virtual {v1}, Lʾᵎ/ˈ;->ٴﹶ()I

    move-result v1

    invoke-virtual {v3, v1}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v10, v1, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v10, :cond_4

    iget-object v11, v10, Lʾᵎ/ˈ;->ـᵎ:[I

    aget v11, v11, v6

    if-ne v11, v6, :cond_4

    iget-object v0, v10, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v0, v0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    invoke-static {v9, v0, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget-object v0, v10, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v0, v0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    neg-int v1, v1

    invoke-static {v8, v0, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v1, v3, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v1, :cond_d

    iget-object v12, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v13, v12, Lʾᵎ/ˈ;->ﹳٴ:Z

    if-eqz v13, :cond_d

    iget-object v1, v12, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v1, v11

    iget-object v4, v2, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v4, :cond_8

    aget-object v13, v1, v7

    iget-object v13, v13, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v13, :cond_8

    invoke-virtual {v12}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    iput v1, v9, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    neg-int v1, v1

    iput v1, v8, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v1, v1, v11

    invoke-static {v1}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    invoke-static {v9, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    :cond_6
    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v1, v1, v7

    invoke-static {v1}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    :cond_7
    iput-boolean v6, v9, Lʼʼ/ﾞᴵ;->ⁱˊ:Z

    iput-boolean v6, v8, Lʼʼ/ﾞᴵ;->ⁱˊ:Z

    :goto_1
    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v2, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lʾᵎ/ˈ;->ᵎᵔ:I

    invoke-static {v0, v9, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    return-void

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v2}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    invoke-static {v9, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget v1, v3, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    invoke-static {v8, v9, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v2, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lʾᵎ/ˈ;->ᵎᵔ:I

    invoke-static {v0, v9, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    return-void

    :cond_9
    aget-object v2, v1, v7

    iget-object v4, v2, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v4, :cond_b

    invoke-static {v2}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget v1, v3, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    neg-int v1, v1

    invoke-static {v9, v8, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    :cond_a
    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v2, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lʾᵎ/ˈ;->ᵎᵔ:I

    invoke-static {v0, v9, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    return-void

    :cond_b
    aget-object v1, v1, v5

    iget-object v2, v1, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v2, :cond_c

    invoke-static {v1}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {v0, v1, v10}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v1, v1, Lʾᵎ/ˈ;->ᵎᵔ:I

    neg-int v1, v1

    invoke-static {v9, v0, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget v0, v3, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    invoke-static {v8, v9, v0}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    return-void

    :cond_c
    instance-of v1, v12, Lʾᵎ/ʼˎ;

    if-nez v1, :cond_1e

    iget-object v1, v12, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v1, :cond_1e

    const/4 v1, 0x7

    invoke-virtual {v12, v1}, Lʾᵎ/ˈ;->ʼˎ(I)Lʾᵎ/ʽ;

    move-result-object v1

    iget-object v1, v1, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v1, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v2, v2, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v1}, Lʾᵎ/ˈ;->יـ()I

    move-result v1

    invoke-static {v9, v2, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget v1, v3, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    invoke-static {v8, v9, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v2, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v2, :cond_1e

    iget v1, v1, Lʾᵎ/ˈ;->ᵎᵔ:I

    invoke-static {v0, v9, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    return-void

    :cond_d
    if-nez v1, :cond_12

    iget v1, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v1, v7, :cond_12

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v12, v1, Lʾᵎ/ˈ;->יـ:I

    if-eq v12, v11, :cond_10

    if-eq v12, v7, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v12, v1, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-ne v12, v7, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, v1, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget-object v1, v1, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v3, Lʼʼ/ﾞᴵ;->ⁱˊ:Z

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    iget-object v1, v1, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object v1, v1, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v1, v1, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, v3, Lʼʼ/ﾞᴵ;->ⁱˊ:Z

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v3, p0}, Lʼʼ/ﾞᴵ;->ⁱˊ(Lʼʼ/ˉˆ;)V

    :cond_13
    :goto_2
    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v12, v2, v11

    iget-object v13, v12, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v13, :cond_17

    aget-object v14, v2, v7

    iget-object v14, v14, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v14, :cond_17

    invoke-virtual {v1}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    iput v1, v9, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v1

    neg-int v1, v1

    iput v1, v8, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v1, v1, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v1, v1, v11

    invoke-static {v1}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v7

    invoke-static {v2}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v2

    if-eqz v1, :cond_15

    invoke-virtual {v1, p0}, Lʼʼ/ﾞᴵ;->ⁱˊ(Lʼʼ/ˉˆ;)V

    :cond_15
    if-eqz v2, :cond_16

    invoke-virtual {v2, p0}, Lʼʼ/ﾞᴵ;->ⁱˊ(Lʼʼ/ˉˆ;)V

    :cond_16
    iput v5, p0, Lʼʼ/ˉˆ;->ˆʾ:I

    :goto_3
    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v1, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lʼʼ/ˉʿ;->ﾞʻ:Lʼʼ/ﹳٴ;

    invoke-virtual {p0, v0, v9, v6, v1}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    goto/16 :goto_4

    :cond_17
    const/4 v14, 0x0

    if-eqz v13, :cond_19

    invoke-static {v12}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    invoke-static {v9, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    invoke-virtual {p0, v8, v9, v6, v3}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v1, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lʼʼ/ˉʿ;->ﾞʻ:Lʼʼ/ﹳٴ;

    invoke-virtual {p0, v0, v9, v6, v1}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    :cond_18
    iget v0, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v0, v7, :cond_1d

    iget-object v0, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v1, v0, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1d

    iget-object v0, v0, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget v1, v0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v1, v7, :cond_1d

    iget-object v0, v0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-object v0, v0, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v0, v0, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget-object v0, v0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v3, Lʼʼ/ﾞᴵ;->ﹳٴ:Lʼʼ/ˉˆ;

    goto/16 :goto_4

    :cond_19
    aget-object v11, v2, v7

    iget-object v12, v11, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    const/4 v13, -0x1

    if-eqz v12, :cond_1a

    invoke-static {v11}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v2, v2, Lʾᵎ/ˈ;->ˋᵔ:[Lʾᵎ/ʽ;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lʾᵎ/ʽ;->ˑﹳ()I

    move-result v2

    neg-int v2, v2

    invoke-static {v8, v1, v2}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    invoke-virtual {p0, v9, v8, v13, v3}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v1, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lʼʼ/ˉʿ;->ﾞʻ:Lʼʼ/ﹳٴ;

    invoke-virtual {p0, v0, v9, v6, v1}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    goto :goto_4

    :cond_1a
    aget-object v2, v2, v5

    iget-object v5, v2, Lʾᵎ/ʽ;->ﾞᴵ:Lʾᵎ/ʽ;

    if-eqz v5, :cond_1b

    invoke-static {v2}, Lʼʼ/ˉˆ;->ᵔᵢ(Lʾᵎ/ʽ;)Lʼʼ/ﾞᴵ;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v0, v1, v10}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    iget-object v1, p0, Lʼʼ/ˉʿ;->ﾞʻ:Lʼʼ/ﹳٴ;

    invoke-virtual {p0, v9, v0, v13, v1}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    invoke-virtual {p0, v8, v9, v6, v3}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    goto :goto_4

    :cond_1b
    instance-of v2, v1, Lʾᵎ/ʼˎ;

    if-nez v2, :cond_1d

    iget-object v2, v1, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v2, v2, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v1}, Lʾᵎ/ˈ;->יـ()I

    move-result v1

    invoke-static {v9, v2, v1}, Lʼʼ/ˉˆ;->ⁱˊ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;I)V

    invoke-virtual {p0, v8, v9, v6, v3}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-boolean v1, v1, Lʾᵎ/ˈ;->ᴵᵔ:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lʼʼ/ˉʿ;->ﾞʻ:Lʼʼ/ﹳٴ;

    invoke-virtual {p0, v0, v9, v6, v1}, Lʼʼ/ˉˆ;->ʽ(Lʼʼ/ﾞᴵ;Lʼʼ/ﾞᴵ;ILʼʼ/ᵎﹶ;)V

    :cond_1c
    iget v0, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v0, v7, :cond_1d

    iget-object v0, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v1, v0, Lʾᵎ/ˈ;->ᴵˑ:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_1d

    iget-object v0, v0, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget v1, v0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v1, v7, :cond_1d

    iget-object v0, v0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-object v0, v0, Lʼʼ/ﾞᴵ;->ٴﹶ:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v0, v0, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget-object v0, v0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, v3, Lʼʼ/ﾞᴵ;->ﹳٴ:Lʼʼ/ˉˆ;

    :cond_1d
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    iput-boolean v6, v3, Lʼʼ/ﾞᴵ;->ʽ:Z

    :cond_1e
    return-void
.end method

.method public final ˉʿ()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʼʼ/ˉˆ;->ᵎﹶ:Z

    iget-object v1, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v1}, Lʼʼ/ﾞᴵ;->ʽ()V

    iput-boolean v0, v1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    iget-object v1, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v1}, Lʼʼ/ﾞᴵ;->ʽ()V

    iput-boolean v0, v1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    iget-object v1, p0, Lʼʼ/ˉʿ;->ٴﹶ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v1}, Lʼʼ/ﾞᴵ;->ʽ()V

    iput-boolean v0, v1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    iget-object v1, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iput-boolean v0, v1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    return-void
.end method

.method public final ˑﹳ()V
    .locals 2

    .prologue
    iget-object v0, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    iget-boolean v1, v0, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v0, v0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iput v0, v1, Lʾᵎ/ˈ;->ʿᵢ:I

    :cond_0
    return-void
.end method

.method public final ٴﹶ()Z
    .locals 2

    .prologue
    iget v0, p0, Lʼʼ/ˉˆ;->ˈ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v0, v0, Lʾᵎ/ˈ;->יـ:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ﹳٴ(Lʼʼ/ˈ;)V
    .locals 10

    .prologue
    iget p1, p0, Lʼʼ/ˉˆ;->ˆʾ:I

    invoke-static {p1}, Lʻٴ/ᵎﹶ;->ˈ(I)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_e

    iget-object p1, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-boolean v2, p1, Lʼʼ/ﾞᴵ;->ʽ:Z

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-nez v2, :cond_5

    iget v2, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v5, v2, Lʾᵎ/ˈ;->יـ:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    if-eq v5, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v5, v2, Lʾᵎ/ˈ;->ˈ:Lʼʼ/ٴﹶ;

    iget-object v5, v5, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-boolean v6, v5, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v6, :cond_5

    iget v6, v2, Lʾᵎ/ˈ;->ˉـ:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-eqz v6, :cond_2

    if-eq v6, v1, :cond_1

    move v2, v4

    goto :goto_2

    :cond_1
    iget v5, v5, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-float v5, v5

    iget v2, v2, Lʾᵎ/ˈ;->ᴵˑ:F

    :goto_0
    div-float/2addr v5, v2

    :goto_1
    add-float/2addr v5, v3

    float-to-int v2, v5

    goto :goto_2

    :cond_2
    iget v5, v5, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-float v5, v5

    iget v2, v2, Lʾᵎ/ˈ;->ᴵˑ:F

    mul-float/2addr v5, v2

    goto :goto_1

    :cond_3
    iget v5, v5, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-float v5, v5

    iget v2, v2, Lʾᵎ/ˈ;->ᴵˑ:F

    goto :goto_0

    :goto_2
    invoke-virtual {p1, v2}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    goto :goto_3

    :cond_4
    iget-object v5, v2, Lʾᵎ/ˈ;->ـˏ:Lʾᵎ/ˈ;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lʾᵎ/ˈ;->ˑﹳ:Lʼʼ/ˉʿ;

    iget-object v5, v5, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    iget-boolean v6, v5, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v6, :cond_5

    iget v2, v2, Lʾᵎ/ˈ;->ᵢˏ:F

    iget v5, v5, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    float-to-int v2, v5

    invoke-virtual {p1, v2}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    :cond_5
    :goto_3
    iget-object v2, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    iget-boolean v5, v2, Lʼʼ/ﾞᴵ;->ʽ:Z

    iget-object v6, v2, Lʼʼ/ﾞᴵ;->ﾞʻ:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    iget-boolean v7, v5, Lʼʼ/ﾞᴵ;->ʽ:Z

    iget-object v8, v5, Lʼʼ/ﾞᴵ;->ﾞʻ:Ljava/util/ArrayList;

    if-nez v7, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-boolean v7, v2, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v5, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-eqz v7, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-boolean v7, p1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-nez v7, :cond_8

    iget v7, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v7, v0, :cond_8

    iget-object v7, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v9, v7, Lʾᵎ/ˈ;->ﹳᐧ:I

    if-nez v9, :cond_8

    invoke-virtual {v7}, Lʾᵎ/ˈ;->ʼʼ()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼʼ/ﾞᴵ;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼʼ/ﾞᴵ;

    iget v0, v0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget v3, v2, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v0, v3

    iget v1, v1, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget v3, v5, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v1, v3

    sub-int v3, v1, v0

    invoke-virtual {v2, v0}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    invoke-virtual {v5, v1}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    invoke-virtual {p1, v3}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    return-void

    :cond_8
    iget-boolean v7, p1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-nez v7, :cond_a

    iget v7, p0, Lʼʼ/ˉˆ;->ˈ:I

    if-ne v7, v0, :cond_a

    iget v0, p0, Lʼʼ/ˉˆ;->ﹳٴ:I

    if-ne v0, v1, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼʼ/ﾞᴵ;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼʼ/ﾞᴵ;

    iget v0, v0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget v7, v2, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v0, v7

    iget v1, v1, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget v7, v5, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v1, v7

    sub-int/2addr v1, v0

    iget v0, p1, Lʼʼ/ᵎﹶ;->ˉʿ:I

    if-ge v1, v0, :cond_9

    invoke-virtual {p1, v1}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v0}, Lʼʼ/ᵎﹶ;->ˈ(I)V

    :cond_a
    :goto_4
    iget-boolean v0, p1, Lʼʼ/ﾞᴵ;->ˆʾ:Z

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʼʼ/ﾞᴵ;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʼʼ/ﾞᴵ;

    iget v4, v0, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget v6, v2, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v6, v4

    iget v7, v1, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget v8, v5, Lʼʼ/ﾞᴵ;->ﾞᴵ:I

    add-int/2addr v8, v7

    iget-object v9, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget v9, v9, Lʾᵎ/ˈ;->ᴵʼ:F

    if-ne v0, v1, :cond_c

    move v9, v3

    goto :goto_5

    :cond_c
    move v4, v6

    move v7, v8

    :goto_5
    sub-int/2addr v7, v4

    iget v0, p1, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    sub-int/2addr v7, v0

    int-to-float v0, v4

    add-float/2addr v0, v3

    int-to-float v1, v7

    mul-float/2addr v1, v9

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v2, v0}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    iget v0, v2, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    iget p1, p1, Lʼʼ/ﾞᴵ;->ᵎﹶ:I

    add-int/2addr v0, p1

    invoke-virtual {v5, v0}, Lʼʼ/ﾞᴵ;->ˈ(I)V

    :cond_d
    :goto_6
    return-void

    :cond_e
    iget-object p1, p0, Lʼʼ/ˉˆ;->ⁱˊ:Lʾᵎ/ˈ;

    iget-object v0, p1, Lʾᵎ/ˈ;->ٴʼ:Lʾᵎ/ʽ;

    iget-object p1, p1, Lʾᵎ/ˈ;->ᵔי:Lʾᵎ/ʽ;

    invoke-virtual {p0, v0, p1, v1}, Lʼʼ/ˉˆ;->ﾞʻ(Lʾᵎ/ʽ;Lʾᵎ/ʽ;I)V

    return-void
.end method

.method public final ﾞᴵ()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lʼʼ/ˉˆ;->ʽ:Lʼʼ/ﾞʻ;

    iget-object v0, p0, Lʼʼ/ˉˆ;->ᵔᵢ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v0}, Lʼʼ/ﾞᴵ;->ʽ()V

    iget-object v0, p0, Lʼʼ/ˉˆ;->ʼˎ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v0}, Lʼʼ/ﾞᴵ;->ʽ()V

    iget-object v0, p0, Lʼʼ/ˉʿ;->ٴﹶ:Lʼʼ/ﾞᴵ;

    invoke-virtual {v0}, Lʼʼ/ﾞᴵ;->ʽ()V

    iget-object v0, p0, Lʼʼ/ˉˆ;->ˑﹳ:Lʼʼ/ᵎﹶ;

    invoke-virtual {v0}, Lʼʼ/ﾞᴵ;->ʽ()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lʼʼ/ˉˆ;->ᵎﹶ:Z

    return-void
.end method
