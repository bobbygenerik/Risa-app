.class public final Lˈˋ/ـﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/String;

.field public ˈ:Z

.field public ˑﹳ:B

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:I


# virtual methods
.method public final ﹳٴ()Lˈˋ/ˈˏ;
    .locals 5

    .prologue
    iget-byte v0, p0, Lˈˋ/ـﹶ;->ˑﹳ:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lˈˋ/ـﹶ;->ⁱˊ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lˈˋ/ـﹶ;->ʽ:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lˈˋ/ˈˏ;

    iget v3, p0, Lˈˋ/ـﹶ;->ﹳٴ:I

    iget-boolean v4, p0, Lˈˋ/ـﹶ;->ˈ:Z

    invoke-direct {v2, v3, v0, v1, v4}, Lˈˋ/ˈˏ;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lˈˋ/ـﹶ;->ˑﹳ:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    const-string v1, " platform"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lˈˋ/ـﹶ;->ⁱˊ:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lˈˋ/ـﹶ;->ʽ:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, " buildVersion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lˈˋ/ـﹶ;->ˑﹳ:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const-string v1, " jailbroken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
