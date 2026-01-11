.class public final Lˈˋ/ʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:Z

.field public ˑﹳ:B

.field public ⁱˊ:I

.field public ﹳٴ:Ljava/lang/String;


# virtual methods
.method public final ﹳٴ()Lˈˋ/ʿᵢ;
    .locals 5

    .prologue
    iget-byte v0, p0, Lˈˋ/ʿ;->ˑﹳ:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lˈˋ/ʿ;->ﹳٴ:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lˈˋ/ʿᵢ;

    iget v2, p0, Lˈˋ/ʿ;->ⁱˊ:I

    iget v3, p0, Lˈˋ/ʿ;->ʽ:I

    iget-boolean v4, p0, Lˈˋ/ʿ;->ˈ:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lˈˋ/ʿᵢ;-><init>(IILjava/lang/String;Z)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˈˋ/ʿ;->ﹳٴ:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, " processName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lˈˋ/ʿ;->ˑﹳ:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    const-string v1, " pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lˈˋ/ʿ;->ˑﹳ:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " importance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lˈˋ/ʿ;->ˑﹳ:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    const-string v1, " defaultProcess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
