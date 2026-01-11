.class public final Lᵎⁱ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˑﹳ:Lᵎⁱ/ⁱˊ;


# instance fields
.field public final ʽ:I

.field public final ˈ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᵎⁱ/ⁱˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lᵎⁱ/ⁱˊ;-><init>(IIII)V

    sput-object v0, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iput p2, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    iput p3, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    iput p4, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    return-void
.end method

.method public static ʽ(IIII)Lᵎⁱ/ⁱˊ;
    .locals 1

    .prologue
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object p0, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-object p0

    :cond_0
    new-instance v0, Lᵎⁱ/ⁱˊ;

    invoke-direct {v0, p0, p1, p2, p3}, Lᵎⁱ/ⁱˊ;-><init>(IIII)V

    return-object v0
.end method

.method public static ˈ(Landroid/graphics/Insets;)Lᵎⁱ/ⁱˊ;
    .locals 3

    invoke-static {p0}, Lʾˈ/ˏי;->ˑﹳ(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {p0}, Lʾˈ/ˏי;->ﾞᴵ(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {p0}, Lʾˈ/ˏי;->ᵎﹶ(Landroid/graphics/Insets;)I

    move-result v2

    invoke-static {p0}, Lʾˈ/ˏי;->ᵔᵢ(Landroid/graphics/Insets;)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p0

    return-object p0
.end method

.method public static ⁱˊ(Lᵎⁱ/ⁱˊ;Lᵎⁱ/ⁱˊ;)Lᵎⁱ/ⁱˊ;
    .locals 4

    iget v0, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v1, p1, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    iget v2, p1, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget v3, p1, Lᵎⁱ/ⁱˊ;->ʽ:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget p0, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p0

    return-object p0
.end method

.method public static ﹳٴ(Lᵎⁱ/ⁱˊ;Lᵎⁱ/ⁱˊ;)Lᵎⁱ/ⁱˊ;
    .locals 4

    iget v0, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v1, p1, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    iget v2, p1, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget v3, p1, Lᵎⁱ/ⁱˊ;->ʽ:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p0, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lᵎⁱ/ⁱˊ;->ʽ(IIII)Lᵎⁱ/ⁱˊ;

    move-result-object p0

    return-object p0
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

    if-eqz p1, :cond_6

    const-class v2, Lᵎⁱ/ⁱˊ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lᵎⁱ/ⁱˊ;

    iget v2, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget v3, p1, Lᵎⁱ/ⁱˊ;->ˈ:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v3, p1, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget v3, p1, Lᵎⁱ/ⁱˊ;->ʽ:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    iget p1, p1, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insets{left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˑﹳ()Landroid/graphics/Insets;
    .locals 4

    iget v0, p0, Lᵎⁱ/ⁱˊ;->ʽ:I

    iget v1, p0, Lᵎⁱ/ⁱˊ;->ˈ:I

    iget v2, p0, Lᵎⁱ/ⁱˊ;->ﹳٴ:I

    iget v3, p0, Lᵎⁱ/ⁱˊ;->ⁱˊ:I

    invoke-static {v2, v3, v0, v1}, Lʼˉ/ʽ;->ٴﹶ(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method
