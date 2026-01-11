.class public final Lˊﾞ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lˊﾞ/ᴵˊ;

.field public final ﹳٴ:Lˊﾞ/ᴵˊ;


# direct methods
.method public constructor <init>(Lˊﾞ/ᴵˊ;Lˊﾞ/ᴵˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    iput-object p2, p0, Lˊﾞ/ᵢˏ;->ⁱˊ:Lˊﾞ/ᴵˊ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lˊﾞ/ᵢˏ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lˊﾞ/ᵢˏ;

    iget-object v2, p0, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    iget-object v3, p1, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    invoke-virtual {v2, v3}, Lˊﾞ/ᴵˊ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lˊﾞ/ᵢˏ;->ⁱˊ:Lˊﾞ/ᴵˊ;

    iget-object p1, p1, Lˊﾞ/ᵢˏ;->ⁱˊ:Lˊﾞ/ᴵˊ;

    invoke-virtual {v2, p1}, Lˊﾞ/ᴵˊ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    invoke-virtual {v0}, Lˊﾞ/ᴵˊ;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lˊﾞ/ᵢˏ;->ⁱˊ:Lˊﾞ/ᴵˊ;

    invoke-virtual {v1}, Lˊﾞ/ᴵˊ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lˊﾞ/ᵢˏ;->ⁱˊ:Lˊﾞ/ᴵˊ;

    invoke-virtual {v1, v2}, Lˊﾞ/ᴵˊ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
