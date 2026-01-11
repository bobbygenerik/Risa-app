.class public final Lﹳʾ/ˈ;
.super Lﹳʾ/ˉˆ;
.source "SourceFile"


# instance fields
.field public final ʽ:Lﹳʾ/ʽ;

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(IILﹳʾ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lﹳʾ/ˈ;->ﹳٴ:I

    iput p2, p0, Lﹳʾ/ˈ;->ⁱˊ:I

    iput-object p3, p0, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    return-void
.end method

.method public static ⁱˊ()Lˑי/ʽ;
    .locals 2

    new-instance v0, Lˑי/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lˑי/ʽ;->ʾˋ:Ljava/lang/Object;

    iput-object v1, v0, Lˑי/ʽ;->ᴵˊ:Ljava/lang/Object;

    sget-object v1, Lﹳʾ/ʽ;->ˑﹳ:Lﹳʾ/ʽ;

    iput-object v1, v0, Lˑי/ʽ;->ʽʽ:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lﹳʾ/ˈ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lﹳʾ/ˈ;

    iget v0, p1, Lﹳʾ/ˈ;->ﹳٴ:I

    iget v2, p0, Lﹳʾ/ˈ;->ﹳٴ:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lﹳʾ/ˈ;->ʽ()I

    move-result v0

    invoke-virtual {p0}, Lﹳʾ/ˈ;->ʽ()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    iget-object v0, p0, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lﹳʾ/ˈ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lﹳʾ/ˈ;->ⁱˊ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Lﹳʾ/ˈ;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AES-CMAC Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lﹳʾ/ˈ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-byte tags, and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lﹳʾ/ˈ;->ﹳٴ:I

    const-string v2, "-byte key)"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()I
    .locals 3

    .prologue
    sget-object v0, Lﹳʾ/ʽ;->ˑﹳ:Lﹳʾ/ʽ;

    iget v1, p0, Lﹳʾ/ˈ;->ⁱˊ:I

    iget-object v2, p0, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lﹳʾ/ʽ;->ⁱˊ:Lﹳʾ/ʽ;

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x5

    return v1

    :cond_1
    sget-object v0, Lﹳʾ/ʽ;->ʽ:Lﹳʾ/ʽ;

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x5

    return v1

    :cond_2
    sget-object v0, Lﹳʾ/ʽ;->ˈ:Lﹳʾ/ʽ;

    if-ne v2, v0, :cond_3

    add-int/lit8 v1, v1, 0x5

    return v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lﹳʾ/ˈ;->ʽ:Lﹳʾ/ʽ;

    sget-object v1, Lﹳʾ/ʽ;->ˑﹳ:Lﹳʾ/ʽ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
