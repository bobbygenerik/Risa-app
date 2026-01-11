.class public final Lʾˈ/ˈʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lʾˈ/ⁱˊ;

.field public final ﹳٴ:Lʾˈ/ᴵˑ;


# direct methods
.method public constructor <init>(Lʾˈ/ᴵˑ;Lʾˈ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ˈʿ;->ﹳٴ:Lʾˈ/ᴵˑ;

    iput-object p2, p0, Lʾˈ/ˈʿ;->ⁱˊ:Lʾˈ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lʾˈ/ˈʿ;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʾˈ/ˈʿ;

    iget-object v0, p0, Lʾˈ/ˈʿ;->ﹳٴ:Lʾˈ/ᴵˑ;

    iget-object v1, p1, Lʾˈ/ˈʿ;->ﹳٴ:Lʾˈ/ᴵˑ;

    invoke-virtual {v0, v1}, Lʾˈ/ᴵˑ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lʾˈ/ˈʿ;->ⁱˊ:Lʾˈ/ⁱˊ;

    iget-object p1, p1, Lʾˈ/ˈʿ;->ⁱˊ:Lʾˈ/ⁱˊ;

    invoke-virtual {v0, p1}, Lʾˈ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    sget-object v0, Lʾˈ/ˉʿ;->ᴵˊ:Lʾˈ/ˉʿ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʾˈ/ˈʿ;->ﹳٴ:Lʾˈ/ᴵˑ;

    invoke-virtual {v1}, Lʾˈ/ᴵˑ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʾˈ/ˈʿ;->ⁱˊ:Lʾˈ/ⁱˊ;

    invoke-virtual {v0}, Lʾˈ/ⁱˊ;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionEvent(eventType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lʾˈ/ˉʿ;->ᴵˊ:Lʾˈ/ˉʿ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ˈʿ;->ﹳٴ:Lʾˈ/ᴵˑ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ˈʿ;->ⁱˊ:Lʾˈ/ⁱˊ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
