.class public final Lˈˋ/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:Ljava/lang/String;

.field public ˈ:J

.field public ˑﹳ:I

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:J

.field public ﾞᴵ:B


# virtual methods
.method public final ﹳٴ()Lˈˋ/ˉـ;
    .locals 10

    .prologue
    iget-byte v0, p0, Lˈˋ/ᴵˑ;->ﾞᴵ:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v5, p0, Lˈˋ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lˈˋ/ˉـ;

    iget-wide v3, p0, Lˈˋ/ᴵˑ;->ﹳٴ:J

    iget-object v6, p0, Lˈˋ/ᴵˑ;->ʽ:Ljava/lang/String;

    iget-wide v7, p0, Lˈˋ/ᴵˑ;->ˈ:J

    iget v9, p0, Lˈˋ/ᴵˑ;->ˑﹳ:I

    invoke-direct/range {v2 .. v9}, Lˈˋ/ˉـ;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    return-object v2

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lˈˋ/ᴵˑ;->ﾞᴵ:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    const-string v1, " pc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lˈˋ/ᴵˑ;->ⁱˊ:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, " symbol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lˈˋ/ᴵˑ;->ﾞᴵ:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " offset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lˈˋ/ᴵˑ;->ﾞᴵ:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    const-string v1, " importance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
