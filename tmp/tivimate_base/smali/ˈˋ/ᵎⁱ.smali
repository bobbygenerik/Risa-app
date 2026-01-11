.class public final Lˈˋ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Lˈˋ/ـᵢ;

.field public ʽ:Ljava/lang/String;

.field public ˆʾ:Lˈˋ/ʼـ;

.field public ˈ:J

.field public ˉʿ:B

.field public ˑﹳ:Ljava/lang/Long;

.field public ٴﹶ:Ljava/util/List;

.field public ᵎﹶ:Lˈˋ/ˑ;

.field public ᵔᵢ:Lˈˋ/ٴᴵ;

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:Ljava/lang/String;

.field public ﾞʻ:I

.field public ﾞᴵ:Z


# virtual methods
.method public final ﹳٴ()Lˈˋ/ٴʼ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-byte v1, v0, Lˈˋ/ᵎⁱ;->ˉʿ:B

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    iget-object v4, v0, Lˈˋ/ᵎⁱ;->ﹳٴ:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v5, v0, Lˈˋ/ᵎⁱ;->ⁱˊ:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v11, v0, Lˈˋ/ᵎⁱ;->ᵎﹶ:Lˈˋ/ˑ;

    if-nez v11, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lˈˋ/ٴʼ;

    iget-object v6, v0, Lˈˋ/ᵎⁱ;->ʽ:Ljava/lang/String;

    iget-wide v7, v0, Lˈˋ/ᵎⁱ;->ˈ:J

    iget-object v9, v0, Lˈˋ/ᵎⁱ;->ˑﹳ:Ljava/lang/Long;

    iget-boolean v10, v0, Lˈˋ/ᵎⁱ;->ﾞᴵ:Z

    iget-object v12, v0, Lˈˋ/ᵎⁱ;->ᵔᵢ:Lˈˋ/ٴᴵ;

    iget-object v13, v0, Lˈˋ/ᵎⁱ;->ʼˎ:Lˈˋ/ـᵢ;

    iget-object v14, v0, Lˈˋ/ᵎⁱ;->ˆʾ:Lˈˋ/ʼـ;

    iget-object v15, v0, Lˈˋ/ᵎⁱ;->ٴﹶ:Ljava/util/List;

    iget v1, v0, Lˈˋ/ᵎⁱ;->ﾞʻ:I

    move/from16 v16, v1

    invoke-direct/range {v3 .. v16}, Lˈˋ/ٴʼ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLˈˋ/ˑ;Lˈˋ/ٴᴵ;Lˈˋ/ـᵢ;Lˈˋ/ʼـ;Ljava/util/List;I)V

    return-object v3

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lˈˋ/ᵎⁱ;->ﹳٴ:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, " generator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lˈˋ/ᵎⁱ;->ⁱˊ:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, " identifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v2, v0, Lˈˋ/ᵎⁱ;->ˉʿ:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    const-string v2, " startedAt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v2, v0, Lˈˋ/ᵎⁱ;->ˉʿ:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    const-string v2, " crashed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v2, v0, Lˈˋ/ᵎⁱ;->ᵎﹶ:Lˈˋ/ˑ;

    if-nez v2, :cond_6

    const-string v2, " app"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v2, v0, Lˈˋ/ᵎⁱ;->ˉʿ:B

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_7

    const-string v2, " generatorType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required properties:"

    invoke-static {v3, v1}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
