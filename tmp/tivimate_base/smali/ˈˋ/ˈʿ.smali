.class public final Lˈˋ/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Lˈˋ/ـˊ;

.field public ˈ:Lˈˋ/ᵎʿ;

.field public ˑﹳ:Lˈˋ/ʿـ;

.field public ᵎﹶ:B

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:J

.field public ﾞᴵ:Lˈˋ/ʻʿ;


# virtual methods
.method public final ﹳٴ()Lˈˋ/ˑٴ;
    .locals 10

    .prologue
    iget-byte v0, p0, Lˈˋ/ˈʿ;->ᵎﹶ:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v5, p0, Lˈˋ/ˈʿ;->ⁱˊ:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lˈˋ/ˈʿ;->ʽ:Lˈˋ/ـˊ;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lˈˋ/ˈʿ;->ˈ:Lˈˋ/ᵎʿ;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lˈˋ/ˑٴ;

    iget-wide v3, p0, Lˈˋ/ˈʿ;->ﹳٴ:J

    iget-object v8, p0, Lˈˋ/ˈʿ;->ˑﹳ:Lˈˋ/ʿـ;

    iget-object v9, p0, Lˈˋ/ˈʿ;->ﾞᴵ:Lˈˋ/ʻʿ;

    invoke-direct/range {v2 .. v9}, Lˈˋ/ˑٴ;-><init>(JLjava/lang/String;Lˈˋ/ـˊ;Lˈˋ/ᵎʿ;Lˈˋ/ʿـ;Lˈˋ/ʻʿ;)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Lˈˋ/ˈʿ;->ᵎﹶ:B

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    const-string v1, " timestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lˈˋ/ˈʿ;->ⁱˊ:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lˈˋ/ˈʿ;->ʽ:Lˈˋ/ـˊ;

    if-nez v1, :cond_4

    const-string v1, " app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lˈˋ/ˈʿ;->ˈ:Lˈˋ/ᵎʿ;

    if-nez v1, :cond_5

    const-string v1, " device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
