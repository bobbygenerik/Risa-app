.class public final Lﾞˊ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ˊʻ;


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lﾞˊ/ʽ;->ﹳٴ:[B

    iput-object p1, p0, Lﾞˊ/ʽ;->ⁱˊ:Ljava/lang/String;

    iput-object p2, p0, Lﾞˊ/ʽ;->ʽ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lﾞˊ/ʽ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lﾞˊ/ʽ;

    iget-object v0, p0, Lﾞˊ/ʽ;->ﹳٴ:[B

    iget-object p1, p1, Lﾞˊ/ʽ;->ﹳٴ:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lﾞˊ/ʽ;->ﹳٴ:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lﾞˊ/ʽ;->ﹳٴ:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ICY: title=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lﾞˊ/ʽ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", url=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lﾞˊ/ʽ;->ʽ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", rawMetadata.length=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-static {v1, v0, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic ʽ()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ⁱˊ()Lʽⁱ/ﹳᐧ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final ﹳٴ(Lʽⁱ/ˈٴ;)V
    .locals 1

    .prologue
    iget-object v0, p0, Lﾞˊ/ʽ;->ⁱˊ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p1, Lʽⁱ/ˈٴ;->ﹳٴ:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method
