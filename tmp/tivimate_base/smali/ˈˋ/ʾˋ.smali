.class public final Lˈˋ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Ljava/lang/String;

.field public ʽ:I

.field public ˆʾ:Lˈˋ/ⁱᴵ;

.field public ˈ:Ljava/lang/String;

.field public ˉʿ:B

.field public ˑﹳ:Ljava/lang/String;

.field public ٴﹶ:Lˈˋ/י;

.field public ᵎﹶ:Ljava/lang/String;

.field public ᵔᵢ:Ljava/lang/String;

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:Ljava/lang/String;

.field public ﾞʻ:Lˈˋ/ـᵎ;

.field public ﾞᴵ:Ljava/lang/String;


# virtual methods
.method public final ﹳٴ()Lˈˋ/ᴵˊ;
    .locals 15

    .prologue
    iget-byte v0, p0, Lˈˋ/ʾˋ;->ˉʿ:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lˈˋ/ʾˋ;->ﹳٴ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˈˋ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˈˋ/ʾˋ;->ˈ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˈˋ/ʾˋ;->ᵔᵢ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lˈˋ/ʾˋ;->ʼˎ:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lˈˋ/ᴵˊ;

    iget-object v3, p0, Lˈˋ/ʾˋ;->ﹳٴ:Ljava/lang/String;

    iget-object v4, p0, Lˈˋ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    iget v5, p0, Lˈˋ/ʾˋ;->ʽ:I

    iget-object v6, p0, Lˈˋ/ʾˋ;->ˈ:Ljava/lang/String;

    iget-object v7, p0, Lˈˋ/ʾˋ;->ˑﹳ:Ljava/lang/String;

    iget-object v8, p0, Lˈˋ/ʾˋ;->ﾞᴵ:Ljava/lang/String;

    iget-object v9, p0, Lˈˋ/ʾˋ;->ᵎﹶ:Ljava/lang/String;

    iget-object v10, p0, Lˈˋ/ʾˋ;->ᵔᵢ:Ljava/lang/String;

    iget-object v11, p0, Lˈˋ/ʾˋ;->ʼˎ:Ljava/lang/String;

    iget-object v12, p0, Lˈˋ/ʾˋ;->ˆʾ:Lˈˋ/ⁱᴵ;

    iget-object v13, p0, Lˈˋ/ʾˋ;->ٴﹶ:Lˈˋ/י;

    iget-object v14, p0, Lˈˋ/ʾˋ;->ﾞʻ:Lˈˋ/ـᵎ;

    invoke-direct/range {v2 .. v14}, Lˈˋ/ᴵˊ;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lˈˋ/ⁱᴵ;Lˈˋ/י;Lˈˋ/ـᵎ;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lˈˋ/ʾˋ;->ﹳٴ:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, " sdkVersion"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lˈˋ/ʾˋ;->ⁱˊ:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, " gmpAppId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v2, p0, Lˈˋ/ʾˋ;->ˉʿ:B

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    const-string v1, " platform"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lˈˋ/ʾˋ;->ˈ:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, " installationUuid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lˈˋ/ʾˋ;->ᵔᵢ:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, " buildVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lˈˋ/ʾˋ;->ʼˎ:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, " displayVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
