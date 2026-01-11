.class public final Lˎﾞ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/String;

.field public ˈ:Ljava/lang/String;

.field public ˑﹳ:Ljava/lang/Long;

.field public ᵎﹶ:Ljava/lang/String;

.field public ⁱˊ:I

.field public ﹳٴ:Ljava/lang/String;

.field public ﾞᴵ:Ljava/lang/Long;


# virtual methods
.method public final ﹳٴ()Lˎﾞ/ⁱˊ;
    .locals 12

    .prologue
    iget v0, p0, Lˎﾞ/ﹳٴ;->ⁱˊ:I

    if-nez v0, :cond_0

    const-string v0, " registrationStatus"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lˎﾞ/ﹳٴ;->ˑﹳ:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lˎﾞ/ﹳٴ;->ﾞᴵ:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " tokenCreationEpochInSecs"

    invoke-static {v0, v1}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lˎﾞ/ⁱˊ;

    iget-object v3, p0, Lˎﾞ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget v4, p0, Lˎﾞ/ﹳٴ;->ⁱˊ:I

    iget-object v5, p0, Lˎﾞ/ﹳٴ;->ʽ:Ljava/lang/String;

    iget-object v6, p0, Lˎﾞ/ﹳٴ;->ˈ:Ljava/lang/String;

    iget-object v0, p0, Lˎﾞ/ﹳٴ;->ˑﹳ:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lˎﾞ/ﹳٴ;->ﾞᴵ:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lˎﾞ/ﹳٴ;->ᵎﹶ:Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lˎﾞ/ⁱˊ;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-object v2

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
