.class public final Lʿʾ/יـ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼᵔ/ˑﹳ;


# instance fields
.field public final ʼˎ:Lʼᵔ/ᵔᵢ;

.field public final ʽ:I

.field public ˆʾ:I

.field public final ˈ:I

.field public final ˑﹳ:Ljava/lang/Class;

.field public final ᵎﹶ:Lʼᵔ/ˑﹳ;

.field public final ᵔᵢ:Ljava/util/Map;

.field public final ⁱˊ:Ljava/lang/Object;

.field public final ﾞᴵ:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lʼᵔ/ˑﹳ;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lʼᵔ/ᵔᵢ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lʿʾ/יـ;->ⁱˊ:Ljava/lang/Object;

    iput-object p2, p0, Lʿʾ/יـ;->ᵎﹶ:Lʼᵔ/ˑﹳ;

    iput p3, p0, Lʿʾ/יـ;->ʽ:I

    iput p4, p0, Lʿʾ/יـ;->ˈ:I

    invoke-static {p5, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p5, p0, Lʿʾ/יـ;->ᵔᵢ:Ljava/util/Map;

    const-string p1, "Resource class must not be null"

    invoke-static {p6, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p6, p0, Lʿʾ/יـ;->ˑﹳ:Ljava/lang/Class;

    const-string p1, "Transcode class must not be null"

    invoke-static {p7, p1}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p7, p0, Lʿʾ/יـ;->ﾞᴵ:Ljava/lang/Class;

    invoke-static {p8, v0}, Lʿٴ/ﾞᴵ;->ʽ(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p8, p0, Lʿʾ/יـ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lʿʾ/יـ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lʿʾ/יـ;

    iget-object v0, p0, Lʿʾ/יـ;->ⁱˊ:Ljava/lang/Object;

    iget-object v2, p1, Lʿʾ/יـ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/יـ;->ᵎﹶ:Lʼᵔ/ˑﹳ;

    iget-object v2, p1, Lʿʾ/יـ;->ᵎﹶ:Lʼᵔ/ˑﹳ;

    invoke-interface {v0, v2}, Lʼᵔ/ˑﹳ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lʿʾ/יـ;->ˈ:I

    iget v2, p1, Lʿʾ/יـ;->ˈ:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lʿʾ/יـ;->ʽ:I

    iget v2, p1, Lʿʾ/יـ;->ʽ:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lʿʾ/יـ;->ᵔᵢ:Ljava/util/Map;

    iget-object v2, p1, Lʿʾ/יـ;->ᵔᵢ:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/יـ;->ˑﹳ:Ljava/lang/Class;

    iget-object v2, p1, Lʿʾ/יـ;->ˑﹳ:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/יـ;->ﾞᴵ:Ljava/lang/Class;

    iget-object v2, p1, Lʿʾ/יـ;->ﾞᴵ:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lʿʾ/יـ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    iget-object p1, p1, Lʿʾ/יـ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    invoke-virtual {v0, p1}, Lʼᵔ/ᵔᵢ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    iget v0, p0, Lʿʾ/יـ;->ˆʾ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lʿʾ/יـ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lʿʾ/יـ;->ˆʾ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʿʾ/יـ;->ᵎﹶ:Lʼᵔ/ˑﹳ;

    invoke-interface {v1}, Lʼᵔ/ˑﹳ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lʿʾ/יـ;->ʽ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lʿʾ/יـ;->ˈ:I

    add-int/2addr v1, v0

    iput v1, p0, Lʿʾ/יـ;->ˆʾ:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʿʾ/יـ;->ᵔᵢ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lʿʾ/יـ;->ˆʾ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʿʾ/יـ;->ˑﹳ:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lʿʾ/יـ;->ˆʾ:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lʿʾ/יـ;->ﾞᴵ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lʿʾ/יـ;->ˆʾ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lʿʾ/יـ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    iget-object v1, v1, Lʼᵔ/ᵔᵢ;->ⁱˊ:Lʿٴ/ʽ;

    invoke-virtual {v1}, Lʿٴ/ʽ;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lʿʾ/יـ;->ˆʾ:I

    :cond_0
    iget v0, p0, Lʿʾ/יـ;->ˆʾ:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngineKey{model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʿʾ/יـ;->ⁱˊ:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʿʾ/יـ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʿʾ/יـ;->ˈ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/יـ;->ˑﹳ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/יـ;->ﾞᴵ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/יـ;->ᵎﹶ:Lʼᵔ/ˑﹳ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʿʾ/יـ;->ˆʾ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/יـ;->ᵔᵢ:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʿʾ/יـ;->ʼˎ:Lʼᵔ/ᵔᵢ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ⁱˊ(Ljava/security/MessageDigest;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
