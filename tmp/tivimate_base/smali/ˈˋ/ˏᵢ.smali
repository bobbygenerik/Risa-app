.class public final Lˈˋ/ˏᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/String;

.field public ˈ:J

.field public ˑﹳ:B

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:Lˈˋ/ʻᵎ;


# virtual methods
.method public final ﹳٴ()Lˈˋ/ᴵʼ;
    .locals 8

    .prologue
    iget-byte v0, p0, Lˈˋ/ˏᵢ;->ˑﹳ:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lˈˋ/ˏᵢ;->ﹳٴ:Lˈˋ/ʻᵎ;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lˈˋ/ˏᵢ;->ⁱˊ:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lˈˋ/ˏᵢ;->ʽ:Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lˈˋ/ᴵʼ;

    iget-wide v6, p0, Lˈˋ/ˏᵢ;->ˈ:J

    invoke-direct/range {v2 .. v7}, Lˈˋ/ᴵʼ;-><init>(Lˈˋ/ʻᵎ;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lˈˋ/ˏᵢ;->ﹳٴ:Lˈˋ/ʻᵎ;

    if-nez v2, :cond_2

    const-string v2, " rolloutVariant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lˈˋ/ˏᵢ;->ⁱˊ:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, " parameterKey"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lˈˋ/ˏᵢ;->ʽ:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, " parameterValue"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v2, p0, Lˈˋ/ˏᵢ;->ˑﹳ:B

    and-int/2addr v1, v2

    if-nez v1, :cond_5

    const-string v1, " templateVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
