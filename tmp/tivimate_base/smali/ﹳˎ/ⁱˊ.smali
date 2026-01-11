.class public final Lﹳˎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/io/File;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lˈˋ/ᴵˊ;


# direct methods
.method public constructor <init>(Lˈˋ/ᴵˊ;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lﹳˎ/ⁱˊ;->ʽ:Ljava/io/File;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null sessionId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lﹳˎ/ⁱˊ;

    if-eqz v0, :cond_1

    check-cast p1, Lﹳˎ/ⁱˊ;

    iget-object v0, p0, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    iget-object v1, p1, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    invoke-virtual {v0, v1}, Lˈˋ/ᴵˊ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p1, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lﹳˎ/ⁱˊ;->ʽ:Ljava/io/File;

    iget-object p1, p1, Lﹳˎ/ⁱˊ;->ʽ:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    invoke-virtual {v0}, Lˈˋ/ᴵˊ;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lﹳˎ/ⁱˊ;->ʽ:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CrashlyticsReportWithSessionId{report="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹳˎ/ⁱˊ;->ﹳٴ:Lˈˋ/ᴵˊ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lﹳˎ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reportFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lﹳˎ/ⁱˊ;->ʽ:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
