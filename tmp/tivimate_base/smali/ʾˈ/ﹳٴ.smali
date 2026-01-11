.class public final Lʾˈ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/lang/String;

.field public final ˈ:Lʾˈ/ᴵᵔ;

.field public final ˑﹳ:Ljava/util/ArrayList;

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lʾˈ/ᴵᵔ;Ljava/util/ArrayList;)V
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʾˈ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iput-object p2, p0, Lʾˈ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iput-object p3, p0, Lʾˈ/ﹳٴ;->ʽ:Ljava/lang/String;

    iput-object p4, p0, Lʾˈ/ﹳٴ;->ˈ:Lʾˈ/ᴵᵔ;

    iput-object p5, p0, Lʾˈ/ﹳٴ;->ˑﹳ:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lʾˈ/ﹳٴ;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lʾˈ/ﹳٴ;

    iget-object v0, p0, Lʾˈ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lʾˈ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lʾˈ/ﹳٴ;->ʽ:Ljava/lang/String;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-static {v0, v1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lʾˈ/ﹳٴ;->ˈ:Lʾˈ/ᴵᵔ;

    iget-object v1, p1, Lʾˈ/ﹳٴ;->ˈ:Lʾˈ/ᴵᵔ;

    invoke-virtual {v0, v1}, Lʾˈ/ᴵᵔ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lʾˈ/ﹳٴ;->ˑﹳ:Ljava/util/ArrayList;

    iget-object p1, p1, Lʾˈ/ﹳٴ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lʾˈ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lʾˈ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lʾˈ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˉʿ(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lʾˈ/ﹳٴ;->ˈ:Lʾˈ/ᴵᵔ;

    invoke-virtual {v2}, Lʾˈ/ᴵᵔ;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lʾˈ/ﹳٴ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidApplicationInfo(packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʾˈ/ﹳٴ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appBuildVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ﹳٴ;->ʽ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentProcessDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ﹳٴ;->ˈ:Lʾˈ/ᴵᵔ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appProcessDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʾˈ/ﹳٴ;->ˑﹳ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
