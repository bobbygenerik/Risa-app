.class public final Lˏˑ/ˑﹳ;
.super Lٴʻ/ʼˎ;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:Lˏˑ/ˈ;

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(ILˏˑ/ˈ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˏˑ/ˑﹳ;->ﹳٴ:I

    iput-object p2, p0, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    return-void
.end method

.method public static ⁱˊ()Lﾞˏ/ʽ;
    .locals 2

    new-instance v0, Lﾞˏ/ʽ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lﾞˏ/ʽ;->ﹳٴ:Ljava/lang/Object;

    sget-object v1, Lˏˑ/ˈ;->ˈ:Lˏˑ/ˈ;

    iput-object v1, v0, Lﾞˏ/ʽ;->ⁱˊ:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    instance-of v0, p1, Lˏˑ/ˑﹳ;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lˏˑ/ˑﹳ;

    iget v0, p1, Lˏˑ/ˑﹳ;->ﹳٴ:I

    iget v2, p0, Lˏˑ/ˑﹳ;->ﹳٴ:I

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    iget-object v0, p0, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lˏˑ/ˑﹳ;->ﹳٴ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lˏˑ/ˑﹳ;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    aput-object v2, v1, v0

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AesSiv Parameters (variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lˏˑ/ˑﹳ;->ﹳٴ:I

    const-string v2, "-byte key)"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lˏˑ/ˑﹳ;->ⁱˊ:Lˏˑ/ˈ;

    sget-object v1, Lˏˑ/ˈ;->ˈ:Lˏˑ/ˈ;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
